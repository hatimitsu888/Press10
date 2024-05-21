#記述指定
#> 
# tickrange: 戻る秒数分の長さ
# tick: 戻る長さ

#初期値を設定する
$scoreboard players set @s stepback.tickrange $(tickrange)
$scoreboard players set @s stepback.tick $(tick)

#マーカーにタイムを加算
scoreboard players operation @s move_tick += @s stepback.tickrange

#1tickに進む距離を取得
execute store result score &tickrange math run data get entity @s data.move.r 1000

#戻ってる途中だったら戻ってた距離を取得
scoreboard players set &move_add_range math 0
execute if score @s stepback.move_tick matches 0.. run function press:wall/stepback/now_move

#戻る距離を計算
scoreboard players operation @s stepback.range = @s stepback.tickrange
scoreboard players operation @s stepback.range *= &tickrange math

#戻ってた距離があれば加算
scoreboard players operation @s stepback.range += &move_add_range math

#初期値を設定
scoreboard players set @s stepback.moved_range 0

#動き始める
scoreboard players set @s stepback.move_tick 0
