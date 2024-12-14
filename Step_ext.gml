/// STEP EVENT (Camera and View EXTENDED script)
// Camera/View movement controls using WASD or Arrow keys

    if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
        vx -= 20; // move left 20 pixels
    }
    if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
        vx += 20;  // move right 20 pixels
    }
    if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
        vy -= 20;  // move up 20 pixels
    }
    if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
        vy += 20;  // move down 20 pixels
    }

// Update the camera/view position (add this at the end to change camera/view)
    camera_set_view_pos(view[0], vx, vy);

//
//
// or ... (use one or the otther (IF or Switch), conflicts may arise using both for the same keys!)
//
//



// Camera/View movement controls using WASD or Arrow keys with Switch Statement

Switch(keyboard_key)
{
case vk_left:
case ord("A"):
vx -= 20; // move left 20 pixels
break;

case vk_right:
case ord("D"):
vx += 20; // move right 20 pixels
break;

case vk_up:
case ord("W"):
vy -= 20; // move up 20 pixels
break;

case vk_down:
case ord("S"):
vy += 20; // move down 20 pixels
break;

case default:
break; // When NO key is pressed == do nothing
}

// Update the camera/view position (add this at the end to change camera/view)
    camera_set_view_pos(view[0], vx, vy);

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//
// The above codes are absolute fixed pixel movement, meaning they will consistently move X pixels. The below code uses a kinda smoothing effect (for more of an organic feel to movement)
//

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


    if (keyboard_check(vk_left) || keyboard_check(ord("A"))) { // Using One IF as example, Copy and edit as needed
        var press = 1; // adjust for speed
        var prev_press, move_smoothed // declarations
        press = press * 100; // maxing

        move_smoothed = (press * 0.05) + (prev_press * 0.95); // adjust for desired intesity. (0.05:0.95)
        prev_press = move_smoothed; // adjusting previous speed/intesity

        vx -= move_smoothed; // decrease view X position
    }
       //... continue the script, adjust values to needs. Make sure you use "-" for left and up/west and south, and "+" for right and down/east and north

// Update the camera/view position (add this at the end to change camera/view)
    camera_set_view_pos(view[0], vx, vy);
