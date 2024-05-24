#ボスバー削除
bossbar remove countdown
#カウントリセット
scoreboard players set &countdown tick 0
#モード切替
scoreboard players set &mode gamedata 0
#壁を消す
tp @e[tag=wall] ~ ~-1000 ~
kill @e[tag=wall]
#進捗剥奪
advancement revoke @a only press:start
