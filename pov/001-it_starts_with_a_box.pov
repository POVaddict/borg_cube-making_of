camera {
	location <3, 5, -10>
	direction 3*z
	look_at 0
}

background { rgb .7 }

light_source { <3, 5, -10> color rgb .6 }

light_source { <-5, 7, -10> color rgb 1 }

box {
	<-1, -1, -1>, <1, 1, 1>
	hollow
	pigment { color rgbt<.4, 1, .4, .8> }
}
