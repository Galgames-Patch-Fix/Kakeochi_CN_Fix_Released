@@@Avg\Header.s
@@MAIN


















^savetext,"初夜"

















^include,allset
















^bg01,file:BG/black

















^sentence,*blind_in
^bg01,file:BG/sky_n
















^sentence,waitmode:wait,waittime:1000


















^bg01,file:BG/bg02n2
^music01,file:kakeochi_bgm04
















％kag_s02_02_159
【辉夜】
「从最喜欢的三君……得到了第一次……。谢谢……」
^chara01,file0:01kaguya_,file1:夜_,file2:L_,file3:00_,file4:a_,file5:03,show:true

















【三峰】
「这个称呼……好怀念啊。可能有点害羞。学年提高之后，装模作样地称呼『三峰前辈』啦」
















％kag_s02_02_160
【辉夜】
「哎……我现在……叫了吗？“三君”……」
^chara01,file5:01
















【三峰】
「难道是无意识的吗？确实叫了啊」

















％kag_s02_02_161
【辉夜】
「哇……哇……请忘记……啊！」
^chara01,file5:12,motion:ぷるぷる
















【三峰】
「不，不行。和初体验的回忆一起永远铭刻在灵魂里」
















％kag_s02_02_162
【辉夜】
「呀啊……！？
^sentence,*eventcontinue,waitmode:voice,waittime:1286
^chara01,file5:09,motion:驚き
















唔，好害羞………」
^format,log:continue
^chara01,motion:落ち込み,motionkeep:true
















虽然觉得很孩子气，但也不会那么害羞吧。
















％kag_s02_02_163
【辉夜】
「我……我已经决定了。要好好成为成熟的女性……这样的」
^chara01,file5:13
















％kag_s02_02_164
【辉夜】
「所以，经常留意与年龄相符的行为，也要好好地称呼年长者……」
^chara01,file5:15

















【三峰】
「然后就换成“前辈”了？那个时候，好像有点距离，好寂寞啊。虽然只有一点点」
















％kag_s02_02_165
【辉夜】
「我也是……！我也是。一直都是叫“三君”……。
^sentence,*eventcontinue,waitmode:voice,waittime:5586
^chara01,file5:15,motion:ぴょこ
















所以，现在在我心里，对三峰桑的事也是一直……」
^format,log:continue
^chara01,file5:09
















【三峰】
「用三君叫着我吗？」
















％kag_s02_02_166
【辉夜】
「是……。真是的，说出来，会害羞……尽量不说出……」
^chara01,file5:10
















脸颊被染得通红，在害羞。
















【三峰】
「……试着切换一下？以前的称呼」
















％kag_s02_02_167
【辉夜】
「不！」
^chara01,file5:03
















意想不到的坚定的决心。有点遗憾。
















【三峰】
「算了。好久没叫我了，很高兴」
















预感今后也能经常听到，在此妥协吧。
















％kag_s02_02_168
【辉夜】
「……嗯。呵呵」
^chara01,file5:17
















辉夜笑了。然后，握住了我的手。
















脸颊上重叠着爱的私语。
















％kag_s02_02_169
【辉夜】
「这样已经……我是你的东西了，三峰桑」
^chara01,file5:03
















【三峰】
「那样的话，我也是辉夜的东西哦」
















％kag_s02_02_170
【辉夜】
「……呵呵。可以吗？即使独占了三峰先生……？」
^chara01,file5:18
















【三峰】
「当然可以。我也会一个人独占辉夜，所以打平了？」
















％kag_s02_02_171
【辉夜】
「……嗯」
^chara01,file5:04
















吸了下笑着的辉夜嘴唇。
















％kag_s02_02_172
【辉夜】
「嗯，呵呵……啾……啾……。啾、啾……」
^chara01,file5:18,motion:頷く
















不断重复着像啄木鸟一样的吻，不知谁先开始拥抱在一起。
















能这么近的感受，能互相接触，感到高兴——。
















^message,show:false
















^sentence,*blind_out
^bg01,file:BG/black
^chara01,show:false

































合而为一的幸福感，与彼此成为互相的东西，与始终萦绕在身体中的热量。
















注意到的话，在穿衣服之前，两个人都裸体睡着了。
















——明明说要看星星，好像是要推后了。
















^message,show:false
^music01,*fadeout_long

































^include,fileend

















@@@Avg\Footer.s
\sub,@@!FilejumpName,self,SelfFileName
\jmp,ResultStr[0],__RootFile
