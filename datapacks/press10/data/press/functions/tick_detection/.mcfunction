#検知用のスコア
scoreboard players set &use_tick_command tickdetect 0

#検知用のチャンクをロード
forceload add 0 0 0 0
#検知用のコマンドブロックを置く
setblock 0 0 0 command_block{TrackOutput:1b,auto:1b,Command:"tickdetection"} replace
#秒数を取得
scoreboard players set &realtime_before tickdetect 0
scoreboard players set &realtime_after tickdetect 0
schedule function press:tick_detection/get_realtime 2t append
schedule function press:tick_detection/set_endtime 1s append
