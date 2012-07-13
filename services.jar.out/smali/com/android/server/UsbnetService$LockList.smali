.class Lcom/android/server/UsbnetService$LockList;
.super Ljava/lang/Object;
.source "UsbnetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UsbnetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockList"
.end annotation


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/UsbnetService$UsbnetLock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/UsbnetService;


# direct methods
.method public constructor <init>(Lcom/android/server/UsbnetService;)V
    .locals 1
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/server/UsbnetService$LockList;->this$0:Lcom/android/server/UsbnetService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/UsbnetService$LockList;->mList:Ljava/util/ArrayList;

    .line 461
    return-void
.end method

.method private findLockByBinder(Landroid/os/IBinder;)I
    .locals 3
    .parameter "binder"

    .prologue
    .line 485
    iget-object v2, p0, Lcom/android/server/UsbnetService$LockList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 486
    .local v1, size:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 487
    iget-object v2, p0, Lcom/android/server/UsbnetService$LockList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/UsbnetService$UsbnetLock;

    iget-object v2, v2, Lcom/android/server/UsbnetService$UsbnetLock;->mBinder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 489
    .end local v0           #i:I
    :goto_1
    return v0

    .line 486
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 489
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public addLock(Lcom/android/server/UsbnetService$UsbnetLock;)V
    .locals 2
    .parameter "lock"

    .prologue
    .line 468
    iget-object v1, p1, Lcom/android/server/UsbnetService$UsbnetLock;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/server/UsbnetService$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    .line 469
    .local v0, index:I
    if-gez v0, :cond_0

    .line 470
    iget-object v1, p0, Lcom/android/server/UsbnetService$LockList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_0
    return-void
.end method

.method public hasLocks()Z
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/server/UsbnetService$LockList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeLock(Landroid/os/IBinder;)Lcom/android/server/UsbnetService$UsbnetLock;
    .locals 2
    .parameter "binder"

    .prologue
    .line 476
    invoke-direct {p0, p1}, Lcom/android/server/UsbnetService$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    .line 477
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 478
    iget-object v1, p0, Lcom/android/server/UsbnetService$LockList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/UsbnetService$UsbnetLock;

    .line 480
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
