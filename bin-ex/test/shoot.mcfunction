# set the range
scoreboard players set @s test_gun_range 100

# start the raycast
execute as @s at @s anchored eyes positioned ^ ^ ^2 run function code:test/ray

# make it so that you can click again
advancement revoke @s only code:test