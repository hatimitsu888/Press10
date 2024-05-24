#動く壁が設定されたら
execute as @e[tag=wall,tag=core] if score @s move_tick matches 0.. run function press:wall/move with entity @s data.move

#爆発球
execute as @e[tag=explosion_ball] at @s positioned ^ ^ ^0.75 run function press:ball/move

#戻る壁が設定されたら
execute as @e[tag=wall,tag=core] if score @s stepback.move_tick matches 0.. run function press:wall/stepback/back

#カウントダウン
execute if score &countdown tick matches 1.. run function press:countdown/timer

#ゲームスタートしてる状態でブラックストーンに乗ったら
execute if score &mode gamedata matches 1 as @a at @s if block ~ ~-0.1 ~ polished_blackstone run function press:stage/reset/fail

#まだ始まってなかったらプレイヤーを数える
execute if score &finish_first gamedata matches ..0 run function press:gamestart/
