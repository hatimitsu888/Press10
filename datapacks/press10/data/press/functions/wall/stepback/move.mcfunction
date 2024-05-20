#移動距離を設定
execute store result score $strength delta.api.launch run data get storage press: stepback.backrange 10000

#壁を指定
scoreboard players operation &tmpid id = @s id
execute as @e[tag=wall] if score @s id = &tmpid id run tag @s add this_wall

#壁を動かす
$execute as @e[tag=this_wall,tag=!core] at @s rotated as @e[tag=this_wall,tag=core] run tp @s ^ ^ ^-$(backrange)

#壁に当たってたらプレイヤーを飛ばす
#execute as @e[tag=this_wall,tag=!core] at @s align xyz positioned ~-0.005 ~ ~-0.005 as @a[dx=0.01,dy=0,dz=0.01] at @s rotated as @e[tag=this_wall,tag=core] run function delta:api/launch_looking 
execute as @e[tag=this_wall,tag=!core] at @s align xyz as @a[dx=0,dy=0,dz=0] at @s rotated as @e[tag=this_wall,tag=core] run function delta:api/launch_looking 

#壁に埋まったら死ぬ処理
#####################

#タグ除去
tag @e[tag=this_wall] remove this_wall
