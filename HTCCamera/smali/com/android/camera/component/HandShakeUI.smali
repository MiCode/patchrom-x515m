.class public Lcom/android/camera/component/HandShakeUI;
.super Lcom/android/camera/component/UIComponent;
.source "HandShakeUI.java"


# static fields
.field public static final ENTER_LOW_LIGHT:I = 0x2

.field public static final LEAVE_LOW_LIGHT:I = 0x1

.field public static final NAME:Ljava/lang/String; = "Handshake UI"

.field public static final RECORDING_END:I = 0x4

.field public static final RECORDING_START:I = 0x3


# instance fields
.field private m_HandShakeController:Lcom/android/camera/component/HandShakeController;

.field private m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_HandshakeImage:Landroid/widget/ImageView;

.field private m_NeedDetect:Z

.field private m_canShow:Z

.field private m_effectBarHeight:I

.field private m_marginRight:I

.field private m_marginTop:I

.field private m_menuIsOpen:Z

.field private m_remainIsShowing:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4
    .parameter "cameraActivity"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    const-string v0, "Handshake UI"

    const v1, 0x7f080061

    invoke-direct {p0, v0, v3, p1, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 42
    iput-boolean v2, p0, Lcom/android/camera/component/HandShakeUI;->m_NeedDetect:Z

    .line 43
    iput-boolean v3, p0, Lcom/android/camera/component/HandShakeUI;->m_canShow:Z

    .line 44
    iput-boolean v2, p0, Lcom/android/camera/component/HandShakeUI;->m_menuIsOpen:Z

    .line 45
    iput-boolean v2, p0, Lcom/android/camera/component/HandShakeUI;->m_remainIsShowing:Z

    .line 59
    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    const-string v1, "CameraActivity.CameraThreadRunning"

    new-instance v2, Lcom/android/camera/component/HandShakeUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$1;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 66
    return-void
.end method

.method private HideDisable()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/HandShakeUI;->m_canShow:Z

    .line 352
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->hideHandshake()V

    .line 353
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/HandShakeUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/HandShakeUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/android/camera/component/HandShakeUI;->m_NeedDetect:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/HandShakeUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->showHandshake()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/HandShakeUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->hideHandshake()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/HandShakeUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->HideDisable()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/component/HandShakeUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->checkCanShow()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/component/HandShakeUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->stopDetection()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/camera/component/HandShakeUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/android/camera/component/HandShakeUI;->m_menuIsOpen:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/camera/component/HandShakeUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/android/camera/component/HandShakeUI;->m_remainIsShowing:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/component/HandShakeUI;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/camera/component/HandShakeUI;->updateLayoutPosition(Z)V

    return-void
.end method

.method private checkCanShow()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 336
    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/component/HandShakeUI;->m_menuIsOpen:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/component/HandShakeUI;->m_remainIsShowing:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isCaptureUIOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 345
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->HideDisable()V

    goto :goto_0

    .line 348
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera/component/HandShakeUI;->m_canShow:Z

    goto :goto_0
.end method

.method private hideHandshake()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 316
    iget-object v0, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/component/HandShakeUI;->showUI(Landroid/view/View;ZZ)V

    .line 318
    :cond_0
    return-void
.end method

.method public static isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 100
    invoke-static {p0}, Lcom/android/camera/component/HandShakeController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method

.method private registerListeners()V
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    .line 149
    .local v0, eventManager:Lcom/android/camera/EventManager;
    if-nez v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "eventManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string v1, "CameraActivity.RotateChanged"

    new-instance v2, Lcom/android/camera/component/HandShakeUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$2;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 168
    const-string v1, "SensorValue.RotateChanged"

    new-instance v2, Lcom/android/camera/component/HandShakeUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$3;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 183
    const-string v1, "ActionScreen.Open"

    new-instance v2, Lcom/android/camera/component/HandShakeUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$4;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 191
    const-string v1, "ActionScreen.Closed"

    new-instance v2, Lcom/android/camera/component/HandShakeUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$5;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 199
    const-string v1, "CameraActivity.PreviewStarted"

    new-instance v2, Lcom/android/camera/component/HandShakeUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$6;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 207
    const-string v1, "Mode.Switched"

    new-instance v2, Lcom/android/camera/component/HandShakeUI$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$7;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 215
    const-string v1, "CameraActivity.Pausing"

    new-instance v2, Lcom/android/camera/component/HandShakeUI$8;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$8;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 224
    const-string v1, "EffectPanel.Opening"

    new-instance v2, Lcom/android/camera/component/HandShakeUI$9;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$9;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 232
    const-string v1, "EffectPanel.Closed"

    new-instance v2, Lcom/android/camera/component/HandShakeUI$10;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$10;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 240
    const-string v1, "Menu.Opening"

    new-instance v2, Lcom/android/camera/component/HandShakeUI$11;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$11;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 250
    const-string v1, "Menu.Closed"

    new-instance v2, Lcom/android/camera/component/HandShakeUI$12;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$12;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 259
    const-string v1, "RemainingCounter.Showing"

    new-instance v2, Lcom/android/camera/component/HandShakeUI$13;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$13;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 268
    const-string v1, "RemainingCounter.Hidden"

    new-instance v2, Lcom/android/camera/component/HandShakeUI$14;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$14;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 278
    const-string v1, "CaptureUI.Closed"

    new-instance v2, Lcom/android/camera/component/HandShakeUI$15;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$15;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 286
    const-string v1, "CaptureUI.Open"

    new-instance v2, Lcom/android/camera/component/HandShakeUI$16;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$16;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 294
    const-string v1, "EffectControl.VisibilityChanged"

    new-instance v2, Lcom/android/camera/component/HandShakeUI$17;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HandShakeUI$17;-><init>(Lcom/android/camera/component/HandShakeUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    goto/16 :goto_0
.end method

.method private setLayoutPosition(Lcom/android/camera/rotate/RotateRelativeLayout;)V
    .locals 3
    .parameter "layout"

    .prologue
    .line 358
    if-eqz p1, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 360
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 361
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 362
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 363
    const v2, 0x7f0b0143

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/component/HandShakeUI;->m_marginTop:I

    .line 364
    const v2, 0x7f0b0144

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/component/HandShakeUI;->m_marginRight:I

    .line 365
    const v2, 0x7f0b0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/component/HandShakeUI;->m_effectBarHeight:I

    .line 366
    iget v2, p0, Lcom/android/camera/component/HandShakeUI;->m_marginTop:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 367
    iget v2, p0, Lcom/android/camera/component/HandShakeUI;->m_marginRight:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 368
    invoke-virtual {p1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private showHandshake()V
    .locals 3

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/android/camera/component/HandShakeUI;->m_canShow:Z

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/component/HandShakeUI;->showUI(Landroid/view/View;ZZ)V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->hideHandshake()V

    goto :goto_0
.end method

.method private startDetection()V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/HandShakeUI;->m_NeedDetect:Z

    .line 324
    return-void
.end method

.method private stopDetection()V
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/HandShakeUI;->m_NeedDetect:Z

    .line 330
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->hideHandshake()V

    .line 331
    return-void
.end method

.method private updateLayoutPosition(Z)V
    .locals 3
    .parameter "effectIsShown"

    .prologue
    .line 376
    iget-object v1, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 378
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_1

    .line 379
    iget v1, p0, Lcom/android/camera/component/HandShakeUI;->m_marginTop:I

    iget v2, p0, Lcom/android/camera/component/HandShakeUI;->m_effectBarHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 382
    :goto_0
    iget-object v1, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->requestLayout()V

    .line 384
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 381
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget v1, p0, Lcom/android/camera/component/HandShakeUI;->m_marginTop:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 137
    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 140
    :goto_0
    return-void

    .line 113
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->stopDetection()V

    .line 114
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->hideHandshake()V

    goto :goto_0

    .line 119
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->startDetection()V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/android/camera/component/HandShakeUI;->m_HandShakeController:Lcom/android/camera/component/HandShakeController;

    if-nez v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    const-string v2, "Handshake Controller"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/HandShakeController;

    iput-object v1, p0, Lcom/android/camera/component/HandShakeUI;->m_HandShakeController:Lcom/android/camera/component/HandShakeController;

    goto :goto_0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/HandShakeUI;->m_HandShakeController:Lcom/android/camera/component/HandShakeController;

    invoke-virtual {v1, p0}, Lcom/android/camera/component/HandShakeController;->link(Lcom/android/camera/component/HandShakeUI;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, baseLayout:Landroid/view/View;
    const v1, 0x7f0800b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 85
    const v1, 0x7f0800b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeImage:Landroid/widget/ImageView;

    .line 88
    iget-object v1, p0, Lcom/android/camera/component/HandShakeUI;->m_HandshakeContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0, v1}, Lcom/android/camera/component/HandShakeUI;->setLayoutPosition(Lcom/android/camera/rotate/RotateRelativeLayout;)V

    .line 91
    invoke-direct {p0}, Lcom/android/camera/component/HandShakeUI;->registerListeners()V

    .line 93
    return-void
.end method
