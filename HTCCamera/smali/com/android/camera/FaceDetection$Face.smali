.class public Lcom/android/camera/FaceDetection$Face;
.super Ljava/lang/Object;
.source "FaceDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FaceDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Face"
.end annotation


# instance fields
.field public focus_X:S

.field public focus_Y:S

.field public range:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/camera/FaceDetection;


# direct methods
.method constructor <init>(Lcom/android/camera/FaceDetection;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 746
    iput-object p1, p0, Lcom/android/camera/FaceDetection$Face;->this$0:Lcom/android/camera/FaceDetection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 747
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    .line 748
    iput-short v1, p0, Lcom/android/camera/FaceDetection$Face;->focus_X:S

    .line 749
    iput-short v1, p0, Lcom/android/camera/FaceDetection$Face;->focus_Y:S

    .line 750
    return-void
.end method
