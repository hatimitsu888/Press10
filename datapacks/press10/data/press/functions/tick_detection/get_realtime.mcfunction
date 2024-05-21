#コマンドブロック内の時間を取得
data modify storage press: tickdetection.realtime_before set string block 0 0 0 LastOutput 16 18

#コマンドブロック除去
setblock 0 0 0 air replace
#チャンクロード解除
forceload remove 0 0 0 0
