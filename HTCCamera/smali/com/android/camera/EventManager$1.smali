.class Lcom/android/camera/EventManager$1;
.super Ljava/lang/Object;
.source "EventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/EventManager;->addEventHandlerAsync(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/EventManager;

.field final synthetic val$handler:Lcom/android/camera/IEventHandler;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/EventManager;Ljava/lang/String;Lcom/android/camera/IEventHandler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/camera/EventManager$1;->this$0:Lcom/android/camera/EventManager;

    iput-object p2, p0, Lcom/android/camera/EventManager$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/EventManager$1;->val$handler:Lcom/android/camera/IEventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/EventManager$1;->this$0:Lcom/android/camera/EventManager;

    iget-object v1, p0, Lcom/android/camera/EventManager$1;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/EventManager$1;->val$handler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 141
    return-void
.end method
