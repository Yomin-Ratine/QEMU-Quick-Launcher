VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "QEMU 快捷启动器"
   ClientHeight    =   5685
   ClientLeft      =   45
   ClientTop       =   690
   ClientWidth     =   9480
   BeginProperty Font 
      Name            =   "微软雅黑"
      Size            =   10.5
      Charset         =   134
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H80000005&
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5685
   ScaleWidth      =   9480
   StartUpPosition =   1  '所有者中心
   Begin VB.TextBox Text10 
      Height          =   2220
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   40
      Text            =   "Form1.frx":0ECA
      Top             =   5760
      Width           =   9135
   End
   Begin VB.CommandButton Command11 
      Caption         =   "▼"
      BeginProperty Font 
         Name            =   "微软雅黑"
         Size            =   7.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   38
      Top             =   5130
      Width           =   375
   End
   Begin VB.CheckBox Check1 
      Caption         =   "运行时显示控制台"
      Height          =   300
      Left            =   3360
      TabIndex        =   37
      Top             =   5160
      Width           =   2295
   End
   Begin VB.CommandButton Command4 
      Caption         =   "取消(&C)"
      Height          =   495
      Left            =   7680
      TabIndex        =   34
      Top             =   5040
      Width           =   1575
   End
   Begin VB.Frame Frame5 
      Caption         =   "附加驱动程序"
      Height          =   4455
      Left            =   3120
      TabIndex        =   32
      Top             =   240
      Visible         =   0   'False
      Width           =   6135
      Begin MSComDlg.CommonDialog CommonDialog3 
         Left            =   5040
         Top             =   480
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.Label Label16 
         AutoSize        =   -1  'True
         Caption         =   "无可用设置项。"
         Height          =   300
         Left            =   360
         TabIndex        =   33
         Top             =   600
         Width           =   1470
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "主板/BIOS"
      Height          =   4455
      Left            =   3120
      TabIndex        =   22
      Top             =   240
      Visible         =   0   'False
      Width           =   6135
      Begin VB.CommandButton Command10 
         Caption         =   "恢复默认值(&D)"
         Height          =   375
         Left            =   360
         TabIndex        =   36
         Top             =   3000
         Width           =   2535
      End
      Begin VB.TextBox Text7 
         Height          =   420
         Left            =   360
         TabIndex        =   30
         Text            =   ".\vars-template-pflash.raw"
         Top             =   2280
         Width           =   4455
      End
      Begin VB.CommandButton Command6 
         Caption         =   "浏览(&C)"
         Height          =   375
         Left            =   4800
         TabIndex        =   29
         Top             =   2280
         Width           =   975
      End
      Begin VB.TextBox Text5 
         Height          =   420
         Left            =   360
         TabIndex        =   24
         Text            =   ".\QEMU_EFI.fd"
         Top             =   1080
         Width           =   4455
      End
      Begin VB.CommandButton Command3 
         Caption         =   "浏览(&C)"
         Height          =   375
         Left            =   4800
         TabIndex        =   23
         Top             =   1080
         Width           =   975
      End
      Begin MSComDlg.CommonDialog CommonDialog2 
         Left            =   5040
         Top             =   480
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.Label Label14 
         AutoSize        =   -1  'True
         Caption         =   "请选定ramfb配置文件路径："
         Height          =   300
         Left            =   360
         TabIndex        =   31
         Top             =   1800
         Width           =   2700
      End
      Begin VB.Label Label12 
         AutoSize        =   -1  'True
         Caption         =   "请选定BIOS配置文件路径："
         Height          =   300
         Left            =   360
         TabIndex        =   25
         Top             =   600
         Width           =   2580
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "硬盘/光驱"
      Height          =   4455
      Left            =   3120
      TabIndex        =   18
      Top             =   240
      Visible         =   0   'False
      Width           =   6135
      Begin VB.CommandButton Command9 
         Caption         =   "恢复默认值(&D)"
         Height          =   375
         Left            =   360
         TabIndex        =   35
         Top             =   3000
         Width           =   2535
      End
      Begin VB.TextBox Text6 
         Height          =   420
         Left            =   360
         TabIndex        =   27
         Text            =   "E:\QEMU\win.iso"
         Top             =   2280
         Width           =   4455
      End
      Begin VB.CommandButton Command5 
         Caption         =   "浏览(&C)"
         Height          =   375
         Left            =   4800
         TabIndex        =   26
         Top             =   2280
         Width           =   975
      End
      Begin MSComDlg.CommonDialog CommonDialog1 
         Left            =   5040
         Top             =   480
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.CommandButton Command2 
         Caption         =   "浏览(&C)"
         Height          =   375
         Left            =   4800
         TabIndex        =   21
         Top             =   1080
         Width           =   975
      End
      Begin VB.TextBox Text4 
         Height          =   420
         Left            =   360
         TabIndex        =   20
         Text            =   "E:\QEMU\disk.qcow2"
         Top             =   1080
         Width           =   4455
      End
      Begin VB.Label Label13 
         AutoSize        =   -1  'True
         Caption         =   "请选定光盘映像路径："
         Height          =   300
         Left            =   360
         TabIndex        =   28
         Top             =   1800
         Width           =   2100
      End
      Begin VB.Label Label11 
         AutoSize        =   -1  'True
         Caption         =   "请选定虚拟磁盘路径："
         Height          =   300
         Left            =   360
         TabIndex        =   19
         Top             =   600
         Width           =   2100
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "运行(&R)"
      Height          =   495
      Left            =   6000
      TabIndex        =   17
      Top             =   5040
      Width           =   1575
   End
   Begin VB.Frame Frame2 
      Caption         =   "处理器"
      Height          =   4455
      Left            =   3120
      TabIndex        =   6
      Top             =   240
      Visible         =   0   'False
      Width           =   6135
      Begin VB.ComboBox Combo2 
         Height          =   420
         Left            =   1680
         TabIndex        =   16
         Text            =   "ARM64 (aarch64)"
         Top             =   680
         Width           =   3735
      End
      Begin VB.TextBox Text3 
         Height          =   420
         Left            =   2760
         TabIndex        =   14
         Text            =   "2"
         Top             =   2475
         Width           =   1575
      End
      Begin VB.TextBox Text2 
         Enabled         =   0   'False
         Height          =   420
         Left            =   1680
         TabIndex        =   12
         Text            =   "1"
         Top             =   1875
         Width           =   1575
      End
      Begin VB.ComboBox Combo1 
         Height          =   420
         Left            =   1680
         TabIndex        =   11
         Text            =   "cortex-a57"
         Top             =   1275
         Width           =   3735
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         Caption         =   "处理器架构："
         Height          =   300
         Left            =   360
         TabIndex        =   15
         Top             =   720
         Width           =   1260
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         Caption         =   "2"
         Height          =   300
         Left            =   2760
         TabIndex        =   13
         Top             =   3135
         Width           =   120
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "处理器型号："
         Height          =   300
         Left            =   360
         TabIndex        =   10
         Top             =   1320
         Width           =   1260
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "处理器内核总数："
         Height          =   300
         Left            =   360
         TabIndex        =   9
         Top             =   3120
         Width           =   1680
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "每个处理器的内核数量："
         Height          =   300
         Left            =   360
         TabIndex        =   8
         Top             =   2520
         Width           =   2310
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "处理器数量："
         Height          =   300
         Left            =   360
         TabIndex        =   7
         Top             =   1920
         Width           =   1260
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "内存"
      Height          =   4455
      Left            =   3120
      TabIndex        =   2
      Top             =   240
      Visible         =   0   'False
      Width           =   6135
      Begin VB.TextBox Text1 
         Height          =   420
         Left            =   2280
         TabIndex        =   5
         Text            =   "4096"
         Top             =   1050
         Width           =   1695
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "此虚拟机的内存(M)：                             MB"
         Height          =   300
         Left            =   240
         TabIndex        =   4
         Top             =   1080
         Width           =   4125
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "指定分配给此虚拟机的内存量。内存大小必须为 4MB 的倍数。"
         Height          =   300
         Left            =   240
         TabIndex        =   3
         Top             =   480
         Width           =   5835
      End
   End
   Begin VB.ListBox List1 
      Height          =   4560
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   2775
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "显示命令行参数"
      Height          =   300
      Left            =   600
      TabIndex        =   39
      Top             =   5160
      Width           =   1470
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "请选择一个设置项。"
      Height          =   300
      Left            =   5640
      TabIndex        =   1
      Top             =   3120
      Width           =   1890
   End
   Begin VB.Menu new 
      Caption         =   "新建(&N)"
      Begin VB.Menu nvd 
         Caption         =   "虚拟机磁盘 (&D)..."
      End
   End
   Begin VB.Menu tool 
      Caption         =   "工具(&T)"
      Begin VB.Menu re 
         Caption         =   "重定向QEMU安装文件夹 (&R)"
      End
      Begin VB.Menu dbgqi 
         Caption         =   "转换dmg镜像为vmdk磁盘格式 (&D)"
      End
      Begin VB.Menu ckcom 
         Caption         =   "在单独的窗口查看当前运行虚拟机的命令 (&K)"
      End
   End
   Begin VB.Menu help 
      Caption         =   "帮助(&H)"
      Begin VB.Menu doc 
         Caption         =   "相关帮助文档 (&D)"
      End
      Begin VB.Menu aw 
         Caption         =   "关于本软件 (&A)"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public qemudir$, memset%, ChipType$, Soc$, SocSore%, SocCount%, detail%
Private Sub aw_Click()
frmAbout.Show
End Sub

Private Sub ckcom_Click()
Form3.Show
End Sub

Private Sub Combo2_Change()
    Combo1.Clear
Select Case Combo2.ListIndex

    Case Is = 0:
        
    Case Is = 1:
        With Combo1
            .AddItem "cortex-a53"
            .AddItem "cortex-a57"
            .AddItem "cortex-a72"
        End With
    Case Is = 2:
        
    Case Is = 3:
        
    Case Is = 4:
        
    Case Is = 5:
        
    Case Is = 6:
        
    Case Is = 7:
        
    Case Is = 8:
        
    Case Is = 9:
        
    Case Is = 10:
        
    Case Is = 11:
        
    Case Is = 12:
        
    Case Is = 13:
        
    Case Is = 14:
        
    Case Is = 15:
        
    Case Is = 16:
        
    Case Is = 17:
        
    Case Is = 18:
        
    Case Is = 19:
        
    Case Is = 20:
        
    Case Is = 21:
        
    Case Is = 22:
        
    Case Is = 23:
        
    Case Is = 24:
        
    Case Is = 25:
        
    Case Is = 26:
        
    Case Is = 27:
        
    Case Is = 28:
        
    Case Is = 29:
        
    Case Is = 30:
        
End Select

End Sub

Private Sub Combo2_Click()
    Combo1.Clear
Select Case Combo2.ListIndex

    Case Is = 0:
        
    Case Is = 1:
        With Combo1
            .AddItem "cortex-a53"
            .AddItem "cortex-a57"
            .AddItem "cortex-a72"
        End With
    Case Is = 2:
        
    Case Is = 3:
        
    Case Is = 4:
        
    Case Is = 5:
        
    Case Is = 6:
        
    Case Is = 7:
        
    Case Is = 8:
        
    Case Is = 9:
        
    Case Is = 10:
        
    Case Is = 11:
        
    Case Is = 12:
        
    Case Is = 13:
        
    Case Is = 14:
        
    Case Is = 15:
        
    Case Is = 16:
        
    Case Is = 17:
        
    Case Is = 18:
        
    Case Is = 19:
        
    Case Is = 20:
        
    Case Is = 21:
        
    Case Is = 22:
        
    Case Is = 23:
        
    Case Is = 24:
        
    Case Is = 25:
        
    Case Is = 26:
        
    Case Is = 27:
        
    Case Is = 28:
        
    Case Is = 29:
        
    Case Is = 30:
        
End Select
End Sub
Private Sub Command1_Click()
Dim a$, b As VbMsgBoxResult
ChipType = ""
Soc = Combo1.Text
SocCount = Int(Text3.Text)
memset = Text1.Text
Select Case Combo2.ListIndex
    Case Is = 0:
        ChipType = "qemu-system-arm"
    Case Is = 1:
        ChipType = "qemu-system-aarch64"
    Case Is = 2:
        ChipType = "qemu-system-i386"
    Case Is = 3:
        ChipType = "qemu-system-x86_64"
    Case Is = 4:
        ChipType = "qemu-system-mips"
    Case Is = 5:
        ChipType = "qemu-system-mipsel"
    Case Is = 6:
        ChipType = "qemu-system-mips64"
    Case Is = 7:
        ChipType = "qemu-system-mips64el"
    Case Is = 8:
        ChipType = "qemu-system-loongarch64"
    Case Is = 9:
        ChipType = "qemu-system-riscv32"
    Case Is = 10:
        ChipType = "qemu-system-riscv64"
    Case Is = 11:
        ChipType = "qemu-system-or1k"
    Case Is = 12:
        ChipType = "qemu-system-ppc"
    Case Is = 13:
        ChipType = "qemu-system-ppc64"
    Case Is = 14:
        ChipType = "qemu-system-alpha"
    Case Is = 15:
        ChipType = "qemu-system-avr"
    Case Is = 16:
        ChipType = "qemu-system-cris"
    Case Is = 17:
        ChipType = "qemu-system-hppa"
    Case Is = 18:
        ChipType = "qemu-system-m68k"
    Case Is = 19:
        ChipType = "qemu-system-microblaze"
    Case Is = 20:
        ChipType = "qemu-system-microblazeel"
    Case Is = 21:
        ChipType = "qemu-system-nios2"
    Case Is = 22:
        ChipType = "qemu-system-rx"
    Case Is = 23:
        ChipType = "qemu-system-s390x"
    Case Is = 24:
        ChipType = "qemu-system-sh4"
    Case Is = 25:
        ChipType = "qemu-system-sh4eb"
    Case Is = 26:
        ChipType = "qemu-system-sparc"
    Case Is = 27:
        ChipType = "qemu-system-sparc64"
    Case Is = 28:
        ChipType = "qemu-system-tricore"
    Case Is = 29:
        ChipType = "qemu-system-xtensa"
    Case Is = 30:
        ChipType = "qemu-system-xtensaeb"
End Select
If Check1.Value = 1 Then
    ChipType = ChipType & ".exe"
Else
    ChipType = ChipType & "w.exe"
End If
If Soc <> "" Then
a = Chr$(34) & qemudir & ChipType & Chr$(34) & " -M virt,virtualization=true -cpu " & Soc & " -smp " & Str(SocCount) & " -m " & Str(memset) & " -device qemu-xhci -device usb-kbd -device usb-tablet -drive file=" & Chr$(34) & Text4.Text & Chr$(34) & ",if=virtio -nic user,model=virtio -drive file=" & Chr$(34) & Text6.Text & Chr$(34) & ",media=cdrom,if=none,id=cdrom -device usb-storage,drive=cdrom -bios " & Chr$(34) & Text5.Text & Chr$(34) & " -device ramfb -drive file=" & Chr$(34) & Text7.Text & Chr$(34) & ",if=pflash,index=1"
b = MsgBox("请确认运行的命令：" & vbCrLf & a & vbCrLf & "是否开始运行配置的虚拟机？", 68)
If b = vbYes Then
    Text10.Text = a
    Form3.Text1.Text = a
    d = Shell(a, 1)
End If
Else
    MsgBox ("请选择SoC型号！")
End If
End Sub

Private Sub Command10_Click()
Text5.Text = ".\QEMU_EFI.fd"
Text7.Text = ".\vars-template-pflash.raw"
End Sub

Private Sub Command11_Click()
If detail = 0 Then
    Command11.Caption = "▲"
    Form1.Height = 8820
    detail = 1
Else
    Command11.Caption = "▼"
    Form1.Height = 6420
    detail = 0
End If
End Sub

Private Sub Command2_Click()
CommonDialog1.DialogTitle = "打开虚拟磁盘文件"
CommonDialog1.Filter = "*.qcow2"
CommonDialog1.FilterIndex = 2
CommonDialog1.Flags = cdlOFNAllowMultiselect + cdlOFNExplorer
CommonDialog1.Flags = cdlOFNFileMustExist + cdlOFNHideReadOnly
CommonDialog1.CancelError = False
CommonDialog1.ShowOpen
On Error Resume Next
Text4.Text = CommonDialog1.FileName
End Sub

Private Sub Command3_Click()
CommonDialog2.DialogTitle = "打开BIOS配置文件"
CommonDialog2.Filter = "QEMU_EFI.fd"
CommonDialog2.FilterIndex = 2
CommonDialog2.Flags = cdlOFNAllowMultiselect + cdlOFNExplorer
CommonDialog2.Flags = cdlOFNFileMustExist + cdlOFNHideReadOnly
CommonDialog2.CancelError = False
CommonDialog2.ShowOpen
On Error Resume Next
Text5.Text = CommonDialog2.FileName
End Sub

Private Sub Command4_Click()
Unload Form1
End Sub

Private Sub Command5_Click()
CommonDialog1.DialogTitle = "打开光盘映像文件"
CommonDialog1.Filter = "*.iso"
CommonDialog1.FilterIndex = 2
CommonDialog1.Flags = cdlOFNAllowMultiselect + cdlOFNExplorer
CommonDialog1.Flags = cdlOFNFileMustExist + cdlOFNHideReadOnly
CommonDialog1.CancelError = False
CommonDialog1.ShowOpen
On Error Resume Next
Text6.Text = CommonDialog1.FileName
End Sub

Private Sub Command6_Click()
CommonDialog2.DialogTitle = "打开ramfb配置文件"
CommonDialog2.Filter = "vars-template-pflash.raw"
CommonDialog2.FilterIndex = 2
CommonDialog2.Flags = cdlOFNAllowMultiselect + cdlOFNExplorer
CommonDialog2.Flags = cdlOFNFileMustExist + cdlOFNHideReadOnly
CommonDialog2.CancelError = False
CommonDialog2.ShowOpen
On Error Resume Next
Text7.Text = CommonDialog2.FileName
End Sub

Private Sub Command9_Click()
Text4.Text = "E:\QEMU\disk.qcow2"
Text6.Text = "E:\QEMU\win.iso"
End Sub

Private Sub dbgqi_Click()
CommonDialog3.DialogTitle = "打开dmg磁盘文件"
CommonDialog3.Filter = "*.dmg"
CommonDialog3.FilterIndex = 2
CommonDialog3.Flags = cdlOFNAllowMultiselect + cdlOFNExplorer
CommonDialog3.Flags = cdlOFNFileMustExist + cdlOFNHideReadOnly
CommonDialog3.CancelError = False
CommonDialog3.ShowOpen
On Error Resume Next
e = qemudir & "\qemu-img.exe convert -O vmdk -o compat6 " & Chr$(13) & CommonDialog3.FileName & Chr$(13) & " base.vmdk"
Form3.Text1 = e
Text10.Text = e
Shell (e)
End Sub

Private Sub doc_Click()
Form4.Show
End Sub

Private Sub Form_Load()
qemudir = "C:\Program Files\qemu\"
detail = 0
With List1
    .AddItem "内存"
    .AddItem "处理器"
    .AddItem "硬盘/光驱"
    .AddItem "主板/BIOS"
    .AddItem "附加驱动程序"
End With

With Combo2
    .AddItem "ARM32"
    .AddItem "ARM64 (aarch64)"
    .AddItem "x86 (i386)"
    .AddItem "x86_64 (AMD64)"
    .AddItem "MIPS (32位大端字节序)"
    .AddItem "MIPS (32位小端字节序)"
    .AddItem "MIPS (64位大端字节序)"
    .AddItem "MIPS (64位小端字节序)"
    .AddItem "Loongarch (64位)"
    .AddItem "RISC-V (32位)"
    .AddItem "RISC-V (64位)"
    .AddItem "OpenRISC"
    .AddItem "PowerPC (32位)"
    .AddItem "PowerPC (64位)"
    .AddItem "Alpha"
    .AddItem "AVR"
    .AddItem "Cris"
    .AddItem "PA-RISC (hppa)"
    .AddItem "m68k"
    .AddItem "Microblaze (大端字节序)"
    .AddItem "Microblaze (小端字节序)"
    .AddItem "Nios2"
    .AddItem "RX"
    .AddItem "s390x"
    .AddItem "sh4"
    .AddItem "sh4eb"
    .AddItem "SPARC (32位)"
    .AddItem "SPARC (64位)"
    .AddItem "Tricore"
    .AddItem "Xtensa"
    .AddItem "Xtensaeb"
End With
With Combo1
    .AddItem "cortex-a53"
    .AddItem "cortex-a57"
    .AddItem "cortex-a72"
End With
Combo2.ListIndex = 1
End Sub

Private Sub Label4_Click()
If detail = 0 Then
    Command11.Caption = "▲"
    Form1.Height = 8820
    detail = 1
Else
    Command11.Caption = "▼"
    Form1.Height = 6420
    detail = 0
End If
End Sub

Private Sub List1_Click()
If List1.Selected(0) Then
    Frame1.Visible = True
    Frame2.Visible = False
    Frame3.Visible = False
    Frame4.Visible = False
    Frame5.Visible = False
ElseIf List1.Selected(1) Then
    Frame1.Visible = False
    Frame2.Visible = True
    Frame3.Visible = False
    Frame4.Visible = False
    Frame5.Visible = False
ElseIf List1.Selected(2) Then
    Frame1.Visible = False
    Frame2.Visible = False
    Frame3.Visible = True
    Frame4.Visible = False
    Frame5.Visible = False
ElseIf List1.Selected(3) Then
    Frame1.Visible = False
    Frame2.Visible = False
    Frame3.Visible = False
    Frame4.Visible = True
    Frame5.Visible = False
ElseIf List1.Selected(4) Then
    Frame1.Visible = False
    Frame2.Visible = False
    Frame3.Visible = False
    Frame4.Visible = False
    Frame5.Visible = True
End If
End Sub

Private Sub nvd_Click()
Form2.Show
End Sub

Private Sub re_Click()
qemudir = InputBox("请定位QEMU安装文件夹：", , "C:\Program Files\qemu\")
End Sub

Private Sub Text2_Change()
Label9.Caption = Str(Int(Text2.Text) * Int(Text3.Text))
End Sub

Private Sub Text3_Change()
Label9.Caption = Str(Int(Text2.Text) * Int(Text3.Text))
End Sub
