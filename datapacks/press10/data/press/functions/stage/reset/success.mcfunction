#共通項目
function press:stage/reset/common

#ステージによって処理を変える
execute if score &stage gamedata matches 0 run function press:stage/reset/0/s
execute if score &stage gamedata matches 1 run function press:stage/reset/1/s
execute if score &stage gamedata matches 2 run function press:stage/reset/2/s

#ステージが進む
scoreboard players add &stage gamedata 1
