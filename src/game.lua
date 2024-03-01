state = 'game'
function _init()
  gameScene = GameScene:new()
  gameScene:init()
  printMeta()
end

function _update()
  if state == 'game' then
    state = gameScene:update()
  end
end

function _draw()
  if state == 'game' then
    gameScene:draw()
  end
end

function printMeta()
  printh("\n\n-==Jimbo==-\nby IgnoreIntuition\nLocked and stocked")
  printh(stat(93) .. ":" .. stat(94) .. ":" .. stat(95))
  printh("mem usage: " .. stat(0))
  printh("CPU: " .. stat(1))
end