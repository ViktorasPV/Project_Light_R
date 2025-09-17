
function fx_spawn(_x, _y, _fx)
{
    var caller = id.layer;
    if (caller == -1) caller = "Instances";
    return instance_create_layer(_x, _y, caller, _fx);
}