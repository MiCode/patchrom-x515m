.class Lcom/android/camera/component/HdrUI$3;
.super Ljava/lang/Object;
.source "HdrUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/HdrUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HdrUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HdrUI;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/camera/component/HdrUI$3;->this$0:Lcom/android/camera/component/HdrUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/component/HdrUI$3;->this$0:Lcom/android/camera/component/HdrUI;

    #getter for: Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z
    invoke-static {v0}, Lcom/android/camera/component/HdrUI;->access$000(Lcom/android/camera/component/HdrUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/camera/component/HdrUI$3;->this$0:Lcom/android/camera/component/HdrUI;

    #calls: Lcom/android/camera/component/HdrUI;->openCaptureUI()V
    invoke-static {v0}, Lcom/android/camera/component/HdrUI;->access$400(Lcom/android/camera/component/HdrUI;)V

    .line 98
    :cond_0
    return-void
.end method
