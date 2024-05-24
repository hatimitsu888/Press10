#カウントダウン
scoreboard players remove &countdown tick 1

#ボスバーに値を代入
execute store result bossbar countdown value run scoreboard players get &countdown tick
#秒とミリ秒を計算
function press:countdown/math
#ボスバーのタイトルに代入
bossbar set countdown name [{"text":"あと "},{"score":{"name":"&sec","objective":"time"}},{"text":"."},{"score":{"name":"&msec","objective":"time"}},{"text":" 秒"}]

#音を鳴らす
execute if score &msec time matches 0 if score &sec time matches 4.. as @a at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1
execute if score &msec time matches 0 if score &sec time matches 1..3 as @a at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2 1

#カウント終了
execute if score &countdown tick matches ..0 run function press:stage/reset/fail
