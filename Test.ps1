$shell = New-Object -ComObject Shell.Application
$shell.MinimizeAll()

$directoryPath = "$env:LOCALAPPDATA\Temp\Win11Debloat\Win11Debloat-master"
New-Item -ItemType Directory -Force -Path $directoryPath | Out-Null

Set-Content -Path "$directoryPath\CustomAppsList" -Value "
 Clipchamp.Clipchamp
 Microsoft.3DBuilder
 Microsoft.549981C3F5F10
 Microsoft.Copilot
 Microsoft.Edge
 Microsoft.BingFinance
 Microsoft.BingFoodAndDrink 
 Microsoft.BingHealthAndFitness
 Microsoft.BingNews
 Microsoft.BingSearch
 Microsoft.BingSports
 Microsoft.BingTranslator
 Microsoft.BingTravel
 Microsoft.BingWeather
 Microsoft.Getstarted
 Microsoft.Messaging
 Microsoft.Microsoft3DViewer
 Microsoft.MicrosoftJournal
 Microsoft.MicrosoftOfficeHub
 Microsoft.MicrosoftPowerBIForWindows
 Microsoft.MicrosoftSolitaireCollection
 Microsoft.MicrosoftStickyNotes
 Microsoft.MixedReality.Portal
 Microsoft.NetworkSpeedTest
 Microsoft.News
 Microsoft.Office.OneNote
 Microsoft.Office.Sway
 Microsoft.OneConnect
 Microsoft.Print3D
 Microsoft.SkypeApp
 Microsoft.Todos
 Microsoft.WindowsAlarms
 Microsoft.WindowsFeedbackHub
 Microsoft.WindowsMaps
 Microsoft.WindowsSoundRecorder
 Microsoft.XboxApp
 Microsoft.ZuneVideo
 MicrosoftCorporationII.MicrosoftFamily
 MicrosoftTeams
 MSTeams
 Microsoft.GetHelp
 Microsoft.MSPaint
 Microsoft.OutlookForWindows
 Microsoft.OneDrive
 Microsoft.Paint
 Microsoft.People
 Microsoft.Whiteboard
 Microsoft.windowscommunicationsapps
 Microsoft.YourPhone
 MicrosoftWindows.CrossDevice
 Microsoft.PowerAutomateDesktop
 Microsoft.RemoteDesktop
 Windows.DevHome
 MicrosoftWindows.Client.WebExperience
 Microsoft.ApplicationCompatibilityEnhancements
 Microsoft.WidgetsPlatformRuntime
 MicrosoftCorporationII.QuickAssist
 ACGMediaPlayer
 ActiproSoftwareLLC
 AdobeSystemsIncorporated.AdobePhotoshopExpress
 Amazon.com.Amazon
 AmazonVideo.PrimeVideo
 Asphalt8Airborne
 AutodeskSketchBook
 CaesarsSlotsFreeCasino
 COOKINGFEVER
 CyberLinkMediaSuiteEssentials
 DisneyMagicKingdoms
 Disney 
 Dolby
 DrawboardPDF
 DuolingoLearnLanguagesforFree
 EclipseManager
 Facebook
 FarmVille2CountryEscape
 fitbit
 Flipboard
 HiddenCity
 HULULLC.HULUPLUS
 iHeartRadio
 Instagram
 king.com.BubbleWitch3Saga
 king.com.CandyCrushSaga
 king.com.CandyCrushSodaSaga
 LinkedInforWindows
 MarchofEmpires
 Netflix
 NYTCrossword
 OneCalendar
 PandoraMediaInc
 PhototasticCollage
 PicsArtPhotoStudio
 Plex
 PolarrPhotoEditorAcademicEdition
 Royal Revolt
 Shazam
 Sidia.LiveWallpaper
 SlingTV
 Speed Test
 Spotify
 TikTok
 TuneInRadio
 Twitter
 Viber
 WinZipUniversal
 Wunderlist
 XING
 "
Set-Content -Path "$directoryPath\CustomAppsList" -Value $appListContent

Start-Process powershell -ArgumentList "-WindowStyle Minimized -Command & ([scriptblock]::Create((Invoke-RestMethod 'https://debloat.raphi.re/'))) -Silent -RemoveAppsCustom -DisableTelemetry -DisableSuggestions -DisableLockscreenTips -DisableWidgets -DisableStartRecommended -ShowHiddenFolders -ShowKnownFileExt -HideSearchTb"

iex "& { $(irm christitus.com/win) } -Config https://raw.githubusercontent.com/bluethedoor/Test/refs/heads/main/Tweaks.json -Run"
