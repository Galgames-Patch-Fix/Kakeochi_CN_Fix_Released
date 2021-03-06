





@@@!Misc\Misc.s
@@@!AvgSystem_Value.s
@@@!ImoScripter_Custom.s

@@@!AvgSystem_Route.s
@@@!AvgSystem_Movie.s
@@@!AvgSystem_ABMPMovie.s
@@@!AvgSystem_Select.s
@@@!AvgSystem_AutoSelect.s
@@@!AvgSystem_SceneSkip.s
@@@!AvgSystem_Rewind.s
@@@!AvgSystem_LogJump.s


@@@!Select\Layout_Select.s


@@@!Include_Route.s
@@@!module\cfmodule.s




@@!Avg_Error
	\derr,ParamStr[0]
\ret






@@!Avg_OnCreate
	
	\sub,@@!GameValueInit
	
	\sub,@@!Avg_RewindSaveCreate
	\sub,@@!Avg_SelectCreate
	\sub,@@!Avg_AutoSelectCreate
	\sub,@@!Avg_MovieCreate
	\sub,@@!Avg_ABMPMovieCreate
	\sub,@@!Avg_SceneSkipCreate
	\sub,@@!Avg_LogJumpCreate
	
	\var,str,OperationCode
	\cal,OperationCode="^"
	
	
	
	
	\scp,rep
		
		\a,OperationCode+"savescene"	,"\sub,@@!Avg_SaveTextScene,"
		\a,OperationCode+"savetext"	,"\sub,@@!Avg_SaveTextScene,"
		\a,OperationCode+"savefilter","\sub,@@!Avg_SaveThumFilter,"
		\a,OperationCode+"reset"		,"\sub,@@!Avg_SystemReset"
		\a,OperationCode+"exceptsave","\sub,@@!Misc_ExceptionErrorSave,"		
		\a,OperationCode+"autosave"	,"\sub,@@!Misc_AutoSave,"				
		
		\a,OperationCode+"movie"		,"\sub,@@!Avg_MovieExcute,"
		\a,OperationCode+"abmpmovie"	,"\sub,@@!Avg_ABMPMovieExcute,"
		
		\a,OperationCode+"slayout"	,"\sub,@@!Avg_SelectLayoutChange,"
		\a,OperationCode+"select"	,"\sub,@@!Avg_SelectExcute,"			
		\a,OperationCode+"autoselect","\sub,@@!Avg_AutoSelectLoad,"			
		
		\a,OperationCode+"checkpoint","\sub,@@!Avg_SceneSkipCheckPoint,"
		
		\a,OperationCode+"rewindpoint","\sub,@@!Avg_RewindSavePoint,"
		\a,OperationCode+"rewindthum","\sub,@@!Avg_RewindSaveMakeThum,"
		\a,OperationCode+"rewindset","\sub,@@!Avg_RewindSaveSet,"
		\a,OperationCode+"rewindget","\sub,@@!Avg_RewindSaveGetValue,"
		
		\a,OperationCode+"logjumppoint","\sub,@@!Avg_LogJumpPoint,"
		
		\a,OperationCode+"postmedia","\sub,@@!Avg_PostMediaEnable,"
		
		\a,OperationCode+"avgdisable","\sub,@@!Avg_OnMovieBegin"
		\a,OperationCode+"avgenable","\sub,@@!Avg_OnMovieEnd"
	
	
	
	\sub,@@!AVG_RouteCreate
	\sub,@@!cfmodele_create
\ret



@@!Avg_OnFree
	
	\sub,@@!Avg_MovieFree
	\sub,@@!Avg_ABMPMovieFree
	\sub,@@!Avg_SelectFree
	\sub,@@!Avg_AutoSelectFree
	\sub,@@!Avg_SceneSkipFree
	\sub,@@!Avg_RewindSaveFree
	\sub,@@!Avg_LogJumpFree
	
	\var,str,OperationCode
	\cal,OperationCode="^"
	
	
	
	
	\scp,rep
		
		\d,OperationCode+"savescene"
		\d,OperationCode+"savetext"
		\d,OperationCode+"savefilter"
		\d,OperationCode+"reset"
		\d,OperationCode+"exceptsave"
		\d,OperationCode+"autosave"
		\d,OperationCode+"autosave"
		
		\d,OperationCode+"movie"
		\d,OperationCode+"abmpmovie"
		
		\d,OperationCode+"slayout"
		\d,OperationCode+"select"
		\d,OperationCode+"rselect"
		\d,OperationCode+"autoselect"
		
		\d,OperationCode+"checkpoint"
		
		\d,OperationCode+"rewindpoint"
		\d,OperationCode+"rewindthum"
		\d,OperationCode+"rewindset"
		\d,OperationCode+"rewindget"
		
		\d,OperationCode+"logjumppoint"
		
		\d,OperationCode+"postmedia"
		
		\d,OperationCode+"avgdisable"
		\d,OperationCode+"avgenable"
	
	
	
	\sub,@@!AVG_RouteFree
	\sub,@@!cfmodule_free
\ret



@@!AVG_OnFrameEvent
	
	\scp,inp	\?sc
	\if,ResultInt[0]==0\then
		\ret
	\end
	
	
	\scp,sys	\?p
	\if,ResultInt[0]>=3\then
		\scp,sys	\p,0
	\end
\ret


@@!AVG_OnSysButton_Auto
	\scp,sys	\?p
	\if,ResultInt[0]==2\then
		\scp,sys	\p,0
	\else
		\scp,sys	\p,2
	\end
\ret


@@!AVG_OnSysButton_Skip
	\scp,sys	\?p
	\if,ResultInt[0]==3\then
		\scp,sys	\p,0
	\else
		\scp,sys	\p,3
	\end
\ret














@@!Avg_OnSysButton_ViewKey
	\scp,sys	\?p
	\if,ResultInt[0]!=0\then
		\scp,sys	\p,0
	\else
		\scp,sys	\p,1
	\end
\ret
@@!Avg_OnSysButton_View
	\scp,sys	\?p
	\if,ResultInt[0]==1\then
		\scp,sys	\p,0
	\else
		\scp,sys	\p,1
	\end
\ret


@@!Avg_OnSysButton_Voice
	
	\var,str,f,n,flt
	\scp,log	\?g,0
	\cal,f=ResultStr[2],n=ResultStr[0]
	
	\sub,@@!Misc_VoiceDivide,,f
	\cal,f=ResultStr[0],flt=ResultStr[1]
	\fexs,f
	\if,ResultInt[0]==0\then
		\ret
	\end
	
	\var,int,v
	\sub,@@!Misc_GetCharaVoiceVolume,,n,f
	\cal,v=ResultInt[0]
	
	\scp,snd[#VoicePlaySoundChannel]
		\i
		\l,f
		\fo,flt
		\t,1
		\v,v
		\p
\ret


@@!Avg_OnSysButton_VolumeUp
	
	\cal,#MasterVolume=#MasterVolume+10
	\sub,@@!Misc_VolumeSetup
	\sub,@@!Avg_VolumeDisp
\ret

@@!Avg_OnSysButton_VolumeDown
	
	\cal,#MasterVolume=#MasterVolume-10
	\sub,@@!Misc_VolumeSetup
	\sub,@@!Avg_VolumeDisp
\ret

@@!Avg_VolumeDisp
	\vexs,VolumeDisp
	\if,ResultInt[0]==0\then
		\ret
	\end
	\scp,VolumeDisp
		\cc
	\fmt,"%3d%%",#MasterVolume
		\o,ResultStr[0]
		\mc
		\m,0
		\e
\ret


@@!Avg_PostMediaEnable
	\gvar,int,Avg_PostMediaEnable
	\cal,Avg_PostMediaEnable=ParamInt[0]

	\if,Avg_PostMediaEnable==1\then
		\scp,sys	\?lkc	\lkc,ResultInt[0] & $FFEF	
	\else
		\scp,sys	\?lkc	\lkc,ResultInt[0] | $0010	
	\end
\ret



@@!Avg_OnKeySet
	\scp,skey
		\i
		\lk,0
		\a,$10001,"click"						
		\a,$10002,"view","@@!View_Key"			
		\a,$10004,"view","@@!View_Key"			
		\a,$000F0,"config","@@!MouseWheelUp"	
		\a,$000F1,"keyclick",					
		\a,$00011,"keyclick"					
		\a,$30011,"skipclick"					
		\a,$0000D,"click"						
		\a,$1001B,"config","@@!Config"			
		\a,$10020,"view","@@!View_Key"			
		\a,$10009,"config","@@!MouseWheelUp"	
		
		
		\a,$0200D,"screen"						
		\a,$00025,"SelectTabPrev"				
		\a,$00026,"SelectTab100Prev"			
		\a,$00027,"SelectTabNext"				
		\a,$00028,"SelectTab100Next"			
	
	\scp,inp	\mge,#MouseGestureEnable
	\scp,skey
		\a,$00120,"config","@@!MouseGesture"
	
	\scp,inp	\swe,#SwipeEnable
	
	
\ret

@@!Avg_OnKeyReset
	\scp,skey	\i
	\scp,inp	\mge,0
	\scp,inp	\swe,0
\ret







@@!Avg_OnSelectCreate
	\var,str,s
	\cal,s=ParamStr[0]
	\if,s==""\then
		\cal,s="Select"
	\end
	\cal,s="@@!Layout_"+s+"_Create"
	\sub,s
	\zero
\ret


@@!Avg_OnSelectFree
	\var,str,s
	\cal,s=ParamStr[0]
	\if,s==""\then
		\cal,s="Select"
	\end
	\cal,s="@@!Layout_"+s+"_Free"
	\sub,s
\ret



@@!Avg_OnSelectEnable
	
	
	
	\scp,sys	\?p
	\if,ResultInt[0]==2\then
		\if,#KeepAutoPlay==0\then
			\scp,sys	\p,0
		\end
	\end
	\scp,sys	\?p
	\if,ResultInt[0]>=3\then
		\if,#KeepSkip==0\then
			\scp,sys	\p,0
		\end
	\end
	\var,int,i,n,m
	\var,str,s
	\var,obj,ls
	\cal,ls=ParamStr[0]		
	\scp,ls	\?c
	\cal,n=ResultInt[0]
	
	\gvar,str,Avg_SelectCheckLabel	
	\scp,sys	\?mrd,2
	\cal,Avg_SelectCheckLabel="Select_"+ResultStr[0]+ResultStr[1]+"_"
	
	\gvar,timer,Avg_SelectTimer
	\scp,Avg_SelectTimer
		\i
		\l,"@@!Avg_SelectKidokuCheck"
		\t,100
	
	\cal,m=1
	\for,i=0,i<n,i++
		\scp,ls	\?s,i
		\cal,s=ResultStr[0]
		\if,s==""\then
			\scp,SelectButton[i]	\lk,0	\d
			\cnt
		\end
		
		\scp,SelectButton[i]
			\kwl,0
			\cc
		\fmt,"[pc,%s]",s
			\o,ResultStr[0]
			\mc
			\ui,i
			\lk,0
		
		\if,Avg_SelectDisable & m > 0\then
			\d
		\else
			\e
		\end
		
		\if,Avg_SelectLock & m > 0\then
			\lk,1
		\else
			\lk,0
		\end
		\cal,m = m << 1
	\end
	\sub,@@!Imo_ApplyCustomLock		
	\sub,@@!Avg_SelectKidokuCheck
	\sub,@@!Avg_SelectSetupPos,,n
	\scp,SelectAnimation	\e
	\scp,Avg_SelectTimer	\e
	
	\if,#SysEffectSpeed==0\then
		\skip,250
	\else
		\clk,250
	\end
	\zero
\ret

@@!Avg_SelectSetupPos
	\var,int,n,i
	\var,int,cx,cy,yy
	\cal,n=ParamInt[0]
	
	\scp,sys	\?gs
	\cal,cx=ResultInt[0]/2
	\cal,cy=(ResultInt[1]-140)/2
	
	\cal,yy=cy-((n-1)*60)/2
	\for,i=0,i<n,i++
		\scp,SelectButton[i]	\?p		\p,cx,yy+i*60,ResultInt[2]
	\end
\ret

@@!Avg_SelectKidokuCheck
	\var,int,i,n
	\garr,SelectButton	\cal,n=ResultInt[0]
	
	\for,i=0,i<n,i++
		\if,#SelectedColor==1\then
			\scp,llog	\?g,Avg_SelectCheckLabel+i
			\scp,SelectButton[i]	\exv,0,ResultInt[0]>0
		\else
			\scp,SelectButton[i]	\exv,0
		\end
	\end
\ret


@@!Avg_OnSelectDisable
	
	\del,Avg_SelectTimer
	
	\scp,llog	\s,Avg_SelectCheckLabel+ResultBtnInt[0],255
	\del,Avg_SelectCheckLabel
	
	\clk,250
	
	\var,int,i
	\scp,SelectAnimation	\d
	\if,#SysEffectSpeed==0\then
		\skip,250
	\else
		\clk,250
	\end
	\scp,SelectAnimation	\d,1	
	\for,i=0,i<6,i++
		\scp,SelectButton[i]	\d,1
	\end
	
	
\ret





@@!Avg_OnMovieBegin
	
	\sub,@@!Avg_SceneSkipCreate
	
	\sub,@@!Misc_MemoryPlayState
	
	\gvar,int,Avg_MovieSystemLockValue
	\scp,sys	\?lk
	\cal,Avg_MovieSystemLockValue=ResultInt[0]
	\scp,sys	\lk,$FFFF-_lkScreen
	\scp,sys	\lkc,$FFFF
	
	
	
	\scp,inp	\mge,0
	
	\scp,inp	\swe,0
	
	\cal,Avg_SceneSkipEnable=0
\ret


@@!Avg_OnMovieEnd
	
	\cal,Avg_SceneSkipEnable=0	
	
	\scp,inp	\mge,#MouseGestureEnable
	
	\scp,inp	\swe,#SwipeEnable
	
	\scp,skey	\lk,0
	
	\scp,sys	\lk,Avg_MovieSystemLockValue
	\scp,sys	\lkc,$FFFF
	\del,Avg_MovieSystemLockValue
	
	\sub,@@!Misc_RestoryPlayState
\ret



@@!Avg_OnSceneSkipStart
	
	\gvar,msg,Avg_SceneSkipImage
	\scp,Avg_SceneSkipImage
		\i
		\l,"SceneSkip.b"
		\li,2,"Caption.png"
		\p,0,0,0
		\ts,400,40
		\mi,1
		\in,$100
		\out,$100
		\kwl,0
		\e
	\zero
\ret

@@!Avg_OnSceneSkipEnd
	\del,Avg_SceneSkipImage
	\zero
\ret

@@!Avg_OnSceneSkipStep
	\scp,Avg_SceneSkipImage
		\cc
	\fmt,"[f,7][s,18,18][c,$FF888888][pc,%d]",Avg_SceneSkipStep
		\o,ResultStr[0]
		\mc
	\draw,1
\ret


