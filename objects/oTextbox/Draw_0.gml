accept_key = keyboard_check_pressed(vk_space);

textbox_x = camera_get_view_border_x(view_camera[0]) + 60;
textbox_y = camera_get_view_border_y(view_camera[0]) + 523;


//setup
if global.setup == false
	{
		global.setup=true
		draw_set_font(global.font_main);
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
		
		//loop through the pages
		page_number = array_length(text);
		for(var p = 0; p < page_number; p++)
			{
				
				//find how many charas on each page and store number in text_length array
				text_length[p] = string_length(text[p]);
				
				
			}
	}



//typing the text
if draw_char < text_length[page]
	{
		draw_char += text_speed;
		draw_char = clamp(draw_char, 0, text_length[page]);
	}
	
	
//flip through pages
if accept_key
	{
		//if typing is done
		if draw_char == text_length[page]
			{
				//next page
				if page < page_number - 1
					{
						page++;
						draw_char = 0;
						audio_play_sound(NextDialogue , 1 , 1)
					}
					//destroy textbox
				else
					{
					instance_destroy();
					audio_play_sound(CloseDialogue , 1 , 1)
					room_goto_next()
					}
			}
		//if not done typing
		else
			{
				
			draw_char = text_length[page];
			
			}
	}



//draw the textbox--------------------------
txtb_img += txtb_img_spd
txtb_spr_w = sprite_get_width(txtb_spr);
txtb_spr_h = sprite_get_height(txtb_spr);
//back of the textbox
draw_sprite_ext(txtb_spr, txtb_img, textbox_x, textbox_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 1);

//draw the text-----------------------------
var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(textbox_x + border, textbox_y + border, _drawtext, line_sep, line_width)