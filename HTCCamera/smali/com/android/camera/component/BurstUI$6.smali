.class Lcom/android/camera/component/BurstUI$6;
.super Ljava/lang/Object;
.source "BurstUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/BurstUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BurstUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstUI;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/camera/component/BurstUI$6;->this$0:Lcom/android/camera/component/BurstUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/component/BurstUI$6;->this$0:Lcom/android/camera/component/BurstUI;

    #getter for: Lcom/android/camera/component/BurstUI;->m_IsModeEntered:Z
    invoke-static {v0}, Lcom/android/camera/component/BurstUI;->access$100(Lcom/android/camera/component/BurstUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/camera/component/BurstUI$6;->this$0:Lcom/android/camera/component/BurstUI;

    const/4 v1, 0x1

    #calls: Lcom/android/camera/component/BurstUI;->showThunbmailBar(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/component/BurstUI;->access$700(Lcom/android/camera/component/BurstUI;Z)V

    .line 196
    iget-object v1, p0, Lcom/android/camera/component/BurstUI$6;->this$0:Lcom/android/camera/component/BurstUI;

    check-cast p1, Lcom/android/camera/actionscreen/ActionScreenEvent;

    .end local p1
    invoke-virtual {p1}, Lcom/android/camera/actionscreen/ActionScreenEvent;->getActionScreen()Lcom/android/camera/actionscreen/ActionScreen;

    move-result-object v0

    check-cast v0, Lcom/android/camera/actionscreen/CommonActionScreen;

    iput-object v0, v1, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    .line 197
    iget-object v0, p0, Lcom/android/camera/component/BurstUI$6;->this$0:Lcom/android/camera/component/BurstUI;

    iget-object v0, v0, Lcom/android/camera/component/BurstUI;->m_ActionScreen:Lcom/android/camera/actionscreen/CommonActionScreen;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/actionscreen/CommonActionScreen;->setAutoCloseTimeout(I)V

    .line 200
    :cond_0
    return-void
.end method
