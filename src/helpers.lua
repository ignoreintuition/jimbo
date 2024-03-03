function isTile(type, x, y)
  tile = mget(x, y)
  return fget(tile, type)
end

function swapTile(x, y)
  tile = mget(x, y)
  mset(x, y, tile + 1)
end

function unswapTile(x, y)
  tile = mget(x, y)
  mset(x, y, tile - 1)
end