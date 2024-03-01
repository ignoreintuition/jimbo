Controller = entity:new({
  init = function(_ENV)
  end,
  update = function(_ENV)
  end,
  draw = function(_ENV)
  end,
  move = function(_ENV, x, y)
    if btn(0) then
      return { x = x - 1, y = y, dir = 0}
    elseif btn(1) then
      return { x = x + 1, y = y, dir = 1 }
    elseif btn(2) then
      return { x = x, y = y - 1, dir = 2 }
    elseif btn(3) then
      return { x = x, y = y + 1, dir = 3 }
    end
    return {x = x, y = y}
  end
})