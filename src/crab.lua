Crab = entity:new({
  x = 32,
  y = 32,
  flip = false,
  startKeyFrame = 128,
  endKeyFrame = 134,
  currDir = 1,
  keyFrame = 128,
  timer = 0,
  init = function(_ENV)
  end,
  update = function(_ENV)
    if timer > 5 then
      keyFrame += 2
      if keyFrame > endKeyFrame then
        keyFrame = startKeyFrame
      end
      timer = 0
    end
    local newXY = gameScene.controller:move(x, y) 
    if newXY.dir and dir != newXY.dir then
      dir = newXY.dir
      if newXY.dir == 0 then
        keyFrame = 128
        startKeyFrame = 128
        endKeyFrame = 134
        flip = true
      elseif newXY.dir == 1 then
        keyFrame = 128
        startKeyFrame = 128
        endKeyFrame = 134
        flip = false
      elseif newXY.dir == 2 then
        keyFrame = 160
        startKeyFrame = 160
        endKeyFrame = 164
        flip = false
      elseif newXY.dir == 3 then
        keyFrame = 136
        startKeyFrame = 136
        endKeyFrame = 140
        flip = false
      end
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
    spr(keyFrame, x, y, 2, 2, flip)
  end,
  anim = function(_ENV)
    timer += 1
  end
})