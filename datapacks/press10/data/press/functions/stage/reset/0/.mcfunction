#壁戻す
fill 14 -56 -2 14 -52 2 chiseled_quartz_block replace
#ボタンを戻す
setblock 11 -56 0 stone_button[facing=east,face=floor]
#テキスト戻す
function press:gamestart/summon_start_text
