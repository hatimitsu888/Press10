#壁を作成
    #テスト用の壁
    summon marker 0 -60 0 {Tags:["wall","test","core"],data:{move:{r:0f}}}
        summon block_display 0 -60 0 {Tags:["wall","test","display"],block_state:{Name:"minecraft:quartz_block"},brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},Passengers:[{id:"minecraft:shulker",Tags:["wall","test","shulker"],NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}]}]}
