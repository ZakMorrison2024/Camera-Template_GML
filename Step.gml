/// STEP EVENT (Camera and View script)
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

// Update the camera position and size (add this at the end to change camera/view)
    camera_set_view_pos(view[0], vx, vy);
