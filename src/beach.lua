Beach = entity:new({
  minX = 0,
  minY = 0,
  maxX = 15,
  maxY = 15,
  init = function(_ENV)
  end,
  update = function(_ENV)
  end,
  draw = function(_ENV)
    cls()
    map(0, 0, minX * 8, minY * 8, maxX, maxY)
  end,
  checkBounds = function(_ENV, coord)
    if coord.x > minX * 8
        and coord.x < (maxX - 2) * 8
        and coord.y > minY * 8
        and coord.y < (maxY - 2) * 8 then
      return true
    end
    return false
  end
})