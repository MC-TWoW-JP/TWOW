# ボートなどで捕獲される対策(実行者はボート
# >neofunction:entity/1_detection
# =/function neofunction:entity/tag/red_break_boats
# team=redで騎乗しているエンティティが3sごとにボートを壊す

execute as @s[type=#neofunction:vehicle] at @s run playsound minecraft:entity.zombie.break_wooden_door record @a[distance=..16] ~ ~ ~ 0.5 0.5 0.5
execute as @s[type=#neofunction:vehicle] run damage @s 99 minecraft:out_of_world