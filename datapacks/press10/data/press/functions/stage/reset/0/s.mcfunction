#次のステージへ
spawnpoint @a 31 -56 0 -90
tp @a 31 -56 0 -90 0
#クリア処理
advancement grant @s only press:visible/stage/0
execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 2 1
#ボタン設置
setblock 33 -56 0 stone_button[facing=east,face=floor] replace
#タイトル表示
title @a times 1s 3s 1s
title @a title {"text":"Stage1"}
title @a subtitle {"text":"～ラン＆ジャンプ～"}
#初期化処理
function press:stage/reset/0/