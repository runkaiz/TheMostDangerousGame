import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"

import "/content/original"

local gfx <const> = playdate.graphics

local msg = ""

local story = nil

local position = 1
local textPosition = 1

local processedDialogCache = {}

local isIndicatorActive = false

-- 0 indicates the game is in story state
-- 1 indicates the game is in decision state
-- 2 indicates the game is in linear state
local gameState = 0

local function createIndicator()
    local s = gfx.sprite.new()
    s.frame = 1
    local img = gfx.image.new("images/Indicator/" .. s.frame)
    s:setImage(img)
    s:moveTo(380, 225)
    isIndicatorActive = true
    local buffer = 0

    function s:update()
        if not isIndicatorActive then
            s:remove()
        end

        if buffer == 4 then
            buffer = 0
            if s.frame >= 2 then
                s.frame = 1
            else
                s.frame += 1
            end
        else
            buffer += 1
        end
        img = gfx.image.new("images/Indicator/" .. s.frame)
        s:setImage(img)
    end

    s:setZIndex(2000)
    s:add()
end

local function processDialog(dialog)
    processed = {}

    allowedLength = 350
    size = string.len(dialog)

    if size / allowedLength >= 1 then
        for i = 1, math.ceil(size / allowedLength), 1 do
            if i * math.ceil(size / allowedLength) < size then
                processed[i] = playdate.string.trimWhitespace(string.sub(dialog, (i - 1) * allowedLength,
                    (i) * allowedLength))
            else
                processed[i] = playdate.string.trimWhitespace(string.sub(dialog, (i - 1) * allowedLength, size))
            end
        end
    else
        processed[1] = playdate.string.trimWhitespace(dialog)
    end

    return processed, size
end

local function displayOptions(options)
    gfx.drawTextInRect("A - " .. options[1].text, 20, 150, 300, 40)
    gfx.drawTextInRect("B - " .. options[2].text, 20, 200, 300, 40)

    if playdate.buttonJustPressed(playdate.kButtonA) then
        position = options[1].nextnode
        textPosition = 1
        gameState = 0

        return
    end

    if playdate.buttonJustPressed(playdate.kButtonB) then
        position = options[2].nextnode
        textPosition = 1
        gameState = 0

        return
    end
end

local function displayLinearOption(option)
    gfx.drawTextInRect("A - " .. option, 20, 180, 300, 60)

    if playdate.buttonJustPressed(playdate.kButtonA) then
        position = story[position].nextnode
        textPosition = 1
        gameState = 0
        return
    end
end

local function initialize()
    playdate.display.setRefreshRate(15)
    msg = "Hello World"
    story = original
    position = 1
    processedDialogCache = {}
    gameState = 0
end

initialize()

function playdate.update()
    gfx.sprite.update()

    if gameState == 0 then
        if processedDialogCache[position] == nil then
            processedDialogCache[position] = processDialog(story[position].textbody)
        end

        msg = processedDialogCache[position][textPosition]

        local dialogSize = #(processedDialogCache[position])
        local truncated = textPosition < dialogSize

        if not isIndicatorActive and truncated then
            createIndicator()
        end

        if not truncated and isIndicatorActive then
            isIndicatorActive = false
        end

        if playdate.buttonJustPressed(playdate.kButtonA) then
            if truncated then
                textPosition += 1
            else if textPosition == dialogSize then
                    if story[position].options ~= nil then
                        gameState = 1
                    else
                        gameState = 2
                    end
                end
            end
        end

        if playdate.buttonJustPressed(playdate.kButtonB) and textPosition > 1 then
            textPosition -= 1
        end
    elseif gameState == 1 then
        if story[position].optionbody ~= nil then
            msg = story[position].optionbody
            displayOptions(story[position].options)
        else
            msg = "Game Over"
        end
    elseif gameState == 2 then
        if story[position].option ~= nil then
            msg = ""
            displayLinearOption(story[position].option)
        else
            msg = "Game Over"
        end
    end

    gfx.drawTextInRect(msg, 20, 20, 360, 180)

    playdate.drawFPS(2, 224)
end
