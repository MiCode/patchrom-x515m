.class Lcom/android/camera/component/AutoSceneUI$12;
.super Ljava/lang/Object;
.source "AutoSceneUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoSceneUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoSceneUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoSceneUI;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/camera/component/AutoSceneUI$12;->this$0:Lcom/android/camera/component/AutoSceneUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$12;->this$0:Lcom/android/camera/component/AutoSceneUI;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/AutoSceneUI;->m_menuIsOpen:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/AutoSceneUI;->access$1302(Lcom/android/camera/component/AutoSceneUI;Z)Z

    .line 321
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$12;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #calls: Lcom/android/camera/component/AutoSceneUI;->checkCanShow()V
    invoke-static {v0}, Lcom/android/camera/component/AutoSceneUI;->access$900(Lcom/android/camera/component/AutoSceneUI;)V

    .line 322
    return-void
.end method
