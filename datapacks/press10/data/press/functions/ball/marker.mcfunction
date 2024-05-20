#マーカー召喚
summon marker ~ ~ ~ {Tags:["explosion_ball","summon"]}

#視線を合わせる
execute on origin rotated as @s run tp @e[tag=summon] ~ ~ ~ ~ ~

#カウント追加
scoreboard players set @e[tag=summon] tick 200

#タグ除去
tag @e[tag=summon] remove summon

#雪玉削除
tp @s ~ ~-1000 ~
