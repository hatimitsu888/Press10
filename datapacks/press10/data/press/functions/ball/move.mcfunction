#進む
tp @s ~ ~ ~

#パーティクル
particle dust{color:[1,1,1],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.1 5
particle dust{color:[0.9,0.9,1.0],scale:1} ~ ~ ~ 0.125 0.125 0.125 0.1 0

#壁を検知する
execute positioned ~-0.65 ~-0.65 ~-0.65 if entity @e[tag=wall,tag=shulker,dx=0,dy=0,dz=0] positioned ~0.3 ~0.3 ~0.3 if entity @e[tag=wall,tag=shulker,dx=0,dy=0,dz=0] run function press:ball/boom

#時間を減少
scoreboard players remove @s tick 1
#ゼロになったら除去
execute if score @s tick matches ..0 run function press:ball/kill

#ブロックに当たる
execute unless block ~ ~ ~ air run function press:ball/kill
