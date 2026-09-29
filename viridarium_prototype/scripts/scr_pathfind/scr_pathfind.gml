function scr_pathfind(_sx, _sy, _gx,_gy){
    var _visited = ds_grid_create(global.wwidth, global.wheight);
    ds_grid_clear(_visited, 0);

    var _parent = ds_grid_create(global.wwidth, global.wheight);
    ds_grid_clear(_parent, -1);

    var _q = ds_queue_create();

    ds_queue_enqueue(_q, [_sx, _sy]);
    _visited[# _sx, _sy] = 1;

    var _found = false;

    while (ds_queue_size(_q) > 0) {
        var _node = ds_queue_dequeue(_q);
        var _nx = _node[0];
        var _ny = _node[1];

        if (_nx == _gx && _ny == _gy) {
            _found = true;
            break;
        }

        var _dirs = [
            [ 1, 0],
            [-1, 0],
            [ 0, 1],
            [ 0,-1]
        ];

        for (var i = 0; i < 4; i++) {
            var _xx = _nx + _dirs[i][0];
            var _yy = _ny + _dirs[i][1];

            if (_xx < 0 or _yy < 0 or _xx >= global.wwidth or _yy >= global.wheight) continue;
            if (global.map[# _xx, _yy] == 1) continue;
            if (_visited[# _xx, _yy] == 1) continue;

            _visited[# _xx, _yy] = 1;

            // parent encoding
            _parent[# _xx, _yy] = [_nx, _ny];
            ds_queue_enqueue(_q, [_xx, _yy]);
        }
    }

    var _path = [];

    if (_found) {
        var _cx = _gx;
        var _cy = _gy;

        repeat (10000) {
            array_push(_path, [_cx, _cy]);

            var _p = _parent[# _cx, _cy];
            if (_p == -1) break;

            _cx = _p[0];
            _cy = _p[1];
        }

        _path = array_reverse(_path);
    }

    ds_grid_destroy(_visited);
    ds_grid_destroy(_parent);
    ds_queue_destroy(_q);

    return _path;
}
