#マーカーを特定する
execute positioned ~-0.65 ~-0.65 ~-0.65 as @e[tag=wall,tag=shulker,dx=0,dy=0,dz=0] positioned ~0.3 ~0.3 ~0.3 if entity @s[dx=0,dy=0,dz=0] run tag @s add this_wall
#コアを特定
scoreboard players operation &tmpid id = @e[tag=this_wall] id
execute as @e[tag=wall] if score @s id = &tmpid id run tag @s add this_wall
#後ろに戻る
execute as @e[tag=this_wall,tag=core] run function press:wall/stepback/ {tickrange:40,tick:20}
#タグ削除
tag @e[tag=this_wall] remove this_wall

#キル
function press:ball/kill
