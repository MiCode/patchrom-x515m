.class Lcom/android/camera/HTCCamera$6;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/camera/HTCCamera$6;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 597
    if-eqz p1, :cond_1

    .line 599
    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred when playing audio, what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 601
    iget-object v0, p0, Lcom/android/camera/HTCCamera$6;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mAudioSyncRoot:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$100(Lcom/android/camera/HTCCamera;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera$6;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$200(Lcom/android/camera/HTCCamera;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/camera/HTCCamera$6;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v2}, Lcom/android/camera/HTCCamera;->access$202(Lcom/android/camera/HTCCamera;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 605
    :cond_0
    monitor-exit v1

    .line 607
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
