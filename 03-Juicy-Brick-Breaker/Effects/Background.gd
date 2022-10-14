extends ColorRect

var c = 0
var colors = [
	Color8(240,101,149)     #pink 5
	,Color8(247,131,172)   #pink 4
	,Color8(252,194,215)   #pink 3
	,Color8(73,80,87)   #pink 2
	,Color8(250,162,193)   #pink 3
	,Color8(247,131,172)   #pink 4
]

func _ready():
	update_color()

func update_color():
	$Tween.interpolate_property(self, "color", color, colors[c], 2.0, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween.start()

func _on_Tween_tween_all_completed():
	c = wrapi(c+1, 0, colors.size())
	update_color()
