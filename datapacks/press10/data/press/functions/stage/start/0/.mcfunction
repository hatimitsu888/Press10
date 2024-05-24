#壁を作る
function press:wall/create/0
#壁動かす
execute as @e[tag=wall,tag=core] run function press:wall/ {d:2,r:16,t:200}

#壁壊す
fill 14 -56 -2 14 -52 2 air destroy
