#壁を指定
scoreboard players operation &tmpid id = @s id
execute as @e[tag=wall] if score @s id = &tmpid id run tag @s add this_wall

#壁を動かす
$execute as @e[tag=this_wall,tag=!core] at @s rotated as @e[tag=this_wall,tag=core] run tp @s ^ ^ ^$(r)

#タグ除去
tag @e[tag=this_wall] remove this_wall

#カウント
scoreboard players add @s move_tick 1
#時間切れ
execute if score @s move_tick > @s tick run scoreboard players reset @s move_tick
