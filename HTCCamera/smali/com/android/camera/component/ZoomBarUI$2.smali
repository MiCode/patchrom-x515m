.class Lcom/android/camera/component/ZoomBarUI$2;
.super Ljava/lang/Object;
.source "ZoomBarUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ZoomBarUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ZoomBarUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ZoomBarUI;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/camera/component/ZoomBarUI$2;->this$0:Lcom/android/camera/component/ZoomBarUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI$2;->this$0:Lcom/android/camera/component/ZoomBarUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ZoomBarUI;->canShowZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/camera/component/ZoomBarUI$2;->this$0:Lcom/android/camera/component/ZoomBarUI;

    const/4 v1, 0x1

    #calls: Lcom/android/camera/component/ZoomBarUI;->showZoombar(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/component/ZoomBarUI;->access$000(Lcom/android/camera/component/ZoomBarUI;Z)V

    .line 78
    :cond_0
    return-void
.end method
