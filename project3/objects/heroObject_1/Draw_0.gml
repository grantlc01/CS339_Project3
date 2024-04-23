
draw_sprite(sprite_index, image_index, x, y)
draw_set_colour(c_white)
draw_text(x, y - 50, "hspeed: " + string(hspeed) + ", vspeed: " + string(vspeed) + ", grav:" + string(gravity))
draw_text(x, y - 30, string(x) + ", " + string(y) + ", colliding? " + string(place_meeting(x,y,wall)))