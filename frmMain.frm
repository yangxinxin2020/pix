VERSION 5.00
Begin VB.Form frmMain 
   AutoRedraw      =   -1  'True
   ClientHeight    =   9945
   ClientLeft      =   630
   ClientTop       =   2490
   ClientWidth     =   4545
   LinkTopic       =   "Form1"
   ScaleHeight     =   663
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   303
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   735
      Left            =   1440
      TabIndex        =   14
      Top             =   3360
      Width           =   2175
   End
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   5295
      Left            =   7200
      ScaleHeight     =   5235
      ScaleWidth      =   5715
      TabIndex        =   10
      Top             =   840
      Width           =   5775
   End
   Begin VB.CommandButton Commandok 
      Caption         =   "OK"
      Height          =   495
      Left            =   2160
      TabIndex        =   13
      Top             =   2280
      Width           =   1815
   End
   Begin VB.PictureBox Picture2 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   5535
      Left            =   16200
      ScaleHeight     =   365
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   405
      TabIndex        =   11
      Top             =   840
      Width           =   6135
   End
   Begin VB.CommandButton ComCancel 
      Caption         =   "cancel"
      Height          =   495
      Left            =   4440
      TabIndex        =   8
      Top             =   2280
      Width           =   1695
   End
   Begin VB.Frame Frame1 
      Caption         =   "像素改变"
      BeginProperty Font 
         Name            =   "仿宋"
         Size            =   14.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1935
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   6135
      Begin VB.ComboBox ComPix 
         Height          =   300
         ItemData        =   "frmMain.frx":0000
         Left            =   2160
         List            =   "frmMain.frx":0019
         TabIndex        =   5
         Top             =   840
         Width           =   1935
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         Caption         =   $"frmMain.frx":0062
         BeginProperty Font 
            Name            =   "MS PGothic"
            Size            =   9
            Charset         =   128
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2280
         TabIndex        =   7
         Top             =   240
         Width           =   1455
      End
      Begin VB.Label Label7 
         Caption         =   "请选择"
         BeginProperty Font 
            Name            =   "华文宋体"
            Size            =   12
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   480
         TabIndex        =   4
         Top             =   840
         Width           =   2415
      End
      Begin VB.Label labGx 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Height          =   180
         Left            =   3960
         TabIndex        =   3
         Top             =   1440
         Width           =   60
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         Caption         =   $"frmMain.frx":0076
         BeginProperty Font 
            Name            =   "MS PGothic"
            Size            =   9
            Charset         =   128
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2280
         TabIndex        =   2
         Top             =   1440
         Width           =   1575
      End
      Begin VB.Label labPCPix 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFC0C0&
         BeginProperty Font 
            Name            =   "MS PGothic"
            Size            =   11.25
            Charset         =   128
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   3960
         TabIndex        =   1
         Top             =   240
         Width           =   75
      End
   End
   Begin VB.Label Label6 
      Caption         =   "Label6"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   18
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   1200
      TabIndex        =   17
      Top             =   7560
      Width           =   3015
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Caption         =   "Label5"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   26.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   1080
      TabIndex        =   16
      Top             =   4680
      Width           =   3255
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "Label4"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   1200
      TabIndex        =   15
      Top             =   5880
      Width           =   3015
   End
   Begin VB.Label labaft 
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "MS PGothic"
         Size            =   14.25
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   16200
      TabIndex        =   12
      Top             =   240
      Width           =   105
   End
   Begin VB.Label labwh 
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "MS PGothic"
         Size            =   14.25
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   8640
      TabIndex        =   9
      Top             =   240
      Width           =   105
   End
   Begin VB.Label Label1 
      Caption         =   $"frmMain.frx":008C
      Height          =   375
      Left            =   240
      TabIndex        =   6
      Top             =   480
      Width           =   1095
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Command1_Click()
    Dim ret As Boolean
    Dim Geti As Variant
    Geti = timeGetTime
    Gettime = timeGetTime
    Kill "E:\a.jpg"
    Picture1.Picture = LoadPicture("E:\20201118233223.jpg") '打开要压缩的图片
    frmMain.Label5.Caption = timeGetTime - Gettime & "ms"
    Gettime = timeGetTime
    ret = PictureBoxSaveJPG(Picture1, "E:\a.jpg") '保存压缩后的图片
    frmMain.Label4.Caption = timeGetTime - Gettime & "ms"
    frmMain.Label6.Caption = timeGetTime - Geti & "ms"
    If ret = False Then
        MsgBox "保存失败"
    End If
End Sub

'Private Sub Commandok_Click()
'    Dim HEIPIX As Variant
'    Dim WDIPIX As Variant
'    Dim strPix As String
'    Dim iPos As Integer
'    Dim i As Variant
'    Dim j As Integer
'    Dim varBit As Variant
'    Dim strTemp As String
'    Dim str As String
'    Dim curDire As String
'    Dim curFile As String
'    Dim pixelColor As Variant
'    Dim newColor As Variant
'
'    Dim R As Variant
'    Dim G As Variant
'    Dim B As Variant
'    'Picture2.Picture = LoadPicture("E:\v2-fd813aa825c6a503410533d674c01581_540x450 (1).jpeg")
'    Picture2.Picture = LoadPicture("E:\GUAN.jpg")
'    strPix = frmMain.ComPix.Text '
'    iPos = InStr(1, strPix, "*", vbTextCompare)
'
'    HEIPIX = Trim(Mid(strPix, 1, iPos - 1))
'    WDIPIX = Trim(Mid(strPix, iPos + 1, Len(frmMain.ComPix.Text)))
'
'   'Call autochange(frmMain)
'   ' Call GetBitmapDimensionEx(Picture2.Picture.Handle, varBit)
'
'    Picture2.ScaleHeight = HEIPIX
'    Picture2.ScaleWidth = WDIPIX
''    Picture2.Height = HEIPIX / 96 * 1440
''    Picture2.Width = WDIPIX / 96 * 1440
''    For i = 0 To HEIPIX - 1
''        For j = 0 To WDIPIX - 1
''                R = (Picture2.Point(i, j) And &HFF) Mod 256
''                G = (Picture2.Point(i, j) And &HFF00) Mod 256
''                B = (Picture2.Point(i, j) And &HFF0000) Mod 256
''                Picture2.PSet (i, j), RGB(R * 1, G * 1, B * 1)
''            Debug.Print Picture2.Point(i, j)
''        Next j
''    Next i
''    For i = 0 To Picture2.Width - 1
''        For j = 0 To Picture2.Height - 1
''                R = (Picture2.Point(i, j) And &HFF) Mod 256
''                G = (Picture2.Point(i, j) And &HFF00) Mod 256
''                B = (Picture2.Point(i, j) And &HFF0000) Mod 256
''                Picture2.PSet (X, Y), RGB(R * 0.5, G * 0.5, B * 0.5)
''        Next j
''    Next i
'
'        ' Set the PictureBox to display the image.
''    curDire = "C:\egmain-ex\Data\Xtml_S\ExTSchema\pix"
''    curFile = curDire + "\pix.JPG"
'Dim isize As Size
'  Call SetBitmapDimensionEx(Picture2.hdc, 10000, 1000, isize)
'   Call GetFileType(Picture2.hdc)
'    curDire = "E:\pix"
'    curFile = curDire + "\pix.JPG"
'    If Len(Dir$(curDire, vbDirectory)) = 0 Then MkDir curDire
'
'    If Len(Dir$(curFile)) > 0 Then Kill curFile
'    SavePicture Picture2.Image, curFile
'
'   varBit = Int(FileLen("E:\pix\pix.JPG") / 1024)
'
'   Dim quality As Byte
'Dim TIFF_ColorDepth As Long
'Dim TIFF_Compression As Long
'Screen.MousePointer = vbHourglass
'Dim tSI As GdiplusStartupInput
'Dim lRes As Long
'Dim lGDIP As Long
'Dim lBitmap As Long
'Dim aEncParams() As Byte
'Dim pict As Image
'
'quality = 80
'TIFF_ColorDepth = 24
'TIFF_Compression = 6
'pict = Picture2.Image
'
'tSI.GdiplusVersion = 1
'lRes = GdiplusStartup(lGDIP, tSI)
'lRes = GdipCreateBitmapFromHBITMAP(pict.Picture.Handle, 0, lBitmap)
'Dim tJpgEncoder As GUID
'Dim tParams As EncoderParameters
'CLSIDFromString StrPtr("{557CF401-1A04-11D3-9A73-0000F81EF32E}"), tJpgEncoder
'tParams.Count = 1
'With tParams.Parameter ' Quality
'CLSIDFromString StrPtr("{1D5BE4B5-FA4A-452D-9CDD-5DB35105E7EB}"), .GUID
'.NumberOfValues = 1
'.type = 4
'.Value = VarPtr(quality)
'End With
'ReDim aEncParams(1 To Len(tParams))
'Call CopyMemory(aEncParams(1), tParams, Len(tParams))
'    'varBit = Int(HEIPIX * WDIPIX * 24 / 1024 / 8)
'    frmMain.labaft.Caption = Picture2.ScaleHeight & "*" & Picture2.ScaleWidth & vbCrLf & "Size:" & varBit & "KB"
'    Picture2.Picture = LoadPicture("E:\pix\pix.JPG")
'End Sub

Private Sub Form_Load()

End Sub
