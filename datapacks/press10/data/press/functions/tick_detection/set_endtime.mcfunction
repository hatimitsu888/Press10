#検知用のチャンクをロード
forceload add 0 0 0 0
#検知用のコマンドブロックを置く
setblock 0 0 0 command_block{TrackOutput:1b,auto:1b,Command:"tickdetection"} replace
#秒数を取得して比較
schedule function press:tick_detection/check_time 2t append
