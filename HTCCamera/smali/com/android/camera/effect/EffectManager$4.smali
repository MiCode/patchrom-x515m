.class Lcom/android/camera/effect/EffectManager$4;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


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
    .line 146
    iput-object p1, p0, Lcom/android/camera/effect/EffectManager$4;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/camera/effect/EffectManager$4;->this$0:Lcom/android/camera/effect/EffectManager;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/effect/EffectManager;->reset(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/effect/EffectManager;->access$900(Lcom/android/camera/effect/EffectManager;Z)V

    .line 150
    return-void
.end method
