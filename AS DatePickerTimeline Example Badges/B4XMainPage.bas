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
End Sub

Public Sub Initialize
	
End Sub

'This event will be called once, before the page becomes visible.
Private Sub B4XPage_Created (Root1 As B4XView)
	Root = Root1
	Root.LoadLayout("frm_main")
	
	B4XPages.SetTitle(Me,"AS DatePickerTimeline")
	
	
End Sub


Private Sub AS_DatePickerTimeline1_SelectedDateChanged (Date As Long)
	Log("SelectedDateChanged: " & DateUtils.TicksToString(Date))
End Sub

Private Sub AS_DatePickerTimeline1_CustomDrawDay (Date As Long, Views As ASDatePickerTimeline_CustomDrawDay)
	CustomDrawDay(Date,Views)
End Sub

Private Sub AS_DatePickerTimeline2_CustomDrawDay (Date As Long, Views As ASDatePickerTimeline_CustomDrawDay)
	CustomDrawDay(Date,Views)
End Sub

Private Sub CustomDrawDay (Date As Long, Views As ASDatePickerTimeline_CustomDrawDay)

	
	If DateTime.GetDayOfWeek(Date) = 1 Then '1=Sunday
		Views.xlbl_Date.TextColor = xui.Color_ARGB(255,221, 95, 96)
	End If
	
	'***********Badge Code**************************************
	Dim BadgePanelWidth As Float = Views.BackgroundPanel.Width/2
	Dim BadgePanelHeight As Float = 20dip
	
	Dim xpnl_BadgeBackground As B4XView = xui.CreatePanel("")
	xpnl_BadgeBackground.Color = xui.Color_Transparent
	Views.BackgroundPanel.AddView(xpnl_BadgeBackground,BadgePanelWidth - BadgePanelWidth/2,Views.BackgroundPanel.Height/2 - BadgePanelHeight/2,BadgePanelWidth,BadgePanelHeight)
	
	Dim Badger1 As Badger
	Badger1.Initialize
	Badger1.SetBadge(xpnl_BadgeBackground,Rnd(0,20))
	
End Sub