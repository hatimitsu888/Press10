#スコアボード
#> ティック
scoreboard objectives add tick dummy

#> 動くためのティック
scoreboard objectives add move_tick dummy

#> 分・秒数
scoreboard objectives add time dummy
#ダミースコア
scoreboard players add &msec time 0
scoreboard players add &sec time 0
scoreboard players add &min time 0
#define score_holder &msec 秒の少数第2位まで
#define score_holder &sec 秒
#define score_holder &min 分

#> 計算用
scoreboard objectives add math dummy

#> Tempら
scoreboard objectives add tmp dummy

#> id
scoreboard objectives add id dummy
