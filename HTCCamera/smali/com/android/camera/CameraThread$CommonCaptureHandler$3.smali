.class Lcom/android/camera/CameraThread$CommonCaptureHandler$3;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread$CommonCaptureHandler;->takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraThread$CommonCaptureHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread$CommonCaptureHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/camera/CameraThread$CommonCaptureHandler$3;->this$1:Lcom/android/camera/CameraThread$CommonCaptureHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/camera/CameraThread$CommonCaptureHandler$3;->this$1:Lcom/android/camera/CameraThread$CommonCaptureHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/CameraThread$CommonCaptureHandler;->onPostviewPictureTaken([BLandroid/hardware/Camera;)V

    .line 521
    return-void
.end method
