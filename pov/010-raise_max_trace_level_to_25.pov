// (something like a) borg cube
// new version: remove warnings, add area_light
// 12/2018 Christian Perle

global_settings { max_trace_level 25 }

camera {
	location <.2, .11, -.9>
	direction .5*z
	look_at <-.2, 0, .9>
}

light_source {
	<0, 0, 0> color rgb .6
	area_light .3*x, .3*y, 5, 5
}

#declare Pipe = union {
	cylinder {
		<-1, -1, -1>, <1, -1, -1>, .09
		pigment { color rgb<.2, .2, .2> }
		finish { specular .8 }
		normal { dents 1 bump_size 10 scale .01 }
	}
	cylinder {
		<-1, -1, -1>, <1, -1, -1>, .02
		translate -.09*y
		pigment {
			gradient x
			color_map {
				[0 color red 1]
				[0.3 color red 1]
				[0.3 color rgbf 1]
				[0.7 color rgbf 1]
				[0.7 color red 1]
				[1 color red 1]
			}
		}
		finish { specular .8 ambient .35 }
	}
}

#declare Pipes = union {
	object { Pipe }
	object { Pipe rotate 90*y }
	object { Pipe rotate 180*y }
	object { Pipe rotate 270*y }
	object { Pipe translate 2*y }
	object { Pipe rotate 90*y translate 2*y }
	object { Pipe rotate 180*y translate 2*y }
	object { Pipe rotate 270*y translate 2*y }
	object { Pipe rotate 90*z }
	object { Pipe rotate 90*z rotate 90*y }
	object { Pipe rotate 90*z rotate 180*y }
	object { Pipe rotate 90*z rotate 270*y }
}

union {
	box {
		<-1, -1, -1>, <1, 1, 1>
		hollow
		pigment { color rgb<.4, 1, .4> }
		finish { ambient 0 diffuse .1 reflection 1 }
	}
	object { Pipes }
}

// borg alcoven lightning
union {
	disc {
		0, y, 1
		pigment {
			radial frequency 6 turbulence .3 
			color_map {
				[0 color rgb<.95, 1, .95>]
				[0.03 color rgb<.95, 1, .95>]
				[0.05 color green 1]
				[0.1 color green .5 filter .9]
				[0.9 color green .5 filter .9]
				[0.95 color green 1]
				[0.97 color rgb<.8, 1, .8>]
				[1 color rgb<.8, 1, .8>]
			}
			translate <-.05, 0, -.08>
		}
		finish { ambient .6 }
	}
	torus { 1, .05 pigment { rgb .5 } finish { specular .4 } }
	pigment { rgb 1 }
	rotate -90*x
	scale .6
	translate .1*z
}
