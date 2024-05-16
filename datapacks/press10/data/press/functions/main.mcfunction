#動く壁が設定されたら
execute as @e[tag=wall,tag=core] if score @s move_tick matches 0.. run function press:wall/move with entity @s data.move
