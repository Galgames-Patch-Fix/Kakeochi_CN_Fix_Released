@@@Avg\Header.s
@@MAIN


















^savetext,"出门避雨"

















^include,allset
















^bg01,file:BG/black





















^sentence,*blind_in
^bg01,file:BG/bg02d
^music01,file:kakeochi_bgm01
^se01,file:セミ1
















％kag_s04_01_001
【辉夜】
「收拾好了哦，辛苦了」
^chara01,file0:01kaguya_,file1:昼_,file2:M_,file3:03_,file4:a_,file5:02,show:true
















【三峰】
「嗯，谢谢。这边也结束了哦」

































两个人生活开始几天了呢？
^effect,file:effect/黒帯
















——今天早上，有虫子出现了。
















连叫名字都令人讨厌的黑色家伙。
















与东京市内不同，绿地众多，陈旧不堪的窗户也很多，是从哪里吹进风来也不奇怪的房子。
















趁着这个机会，决定打扫卫生。
















幸好天气很好，洗的衣服也一下子全干了。
















现在在院子里迎风飘扬着洗涤剂的香味。

















^effect,file:none
















％kag_s04_01_002
【辉夜】
「……没有其他人了吧，朋友什么的――」
^chara01,file5:01
















所谓朋友，是不想说出那个甲虫的名字的辉夜使用的代名词。
















【三峰】
「嗯，幸亏没和朋友碰头。那一只，说不定只是偶然从外面进来的」
















％kag_s04_01_003
【辉夜】
「但是……以防万一。仔细一点吧」
^chara01,file5:13
















辉夜的手，抓着熏烟杀虫剂。
















【三峰】
「啊，是啊。但是……这该怎么办啊？」
















喷了烟雾杀虫剂的时候，人不能在家里。
















％kag_s04_01_004
【辉夜】
「……难得，要不要到外面逛一圈？」
^chara01,file5:03
















【三峰】
「啊，就这么办。有想去的地方吗？」
















％kag_s04_01_005
【辉夜】
「不，不是那样的……那个……
^sentence,*eventcontinue,waitmode:voice,waittime:6690
^chara01,file5:07
















我想约会。和三峰桑一起……」
^format,log:continue
^chara01,file5:09
















【三峰】
「原来如此。好，赶紧的」
















如果这样决定的话，就不会迷茫了。
















和辉夜约会。回想起来，与那件事没有缘分呢。
















也就是说，这是第一次约会。
















从辉夜的手中得到杀虫剂，设置在起居室。
















点火，确认有烟的存在，我们离开了家。

















^message,show:false
















^sentence,*blind_out
^bg01,file:BG/black
^music01,*fadeout
^se01,*fadeout
^chara01,show:false



















^sentence,*blind_in
^bg01,file:BG/bg03d
^music01,*reset,file:kakeochi_bgm02
^se01,file:セミ1
















说到约会。
















就是去电影院啦，逛街啦，吃法不太明白的新奇的甜点之类的。
















有这样的印象。
















话说回来，现在映在视野中的东西。
















修到一半的路，田地，树，树，树。鸟。拖拉机。田地。电线与苍茫的天空。
















还有就是，
















％kag_s04_01_006
【还有】
「啊、蝴蝶……」
^chara01,file0:01kaguya_,file1:昼_,file2:L_,file3:02_,file4:a_,file5:01,show:true
















大凤蝶从眼前横穿过去。
















嗯，充满了自然的感觉。
















【三峰】
「作为约会……怎么样？」
















妙龄的女孩子，这样就满足了吗？
















干脆提议在威嗯逛的这种最低限度文化性的约会不是很好吗？
















虽然很担心，
















％kag_s04_01_007
【辉夜】
「呵呵。是的，非常愉快的约会」
^chara01,file5:04
















辉夜正紧紧地握着我的手，微笑着。
















而且……
















一直，身体紧贴在我的手臂上走着。
















热——但是，很柔软……被下流的心情刺激停不下来。
















％kag_s04_01_008
【辉夜】
「……怎么了？三峰桑，脸有点红啊……要在树阴下休息吗？」
^chara01,file5:01
















【三峰】
「不，没关系——但是」

















^se01,file:雷１
















【三峰】
「——不好。好像要下雨了」
















％kag_s04_01_009
【辉夜】
「真的呢……
^sentence,*eventcontinue,waitmode:voice,waittime:2086
^chara01,file5:06
















啊，请看！」
^format,log:continue
^chara01,file5:02
















在辉夜指向的前方，看到了有屋顶的公交车站。
















【三峰】
「哦，得救了。走吧！」

































^message,show:false
















^sentence,*scroll_fast
^bg01,file:BG/black
^music01,*fadeout
^se01,*fadeout
^chara01,show:false





















^sentence,*scroll_fast
^bg01,file:BG/bg03r
^music01,*reset,file:kakeochi_bgm01
^se01,file:雨・雷ループ,loop:true
















【三峰】
「没来得及啊……」
















％kag_s04_01_010
【辉夜】
「一下子就下下来了……！」
^chara01,file0:01kaguya_,file1:昼_,file2:M_,file3:05_,file4:a_,file5:06,show:true
















刚一响起雷鸣，就下起了暴雨。
















在好不容易走到那里看到的公共汽车站的这段时间里，我们互相都湿透了。
















尽管如此，辉夜还是像享受这样的意外事件一样微笑着。
















【三峰】
「洗的衣服完了啊」

















％kag_s04_01_011
【辉夜】
「是啊……今天早上天气明明那么好……！
^sentence,*eventcontinue,waitmode:voice,waittime:4311
^chara01,file5:01
















呵呵，吓了一跳！」
^format,log:continue
^chara01,file5:04
















【三峰】
「幸亏有了公交车站……哇，下一班公共汽车来的傍晚」
















时刻表空荡荡的，给人一种新鲜的感觉。有点意思。
















％kag_s04_01_012
【辉夜】
「……哇！」
^chara01,file5:08,motion:ぷるぷる
















辉夜突然打了个冷颤。
















【三峰】
「……辉夜，没事吧？身体不冷吗？」

















％kag_s04_01_013
【辉夜】
「嗯、没事――
^sentence,*eventcontinue,waitmode:voice,waittime:1966
^chara01,file5:02
















啊，不，有点冷……」
^format,log:continue
^chara01,file5:06
















【三峰】
「那么，再往这边一点、……！」
















想要抱住辉夜的手停住了。
















尽管如此，辉夜还是会自己手中收拢过来。
^chara01,file2:L_,file5:05,motion:ぴょこ
















％kag_s04_01_014
【辉夜】
「……三峰桑？您怎么了？」
^chara01,file5:03
















被夺走了视线，无法转移视线。
















【三峰】
（―――――透明了！！）
^effect,file:effect/アニメ_集中線
^chara01,file2:LL_,file5:01,y:720
















从辉夜的整洁的连衣裙意外的成人花样的内衣，透过湿了的布清楚地能看见。
^effect,file:none
















坦率地说，好色啊。
















可以注意着吗？
















话说回来，这么透明，当事人不会注意到吗——！？
















％kag_s04_01_015
【辉夜】
「……三峰桑？怎么了？」
^chara01,file2:L_,file5:01,y:800
















【三峰】
「不、那个、这个――」
















怎么办？应该说呢还是应该装作不知道呢？
















％kag_s04_01_016
【辉夜】
「……为什么不朝这边看？」
^chara01,file5:06
















【三峰】
「辉夜……果然还是注意到了吧？」

















％kag_s04_01_017
【辉夜】
「嗯？是什么事情呢？……？」
^chara01,file5:05
















【三峰】
「渐渐向危险的方向成长了吗？……！？」
















％kag_s04_01_018
【辉夜】
「危险……吗？这个是……」
^chara01,file5:01
















【三峰】
「对我很有效，从某种意义上来说非常危险。然后，绝对不想在我以外的人面前这样做」
















％kag_s04_01_019
【辉夜】
「当然了。我希望三峰桑高兴。
^sentence,*eventcontinue,waitmode:voice,waittime:6163
^chara01,file5:02
















……不行吗？」
^format,log:continue
^chara01,file5:11
















【三峰】
「也不是不行！也不是不行——是我不行了」
















％kag_s04_01_020
【辉夜】
「啊……
^sentence,*eventcontinue,waitmode:voice,waittime:1338
^chara01,file5:07,motion:頷く
















――呵呵。好高兴啊，三峰桑」
^format,log:continue
^chara01,file5:18
















辉夜的视线注视到了一点。
















也就是说，我的胯股之间。
















被辉夜领悟到那里是怎样的状态，又害羞又可怜……
















尽管如此，辉夜还是幸福的微笑着。
















％kag_s04_01_021
【辉夜】
「三峰桑。……能交给我吗？」
^chara01,file5:19
















【三峰】
「嗯……拜托了，辉夜」
















％kag_s04_01_022
【辉夜】
「是……我会真心诚意，加油的！」
^chara01,file5:18
















^message,show:false
^music01,*fadeout_long
^se01,*fadeout

































^sentence,*blind_out
^bg01,file:BG/black
^chara01,show:false
















^include,fileend

















@@@Avg\Footer.s
\sub,@@!FilejumpName,self,SelfFileName
\jmp,ResultStr[0],__RootFile
