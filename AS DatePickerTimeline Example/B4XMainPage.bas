B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.85
@EndOfDesignText@
#Region Shared Files
#CustomBuildAction: folders ready, %WINDIR%\System32\Robocopy.exe,"..\..\Shared Files" "..\Files"
'Ctrl + click to sync files: ide://run?file=%WINDIR%\System32\Robocopy.exe&args=..\..\Shared+Files&args=..\Files&FilesSync=True
#End Region

'Ctrl + click to export as zip: ide://run?File=%B4X%\Zipper.jar&Args=Project.zip

Sub Class_Globals
	Private Root As B4XView
	Private xui As XUI
	Private AS_DatePickerTimeline1 As AS_DatePickerTimeline
	Private AS_DatePickerTimeline2 As AS_DatePickerTimeline
End Sub

Public Sub Initialize
	
End Sub

'This event will be called once, before the page becomes visible.
Private Sub B4XPage_Created (Root1 As B4XView)
	Root = Root1
	Root.LoadLayout("frm_main")
	
	B4XPages.SetTitle(Me,"AS DatePickerTimeline")

'	Sleep(4000)
'	'AS_DatePickerTimeline1.CustomDrawDay(DateTime.Now).xlbl_Date.TextColor = xui.Color_Red
'	Dim CustomDrawDay1 As ASDatePickerTimeline_CustomDrawDay = AS_DatePickerTimeline2.CustomDrawDay(DateTime.Now + DateTime.TicksPerDay*500)
'	If CustomDrawDay1.xlbl_Date.IsInitialized = True Then
'		CustomDrawDay1.xlbl_Date.TextColor = xui.Color_Red
'	End If
	'
'	Sleep(4000)
'	AS_DatePickerTimeline1.BodyProperties.DateTextColor = xui.Color_Red
'	AS_DatePickerTimeline2.BodyProperties.DateTextColor = xui.Color_Red
'	Log("lul")
'	AS_DatePickerTimeline1.Refresh
'	AS_DatePickerTimeline2.Refresh
'	Sleep(2000)
'	Log("lul2")
'	AS_DatePickerTimeline1.Refresh
'	AS_DatePickerTimeline2.Refresh

'	AS_DatePickerTimeline1.MinDate = DateTime.now
'	AS_DatePickerTimeline2.MinDate = DateTime.now
	'
'	AS_DatePickerTimeline1.MaxDate = DateTime.now
'	AS_DatePickerTimeline2.MaxDate = DateTime.now
	'
'	AS_DatePickerTimeline1.Rebuild
'	AS_DatePickerTimeline2.Rebuild

'	AS_DatePickerTimeline2.MinDate = DateUtils.SetDate(DateTime.GetYear(DateTime.now), 1, 1)
'	AS_DatePickerTimeline2.MaxDate = DateUtils.SetDate(2022, 8, 16)
'	AS_DatePickerTimeline2.Rebuild

Sleep(4000)
	AS_DatePickerTimeline1.Scroll2Date(DateTime.Now + DateTime.TicksPerDay*7)
	AS_DatePickerTimeline2.Scroll2Date(DateTime.Now + DateTime.TicksPerDay*7)

End Sub


Private Sub AS_DatePickerTimeline1_SelectedDateChanged (Date As Long)
	Log("SelectedDateChanged: " & DateUtils.TicksToString(Date))
End Sub

Private Sub AS_DatePickerTimeline1_CustomDrawDay (Date As Long, Views As ASDatePickerTimeline_CustomDrawDay)
	CustomDrawDay(Date,Views)
End Sub

Private Sub AS_DatePickerTimeline2_CustomDrawDay (Date As Long, Views As ASDatePickerTimeline_CustomDrawDay)
	CustomDrawDay(Date,Views)

'	If (AS_DatePickerTimeline2.MaxDate > 0 And DateUtils.SetDate(DateTime.GetYear(Date),DateTime.GetMonth(Date),DateTime.GetDayOfMonth(Date)) > DateUtils.SetDate(DateTime.GetYear(AS_DatePickerTimeline2.MaxDate),DateTime.GetMonth(AS_DatePickerTimeline2.MaxDate),DateTime.GetDayOfMonth(AS_DatePickerTimeline2.MaxDate))) Or (AS_DatePickerTimeline2.MinDate > 0 And DateUtils.SetDate(DateTime.GetYear(Date),DateTime.GetMonth(Date),DateTime.GetDayOfMonth(Date)) < DateUtils.SetDate(DateTime.GetYear(AS_DatePickerTimeline2.MinDate),DateTime.GetMonth(AS_DatePickerTimeline2.MinDate),DateTime.GetDayOfMonth(AS_DatePickerTimeline2.MinDate))) Then
'		Views.xlbl_Date.TextColor = xui.Color_ARGB(80,255,255,255)
'	End If
'	
End Sub

Private Sub CustomDrawDay (Date As Long, Views As ASDatePickerTimeline_CustomDrawDay)
	
	If DateTime.GetDayOfWeek(Date) = 1 Then '1=Sunday
		Views.xlbl_Date.TextColor = xui.Color_ARGB(255,221, 95, 96)
	End If
	
End Sub
