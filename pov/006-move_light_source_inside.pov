camera {
	location <.2, .11, -.9>
	direction .5*z
	look_at <-.2, 0, .9>
}

background { rgb .7 }

light_source {
	<0, 0, 0> color rgb .6
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
		pigment { color rgbt<.4, 1, .4, .8> }
	}
	object { Pipes }
}
