Beach = entity:new({
  minX = 0,
  minY = 0,
  maxX = 15,
  maxY = 15,
  timer = 0,
  timeBetweenWaves = 0,
  timeBetweenTides = 0,
  init = function(_ENV)
  end,
  update = function(_ENV)
    timer += 1
    if timer % 10 == 0 then
      toggleTile(_ENV)
    end
    if timer % 60 == 0 then

      timer = 0
    end
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
  end,
  toggleTile = function(_ENV)
    for x = 0, 15 do
      for y = 0, 15 do
        if isTile(0, x, y) then
          swapTile(x, y)
        elseif isTile(1, x, y) then
          unswapTile(x, y)
        end
      end
    end
  end
})

Wave = entity:new({
  x = 0, y = 0,
  interval = 8,
  timer = 0,
  frame = 1,
  animationCycle = { 208, 210, 212, 214 },
  complete = false,
  init = function(_ENV, locX, locY)
    x = locX
    y = locY
  end,
  update = function(_ENV)
    timer += 1
    if timer == interval then
      newFrame = frame + 1
      if (newFrame > 4) then
        complete = true
      else 
        frame=newFrame
      end

      timer = 0
    end
  end,
  draw = function(_ENV)
    spr(animationCycle[frame], x, y, 2, 1)
  end,
  isComplete = function(_ENV)
    return complete
  end
})