.class Lcom/android/camera/effect/EffectControlUI$1;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/EffectControlUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectControlUI;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/effect/EffectControlUI$1;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI$1;->this$0:Lcom/android/camera/effect/EffectControlUI;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/effect/EffectControlUI;->m_IsToastShown:Z
    invoke-static {v0, v1}, Lcom/android/camera/effect/EffectControlUI;->access$002(Lcom/android/camera/effect/EffectControlUI;Z)Z

    .line 51
    return-void
.end method
