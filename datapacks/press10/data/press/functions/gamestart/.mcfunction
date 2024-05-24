#プレイヤーを数える
execute store result score &players player_cnt if entity @a

#ボタン設置
setblock 11 -56 0 stone_button[facing=east,face=floor] keep

#プレイヤーが2人以上ならボタンを除去
execute if score &players player_cnt matches 2.. run setblock 11 -56 0 air replace
