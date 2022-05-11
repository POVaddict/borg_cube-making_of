camera {
	location <3, 5, -10>
	direction 3*z
	look_at 0
}

background { rgb .7 }

light_source { <3, 5, -10> color rgb .6 }

light_source { <-5, 7, -10> color rgb 1 }

#declare Pipe = cylinder {
	<-1, -1, -1>, <1, -1, -1>, .09
	pigment { color rgb<.2, .2, .2> }
	finish { specular .8 }
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

// show camera location and direction
union {
	sphere {  <.2, .11, -.9>, .1
		pigment { rgb<1, .1, 0> }
	}
	cone {
		<.2, .11, -.9>, .1, <-.2, 0, .9>, 0
		pigment { rgb<1, 1, 0> }
	}
}
