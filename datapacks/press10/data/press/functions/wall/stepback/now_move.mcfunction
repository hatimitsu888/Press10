#戻る距離から前戻った距離を引く
scoreboard players set &move_add_range math 10000
scoreboard players operation &moved_range math = @s stepback.moved_range
scoreboard players operation &moved_range math /= &move_add_range math
scoreboard players operation &move_add_range math = @s stepback.range
scoreboard players operation &move_add_range math -= &moved_range math
