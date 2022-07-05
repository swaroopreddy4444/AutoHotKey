
#SingleInstance Force
#F12::
Run "E:\bablu\Selenium Project requirements.ahk"
Return
::smail::swaroopreddy4444@gmail.com
::8802::880288423506

+F12::
FileSelectFile Editor, 2,, Select your editor, Programs (*.exe)
RegWrite, REG_SZ, HKEY_CLASSES_ROOT, AutoHotkeyScript\Shell\`Edit\Command, ,"%Editor%" "`%1"
return

link1:="https://chromedriver.storage.googleapis.com/LATEST_RELEASE"
UrlDownloadToFile, %link1%, C:\Selenium_driver\chromedriver_win32\LATEST_RELEASE.txt
fileread, LATEST_RELEASE, C:\Selenium_driver\chromedriver_win32\LATEST_RELEASE.txt

link2 = https://chromedriver.storage.googleapis.com/%LATEST_RELEASE%/chromedriver_win32.zip

UrlDownloadToFile, %link2%, C:\Selenium_driver\chromedriver_win32\chromedriver_win32.zip

#g::
Send, ^c
Sleep 50
run, "https://www.google.co.in/search?q=%Clipboard%"
return
;~ q:: ;extract files from zip file
vPathZip = C:\Selenium_driver\chromedriver_win32\chromedriver_win32.zip
vDirOutput = C:\Selenium_driver\chromedriver_win32
Unz(vPathZip, vDirOutput)

Unz(Source, Dest)
{
   psh := ComObjCreate("Shell.Application")
   psh.Namespace(Dest).CopyHere( psh.Namespace(Source).items, 4|16)
}
FileCopy,C:\Selenium_driver\chromedriver_win32\chromedriver.exe,C:\Selenium_Grid\chromedriver.exe,1
return

+^r:: reload
+^E:: edit
;~ +^E::run, "C:\Program Files\AutoHotkey\SciTE\SciTE.exe" "C:\Users\swaroop reddy\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\basic.ahk"

;~ settitlematchmode, 2
;~ #IfWinActive Eclipse IDE
;~ 1::SendRaw !
;~ 2::SendRaw @
;~ 3::SendRaw #
;~ 4::SendRaw $
;~ 5::SendRaw `%
;~ 6::SendRaw ^
;~ 7::SendRaw &
;~ 8::SendRaw *
;~ 9::SendRaw (
;~ 0::SendRaw )
;~ #IfWinActive
;~ return

#+Enter::run, slidetoshutdown

#+<:: run, %comspec% /c netsh wlan disconnect,,hide ; disconnect
#+>:: run, %comspec% /c netsh wlan connect name="GPONWIFI_4618" ; connect

!+a::run, "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 2"  "https://gramawardsachivalayam.ap.gov.in/GSWSDASHBOARD/#!/AttendanceReportMandal"
!+l::run, "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 2" "https://gramawardsachivalayam.ap.gov.in/GSWSLMS/Login"
#+y::run, "brave.exe" "https://www.youtube.com/"
#+c::
#+d::run, devmgmt.msc
#+F4::
{
shutdown,1
return
}
;#+w::run, "C:\Program Files\Google\Chrome\Application\chrome.exe" --incognito --profile-directory="Profile 2" "https://web.whatsapp.com/"
#+v::
{
gsws:="ahk_class Chrome_WidgetWin_1 ahk_exe msedge.exe"
   if WinExist(gsws)
      If WinActive(gsws)
		WinMinimize
	  Else
	{
		WinActivate
		Sleep, 100
		WinGet, ID, ID, A
		WinGetTitle, TabTitle, ahk_id %ID%
		regvalue:=0
		while(regvalue==0 and RegExMatch(TabTitle, "Grama - Ward Sachivalayam.*")<>1){
			Sleep, 100
			Send, ^{Tab}
			Sleep, 100
			WinGet, ID, ID, A
			WinGetTitle, TabTitle, ahk_id %ID%
			regvalue:= RegExMatch(TabTitle, "Grama - Ward Sachivalayam.*")
			;~ MsgBox %TabTitle% `n %title%
		}
	}

	else
      run, msedge.exe  "https://vswsonline.ap.gov.in/"
Return
}


#+E:: run, "C:\Users\swaroop reddy\eclipse\java-2021-12\eclipse\eclipse.exe
#+m:: run, "brave.exe" "https://ww15.ibomma.bar/telugu-movies/"
#+g:: run, "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Profile 2" "https://gramawardsachivalayam.ap.gov.in/"
#+z:: run, "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Default" "kite.zerodha.com"

::gmcode::ruk-rewk-gsh


+^V:: send,%Clipboard%

^F2::
{
tmp:=Clipboardall
	Clipboard:=""
	Send,^c
	ClipWait,1
	path:=Clipboard
	Clipboard:=tmp
	if ErrorLevel
	return
	run,C:\Program Files\Notepad++\notepad++.exe "%path%"
return
}

#+u:: ;UPPERCASE
{
tmp:=Clipboardall
	Clipboard:=""
	Send,^c
	ClipWait,1
	StringUpper Clipboard, Clipboard
	ClipWait,1
 	Send ^v
	Clipboard:=tmp
return
}
#+l:: ;lowercase
{
tmp:=Clipboardall
	Clipboard:=""
	Send,^c
	ClipWait,1
	StringLower Clipboard, Clipboard
	ClipWait,1
 	Send ^v
	Clipboard:=tmp
return
}
#B::
{
run,fsquirt -receive
Return
}

#w::
{
run,"C:\Program Files\Google\Chrome\Application\chrome_proxy.exe"  --profile-directory=Default --app-id=hnpfjngllnobngcgfapefoaidbinmjnm
Return
}


#+w::
InputBox, NMBR, Phone Number?, , , 200, 120, , , , ,
if ErrorLevel
    Exit
 else
      InputBox, MSG, Message?, , , 250, 120, , , , , Hello
  if ErrorLevel
       Exit
  else
  {
  url = https://web.whatsapp.com/send?phone=91%NMBR%&text=%MSG%
  Run %url%
  }
return

#c::
{
calculator:="Calculator ahk_exe ApplicationFrameHost.exe"
   if WinExist(calculator)
      If WinActive(calculator)
		WinMinimize
	  Else
		WinActivate
   else
      Run calc
   Return
}

:R*?:-date::
FormatTime, CurrentDateTime,, dd-MM-yyyy
SendInput %CurrentDateTime%
return
:R*?:ldatetime::
FormatTime, CurrentDateTime,, ddMMyyHHmmss
SendInput %CurrentDateTime%
return
:R*?:aaa::
FormatTime, CurrentDateTime,, yyMMdd
SendInput %CurrentDateTime%
return
:R*?:-sdate::
FormatTime, CurrentDateTime,, dd-MM-yy
SendInput %CurrentDateTime%
return
:R*?:-lDate:: 12-03-22 08:46 AM
FormatTime, CurrentDateTime,, dd-MM-yy HH:mm tt
SendInput %CurrentDateTime%
return

#+f1::

pmsg := ComObjCreate("CDO.Message")
InputBox, tmail, To mail?, , , 200, 120, , , , ,
InputBox, shrtname, Short Name?, , , 200, 120, , , , ,
pmsg.From := shrtname "<fmail>" ;Youtube does not allow angled brackets so just add them at start and end of the email address (greater than and less than symbols)
pmsg.To := tmail
pmsg.BCC := "parigi2da@gmail.com" ; Blind Carbon Copy, Invisible for all, same syntax as CC
pmsg.CC := "chintasaiswaroopreddy@gmail.com"
InputBox, sub, Subject?, , , 290, 120, , , , ,
pmsg.Subject := sub
InputBox, body, Body?, , , 290, 200, , , , ,


pmsg.TextBody := body

fields := Object()
fields.smtpserver := "smtp.gmail.com" ; specify your SMTP server
fields.smtpserverport := 465
fields.smtpusessl := True
fields.sendusing := 2
fields.smtpauthenticate := 1
fields.sendusername := "swaroopreddy4444@gmail.com"
fields.sendpassword := "gmail@2019"
fields.smtpconnectiontimeout := 60
schema := "http://schemas.microsoft.com/cdo/configuration/"
pfld := pmsg.Configuration.Fields

For field,value in fields
pfld.Item(schema . field) := value
pfld.Update()

Loop, Parse, sAttach, |, %A_Space%%A_Tab%
pmsg.AddAttachment(A_LoopField)
pmsg.Send()

return

f1::
;send ^a
Send,^c
ComObjCreate("SAPI.SpVoice").Speak(Clipboard)
return


#+f2::  ;change voice type
IfWinNotActive ahk_exe Eclipse.exe
if (SUCCEEDED(SpGetCategoryFromId(SPCAT_VOICES := "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Speech\Voices", cpSpObjectTokenCategory)))
{
	hr := DllCall(NumGet(NumGet(cpSpObjectTokenCategory+0)+18*A_PtrSize), "Ptr", cpSpObjectTokenCategory, "Ptr", 0, "Ptr", 0, "Ptr*", cpSpEnumTokens)

	if (SUCCEEDED(hr))
	{
		hr := DllCall(NumGet(NumGet(cpSpEnumTokens+0)+8*A_PtrSize), "Ptr", cpSpEnumTokens, "UInt*", tokenCount)
		if (SUCCEEDED(hr))
		{
			voices := Object()
			Loop %tokenCount% {
				hr := DllCall(NumGet(NumGet(cpSpEnumTokens+0)+7*A_PtrSize), "Ptr", cpSpEnumTokens, "UInt", A_Index - 1, "Ptr*", pToken)
				if (FAILED(hr)) {
					MsgBox Bailing out
					ExitApp 1
				}
				hr := DllCall(NumGet(NumGet(pToken+0)+6*A_PtrSize), "Ptr", pToken, "Ptr", 0, "Ptr*", pszValue)
				if (FAILED(hr)) {
					MsgBox Bailing out
					ExitApp 2
				}
				hr := DllCall(NumGet(NumGet(pToken+0)+16*A_PtrSize), "Ptr", pToken, "Ptr*", pszCoMemTokenId)
				if (FAILED(hr)) {
					MsgBox Bailing out
					ExitApp 3
				}
				voices[StrGet(pszCoMemTokenId, "UTF-16")] := StrGet(pszValue, "UTF-16")
				DllCall("ole32\CoTaskMemFree", "Ptr", pszValue)
				DllCall("ole32\CoTaskMemFree", "Ptr", pszCoMemTokenId)
				ObjRelease(pToken)
			}
			prompt := "Pick a voice by its number:"
			for k, v in voices
				prompt .= "`r`n" . A_Index . ": " v
			InputBox, TheChosenOne,, %prompt%
			if (ErrorLevel == 0) {
				for k, v in voices {
					if (A_Index == TheChosenOne) {
						hr := DllCall(NumGet(NumGet(cpSpObjectTokenCategory+0)+19*A_PtrSize), "Ptr", cpSpObjectTokenCategory, "WStr", k)
						break
					}
				}
			}
		}
		ObjRelease(cpSpEnumTokens)
	}

	ObjRelease(cpSpObjectTokenCategory)
}

SpGetCategoryFromId(pszCategoryId, ByRef ppCategory, fCreateIfNotExist := False)
{
    static CLSID_SpObjectTokenCategory := "{A910187F-0C7A-45AC-92CC-59EDAFB77B53}"
		  ,ISpObjectTokenCategory      := "{2D3D3845-39AF-4850-BBF9-40B49780011D}"

	hr := 0
	try {
		cpTokenCategory := ComObjCreate(CLSID_SpObjectTokenCategory, ISpObjectTokenCategory)
    } catch e {
		; No, A_LastError or ErrorLevel doesn't contain the error code on its own and I CBA to use CoCreateInstance directly
		if (RegExMatch(e.Message, "0[xX][0-9a-fA-F]+", errCode)) { ; https://stackoverflow.com/a/9221391
			hr := errCode + 0
		} else {
			hr := 0x80004005
		}
	}

    if (SUCCEEDED(hr))
    {
		hr := DllCall(NumGet(NumGet(cpTokenCategory+0)+15*A_PtrSize), "Ptr", cpTokenCategory, "WStr", pszCategoryId, "Int", fCreateIfNotExist)
    }

    if (SUCCEEDED(hr))
    {
        ppCategory := cpTokenCategory
    }
	else
	{
		if (cpTokenCategory)
			ObjRelease(cpTokenCategory)
	}

	return hr
}

SUCCEEDED(hr)
{
	return hr != "" && hr >= 0x00
}

FAILED(hr)
{
	return hr == "" || hr < 0
}
return


#+^Delete::
{
Glob(list, "C:\Temp\*")
Glob(list, "C:\Temp\*.*")
Glob(list, "%User \Local\Microsoft\Windows\Temporary Internet Files\Content.IE5\*")
Glob(list, "C:\Users\*\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5\*.*")
Glob(list, "C:\Users\*\AppData\Local\Temp\*")
Glob(list, "C:\Users\*\AppData\Local\Temp\*.*")
Glob(list, "C:\Documents and Settings\*\Cookies\*")
Glob(list, "C:\Documents and Settings\*\Cookies\*.*")
Glob(list, "C:\Documents and Settings\*\Local Settings\Temp\*")
Glob(list, "C:\Documents and Settings\*\Local Settings\Temp\*.*")
Glob(list, "C:\Documents and Settings\*\Local Settings\Temporary Internet Files\*")
Glob(list, "C:\Documents and Settings\*\Local Settings\Temporary Internet Files\*.*")
Glob(list, "C:\Documents and Settings\*\Local Settings\History\*")
Glob(list, "C:\Documents and Settings\*\Local Settings\History\*.*")

Loop, Parse, list, `n
{
FileGetAttrib, FolderOrFile, %A_LoopField%
IfInString, FolderOrFile, D
	FileRemoveDir, %A_LoopField%, 1
else
	FileDelete, %A_LoopField%
}

MsgBox, Clean-up complete.

;Uncomment (Remove the semi-colon) this next line if you want to see what couldn't be deleted.
;MsgBox %list%

Glob(ByRef list, Pattern, IncludeDirs=1)
{
    if (i:=RegExMatch(Pattern,"[*?]")) && (i:=InStr(Pattern,"\",1,i+1))
        Loop, % SubStr(Pattern, 1, i-1), 2
            Glob(list, A_LoopFileLongPath . SubStr(Pattern,i), IncludeDirs)
    else
        Loop, %Pattern%, %IncludeDirs%
            list .= (list="" ? "" : "`n") . A_LoopFileLongPath
}
return
}