VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "新建虚拟磁盘向导"
   ClientHeight    =   5085
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   7125
   BeginProperty Font 
      Name            =   "微软雅黑"
      Size            =   10.5
      Charset         =   134
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5085
   ScaleWidth      =   7125
   StartUpPosition =   1  '所有者中心
   Begin VB.CheckBox Check1 
      Caption         =   "保持对话框打开"
      Height          =   495
      Left            =   600
      TabIndex        =   9
      Top             =   3840
      Width           =   1935
   End
   Begin VB.OptionButton Option1 
      Caption         =   "img 格式"
      Enabled         =   0   'False
      Height          =   285
      Index           =   1
      Left            =   2640
      TabIndex        =   8
      Top             =   2760
      Width           =   2415
   End
   Begin VB.OptionButton Option1 
      Caption         =   "qcow2 格式"
      Height          =   300
      Index           =   0
      Left            =   2640
      TabIndex        =   7
      Top             =   2300
      Value           =   -1  'True
      Width           =   2415
   End
   Begin VB.CommandButton Command2 
      Caption         =   "取消(&C)"
      Height          =   495
      Left            =   5280
      TabIndex        =   5
      Top             =   4440
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "确定(&O)"
      Height          =   495
      Left            =   3600
      TabIndex        =   4
      Top             =   4440
      Width           =   1575
   End
   Begin VB.TextBox Text2 
      Height          =   420
      Left            =   2880
      TabIndex        =   3
      Text            =   "disk.qcow2"
      Top             =   1155
      Width           =   3135
   End
   Begin VB.TextBox Text1 
      Height          =   420
      Left            =   2880
      TabIndex        =   1
      Text            =   "60"
      Top             =   1680
      Width           =   1695
   End
   Begin VB.Line Line1 
      BorderColor     =   &H80000015&
      X1              =   240
      X2              =   6840
      Y1              =   3720
      Y2              =   3720
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "虚拟磁盘格式 (&F)："
      Height          =   300
      Left            =   600
      TabIndex        =   6
      Top             =   2250
      Width           =   1785
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "虚拟磁盘文件名 (&N)："
      Height          =   300
      Left            =   600
      TabIndex        =   2
      Top             =   1200
      Width           =   2055
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "最大磁盘大小 (GB)(&S)："
      Height          =   300
      Left            =   600
      TabIndex        =   0
      Top             =   1725
      Width           =   2235
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
Dim name$, cap%
name = Text2.Text
cap = Int(Text1.Text)
d = Shell(Form1.qemudir + "qemu-img.exe create -f qcow2 " + name + " " + Str(cap) + "G", 1)
If Check1.Value = False Then
    Unload Form2
End If
End Sub

Private Sub Command2_Click()
Unload Form2
End Sub



