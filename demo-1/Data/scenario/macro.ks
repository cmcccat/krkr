
@macro name=������
[emb exp="f.name1"]
@endmacro
@macro name=������
[emb exp="f.name2"]
@endmacro
@macro name=���

@cl layer=0 time=200
@cl layer=1 time=200
@cl layer=2 time=200
@endmacro

@macro name=��ʾ����
@fg layer=%ll|0 storage=%pic pos=%pos|c  time=%tm|200
@wt
@endmacro
@macro name=�������
@cl layer=%ll  time=%tm|500
@wt
@endmacro


@macro name=��ʾͼƬ
@backlay
@image storage=%pic layer=%ll page=back visible=true
@trans method=crossfade  time=%tm
@wt
@endmacro

@macro name=��ʾ����
@backlay
@image storage=%pic layer=stage page=back visible=true
@trans method=%ts|crossfade   time=%tm|500
@wt
@endmacro

@macro name=�������
@backlay
@freeimage  layer=stage page=back 
@trans method=%ts|crossfade   time=%tm|500
@wt
@endmacro

@macro name=���ͼƬ
[backlay]
[freeimage layer=%ll page=back]
[trans method=crossfade time=%tm][wt]
@endmacro


@macro name=��ʾ�Ի���
[backlay]
[current layer=message0 page=back]
[position layer="message0" frame="�Ի���" visible="true" left="0" top=0 marginl=60 marginb=8 marginr=8 margint=380 page=back]
[trans method=crossfade time=500]
[current layer=message0 page=fore]
[wt]

@endmacro
@macro name=�Ի�����ʧ
[backlay]
[current layer=message0 page=back]
[position layer="message0" frame="�Ի���" visible="false" left="0" top=0 marginl=60 marginb=8 marginr=8 margint=380 page=back]
[trans method=crossfade time=500]
[wt]
[current layer=message0 page=fore]
@endmacro
@macro name=�Ա�

[nowait]
[locate x=10 y=15]
[eval exp="f.pb='   '"]
[emb exp="f.name5"][r]
[endnowait]

[locate x=40 y=70]
@endmacro
@macro name=����

[nowait]
[locate x=10 y=15]
[eval exp="f.name5='����Сè'"]
��[emb exp="f.name5"]��[r]
[endnowait]

[locate x=40 y=70]
@endmacro
@macro name=����

[nowait]
[locate x=10 y=15]
��[emb exp="f.name3"]��[r]
[endnowait]

[locate x=40 y=70]
@endmacro
@macro name=Ů��һ

[nowait]
[locate x=10 y=15]
[eval exp="f.name4='��С��'"]
��[emb exp="f.name4"]��[r]
[endnowait]

[locate x=40 y=70]
@endmacro
@macro name=Ů����

[nowait]
[locate x=10 y=15]
[eval exp="f.name5='����Ұ�'"]
��[emb exp="f.name5"]��[r]
[endnowait]

[locate x=40 y=70]
@endmacro
@macro name=����
[locate x=&f.x y=&f.y]
[button normal=&(kag.getBookMarkFileNameAtNum(f.save)) cond="kag.bookMarkDates[f.save] != void"]
[button normal="nodata" cond="kag.bookMarkDates[f.save] == void"]
[eval exp=f.tx1=f.x+150] 
[eval exp=f.ty1=f.y+20] 
[locate x=&f.tx1 y=&f.ty1]
[link target=%dd][emb exp="kag.bookMarkDates[f.save]" cond="kag.bookMarkDates[&f.save] != void"][emb exp="'----/----/----'" cond="kag.bookMarkDates[f.save] == void"][endlink]
[eval exp=f.tx2=f.tx1] 
[eval exp=f.ty2=f.ty1+30]
[locate x=&f.tx2 y=&f.ty2]
[link target=%dd][emb exp="kag.getBookMarkPageName(f.save)" cond="kag.bookMarkDates[f.save] != void"][emb exp="'--------------'" cond="kag.bookMarkDates[f.save] == void"][endlink]
@endmacro
@macro name=�浵
[locate x=&f.x y=&f.y]
[button normal=&(kag.getBookMarkFileNameAtNum(f.save)) cond="kag.bookMarkDates[f.save] != void"]
[button normal="nodata" cond="kag.bookMarkDates[f.save] == void"]
[eval exp=f.tx1=f.x+150] 
[eval exp=f.ty1=f.y+20] 
[locate x=&f.tx1 y=&f.ty1]
[link target=%dd][emb exp="kag.bookMarkDates[f.save]" cond="kag.bookMarkDates[f.save] != void"][emb exp="'----/----/----'" cond="kag.bookMarkDates[f.save] == void"][endlink]
[eval exp=f.tx2=f.tx1] 
[eval exp=f.ty2=f.ty1+30]
[locate x=&f.tx2 y=&f.ty2]
[link target=%dd][emb exp="kag.getBookMarkPageName(f.save)" cond="kag.bookMarkDates[f.save] != void"][emb exp="'--------------'" cond="kag.bookMarkDates[f.save] == void"][endlink]
@endmacro

@return