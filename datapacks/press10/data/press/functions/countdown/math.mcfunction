#計算用スコア
scoreboard players set &100 math 100
scoreboard players set &20 math 20

#現在の秒数を100倍
scoreboard players operation &sec time = &countdown tick
scoreboard players operation &sec time *= &100 math
#秒数に直す
scoreboard players operation &sec time /= &20 math
#秒とミリ秒を分けて算出
scoreboard players operation &msec time = &sec time
scoreboard players operation &msec time %= &100 math
scoreboard players operation &sec time /= &100 math
