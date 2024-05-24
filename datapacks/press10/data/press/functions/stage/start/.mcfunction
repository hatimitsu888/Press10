#カウントダウン開始
function press:countdown/
#ゲームモードを変更
gamemode adventure @s
#フラグを変更
scoreboard players set &mode gamedata 1
#終了処理の進捗剥奪
advancement revoke @s only press:finish

#現在のステージに応じて処理を変える
execute if score &stage gamedata matches 0 run function press:stage/start/0/
execute if score &stage gamedata matches 1 run function press:stage/start/1
execute if score &stage gamedata matches 2 run function press:stage/start/2
