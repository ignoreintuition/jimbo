Shell = entity:new({
  x = 16,
  y = 16,
  init = function(_ENV)
  end,
  update = function(_ENV)
  end,
  draw = function(_ENV)
    spr(0, x, y, 2, 2, false)
  end
})