.class Lcom/android/camera/component/DOTIndicatorUI$12;
.super Ljava/lang/Object;
.source "DOTIndicatorUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/DOTIndicatorUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/DOTIndicatorUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/DOTIndicatorUI;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/camera/component/DOTIndicatorUI$12;->this$0:Lcom/android/camera/component/DOTIndicatorUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorUI$12;->this$0:Lcom/android/camera/component/DOTIndicatorUI;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/DOTIndicatorUI;->m_menuIsOpen:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/DOTIndicatorUI;->access$1102(Lcom/android/camera/component/DOTIndicatorUI;Z)Z

    .line 263
    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorUI$12;->this$0:Lcom/android/camera/component/DOTIndicatorUI;

    #calls: Lcom/android/camera/component/DOTIndicatorUI;->checkCanShow()V
    invoke-static {v0}, Lcom/android/camera/component/DOTIndicatorUI;->access$1000(Lcom/android/camera/component/DOTIndicatorUI;)V

    .line 264
    return-void
.end method
