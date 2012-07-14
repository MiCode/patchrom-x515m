.class public Lcom/android/camera/component/RecordingTimerUI;
.super Lcom/android/camera/component/UIComponent;
.source "RecordingTimerUI.java"


# instance fields
.field private m_TimerBackground:Landroid/view/View;

.field private m_TimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_TimerText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 32
    const-string v0, "Recording Timer"

    const/4 v1, 0x1

    const v2, 0x7f080050

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/component/RecordingTimerUI;->autoInflateView(Z)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/RecordingTimerUI;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/component/RecordingTimerUI;->m_TimerBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/RecordingTimerUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/camera/component/RecordingTimerUI;->initializeUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/RecordingTimerUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/component/RecordingTimerUI;->m_TimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/RecordingTimerUI;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/component/RecordingTimerUI;->m_TimerText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/RecordingTimerUI;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/RecordingTimerUI;->getTimeString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimeString(J)Ljava/lang/String;
    .locals 10
    .parameter "totalSeconds"

    .prologue
    const-wide/16 v8, 0x3c

    .line 41
    rem-long v4, p1, v8

    .line 42
    .local v4, sec:J
    div-long v6, p1, v8

    rem-long v2, v6, v8

    .line 43
    .local v2, min:J
    const-wide/16 v6, 0xe10

    div-long v0, p1, v6

    .line 44
    .local v0, hour:J
    const-string v6, "%02d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private initializeUI()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/component/RecordingTimerUI;->m_TimerBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/RecordingTimerUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/RecordingTimerUI;->m_TimerBackground:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/android/camera/component/RecordingTimerUI;->m_TimerBackground:Landroid/view/View;

    const v1, 0x7f080161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v0, p0, Lcom/android/camera/component/RecordingTimerUI;->m_TimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 117
    iget-object v0, p0, Lcom/android/camera/component/RecordingTimerUI;->m_TimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v1, 0x7f080162

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/component/RecordingTimerUI;->m_TimerText:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public static isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 3
    .parameter "cameraActivity"

    .prologue
    const/4 v1, 0x1

    .line 125
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v1

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 128
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 54
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 57
    invoke-virtual {p0}, Lcom/android/camera/component/RecordingTimerUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    .line 59
    .local v0, eventManager:Lcom/android/camera/EventManager;
    new-instance v1, Lcom/android/camera/component/RecordingTimerUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/component/RecordingTimerUI$1;-><init>(Lcom/android/camera/component/RecordingTimerUI;)V

    .line 68
    .local v1, hideEventHandler:Lcom/android/camera/IEventHandler;
    const-string v2, "CameraActivity.Pausing"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 70
    const-string v2, "Recording.TimeChanged"

    new-instance v3, Lcom/android/camera/component/RecordingTimerUI$2;

    invoke-direct {v3, p0}, Lcom/android/camera/component/RecordingTimerUI$2;-><init>(Lcom/android/camera/component/RecordingTimerUI;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 102
    const-string v2, "Recording.Stopping"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 103
    return-void
.end method
