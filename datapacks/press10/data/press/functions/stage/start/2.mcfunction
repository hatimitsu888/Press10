#壁を作る
function press:wall/create/2
#壁動かす
execute as @e[tag=wall,tag=core] run function press:wall/ {d:2,r:15,t:200}

#ボタン壊す
setblock 66 -54 0 air destroy
#壁壊す
fill 67 -54 -3 67 -50 3 air destroy
