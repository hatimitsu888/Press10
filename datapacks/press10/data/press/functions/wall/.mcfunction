#記述指定
#> 
# d: 壁が進む方角 0=上/1=下/2=東/3=南/4=西/5=北  
# r: 長さ(m)  
# t: 時間(tick)
#define function press:wall/
#@public

#自身がwallのcoreじゃなかったら強制終了
execute unless entity @s[tag=wall,tag=core] run return 0

#> 壁設定用スコア
#@within press:wall/
    #define score_holder &direction
    #define score_holder &range
    #define score_holder &tick
#数値設定
scoreboard players set &direction tmp -1
scoreboard players set &range tmp -1
scoreboard players set &tick tmp -1
$scoreboard players set &direction tmp $(d)
$scoreboard players set &range tmp $(r)
$scoreboard players set &tick tmp $(t)

#値がマイナスなら強制終了
execute if score &direction tmp matches ..-1 run return -1
execute if score &range tmp matches ..-1 run return -1
execute if score &tick tmp matches ..-1 run return -1

#1tick毎の移動距離を計算
scoreboard players set &10000 math 10000
scoreboard players operation &range math = &range tmp
scoreboard players operation &range math *= &10000 math
scoreboard players operation &range math /= &tick tmp

#移動距離設定（いらない？）
execute store result entity @s data.range float 1 run scoreboard players get &range tmp
#1tick毎の移動距離設定
execute store result entity @s data.move.r float 0.0001 run scoreboard players get &range math
#向きを設定
execute if score &direction tmp matches 0 run data modify entity @s Rotation set value [  0f,-90f]
execute if score &direction tmp matches 1 run data modify entity @s Rotation set value [  0f, 90f]
execute if score &direction tmp matches 2 run data modify entity @s Rotation set value [-90f,  0f]
execute if score &direction tmp matches 3 run data modify entity @s Rotation set value [  0f,  0f]
execute if score &direction tmp matches 4 run data modify entity @s Rotation set value [ 90f,  0f]
execute if score &direction tmp matches 5 run data modify entity @s Rotation set value [180f,  0f]
#execute as 壁 at @s rotated as マーカー run tp 壁 ^ ^ ^移動距離
#にすればマーカーは動かず壁だけがマーカーの向いてる方向に進むようになる

#何秒動くか設定
$scoreboard players set @s tick $(t)
#動くためのtickを設定
$scoreboard players set @s move_tick $(t)
