ysp += grav
xsp = 0

if keyboard_check(vk_left) {
    xsp = -move_speed;
}
if keyboard_check(vk_right) {
    xsp = move_speed;
}

if place_meeting(x, y + 1, oBlock) {
    ysp = 0;
    if keyboard_check(vk_up) {
        ysp = jump_speed;
    }
}

// lepas tombol saat masih naik = lompatan dipotong
if keyboard_check_released(vk_up) && ysp < min_jump {
    ysp = min_jump;
}

move_and_collide(xsp, ysp, oBlock)

if place_meeting(x, y, oKey){
	room_goto_next()
}
if place_meeting(x, y, oSpike){
	room_restart()
}
if place_meeting(x, y, oSpike_1){
	room_restart()
}