#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with (object_index) if (y>other.y) alarm[0]=2

if (instance_number(object_index)==1) game_end()
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
y-=32
#define Mouse_53
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (mouse_y>=y && mouse_y<y+32 && mouse_x>=400-96) {
    if (mouse_x<400-64) {
        set_working_directory(global.basedir+name)
        execute_shell("git",'pull "origin"')
    } else if (mouse_x<400-32) {
        set_working_directory(global.basedir+name)
        if (file_exists("build.bat")) {
            execute_shell("build.bat","")
        }
    } else {
        instance_destroy()
    }
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_color($c0c0c0)
draw_button(0,y,400-64,y+32,0)
if (sprite_index) draw_sprite_stretched(sprite_index,0,x,y,32,32)
else draw_sprite(sprFolder,0,x,y)
draw_set_color(0)
draw_text(x+40,y+16,name)
draw_set_color($c0c0c0)
draw_button(400-96,y,400-64,y+32,1)
draw_button(400-64,y,400-32,y+32,1)
draw_button(400-32,y,400,y+32,1)
draw_sprite(sprButtons,0,400-96+16,y+16)
draw_sprite(sprButtons,1,400-64+16,y+16)
draw_sprite(sprButtons,2,400-32+16,y+16)
