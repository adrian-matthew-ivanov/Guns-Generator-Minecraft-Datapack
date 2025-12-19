# Render trail
function code:test/render

# Subtract from range to figure out if render
scoreboard players remove @s test_gun_range 1

# Check if hits entity (only add "run return" if you don't want it to peirce)
execute as @e[dx=0,dy=0,dz=0,tag=!nohit,type=!#code:notmob] positioned ~-0.999 ~-0.999 ~-0.999 if entity @s[dx=0,dy=0,dz=0] positioned ~0.999 ~0.999 ~0.999 run return run function code:test/hit_entity

# If end range then finish
execute if score @s test_gun_range matches ..0 run function code:test/hit_end_range

# If hit block run hit block
execute unless block ~ ~ ~ #code:pass_through run function code:test/hit_block

# If the raycast hasn't hit a block, continue
execute if block ~ ~ ~ #code:pass_through if score @s test_gun_range matches 1.. positioned ^ ^ ^0.1 run function code:test/ray