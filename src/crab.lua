Crab = entity:new({
  x = 32,
  y = 32,
  orientation = {
    flip = false,
    first = 128,
    last = 134,
    currDir = 1
  },
  keyFrame = 128,
  timer = 0,
  speed = 3,
  directions = {
    { flip = true, first = 128, last = 134, currDir = 0 },
    { flip = false, first = 128, last = 134, currDir = 1 },
    { flip = false, first = 160, last = 164, currDir = 2 },
    { flip = false, first = 136, last = 140, currDir = 3 }
  },
  init = function(_ENV)
  end,
  update = function(_ENV)
    if timer > speed then
      keyFrame += 2
      if keyFrame > orientation.last then
        keyFrame = orientation.first
      end
      timer = 0
    end
    local newXY = gameScene.controller:move(x, y)
    if newXY.dir and dir != newXY.dir then
      dir = newXY.dir
      orientation = directions[dir + 1]
      keyFrame = orientation.first
    end
    if gameScene.beach:checkBounds(newXY) then
      if x != newXY.x or y != newXY.y then
        x = newXY.x
        y = newXY.y
        anim(_ENV)
      end
    end
  end,
  draw = function(_ENV)
    spr(keyFrame, x, y, 2, 2, orientation.flip)
  end,
  anim = function(_ENV)
    timer += 1
  end
})