[wait time=200]
[loadplugin module=wuvorbis.dll]
[loadplugin module="wump3.dll"]
@iscript

@endscript
@call storage=macro.ks
[eval exp="sf.cond=0"cond="sf.cond==void"]
[rclick enabled=false]
[clickskip enabled=false]
[history output=false enabled=false]
@if exp="sf.cond==0"

[current layer=message0 page=fore withback=ture]
[layopt layer=message0 page=fore visible=true]
[position layer=message0 page=fore frame="" opacity=0]
[backlay]
[image storage="社团logo" layer=base page=back visible=true]
[trans method=crossfade time=3000]
[wt]
[wait time=3000]
[freeimage layer=base page=back]
[trans method=crossfade time=3000][wt]
@endif
*start
[eval exp="sf.cond=1"]
[startanchor]
[cm]
[rclick enabled=false]
[clickskip enabled=false]
[history output=false enabled=false]

*title
[cm]

[stopbgm]
[playbgm storage="bgm01"]
[current layer=message0 page=fore withback=ture]
[layopt layer=message0 page=fore visible=true]
[position layer=message0 page=fore frame="" opacity=0]

[backlay]
[image storage="title-1" layer=stage page=back visible=true]


[current layer=message0 page=fore]
[position left=0 top=0 width=800 height=600 opacity=0]
[current layer=message0 page=back]
[position left=0 top=0 width=800 height=600 opacity=0]


@menul

@locate x=500 y=360
[button normal=开始  over=开始01 on=开始02  page=back target=*eps clickse=huala enterse=ding]
@locate x=500 y=440

[button normal=继续  over=继续01 on=继续02  page=back target=*titleload clickse=huala enterse=ding]
@locate x=500 y=520

[button normal=结束  over=结束01 on=结束02  page=back target=*titleexit clickse=huala enterse=ding]
[trans method=crossfade time=1000]
[current layer=message0 page=fore]
[wt]

[s]
*eps|初章

@call storage=a01.ks target=*kag
*ending
[cm]
[stopse]
[backlay]
[image storage="black" layer=base page=back]
[trans method=crossfade time=600]
[wt]
[text off]
[call storage=staff.ks target=*staff] 
[text on]
[stopbgm]
[gotostart ask=false]

*titleload
[er]
[call storage=load.ks ]
[jump target=*title]
[s]

*titleexit
[cm]
[stopbgm]
[backlay]
[image storage="black" layer=base page=back]
[trans method=crossfade time=600]
[wt]
[close ask=false]
