/// @description Game_Room controls
if room == game_room
{
	if global.android_tv or os_type == os_windows or os_type == os_macosx or os_type == os_tvos
	{
     switch (global.turn)
	{
		case -4:
		{
		vx = 0;
		vy = 0;
		vw = room_width;
		vh = room_height;
		break;
		}
		
		case 0:
		{
		vx = ((instance_find(obj_player_1,0).x-(obj_player_1.sprite_width/2)) - vw/2)
		vy = ((instance_find(obj_player_1,0).y-(obj_player_1.sprite_height/2)) - vh/2)
		break;
		}
		
		case 1:
		{
		vx = ((instance_find(obj_player_2,0).x-(obj_player_2.sprite_width/2)) - vw/2)
		vy = ((instance_find(obj_player_2,0).y-(obj_player_2.sprite_height/2)) - vh/2)
		break;
		}
		
		case 2:
		{
		vx = ((instance_find(obj_player_3,0).x-(obj_player_3.sprite_width/2)) - vw/2)
		vy = ((instance_find(obj_player_3,0).y-(obj_player_3.sprite_height/2)) - vh/2)
		break;
		}
		
		case 3:
		{
		vx = ((instance_find(obj_player_4,0).x-(obj_player_4.sprite_width/2)) - vw/2)
		vy = ((instance_find(obj_player_4,0).y-(obj_player_4.sprite_height/2)) - vh/2)
		break;
		}
	}
	
	}
}
