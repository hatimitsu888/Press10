#フラグ戻す
scoreboard players set &finish_first gamedata 0

#進捗プレゼント
advancement grant @a only press:visible/miss_stage0

#初期化処理
function press:stage/reset/0/
