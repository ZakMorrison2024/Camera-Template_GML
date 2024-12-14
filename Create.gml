// Camera Setup
// View Init
view_enabled = true;  // Enable the camera view
view_visible[0] = true;  // Set the first view to visible

// "Read-Onlys"
default_res_view_width = 960; //(1920 % 2)
default_res_view_height = 540; //(1080 % 2)
aspect_ratio = default_res_view_width/default_res_view_height; //(16:9, 1.777)

// Create camera with view
view[0] = camera_create_view(0, 0, default_res_view_width, default_res_view_height); // Create a view with (default_res_view_width x default_res_view_height resolution)

// Resize application surface to match (default_res_view_width x default_res_view_height resolution) resolution
window_set_size(default_res_view_width, default_res_view_height);
surface_resize(application_surface, default_res_view_width, default_res_view_height);

// Port settings
view_set_camera(0, view[0]);  // Set the camera for the first view
view_set_xport(0, 0);  // Set the X coordinate of the view port
view_set_yport(0, 0);  // Set the Y coordinate of the view port
view_set_wport(0, default_res_view_width);  // Set the width of the view port
view_set_hport(0, default_res_view_height);  // Set the height of the view port

// Addressors
vx = 0;  // Initial X position of the camera
vy = 0;  // Initial Y position of the camera
vw = default_res_view_width;  // Width of the view
vh = default_res_view_height;  // Height of the view
zoom = 0;  // Zoom factor (default is 0) // Optional and best edited/changed depending on the game style/theme.
