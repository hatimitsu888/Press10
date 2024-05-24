#共通項目
function press:stage/reset/common

#ステージによって処理を変える
execute if score &stage gamedata matches 0 run function press:stage/reset/0/f
execute if score &stage gamedata matches 1 run function press:stage/reset/1/f
execute if score &stage gamedata matches 2 run function press:stage/reset/2/f

#死ぬ
kill @a
