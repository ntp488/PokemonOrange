/// text script

    //called script
        ///scr_text("text",speed,x,y);
if (instance_exists(obj_text_follow)) {
instance_deactivate_object(obj_text_follow)
}
txt = instance_create(argument2,argument3,obj_text_follow);
with txt{
    padding = 16
    maxLength = view_wview[0];
    text = argument0;
    spd = argument1;
    font = fnt;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
    text_width = string_width_ext(text,font_size+(font_size/2),maxLength);
    text_height = string_height_ext(text,font_size+(font_size/2),maxLength);
    
    boxwidth = text_width + (padding*2);
    boxheight = text_height + (padding*2);
    self.x = argument2 - boxwidth/2
    self.y = argument3 - boxheight - 10
    
    instance_create(self.x + (boxwidth/2) ,self.y - 10, acceptButton)
}
