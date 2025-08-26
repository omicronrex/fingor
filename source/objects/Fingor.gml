#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_valign(1)
draw_set_font(jetbrains)

i=0
for (f=file_find_first("*",fa_directory);f!="";f=file_find_next()) {
    if (directory_exists(f+"\.git")) {
        o=instance_create(0,48+i*32,Github)
        o.name=f
        if (file_exists(f+"\desktop.ini")) {
            d=file_text_open_read(f+"\desktop.ini")
            file_text_readln(d)
            str=string_delete(file_text_read_string(d),1,13)
            if (string_pos(".\",str)==1) str=string_delete(str,1,2)
            str=string_copy(str,1,string_length(str)-2)
            file_text_close(d)
            o.sprite_index=sprite_add(f+"\"+str,0,0,0,0,0)
        } else {
            fn=f+"\"+string_replace(f,"gm82","")+".ico"
            if (file_exists(fn))
                o.sprite_index=sprite_add(fn,0,0,0,0,0)
        }
        i+=1
    }
} file_find_close()

global.basedir=working_directory+"\"
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self()
draw_set_color(0)
draw_text(x+40,y+16,"FINGOR#FINd Github Outdated Repositories")
