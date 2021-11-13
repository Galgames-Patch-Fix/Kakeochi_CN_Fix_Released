




@@@!Script\Dialog\main.s
@@@!Misc\Misc.s


@@Top
@@!Top
@@!Main
	\sub,@@!CreateInterface
	\sub,@@!Suspend
\thrd,0

@@!Suspend
	\sub,@@!DialogShowAnswer,,"要保持当前进度结束游戏吗？"
	\if,ResultInt[0]==0\then
		\ret
	\end
	
	
	\sub,@@!Misc_GetNewMessageText
	\srct,1
		\scp,sys	\n2,3,ResultStr[0]
	\srct,0
	
	\srct,1
		\scp,sys	\tz,#SaveThumZPri
	\srct,0
	
	\srct,1
		\scp,dat	\s,"SystemSuspend.dat"
	\srct,0
	
	\svar,str,#SystemSuspendFile
	\cal,#SystemSuspendFile="SystemSuspend.dat"
	\zero	
	
	\scp,eff	\c
	\sub,@@!FreeInterface
	\go,@@!Top,"Script\Sequence\OnQuit.s"
\ret


@@!CreateInterface
	
	\scp,skey
		\i
		\a,$10001,"click"
		\a,$0000D,"click"
		\a,$00011,"KeyClick"
		\a,$00025,"SelectTabPrev"		
		\a,$00026,"SelectTab100Prev"	
		\a,$00027,"SelectTabNext"		
		\a,$00028,"SelectTab100Next"	
	
	\gvar,img,GameImage
	\scp,GameImage
		\i
		\l,"$$$GameThreadImageZ,65535.bmp"	
		\p,0,0,-10
		\fo,0,"blur,4,4"
		\e
	
	\scp,eff	\i
\ret

@@!FreeInterface
	\del,GameImage
\ret

