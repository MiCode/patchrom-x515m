.class Lcom/android/camera/component/BurstController$2$1;
.super Ljava/lang/Object;
.source "BurstController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BurstController$2;->onEvent(Lcom/android/camera/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/BurstController$2;

.field final synthetic val$activity:Lcom/android/camera/HTCCamera;

.field final synthetic val$contentUris:[Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstController$2;Lcom/android/camera/HTCCamera;[Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/camera/component/BurstController$2$1;->this$1:Lcom/android/camera/component/BurstController$2;

    iput-object p2, p0, Lcom/android/camera/component/BurstController$2$1;->val$activity:Lcom/android/camera/HTCCamera;

    iput-object p3, p0, Lcom/android/camera/component/BurstController$2$1;->val$contentUris:[Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 114
    iget-object v1, p0, Lcom/android/camera/component/BurstController$2$1;->this$1:Lcom/android/camera/component/BurstController$2;

    iget-object v1, v1, Lcom/android/camera/component/BurstController$2;->this$0:Lcom/android/camera/component/BurstController;

    invoke-virtual {v1}, Lcom/android/camera/component/BurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v7

    .line 115
    .local v7, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v1, p0, Lcom/android/camera/component/BurstController$2$1;->val$activity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 116
    .local v8, contentResolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/camera/component/BurstController$2$1;->val$contentUris:[Landroid/net/Uri;

    array-length v1, v1

    add-int/lit8 v10, v1, -0x1

    .local v10, i:I
    :goto_0
    if-ltz v10, :cond_2

    .line 119
    iget-object v1, p0, Lcom/android/camera/component/BurstController$2$1;->val$contentUris:[Landroid/net/Uri;

    aget-object v2, v1, v10

    .line 121
    .local v2, contentUri:Landroid/net/Uri;
    if-nez v10, :cond_1

    move v4, v12

    .line 124
    .local v4, isLastMedia:Z
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/component/BurstController$2$1;->this$1:Lcom/android/camera/component/BurstController$2;

    iget-object v1, v1, Lcom/android/camera/component/BurstController$2;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/BurstController;->access$600(Lcom/android/camera/component/BurstController;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    new-instance v0, Lcom/android/camera/MediaDeletionCompletedEvent;

    const-string v1, "Media.DeletionCompleted"

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/MediaDeletionCompletedEvent;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ZZLjava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .local v0, event:Lcom/android/camera/MediaDeletionCompletedEvent;
    :goto_2
    move-object v11, v0

    .line 136
    .local v11, raisingEvent:Lcom/android/camera/Event;
    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 137
    .local v9, handler:Landroid/os/Handler;
    if-eqz v9, :cond_0

    .line 139
    new-instance v1, Lcom/android/camera/component/BurstController$2$1$1;

    invoke-direct {v1, p0, v7, v11}, Lcom/android/camera/component/BurstController$2$1$1;-><init>(Lcom/android/camera/component/BurstController$2$1;Lcom/android/camera/CameraThread;Lcom/android/camera/Event;)V

    invoke-virtual {v9, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .end local v0           #event:Lcom/android/camera/MediaDeletionCompletedEvent;
    .end local v4           #isLastMedia:Z
    .end local v9           #handler:Landroid/os/Handler;
    .end local v11           #raisingEvent:Lcom/android/camera/Event;
    :cond_1
    move v4, v13

    .line 121
    goto :goto_1

    .line 128
    .restart local v4       #isLastMedia:Z
    :catch_0
    move-exception v6

    .line 130
    .local v6, ex:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/camera/component/BurstController$2$1;->this$1:Lcom/android/camera/component/BurstController$2;

    iget-object v1, v1, Lcom/android/camera/component/BurstController$2;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/BurstController;->access$700(Lcom/android/camera/component/BurstController;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot delete content \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    new-instance v0, Lcom/android/camera/MediaDeletionCompletedEvent;

    const-string v1, "Media.DeletionCompleted"

    move-object v3, v14

    move v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/MediaDeletionCompletedEvent;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ZZLjava/lang/Throwable;)V

    .restart local v0       #event:Lcom/android/camera/MediaDeletionCompletedEvent;
    goto :goto_2

    .line 148
    .end local v0           #event:Lcom/android/camera/MediaDeletionCompletedEvent;
    .end local v2           #contentUri:Landroid/net/Uri;
    .end local v4           #isLastMedia:Z
    .end local v6           #ex:Ljava/lang/Throwable;
    :cond_2
    return-void
.end method
