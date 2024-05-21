#タイム加算
scoreboard players add @s stepback.move_tick 1

#計算用のスコアを設定する
scoreboard players set &10000000 math 10000000
scoreboard players set &10000 math 10000
scoreboard players set &10 math 10

##(10000 - ((endtick * 1000 - nowtick * 1000) / endtick / 10)^4 / 10000) * range - 前回の移動距離
#tickを取得
scoreboard players operation &now_tick math = @s stepback.move_tick
scoreboard players operation &end_tick math = @s stepback.tick
#tickを1000倍
scoreboard players operation &now_tick math *= &1000 math
scoreboard players operation &end_tick math *= &1000 math
#移動tickから現在のtickを引く
scoreboard players operation &end_tick math -= &now_tick math
#移動時間で割る
scoreboard players operation &end_tick math /= @s stepback.tick
#10で割る
scoreboard players operation &end_tick math /= &10 math
#4乗
scoreboard players operation &power math = &end_tick math
scoreboard players operation &power math *= &end_tick math
scoreboard players operation &power math *= &end_tick math
scoreboard players operation &power math *= &end_tick math
#1000で割る
scoreboard players operation &power math /= &10000 math
#100000から引く
scoreboard players operation &move_range math = &10000 math
scoreboard players operation &move_range math -= &power math
#移動する長さをかける
scoreboard players operation &move_range math *= @s stepback.range
scoreboard players operation &move_diff math = &move_range math
#前の長さとの差分をとる
scoreboard players operation &move_diff math -= @s stepback.moved_range
#長さを保存する
scoreboard players operation @s stepback.moved_range = &move_range math

#ストレージに保存
execute store result storage press: stepback.backrange float 0.0000001 run scoreboard players get &move_diff math
#動かす
function press:wall/stepback/move with storage press: stepback

#時間切れ
execute if score @s stepback.move_tick >= @s stepback.tick run scoreboard players reset @s stepback.move_tick
