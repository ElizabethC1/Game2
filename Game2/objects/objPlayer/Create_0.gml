/// @description Initialize
state = PlayerStateFree;
collisionMap = layer_tilemap_get_id(layer_get_id ("Tiles_Col"));

image_speed = 0;
vsp = 0;
hsp = 0;
wlkspd = 2.0;
sproll = 3.5;
distRoll = 52;

spriteRole = sprPlayerRoll;
spriteIdle = sprPlayerIdle;
spriteInteract = sprPlayerInteract;
spriteRun = sprPlayerRun;
localFrame = 0;
inventory_wood = 0;
inventory_stone = 0;