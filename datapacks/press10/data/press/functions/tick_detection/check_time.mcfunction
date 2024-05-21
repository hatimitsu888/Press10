#コマンドブロック内の時間を取得
data modify storage press: tickdetection.realtime_after set string block 0 0 0 LastOutput 16 18

#スコアに入れる
function press:tick_detection/set_score with storage press: tickdetection

#コマンドブロック除去
setblock 0 0 0 air replace
#チャンクロード解除
forceload remove 0 0 0 0

#beforeが58以降でafterが58以降じゃなかったらafterに60を足す
execute if score &realtime_before tickdetect matches 58.. unless score &realtime_after tickdetect matches 58.. run scoreboard players add &realtime_after tickdetect 60

#差が2秒以上あったらtickコマンド使用検知
scoreboard players operation &realtime_after tickdetect -= &realtime_before tickdetect
execute if score &realtime_after tickdetect matches 2.. run scoreboard players set &use_tick_command tickdetect 1
