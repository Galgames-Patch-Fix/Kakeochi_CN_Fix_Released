




@@@!Script\Dialog\main.s
@@@!AVG\AvgSystem_Rewind.s
@@@!Misc\Misc.s

@@@!Layout.s


@@Top
@@!Top
@@!Main
	\sub,@@!CreateInterface
@@!Select
	\stop,@@!OnStopEvent
	\jmp,ResultBtnStr[0]
	\sub,@@!FreeInterface
	\thrd,0


@@!Cancel
	\sub,@@!FreeInterface
	\thrd,0
	


@@!Wheel
	\scp,Scrollbar
		\?v
		\v,ResultInt[0]+ResultBtnInt[0]
	\scp,inp	\swp,1	
	\sub,@@!SetupPos,,100
	\jmp,@@!Select

@@!Swipe
	\scp,Scrollbar
		\?v
		\v,ResultInt[0]+ResultBtnInt[0]
	\sub,@@!SetupPos,,0
	\jmp,@@!Select

@@!ScrollBar
	\sub,@@!SetupPos,,100
	\jmp,@@!Select

@@!ButtonScroll
	\scp,Scrollbar
		\?v
		\v,ResultInt[0]+ResultBtnInt[0]*_DotStroke*10
	\sub,@@!SetupPos,,200
	\jmp,@@!Select


@@!Load
	\sub,@@!LoadFunc
	\if,ResultInt[0]==0\then
		\jmp,@@!Select
	\end
	\sub,@@!FreeInterface
	\thrd,0
	

@@!LoadFunc
	\var,str,s1,s2,s3
	\cal,s1=ResultBtnStr[1]
	\cal,s2=ResultBtnStr[2]
	\cal,s3=ResultBtnStr[3]
	
	\scp,dat	\?g,"RewindData\"+s1
	\if,ResultInt[0]==0\then
		
		\ret
	\end
	
	\sub,@@!DialogShowAnswer,,"返回到选择的地方吗？"
	\if,ResultInt[0]==0\then
		
		\ret
	\end
	
	
	\sub,@@!Avg_OnRewindSaveLoadBegin
	\srct,1
		\scp,dat	\l,"RewindData\"+s1
	\srct,0
	\if,ResultInt[0]==0\then
		\scp,dlgs	\sd1,"读取失败。","error","ok"
		\ret
	\end
	\sub,@@!Avg_OnRewindSaveLoadEnd
	\cal,ResultInt[0]=1
\ret


@@!OnStopEvent
	
	\scp,inp	\gbc
	\if,ResultObj[0]!=null \then
		\cal,ResultBtnStr[0]=ResultStr[0],ResultBtnStr[1]=ResultStr[1],ResultBtnStr[2]=ResultStr[2],ResultBtnStr[3]=ResultStr[3]
		\play	\ret
	\end
	
	
	
	
	
	
	
	\scp,inp	\k2,$10002,$1001B
	\case,ResultInt[0]
		\of,$10002		
			\cal,ResultBtnStr[0]="@@!Cancel"
			\play	\ret
		\of,$1001B		
			\cal,ResultBtnStr[0]="@@!Cancel"
			\play	\ret
	\end

	
	\scp,inp	\k2,$400F0,$400F1
	\case,ResultInt[0]
		\of,$400F0
			\scp,inp	\?mw
			\cal,ResultBtnStr[0]="@@!wheel",ResultBtnInt[0]=-ResultInt[0]
			\play	\ret
		\of,$400F1
			\scp,inp	\?mw
			\cal,ResultBtnStr[0]="@@!wheel",ResultBtnInt[0]=-ResultInt[0]
			\play	\ret
	\end
	
	\scp,inp	\k2,$00025,$00027,$00021,$00022,$30025,$30027,$30021,$30022
	\cal,ResultInt[0]=ResultInt[0] & $FF
	\case,ResultInt[0]
		\of,$025		
			\cal,ResultBtnStr[0]="@@!wheel",ResultBtnInt[0]=-_DotStroke
			\play	\ret
		\of,$027		
			\cal,ResultBtnStr[0]="@@!wheel",ResultBtnInt[0]=_DotStroke
			\play	\ret
		\of,$021		
			\cal,ResultBtnStr[0]="@@!wheel",ResultBtnInt[0]=_DotStroke*-5
			\play	\ret
		\of,$022,		
			\cal,ResultBtnStr[0]="@@!wheel",ResultBtnInt[0]=_DotStroke*5
			\play	\ret
	\end
	
	
	\scp,inp	\?swp,1	
	\if,ResultInt[4]!=0\then
		\if,ResultInt[6]!=0\then
			\cal,ResultBtnStr[0]="@@!swipe",ResultBtnInt[0]=-ResultInt[6]
			\play	\ret
		\end
	\end
\ret



@@!MakeTimeline
	
	\gvar,list,SavefileList
	\srct,1
		\vexs,Avg_RewindSavefileList
	\srct,0
	\if,ResultInt[0]>0\then
		\srct,1
			\scp,Avg_RewindSavefileList	\?txt
		\srct,0
		\scp,Savefilelist	\txt,ResultStr[0]
	\end
	
	\gvar,int,SavefileCount
	\scp,SavefileList		\?c		\cal,SavefileCount=ResultInt[0]
	
	\gvar,int,_BaseY,_BaseX
	\scp,TempLineImage	\?p
	\cal,_BaseX=ResultInt[0],_BaseY=ResultInt[1]
	
	\var,int,i
	\var,int,a1
	\cal,a1=_DotStroke*SavefileCount/1000 + 2 
	\gvar,img,LineImage[a1]
	\for,i=0,i<a1,i++
		\scp,LineImage[i]
			\l,"Line1000.b"
			\p,_BaseX+1000*i,_BaseY,90
			\mm,_mmOutQuart	\e
	\end
	
	\gvar,table,SavefileTextTable
	\scp,SavefileTextTable	\l,"SavefileTextTable.txt"
	
	\var,str,s1,s2,s3,f1
	\gvar,btn,DotButton[SaveFileCount]
	\for,i=0,i<SaveFileCount,i++
		\scp,SavefileList	\?s,i
		\div,",",ResultStr[0]
		\cal,s1=ResultStr[0]	
		\cal,s2=ResultStr[1]	
		\cal,s3=ResultStr[2]	
		
		\rep,s1,".svd",""
		\scp,SavefileTextTable	\?v,ResultStr[0]
		\if,ResultStr[0]!=""\then
			\cal,s3=ResultStr[0]
		\end
		
		
		\cal,f1="Button_Dot_keep.b"
		\if,s2=="scene"\then
			\cal,f1="Button_Dot_pop.b"
		\end
		
		\scp,DotButton[i]
			\l,f1
			\p,_BaseX+i*_DotStroke,_BaseY,90
			\mm,_mmOutQuart	\e
		\scp,DotButton[i]	\us,"@@!Load",s1,s2,s3		
		
		
		\cal,f1="dot_"+s2+".png"
		\fexs,f1
		\if,ResultInt[0]==1\then
			\scp,DotButton[i]	\li,0,f1
		\end
	
		
		\rep,s1,".svd",".jpg"
		\cal,f1="RewindImage\"+ResultStr[0]
		\fexs,f1
		\if,ResultInt[0]==1\then
			\scp,DotButton[i]	\li,4,f1
		\end
		
		
		\cal,f1="RewindData\"+s1
		\scp,dat	\?g,f1
		\if,ResultInt[0]==0\then
			\scp,DotButton[i]	\lk,1
		\end
	\end
	
	
	\cal,a1=_DotStroke*SavefileCount+_BaseX*2-1024
	\if,a1<10\then
		\scp,Scrollbar	\mv,0	\lk,1
	\else
		\scp,Scrollbar	\mv,a1	\lk,0
	\end
	
\ret




@@!SetupPos
	\var,int,t,a,y
	\scp,Scrollbar	\?mv
	\if,ResultInt[0]<10\then
		\scp,ScrollButton[0]	\lk,1
		\scp,ScrollButton[1]	\lk,1
		\ret
	\end
	
	\scp,Scrollbar		\?v
	\scp,ScrollButton[0]	\lk,ResultInt[0]==0
	\scp,Scrollbar		\?mv
	\scp,ScrollButton[1]	\lk,a>=ResultInt[0]
	
	\scp,Scrollbar	\?v
	\cal,t=ParamInt[0]
	\cal,y=ResultInt[0]
	\cal,a=y-OffsetX
	\cal,OffsetX=y
	\if,a==0\then
		\ret
	\end
	
	\var,int,i,n
	
	\garr,LineImage	\cal,n=ResultInt[0]
	\for,i=0,i<n,i++
		\scp,LineImage[i]	\p,_BaseX+1000*i-OffsetX,_BaseY,90,t
	\end
	
	\garr,DotButton	\cal,n=ResultInt[0]
	\for,i=0,i<n,i++
		\scp,DotButton[i]	\p,_BaseX+i*_DotStroke-OffsetX,_BaseY,90,t
	\end
\ret



@@!CreateInterface
	
	\scp,skey
		\i
		\a,$10001,"click"
		\a,$0000D,"click"
		\a,$00011,"KeyClick"
	
	\scp,sys	\lk,$FFFF-_lkScreen
	\scp,inp	\swe,1,1				
	
	\gvar,img,GameImage
	\scp,GameImage
		\i
		\l,"$$$GameThreadImageZ,999.bmp"	
		\p,0,0,-10
		\fo,0,"blur,4,4"
		\e
	\scp,eff	\c
	
	\sub,@@!Layout_Create
	
	\gvar,bar,Scrollbar
	\gvar,int,_KeyStroke,_DotStroke
	\cal,_KeyStroke=60,_DotStroke=60
	\gvar,int,OffsetX
	\sub,@@!MakeTimeline
	\sub,@@!SetupPos,,0
	
	\scp,eff	\fdi,0,250
	\if,#SysEffectSpeed==0\then
		\skip,250
	\else
		\clk,250
	\end
\ret

@@!FreeInterface
	\scp,eff	\c
	
	\sub,@@!Layout_Free
	\del,_KeyStroke,_DotStroke
	\del,_BaseY,_BaseX
	\del,SavefileList,SaveFileCount
	\del,LineImage,DotButton
	\del,SavefileTextTable
	\del,ViewAX
	
	\if,ParamInt[0]==1\then
		\scp,eff	\fdi,0,200,"misc\Fade_Out.b"
		\if,#SysEffectSpeed==0\then
			\skip,200
		\else
			\clk,200
		\end
	\end
	\del,GameImage
\ret
