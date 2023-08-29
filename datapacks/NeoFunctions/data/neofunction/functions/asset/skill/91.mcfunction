# 説明：アカンパニーポーション
# 名前：=/function neofunction:asset/skill/91
# 呼び出し元：(=/function neofunction:system/effect/inv/0)(/advancement grant @s only neofunction:.skill/1)
# 実行条件：進捗達成時


## 内容
##amp1 アカンパニーポーション
execute as @a[nbt={ActiveEffects:[{Id:14,Amplifier:1b}]}] at @s run teleport @a[distance=..4] @a[limit=1,sort=nearest,distance=5..]
tellraw @a[nbt={ActiveEffects:[{Id:14,Amplifier:0b}]}] [{"text":"<","color":"white"},{"selector":"@p","color":"white"},{"text":"院> アカンパニー！オン！","color":"white","hoverEvent":{"action":"show_text","contents":"小範囲のプレイヤー全員が範囲外の最寄りのプレイヤーに転移する。"}}]
#演出
function neofunction:asset/makeup/0


#処理が終わったら透明化を消す
effect clear @s minecraft:invisibility

## 消費MP
#scoreboard players remove @s SP 8

## クールタイム
#scoreboard players add @s CT 8

## ゲージ 半分/4 くらいの空腹
## effect give @s hunger 1 10 false



## 再使用のために進捗剥奪
advancement revoke @s only neofunction:effects_changed/inv/1

