.class Lcom/android/camera/effect/EffectManager$1;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Lcom/android/camera/effect/EffectList$OnEffectChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/EffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectManager;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectManager;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/camera/effect/EffectManager$1;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectChanged(Lcom/android/camera/effect/EffectList;Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;)V
    .locals 2
    .parameter "effectList"
    .parameter "oldEffect"
    .parameter "newEffect"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$1;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$1;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 89
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 91
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$1;->this$0:Lcom/android/camera/effect/EffectManager;

    #setter for: Lcom/android/camera/effect/EffectManager;->m_MainCameraModeEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v1, p3}, Lcom/android/camera/effect/EffectManager;->access$002(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;

    .line 105
    :goto_1
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$1;->this$0:Lcom/android/camera/effect/EffectManager;

    #calls: Lcom/android/camera/effect/EffectManager;->updateFlashState(Lcom/android/camera/effect/EffectBase;)V
    invoke-static {v1, p3}, Lcom/android/camera/effect/EffectManager;->access$400(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)V

    .line 106
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$1;->this$0:Lcom/android/camera/effect/EffectManager;

    #calls: Lcom/android/camera/effect/EffectManager;->updateSelfTimerState(Lcom/android/camera/effect/EffectBase;)V
    invoke-static {v1, p3}, Lcom/android/camera/effect/EffectManager;->access$500(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$1;->this$0:Lcom/android/camera/effect/EffectManager;

    #setter for: Lcom/android/camera/effect/EffectManager;->m_FrontCameraModeEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v1, p3}, Lcom/android/camera/effect/EffectManager;->access$102(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;

    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-nez v1, :cond_3

    .line 99
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$1;->this$0:Lcom/android/camera/effect/EffectManager;

    #setter for: Lcom/android/camera/effect/EffectManager;->m_MainVideoModeEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v1, p3}, Lcom/android/camera/effect/EffectManager;->access$202(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;

    goto :goto_1

    .line 101
    :cond_3
    iget-object v1, p0, Lcom/android/camera/effect/EffectManager$1;->this$0:Lcom/android/camera/effect/EffectManager;

    #setter for: Lcom/android/camera/effect/EffectManager;->m_FrontVideoModeEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v1, p3}, Lcom/android/camera/effect/EffectManager;->access$302(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;

    goto :goto_1
.end method
