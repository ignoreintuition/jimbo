GameScene = Scene:new({
  crab = {},
  beach = {},
  controller = {},
  init = function(_ENV)
    beach = Beach:new()
    crab = Crab:new()
    controller = Controller:new()
  end,
  update = function(_ENV)
    beach:update()
    crab:update()
    return 'game'
  end,
  draw = function(_ENV)
    beach:draw()
    crab:draw()
  end
})