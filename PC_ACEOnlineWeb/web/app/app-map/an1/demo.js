

function Map($container_) {

  this.$container_ = $container_;
  this.$map_ = $('<div></div>');
  this.$map_.addClass('map-container');
  this.$container_.append(this.$map_);
}


Map.SIZE = 256;

Map.prototype.show = function(){
  
  this.$map_.html('');
  
  var tiles = [
    ['2352.jpg', '2353.jpg', '2354.jpg', '2355.jpg'],
    ['2356.jpg', '2357.jpg', '2358.jpg', '2359.jpg'],
  ]
  
  for (var i = 0; i < tiles.length; i++) {
    for (var j = 0; j < tiles[0].length; j++) {
      var x = i * Map.SIZE;
      var y = j * Map.SIZE;
      
      $tile = $('<img>');
      $tile.attr('src', tiles[i][j]);
      $tile.addClass('map-tile');
      $tile.attr('left', x);
      $tile.attr('top', y);
      
      this.$map_.append($tile);
    }
  }
}

