.class Lcom/android/camera/component/PowerWarningUI$5;
.super Ljava/lang/Object;
.source "PowerWarningUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PowerWarningUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PowerWarningUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PowerWarningUI;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/camera/component/PowerWarningUI$5;->this$0:Lcom/android/camera/component/PowerWarningUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI$5;->this$0:Lcom/android/camera/component/PowerWarningUI;

    #calls: Lcom/android/camera/component/PowerWarningUI;->resetPowerWarningSettings()V
    invoke-static {v0}, Lcom/android/camera/component/PowerWarningUI;->access$100(Lcom/android/camera/component/PowerWarningUI;)V

    .line 194
    return-void
.end method
