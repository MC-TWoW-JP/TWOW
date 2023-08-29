# 説明：ワールドセッティング
# 名前：=/function neofunction:asset/setting/4_team
# 呼び出し元：>/function neofunction:asset/setting/0_general
# 実行条件：初回ロード



### team
##add
team add red
team add aqua
team add blue
team add green
team add gray

team add dark_red
team add dark_aqua
team add dark_blue
team add dark_green
team add dark_purple
team add dark_gray

team add light_purple
team add yellow
team add gold
team add black
team add white

## team modify
#color
team modify red color red
team modify aqua color aqua
team modify blue color blue
team modify green color green
team modify gray color gray
team modify dark_red color dark_red
team modify dark_aqua color dark_aqua
team modify dark_blue color dark_blue
team modify dark_green color dark_green
team modify dark_purple color dark_purple
team modify dark_gray color dark_gray
team modify light_purple color light_purple
team modify yellow color yellow
team modify gold color gold
team modify black color black
team modify white color white

#white プレイヤー
team modify white friendlyFire false
team modify white collisionRule pushOwnTeam
team modify white nametagVisibility always
team modify white seeFriendlyInvisibles true
team modify white deathMessageVisibility always
team modify white nametagVisibility always

#red enemy
team modify red friendlyFire true
team modify red collisionRule always



