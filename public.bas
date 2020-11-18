Attribute VB_Name = "public"
Option Explicit
Public Gettime As Variant
Private Type GUID
    Data1 As Long
    Data2 As Integer
    Data3 As Integer
    Data4(0 To 7) As Byte
End Type

Private Type GdiplusStartupInput
    GdiplusVersion As Long
    DebugEventCallback As Long
    SuppressBackgroundThread As Long
    SuppressExternalCodecs As Long
End Type

Private Type EncoderParameter
    GUID As GUID
    NumberOfValues As Long
    type As Long
    Value As Long
End Type

Private Type EncoderParameters
    Count As Long
    Parameter As EncoderParameter
End Type
Public Declare Function timeGetTime Lib "winmm.dll" () As Long
Private Declare Function GdiplusStartup Lib "GDIPlus" (token As Long, inputbuf As GdiplusStartupInput, ByVal outputbuf As Long) As Long
Private Declare Function GdiplusShutdown Lib "GDIPlus" (ByVal token As Long) As Long
Private Declare Function GdipCreateBitmapFromHBITMAP Lib "GDIPlus" (ByVal hbm As Long, ByVal hpal As Long, Bitmap As Long) As Long
Private Declare Function GdipDisposeImage Lib "GDIPlus" (ByVal Image As Long) As Long
Private Declare Function GdipSaveImageToFile Lib "GDIPlus" (ByVal Image As Long, ByVal filename As Long, clsidEncoder As GUID, encoderParams As Any) As Long
Private Declare Function CLSIDFromString Lib "ole32" (ByVal str As Long, id As GUID) As Long
Private Declare Function GdipCreateBitmapFromFile Lib "GDIPlus" (ByVal filename As Long, Bitmap As Long) As Long


Public Function PictureBoxSaveJPG(ByVal pict As StdPicture, ByVal filename As String, Optional ByVal quality As Byte = 80) As Boolean
    Dim tSI As GdiplusStartupInput
    Dim lRes As Long
    Dim lGDIP As Long
    Dim lBitmap As Long
   
    '初始化 GDI+
    tSI.GdiplusVersion = 1
    lRes = GdiplusStartup(lGDIP, tSI, 0)
   
    If lRes = 0 Then
        '从句柄创建 GDI+ 图像
        lRes = GdipCreateBitmapFromHBITMAP(pict.Handle, 0, lBitmap)
       
        If lRes = 0 Then
            Dim tJpgEncoder As GUID
            Dim tParams As EncoderParameters
           
            '初始化解码器的GUID标识
            CLSIDFromString StrPtr("{557CF401-1A04-11D3-9A73-0000F81EF32E}"), tJpgEncoder
           
            '设置解码器参数
            tParams.Count = 1
            With tParams.Parameter ' Quality
                '得到Quality参数的GUID标识
                CLSIDFromString StrPtr("{1D5BE4B5-FA4A-452D-9CDD-5DB35105E7EB}"), .GUID
                .NumberOfValues = 1
                .type = 4
                .Value = VarPtr(quality)
            End With
           
            '保存图像
            lRes = GdipSaveImageToFile(lBitmap, StrPtr(filename), tJpgEncoder, tParams)
           
            '销毁GDI+图像
            GdipDisposeImage lBitmap
        End If
       
        '销毁 GDI+
        GdiplusShutdown lGDIP
    End If
    If lRes Then
        PictureBoxSaveJPG = False
    Else
        PictureBoxSaveJPG = True
    End If
End Function

'Public Function SetDisplayMode(Width As Integer, Height As Integer, Color As Integer) As Long
'Const DM_PELSWIDTH = &H80000
'Const DM_PELSHEIGHT = &H100000
'Const DM_BITSPERPEL = &H40000
'Dim pDevmode As Long
'Dim NewDevMode As DEVMODE
'With NewDevMode
'.dmSize = 122
'If Color = -1 Then
' .dmFields = DM_PELSWIDTH Or DM_PELSHEIGHT
' Else
' .dmFields = DM_PELSWIDTH Or DM_PELSHEIGHT Or DM_BITSPERPEL
' End If
' .dmPelsWidth = Width
' .dmPelsHeight = Height
' If Color <> -1 Then
' .dmBitsPerPel = Color
' End If
' End With
' pDevmode = lstrcpy(NewDevMode, NewDevMode)
' SetDisplayMode = ChangeDisplaySettings(pDevmode, 0)
'End Function

'Public Function ResizePicture(ByVal sourceImage As Bitmap, _
'        ByVal newSize As Size) As Bitmap
'
'        Dim Result_image As New Bitmap(sourceImage, newSize.Width, newSize.Height)
'        Dim Gr As Graphics
'
'        Gr = Graphics.FromImage(Result_image)
'        Gr.DrawImage(Result_image, 0, 0, newSize.Width, newSize.Height)
'        Gr.Save()
'
'        Return Result_image
'    End Function
'
'    Public Function CropBitmap(ByVal inputBmp As Bitmap, _
'        ByVal cropRectangle As Rectangle) As Bitmap
'        'Create a new bitmap object based on the input
'        Dim newBmp As New Bitmap(cropRectangle.Width, _
'                 cropRectangle.Height, _
'                 System.Drawing.Imaging.PixelFormat.Format24bppRgb) 'Graphics.FromImage
'                        'doesn't like Indexed pixel format
'
'        'Create a graphics object and attach it to the bitmap
'        Dim newBmpGraphics As Graphics = Graphics.FromImage(newBmp)
'
'        'Draw the portion of the input image in the crop rectangle
'        'in the graphics object
'        newBmpGraphics.DrawImage(inputBmp, _
'              New Rectangle(0, 0, cropRectangle.Width, cropRectangle.Height), _
'                cropRectangle, _
'                GraphicsUnit.Pixel)
'
'        'Return the bitmap
'        newBmpGraphics.Dispose()
'
'        'newBmp will have a RawFormat of MemoryBmp because it was created
'        'from scratch instead of being based on inputBmp.  Since it is inconvenient
'        'for the returned version of a bitmap to be of a different format, now convert
'        'the scaled bitmap to the format of the source bitmap
'        Return newBmp
'    End Function
