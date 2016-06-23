*rclick
[locksnapshot]
[rclick enabled=false]
[history output=false enabled=false]
[clickskip enabled=false]
[tempsave]
[history output=false]
[mapdisable layer=0 page=fore]
[backlay]
[layopt layer=message1 page=back visible=true]
[layopt layer=message0 page=back visible=false]
[current layer=message1 page=back]
[position left=0 top=0 width=800 height=600 opacity=0]

*menu
[er]

[image layer=3 page="back" storage=flower visible="true" top=0 left=0]

[current layer=message1 page=back]
[wt]
[er]
[nowait]
[locate y=100]
[style align=center]
[locate x=150 y=20]
[button normal=graphic  over=graphic1 on=graphic  page=back target=*hide clickse=huala enterse=ding]

[locate x=470 y=20]
[button normal=history  over=history1 on=history  page=back target=*history clickse=huala enterse=ding]



[locate x=50 y=200]
[button normal=save  over=save1 on=save  page=back target=*save clickse=huala enterse=ding]

[locate x=600 y=200]
[button normal=load  over=load1 on=load  page=back target=*load clickse=huala enterse=ding]

[locate x=150 y=370]
[button normal=fanhui  over=fanhui1 on=fanhui  page=back target=*ret clickse=huala enterse=ding]

[locate x=470 y=370]
[button normal=title  over=title1 on=title  page=back target=*gotostart clickse=huala enterse=ding]

[locate x=315 y=200]
[button normal=config  over=config1 on=config  page=back target=*config clickse=huala enterse=ding]
[endnowait]

[current layer=message1 page=fore]


[trans time=500 rule=8 vague=128]
[wt]



[backlay]
[image layer=3 page="back" storage=flower visible="true" top=0 left=0]
[trans  method=crossfade time=200]
@wt

[s]

*ret
[tempload bgm=false se=false backlay=true]
[trans time=500 rule=8 vague=128]
[wt]
[rclick enabled=true call=true storage="rclick.ks" target=*rclick]
[history output=true enabled=true]
[clickskip enabled=true]
[unlocksnapshot]
[return]


*hide
[tempload bgm=false se=false backlay=true]
[trans time=500 rule=8 vague=128]
[wt]
[rclick enabled=true call=true storage="rclick.ks" target=*rclick]
[history output=true enabled=true]
[clickskip enabled=true]
[unlocksnapshot]
[hidemessage]
[return]
;[jump target=*menu]

*history
[er]
[showhistory]
[jump target=*menu]

*config
[er]
[call storage=config.ks]

[jump target=*menu]

*load
[er]
[call storage=load1.ks]

[jump target=*menu]

*save
[er]
[call storage=save.ks]

[jump target=*menu]


*gotostart
[gotostart ask=true]
[jump target=*menu]
