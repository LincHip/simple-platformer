extends Node2D

var score = 0


func _on_KillPlane_body_entered(body):
	$Player.position.x = 100
	$Player.position.y = 200

func _on_Coin_body_entered(body):
	score += 1
	$HUD/ScoreLabel.text = "Coins: " + str(score)

func _on_Key_body_entered(body):
	$HUD/WinLabel.text = "Congratulations!!\n~You Win!~"
