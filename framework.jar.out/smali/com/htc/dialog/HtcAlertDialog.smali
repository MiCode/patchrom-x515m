.class public Lcom/htc/dialog/HtcAlertDialog;
.super Landroid/app/Dialog;
.source "HtcAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dialog/HtcAlertDialog$Builder;,
        Lcom/htc/dialog/HtcAlertDialog$HTC_IMERecever;,
        Lcom/htc/dialog/HtcAlertDialog$MyOrientationEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcAlertDialog"


# instance fields
.field private mAlert:Lcom/htc/dialog/HtcAlertController;

.field private mIMEStateRecv:Lcom/htc/dialog/HtcAlertDialog$HTC_IMERecever;

.field private mOrientaion:I

.field private mOrientationListener:Lcom/htc/dialog/HtcAlertDialog$MyOrientationEventListener;

.field private mRigistered:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 83
    iput-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/dialog/HtcAlertDialog$HTC_IMERecever;

    .line 85
    iput-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mOrientationListener:Lcom/htc/dialog/HtcAlertDialog$MyOrientationEventListener;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mOrientaion:I

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mRigistered:Z

    .line 93
    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 95
    new-instance v0, Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/htc/dialog/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    .line 96
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "theme"

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 83
    iput-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/dialog/HtcAlertDialog$HTC_IMERecever;

    .line 85
    iput-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mOrientationListener:Lcom/htc/dialog/HtcAlertDialog$MyOrientationEventListener;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mOrientaion:I

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mRigistered:Z

    .line 101
    new-instance v0, Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/htc/dialog/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    .line 102
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .parameter "context"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 83
    iput-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/dialog/HtcAlertDialog$HTC_IMERecever;

    .line 85
    iput-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mOrientationListener:Lcom/htc/dialog/HtcAlertDialog$MyOrientationEventListener;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mOrientaion:I

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mRigistered:Z

    .line 107
    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 109
    invoke-virtual {p0, p2}, Lcom/htc/dialog/HtcAlertDialog;->setCancelable(Z)V

    .line 110
    invoke-virtual {p0, p3}, Lcom/htc/dialog/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 111
    new-instance v0, Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/htc/dialog/HtcAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/htc/dialog/HtcAlertDialog;)Lcom/htc/dialog/HtcAlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    return-object v0
.end method

.method private deinitSensor()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mOrientationListener:Lcom/htc/dialog/HtcAlertDialog$MyOrientationEventListener;

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "HtcAlertDialog"

    const-string v1, "deinitSensor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mOrientationListener:Lcom/htc/dialog/HtcAlertDialog$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$MyOrientationEventListener;->disable()V

    .line 171
    return-void
.end method

.method private getApplicationContextSafely()Landroid/content/Context;
    .locals 2

    .prologue
    .line 1115
    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1116
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 1117
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1118
    .local v0, apContext:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 1121
    .end local v0           #apContext:Landroid/content/Context;
    :cond_0
    :goto_0
    return-object v1

    .restart local v0       #apContext:Landroid/content/Context;
    :cond_1
    move-object v1, v0

    .line 1118
    goto :goto_0
.end method

.method private initSensor()V
    .locals 2

    .prologue
    .line 155
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog;->mOrientationListener:Lcom/htc/dialog/HtcAlertDialog$MyOrientationEventListener;

    if-nez v1, :cond_1

    .line 156
    invoke-direct {p0}, Lcom/htc/dialog/HtcAlertDialog;->getApplicationContextSafely()Landroid/content/Context;

    move-result-object v0

    .line 157
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 158
    new-instance v1, Lcom/htc/dialog/HtcAlertDialog$MyOrientationEventListener;

    invoke-direct {v1, v0, p0}, Lcom/htc/dialog/HtcAlertDialog$MyOrientationEventListener;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    iput-object v1, p0, Lcom/htc/dialog/HtcAlertDialog;->mOrientationListener:Lcom/htc/dialog/HtcAlertDialog$MyOrientationEventListener;

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog;->mOrientationListener:Lcom/htc/dialog/HtcAlertDialog$MyOrientationEventListener;

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog;->mOrientationListener:Lcom/htc/dialog/HtcAlertDialog$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog$MyOrientationEventListener;->enable()V

    .line 164
    .end local v0           #context:Landroid/content/Context;
    :cond_1
    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 477
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 479
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v4}, Lcom/htc/dialog/HtcAlertController;->installContent()V

    .line 484
    const/4 v0, 0x1

    .line 485
    .local v0, Orientation:I
    invoke-direct {p0}, Lcom/htc/dialog/HtcAlertDialog;->getApplicationContextSafely()Landroid/content/Context;

    move-result-object v1

    .line 486
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 487
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v0, v4, Landroid/content/res/Configuration;->orientation:I

    .line 490
    :cond_0
    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    .line 492
    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 493
    .local v3, theWindow:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 494
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 495
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 496
    const-string v4, "AlertDialog"

    const-string v5, "[onCreate] auto launch SIP."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v3           #theWindow:Landroid/view/Window;
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/dialog/HtcAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 504
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/dialog/HtcAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 510
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 211
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "HTC_IME_CURRENT_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 212
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/htc/dialog/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/dialog/HtcAlertDialog$HTC_IMERecever;

    if-nez v2, :cond_0

    .line 213
    new-instance v2, Lcom/htc/dialog/HtcAlertDialog$HTC_IMERecever;

    invoke-direct {v2, p0}, Lcom/htc/dialog/HtcAlertDialog$HTC_IMERecever;-><init>(Lcom/htc/dialog/HtcAlertDialog;)V

    iput-object v2, p0, Lcom/htc/dialog/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/dialog/HtcAlertDialog$HTC_IMERecever;

    .line 214
    invoke-direct {p0}, Lcom/htc/dialog/HtcAlertDialog;->getApplicationContextSafely()Landroid/content/Context;

    move-result-object v0

    .line 215
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 228
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 233
    const-string v1, "HtcAlertDialog"

    const-string/jumbo v2, "onStop"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/dialog/HtcAlertDialog$HTC_IMERecever;

    if-eqz v1, :cond_1

    .line 237
    invoke-direct {p0}, Lcom/htc/dialog/HtcAlertDialog;->getApplicationContextSafely()Landroid/content/Context;

    move-result-object v0

    .line 238
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 241
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/dialog/HtcAlertDialog;->mIMEStateRecv:Lcom/htc/dialog/HtcAlertDialog$HTC_IMERecever;

    .line 251
    .end local v0           #context:Landroid/content/Context;
    :cond_1
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 389
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "msg"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/htc/dialog/HtcAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 375
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 429
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 430
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 397
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 398
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 442
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 443
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 406
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 407
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 456
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 415
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/dialog/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 416
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .parameter "customTitleView"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 335
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setIcon(I)V

    .line 465
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 469
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .parameter "forceInverseBackground"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setInverseBackgroundForced(Z)V

    .line 473
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 339
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 326
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 328
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    invoke-virtual {v0, p1}, Lcom/htc/dialog/HtcAlertController;->setView(Landroid/view/View;)V

    .line 346
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertDialog;->mAlert:Lcom/htc/dialog/HtcAlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/dialog/HtcAlertController;->setView(Landroid/view/View;IIII)V

    .line 361
    return-void
.end method
