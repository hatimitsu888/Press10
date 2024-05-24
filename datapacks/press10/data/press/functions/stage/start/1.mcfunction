#壁を作る
function press:wall/create/1
#壁動かす
execute as @e[tag=wall,tag=core] run function press:wall/ {d:2,r:27,t:200}

#ボタン壊す
setblock 33 -56 0 air destroy
#壁壊す
fill 36 -56 -2 36 -52 2 air destroy
