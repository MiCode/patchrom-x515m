.class public Lcom/android/camera/UIRequestEvent;
.super Lcom/android/camera/RequestEvent;
.source "UIRequestEvent.java"


# instance fields
.field private final m_Animate:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "name"
    .parameter "animate"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/camera/RequestEvent;-><init>(Ljava/lang/String;)V

    .line 16
    iput-boolean p2, p0, Lcom/android/camera/UIRequestEvent;->m_Animate:Z

    .line 17
    return-void
.end method


# virtual methods
.method public final isAnimationNeeded()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/camera/UIRequestEvent;->m_Animate:Z

    return v0
.end method
