#雪玉の位置にマーカーを召喚
execute as @e[type=snowball] at @s run function press:ball/marker

#リセット
scoreboard players set @s use_ball 0
advancement revoke @s only press:use_ball
