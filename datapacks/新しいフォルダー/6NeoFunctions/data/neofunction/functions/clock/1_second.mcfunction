#say clock/1_second

#　内容
###クールタイムCT
execute as @a[scores={CT=1..}] run scoreboard players remove @s CT 1


###　椅子
#5mまで近づくとパーティクルがでる。
#0.5mまで近づくと座れる（tagのエンティティの上にライドする）。
execute as @a at @s as @e[tag=chair,distance=..5] at @s run particle minecraft:dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 1
execute as @a at @s if entity @e[tag=chair,distance=..0.5] run ride @s mount @e[tag=chair,sort=nearest,limit=1]

# 1m以内に2体以上いると数秒後消える。
execute as @e[tag=limit] at @s if entity @e[tag=limit,distance=0.5..1.5] run tag @e[tag=limit,distance=..1.5] add del

###発光解除
execute as @e[tag=glow1] run function neofunction:asset/skill/3
tag @e[tag=glow1] remove glow1


#　再装填
schedule clear neofunction:clock/1_second
schedule function neofunction:clock/1_second 1s
