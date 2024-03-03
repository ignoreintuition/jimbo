GameScene = Scene:new({
  crab = {},
  beach = {},
  controller = {},
  shell = {},
  init = function(_ENV)
    beach = Beach:new()
    crab = Crab:new()
    controller = Controller:new()
    shell = Shell:new()
  end,
  update = function(_ENV)
    beach:update()
    crab:update()
    shell:update()
    return 'game'
  end,
  draw = function(_ENV)
    beach:draw()
    crab:draw()
    shell:draw()
  end
})