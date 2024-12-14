/// STEP EVENT (Basic Fixed Zoom Script)
// Zoom

    switch (zoom) {
        case 0: // fixed zoom dimentions "0"
            vw = 960;
            vh = 540;
            break;
        case 1:  // fixed zoom dimentions "1"
            vw = 1920;
            vh = 1080;
            break;
        case 2:  // fixed zoom dimentions "2"
            vw = 3840;
            vh = 2160;
            break;
        default:
            break;
    }

      // Zoom controls with the mouse wheel
    if (mouse_wheel_up() && zoom > -1) {
        zoom -= 1;
    }
    if (mouse_wheel_down() && zoom < 3) {
        zoom += 1;
    }

    // Update the camera/view size
    camera_set_view_size(view[0], vw, vh);
