.class public abstract Lcom/android/camera/component/CameraThreadComponent;
.super Lcom/android/camera/component/Component;
.source "CameraThreadComponent.java"


# instance fields
.field private final m_CameraThread:Lcom/android/camera/CameraThread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "name"
    .parameter "hasHandler"
    .parameter "cameraThread"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/Component;-><init>(Ljava/lang/String;Z)V

    .line 21
    iput-object p3, p0, Lcom/android/camera/component/CameraThreadComponent;->m_CameraThread:Lcom/android/camera/CameraThread;

    .line 22
    return-void
.end method


# virtual methods
.method public final getCameraThread()Lcom/android/camera/CameraThread;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/component/CameraThreadComponent;->m_CameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method
