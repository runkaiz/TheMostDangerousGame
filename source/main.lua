import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"

import "/content/original"

local gfx <const> = playdate.graphics

local msg = ""

local story = nil

local flag = true
local position = 0
local textPosition = 0

local currentDialog = null

local isIndicatorActive = false

-- 0 indicates the game is showing text
-- 1 indicates the game is showing choices
local gameState = 0

function createIndicator()
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
        for i = 0, math.ceil(size / allowedLength), 1 do
            if i * math.ceil(size / allowedLength) < size then
                processed[i] = playdate.string.trimWhitespace(string.sub(dialog, i * allowedLength,
                    (i + 1) * allowedLength))
            else
                processed[i] = playdate.string.trimWhitespace(string.sub(dialog, i * allowedLength, size - 1))
            end
        end
    else
        processed[0] = playdate.string.trimWhitespace(dialog)
    end

    return processed, size
end

local function initialize()
    playdate.display.setRefreshRate(15)
    msg = "Hello World"
    story = original
    position = 0
    gameState = 0
end

initialize()

function playdate.update()
    gfx.sprite.update()

    if gameState == 0 then
        currentDialog = processDialog(story[position].textbody)
        msg = currentDialog[textPosition]

        local dialogSize = #(currentDialog)
        local truncated = textPosition < dialogSize - 1

        if not isIndicatorActive and truncated then
            createIndicator()
        end

        if not truncated and isIndicatorActive then
            isIndicatorActive = false
        end

        if playdate.buttonJustPressed(playdate.kButtonA) then
            if truncated then
                textPosition += 1
            else if textPosition == dialogSize - 1 then
                    gameState = 1
                end
            end
        end

        if playdate.buttonJustPressed(playdate.kButtonB) and textPosition > 0 then
            textPosition -= 1
        end
    else if gameState == 1 then
            msg = story[position].optionbody
        end
    end

    gfx.drawTextInRect(msg, 20, 20, 360, 180)

    playdate.drawFPS(2, 224)
end
