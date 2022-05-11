# Making of borg cube (POV-Ray)
A not so detailed description of the scene file. This description will not show any details of the scene description language. If you want to see details, see the "pov/" directory.

## 001 - it starts with a box

![it starts with a box](images/001-it_starts_with_a_box.jpg)

The first step is a simple box. For better visibility, we place the camera outside the box and make it semi-transparent.

## 002 - add edges

![add edges](images/002-add_edges.jpg)

Add black cylinders as edges. Note that the light sources are outside, thus the edges cast shadows onto the box.

## 003 - show camera location and direction

![show camera location and direction](images/003-show_camera_location_and_direction.jpg)

The red dot shows the future camera location inside the box. The yellow cone points to the location the inside camera will be looking at.

## 004 - view from inside camera

![view from inside camera](images/004-view_from_inside_camera.jpg)

Now we switch to the view from the inside camera.

## 005 - make egdes more interesting

![make egdes more interesting](images/005-make_egdes_more_interesting.jpg)

Attach small red cylinders to the black ones. Also use a pattern to modify the normal vector of the black cylinders.

## 006 - move light source inside

![move light source inside](images/006-move_light_source_inside.jpg)

The light source now sits in the center of the box. The shadows of the edge cylinders are gone.

## 007 - add reflection to box

![add reflection to box](images/007-add_reflection_to_box.jpg)

Now the scene becomes interesting: Change the box from semi-transparent to reflecting. Because light source and camera are inside the box, the box acts as a mirror reflecting a mirror. If we would do this with a real mirror, there would be an illusion of infinite reflections. The default number of reflections in POV-Ray is 5, so for now it is quite finite.

## 008 - add transparent disc

![add transparent disc](images/008-add_transparent_disc.jpg)

Add semi-transparent disc with surrounding torus at the center of the box.

## 009 - add lightning texture to disc

![add lightning texture to disc](images/009-add_lightning_texture_to_disc.jpg)

Add borg-like green lightning texture (radial with turbulence) to the disc to make it look more interesting.

## 010 - raise max trace level to 25

![raise max trace level to 25](images/010-raise_max_trace_level_to_25.jpg)

Finally raise the number of reflections to 25.
