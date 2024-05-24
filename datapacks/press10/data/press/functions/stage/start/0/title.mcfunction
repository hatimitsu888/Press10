#テキストを消す
kill @e[tag=start_text]
#ボタン壊す
setblock 11 -56 0 air destroy

#タイトルを表示
title @a times 20 60 20
title @a title [{"text":"圧縮","color":"#ffffff"},{"text":"10","color":"#ffff55"},{"text":"秒前"}]

#フラグ
scoreboard players set &stage gamedata 0
scoreboard players set &finish_first gamedata 1

#6秒後、アスレスタート
schedule function press:stage/start/0/start 6s
