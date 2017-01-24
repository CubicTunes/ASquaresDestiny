randomize()
attack = choose(1,2,3)
mode = ""
spmod = obj_boss.image_xscale*obj_boss.image_xscale

if attack = 1 {
mode = "firerain"
alarm[3]=1
alarm[2] = room_speed*10
}
if attack = 2 {
mode = "roar"
if instance_exists(obj_player){
    obj_player.movespeed-=0.001+(spmod-1)/2
}
alarm[3]=1
}
if attack = 3 {
mode = "fireballs"
global.fireball=1
if instance_exists(obj_player){
    instance_create(x,y,obj_fireball)
    instance_create(x,y,obj_fireball)
    instance_create(x,y,obj_fireball)
    instance_create(x,y,obj_fireball)
}
alarm[2]=global.fbchance
}
