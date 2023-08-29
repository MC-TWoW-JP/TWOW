# システム
# >neofunction:slept_in_bed
# =/function neofunction:system/adv/shot_crossbow/gun/gun
# gun:1b

## 内容
#発射物を変更
execute at @s run data merge entity @e[type=minecraft:arrow,limit=1,tag=!gun] {Tags:["gun"],life:1140,NoGravity:1b,crit:0b,SoundEvent:"item.shield.break"}

#装弾数調整
execute if entity @s[nbt={SelectedItem:{tag:{CustomModelData:502}}}] run schedule function neofunction:system/adv/shot_crossbow/gun/modify_mainhand 10t append
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:502}}]}] run schedule function neofunction:system/adv/shot_crossbow/gun/modify_offhand 10t append

#リコイル（反動の演出）
tp @s ~ ~ ~ ~ ~-1.5

#クロスボウの射撃音を消す（空気なら出ない）
stopsound @s

#射撃音
playsound minecraft:neo/se/sr record @s ~ ~ ~ 0.05 1 0.05



