#壁を作成
    #テスト用の壁
    summon marker 0 -60 0 {Tags:["wall","test","core","summon"],data:{move:{r:0f},range:0f}}
        summon block_display 0 -60 0 {Tags:["wall","test","display","summon"],block_state:{Name:"minecraft:quartz_block"},brightness:{block:15,sky:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},Passengers:[{id:"minecraft:shulker",Tags:["wall","test","shulker","summon"],NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}]}]}
        summon block_display 1 -60 0 {Tags:["wall","test","display","summon"],block_state:{Name:"minecraft:quartz_block"},brightness:{block:15,sky:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},Passengers:[{id:"minecraft:shulker",Tags:["wall","test","shulker","summon"],NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}]}]}
        summon block_display -1 -60 0 {Tags:["wall","test","display","summon"],block_state:{Name:"minecraft:quartz_block"},brightness:{block:15,sky:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},Passengers:[{id:"minecraft:shulker",Tags:["wall","test","shulker","summon"],NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}]}]}
        summon block_display 0 -59 0 {Tags:["wall","test","display","summon"],block_state:{Name:"minecraft:quartz_block"},brightness:{block:15,sky:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},Passengers:[{id:"minecraft:shulker",Tags:["wall","test","shulker","summon"],NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}]}]}
        summon block_display 1 -59 0 {Tags:["wall","test","display","summon"],block_state:{Name:"minecraft:quartz_block"},brightness:{block:15,sky:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},Passengers:[{id:"minecraft:shulker",Tags:["wall","test","shulker","summon"],NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}]}]}
        summon block_display -1 -59 0 {Tags:["wall","test","display","summon"],block_state:{Name:"minecraft:quartz_block"},brightness:{block:15,sky:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},Passengers:[{id:"minecraft:shulker",Tags:["wall","test","shulker","summon"],NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}]}]}
    #スコア設定
    execute as @e[tag=wall,tag=test,tag=summon] run scoreboard players set @s id -1
    tag @e[tag=wall,tag=test,tag=summon] remove summon
