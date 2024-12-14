# Game Camera Setup

## Overview

This guide explains the process for setting up a 16:9 camera view in your game using GameMaker Language (GML). The setup uses a 960x540 resolution, which is half of 1920x1080, maintaining the 16:9 aspect ratio. This configuration ensures that the camera, window, and viewport all scale appropriately for different screen sizes.

## Purpose

The goal of this camera setup is to provide a flexible and scalable solution for rendering your game in a 16:9 aspect ratio while using a resolution of 960x540. It ensures smooth performance and proper alignment across various screen resolutions, making it ideal for both desktop and mobile games.

## Key Features

- **Aspect Ratio:** 16:9 (1.777)
- **Resolution:** 960x540 (scaled from 1920x1080)
- **Camera Setup:** Configured for a 960x540 resolution, perfect for modern displays.
- **Automatic Scaling:** Automatically adjusts the application surface and camera view to match the chosen resolution.

## How It Works

1. **Camera Setup:**  
   The camera is configured to use a 16:9 aspect ratio at 960x540 resolution (scaled from 1920x1080). This ensures compatibility with modern screens and devices.

2. **Window Resizing:**  
   The game window is resized to 960x540, ensuring that it fits within the target resolution.

3. **Viewport Configuration:**  
   The script adjusts the viewport to match the camera’s resolution, ensuring that the game’s visuals are displayed correctly on screen.

4. **Automatic Adjustments:**  
   The script also adjusts the application surface size to match the 960x540 resolution, ensuring that the game renders properly and efficiently.

5. **Camera Movement:**  
   The script also adjusts the camera/view based on key-stokes.

6. **Zoom:**  
   The script also adjusts the camera/view width and height.
   

## Requirements

- **GameMaker Studio** (or any compatible version that supports GML scripting).
- The script assumes a **16:9 aspect ratio** with a resolution of **960x540** (scaled from 1920x1080), feel free to change to suit your needs.

## How to Use

### Steps to Implement

1. **Add the Script to Your Controller Object: (obj_control/obj_camera)**
   - Create a controller object (or use any suitable object name).
   - Place the script named "Create.gml" into the **Creation Event** of this object.
   - Place the script named "Step.gml" into the **Step Event** of this object.
   - **OPTIONAL:** Use zoom script "Zoom.gml" or write your own.
   - Make edits to suit you game theme/style.

2. **Run the Game:**
   - Upon running the game, the camera and viewport will automatically adjust to the 960x540 resolution, with the proper 16:9 aspect ratio applied.

### Explanation of Variables
- **`default_res_view_width`**: The default width of the camera view, set to 960 (half of 1920).
- **`default_res_view_height`**: The default height of the camera view, set to 540 (half of 1080).
- **`aspect_ratio`**: The aspect ratio calculation (16:9, or 1.777).
- **`view_enabled`**: Enables the camera view in the game.
- **`view_visible[0]`**: Makes the first view visible.
- **`view[0]`**: The camera view created with the specified resolution.
- **`window_set_size`**: Resizes the game window to 960x540.
- **`surface_resize`**: Resizes the application surface to match the window size.
- **`view_set_*port`**: Configures the X, Y, width, and height for the viewport.
- **`vx`**: Addressor for Camera/View X position.
- **`vy`**: Addressor for Camera/View Y position.
- **`vw`**: Addressor for Camera/View width.
- **`vh`**: Addressor for Camera/View height.
- **`zoom`**: Placeholder trigger for Zoom scripts.
- **`vk_key`**: Call for special/specific key (replace "key" with appropirate special/specific key, doesn't work for "string based character" keys).
- **`ord("key")`**: Call for "string based character" keys (replace "key" with appropirate character key, doesn't work for special/specific keys).

## License

This script is released under the **MIT License**.

## Conclusion

With this camera setup, your game will have a consistent 16:9 aspect ratio, providing a clean and efficient rendering experience across various devices. By using the 960x540 resolution, the setup ensures that your game runs smoothly, even on lower-resolution displays.

Feel free to modify and extend this setup as needed to suit your project’s requirements!
