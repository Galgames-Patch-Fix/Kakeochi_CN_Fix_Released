@@@Avg\Header.s
@@MAIN


















^savetext,"出门避雨"

















^include,allset
















^bg01,file:BG/black




















^sentence,*blind_in
^bg01,file:BG/bg02e
^music01,file:kakeochi_bgm01
















使用熏烟杀虫剂后，需要打开窗户换气。
















但是，在打开窗户的庭院前看到的是被雨淋的可怜洗涤衣物的身影。
















【三峰】
「真是全灭啊……」
















％kag_s04_02_001
【辉夜】
「没办法啊……重新洗吧！幸好这之后好像是晴天」
^chara01,file0:01kaguya_,file1:昼_,file2:M_,file3:05_,file4:a_,file5:02,show:true
















【三峰】
「是啊。那么，我去了，辉夜还是先洗澡为好」
















％kag_s04_02_002
【辉夜】
「不，不能那样。我来洗衣服――
^sentence,*eventcontinue,waitmode:voice,waittime:4846
^chara01,file5:15
















阿啾！」
^format,log:continue
^chara01,file5:07,motion:頷く
















％kag_s04_02_003
【辉夜】
「我、库！我，
^sentence,*eventcontinue,waitmode:voice,waittime:2091
^chara01,file5:12,motion:頷く
















啊啾！哈、哈、哈……」
^format,log:continue
^chara01,motion:頷く
















这三连串的打喷嚏无法抵赖。

















％kag_s04_02_004
【辉夜】
「啊……」
^chara01,file5:11
















【三峰】
「——你看。在回家的路上也打喷嚏了。感冒之前快去洗澡」
















％kag_s04_02_005
【辉夜】
「那么……就按你说的」
^chara01,file5:14
















【三峰】
「啊！但是，有穿的东西吗？」
















％kag_s04_02_006
【辉夜】
「啊……是啊，这件衣服是最后的一件……之后全部在院子里浸水……」
^chara01,file5:01
















【三峰】
「如果可以的话，我的借给你吧？」
















％kag_s04_02_007
【辉夜】
「不，不必了。
^sentence,*eventcontinue,waitmode:voice,waittime:2940
^chara01,file5:03
















那个，换的衣服……要说有……还是有……」
^format,log:continue
^chara01,file5:16
















【三峰】
「什么啊，有啊？太好了。恩……？」
















【三峰】
「——要说有的话，还是有的……这是什么意思……？」
















％kag_s04_02_008
【辉夜】
「那就是……给你看稍微有点觉得害羞呢……」
^chara01,file5:09
















那是什么？运动衫之类的。
















【三峰】
「我不会笑的。总之现在快进去吧」
















％kag_s04_02_009
【辉夜】
「好……！」
^chara01,file5:08
















辉夜走向浴室。
^chara01,show:false
















好嘞，我也把洗的衣服收拾好吧。
















^message,show:false
^music01,*fadeout_long
^se01,*fadeout

































^sentence,*blind_out
^bg01,file:BG/black
















^include,fileend

















@@@Avg\Footer.s
\sub,@@!FilejumpName,self,SelfFileName
\jmp,ResultStr[0],__RootFile
