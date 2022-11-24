import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"
import "CoreLibs/timer"

import "/content/original"

local gfx <const> = playdate.graphics

local msg = ""

local story = nil

local position = 1

local isIndicatorActive = false

local enableScrolling = true
local offset = 0

-- 0 indicates the game is in story state
-- 1 indicates the game is in decision state
-- 2 indicates the game is in linear state
local gameState = 0

local function createIndicator(h)
    if isIndicatorActive then
        return
    end

    local s = gfx.sprite.new()
    s.frame = 1
    local img = gfx.image.new("images/Indicator/" .. s.frame)
    s:setImage(img)
    s:moveTo(380, h + 45)
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

local function displayOptions(options)
    gfx.drawTextInRect("A - " .. options[1].text, 20, 150, 300, 40)
    gfx.drawTextInRect("B - " .. options[2].text, 20, 200, 300, 40)

    if playdate.buttonJustPressed(playdate.kButtonA) then
        position = options[1].nextnode
        textPosition = 1
        gameState = 0
        offset = 0

        return
    end

    if playdate.buttonJustPressed(playdate.kButtonB) then
        position = options[2].nextnode
        textPosition = 1
        gameState = 0
        offset = 0

        return
    end
end

local function displayLinearOption(option)
    w, h = gfx.getTextSizeForMaxWidth("A - " .. option, 360)
    gfx.drawTextInRect("A - " .. option, 20, 180, w, h)
    enableScrolling = false

    if playdate.buttonJustPressed(playdate.kButtonA) then
        position = story[position].nextnode
        gameState = 0
        offset = 0
        enableScrolling = true

        return
    end
end

function math.clamp(n, low, high) return math.min(math.max(n, low), high) end

local function initialize()
    playdate.display.setRefreshRate(15)
    msg = "Hello World"
    story = original
    position = 1
    gameState = 0
end

initialize()

function playdate.update()
    gfx.sprite.update()

    if gameState == 0 then
        msg = story[position].textbody

        w, h = gfx.getTextSizeForMaxWidth(msg, 360)
        createIndicator(h)

        if playdate.buttonJustPressed(playdate.kButtonA) then
            isIndicatorActive = false
            offset = 0
            if story[position].options ~= nil then
                gameState = 1
            else
                gameState = 2
            end
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

    if enableScrolling then
        offset -= playdate.getCrankChange()
        w, h = gfx.getTextSizeForMaxWidth(msg, 360)
        offset = math.clamp(offset, (-1 * h) + 180, 0)

        playdate.graphics.setDrawOffset(0, offset)
    else
        playdate.graphics.setDrawOffset(0, 0)
    end

    gfx.drawTextInRect(msg, 20, 20, w, h)

    playdate.drawFPS(2, 224)
end
