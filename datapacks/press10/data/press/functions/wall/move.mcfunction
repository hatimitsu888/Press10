#移動距離を設定
execute store result score $strength delta.api.launch run data get entity @s data.move.r 10000

#壁を指定
scoreboard players operation &tmpid id = @s id
execute as @e[tag=wall] if score @s id = &tmpid id run tag @s add this_wall

#壁を動かす
$execute as @e[tag=this_wall,tag=!core] at @s rotated as @e[tag=this_wall,tag=core] run tp @s ^ ^ ^$(r)

#壁に当たってたらプレイヤーを飛ばす
#execute as @e[tag=this_wall,tag=!core] at @s align xyz positioned ~-0.005 ~ ~-0.005 as @a[dx=0.01,dy=0,dz=0.01] at @s rotated as @e[tag=this_wall,tag=core] run function delta:api/launch_looking 
execute as @e[tag=this_wall,tag=!core] at @s positioned ~-0.5 ~ ~-0.5 as @a[dx=0,dy=0,dz=0] at @s rotated as @e[tag=this_wall,tag=core] run function delta:api/launch_looking 

#壁に埋まったら死ぬ処理
execute if score &mode gamedata matches 1 at @e[tag=this_wall,tag=!core] positioned ~-0.5 ~ ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 as @a[dx=0,dy=0,dz=0] positioned ~0.6 ~0.6 ~0.6 if entity @a[dx=0,dy=0,dz=0] run tag @s add pressed
execute as @a[tag=pressed] run function press:stage/reset/fail

#タグ除去
tag @e[tag=this_wall] remove this_wall
tag @a[tag=pressed] remove pressed

#カウント
scoreboard players remove @s move_tick 1
#時間切れ
execute if score @s move_tick matches ..0 run scoreboard players reset @s move_tick
