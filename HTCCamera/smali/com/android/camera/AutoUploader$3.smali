.class Lcom/android/camera/AutoUploader$3;
.super Ljava/lang/Object;
.source "AutoUploader.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AutoUploader;->showAutoUploadDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AutoUploader;


# direct methods
.method constructor <init>(Lcom/android/camera/AutoUploader;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/camera/AutoUploader$3;->this$0:Lcom/android/camera/AutoUploader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/camera/AutoUploader$3;->this$0:Lcom/android/camera/AutoUploader;

    invoke-virtual {v0}, Lcom/android/camera/AutoUploader;->showOKDialog()V

    .line 256
    iget-object v0, p0, Lcom/android/camera/AutoUploader$3;->this$0:Lcom/android/camera/AutoUploader;

    #getter for: Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/AutoUploader;->access$000(Lcom/android/camera/AutoUploader;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->set_mBlockCaptureUI(Z)V

    .line 257
    return-void
.end method
