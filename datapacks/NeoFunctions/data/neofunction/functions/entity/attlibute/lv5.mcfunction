# 説明：lv5
# 名前：=/function neofunction:entity/attlibute/lv5
# 呼び出し元：>=/function neofunction:entity/2_check
# 実行条件：impulse



## 内容
attribute @s minecraft:generic.max_health modifier add 1-1-1-1-1 lv 400 add
attribute @s minecraft:generic.attack_damage modifier add 1-1-1-1-1 lv 100 add
attribute @s minecraft:generic.knockback_resistance modifier add 1-1-1-1-1 lv 0.8 add
attribute @s minecraft:generic.movement_speed modifier add 1-1-1-1-1 lv 0.8 multiply_base
attribute @s minecraft:generic.follow_range modifier add 1-1-1-1-1 lv 0.8 multiply_base

data merge entity @s {Health:99999f}




