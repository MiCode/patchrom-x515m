.class Lcom/android/camera/component/ZoomBarController$1;
.super Ljava/lang/Object;
.source "ZoomBarController.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ZoomBarController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ZoomBarController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ZoomBarController;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/camera/component/ZoomBarController$1;->this$0:Lcom/android/camera/component/ZoomBarController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 55
    check-cast p1, Lcom/android/camera/OneValueEvent;

    .end local p1
    invoke-virtual {p1}, Lcom/android/camera/OneValueEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 56
    .local v0, focusMode:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarController$1;->this$0:Lcom/android/camera/component/ZoomBarController;

    #calls: Lcom/android/camera/component/ZoomBarController;->sendShowZoomBar()V
    invoke-static {v1}, Lcom/android/camera/component/ZoomBarController;->access$000(Lcom/android/camera/component/ZoomBarController;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ZoomBarController$1;->this$0:Lcom/android/camera/component/ZoomBarController;

    #calls: Lcom/android/camera/component/ZoomBarController;->sendHideZoomBar()V
    invoke-static {v1}, Lcom/android/camera/component/ZoomBarController;->access$100(Lcom/android/camera/component/ZoomBarController;)V

    goto :goto_0
.end method
