.class Lcom/android/camera/component/DOTIndicatorUI$3;
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
    .line 177
    iput-object p1, p0, Lcom/android/camera/component/DOTIndicatorUI$3;->this$0:Lcom/android/camera/component/DOTIndicatorUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorUI$3;->this$0:Lcom/android/camera/component/DOTIndicatorUI;

    #calls: Lcom/android/camera/component/DOTIndicatorUI;->hideHandshake()V
    invoke-static {v0}, Lcom/android/camera/component/DOTIndicatorUI;->access$600(Lcom/android/camera/component/DOTIndicatorUI;)V

    .line 181
    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorUI$3;->this$0:Lcom/android/camera/component/DOTIndicatorUI;

    #calls: Lcom/android/camera/component/DOTIndicatorUI;->hideSmile()V
    invoke-static {v0}, Lcom/android/camera/component/DOTIndicatorUI;->access$700(Lcom/android/camera/component/DOTIndicatorUI;)V

    .line 182
    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorUI$3;->this$0:Lcom/android/camera/component/DOTIndicatorUI;

    #calls: Lcom/android/camera/component/DOTIndicatorUI;->hideBlink()V
    invoke-static {v0}, Lcom/android/camera/component/DOTIndicatorUI;->access$800(Lcom/android/camera/component/DOTIndicatorUI;)V

    .line 183
    return-void
.end method
