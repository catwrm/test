depth = -9999;

global.font_main = fDialogue;
textbox_width = 1183;
textbox_height = 191;
border = 40;
line_sep = 35
line_width = textbox_width - border*2;
txtb_spr = sTextbox;
txtb_img = 0;
txtb_img_spd = 0;

//text
page = 0;
page_number = 0;
text[0] = "Imagine waking up in the world you've always daydreamed of..";
text[1] = "The world I always dreamed of..."
text[3] = "...It's here.."
text_length[0] = string_length(text[0]);
draw_char = 0;
text_speed = 1;

global.setup = false