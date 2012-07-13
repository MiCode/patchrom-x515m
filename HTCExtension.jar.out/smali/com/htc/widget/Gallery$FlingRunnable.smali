.class Lcom/htc/widget/Gallery$FlingRunnable;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mFrom:I

.field private mIsPartialFling:Z

.field mIsRequiredFill:Z

.field private mLastFlingX:I

.field private mPartialScroller:Landroid/widget/Scroller;

.field private mScroller:Landroid/widget/Scroller;

.field private mTo:I

.field final synthetic this$0:Lcom/htc/widget/Gallery;


# direct methods
.method public constructor <init>(Lcom/htc/widget/Gallery;)V
    .locals 3
    .parameter

    .prologue
    .line 1392
    iput-object p1, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1388
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    .line 1393
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/htc/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1394
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 1395
    .local v0, interpreter:Landroid/view/animation/LinearInterpolator;
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/htc/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mPartialScroller:Landroid/widget/Scroller;

    .line 1396
    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/Gallery$FlingRunnable;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1376
    invoke-direct {p0, p1}, Lcom/htc/widget/Gallery$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method private endFling(Z)V
    .locals 8
    .parameter "scrollIntoSlots"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1460
    iget-boolean v2, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    if-eqz v2, :cond_2

    .line 1462
    iget-object v2, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/Gallery;->mIsForceStop:Z
    invoke-static {v2}, Lcom/htc/widget/Gallery;->access$300(Lcom/htc/widget/Gallery;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1463
    iget-object v2, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mPartialScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mPartialScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getStartX()I

    move-result v3

    sub-int v1, v2, v3

    .line 1464
    .local v1, fullDeltaX:I
    iget-object v2, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mPartialScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mPartialScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v0, v1, v2

    .line 1465
    .local v0, deltaX:I
    iget-object v2, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget v3, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mFrom:I

    iget v4, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mTo:I

    iget-boolean v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsRequiredFill:Z

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/htc/widget/Gallery;->trackMotionScroll(IIIZ)V

    .line 1468
    .end local v0           #deltaX:I
    .end local v1           #fullDeltaX:I
    :cond_0
    iget-object v2, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mPartialScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v7}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1473
    :goto_0
    iget-boolean v2, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    if-eqz v2, :cond_1

    .line 1474
    iput-boolean v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    .line 1475
    iget-object v2, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v2}, Lcom/htc/widget/Gallery;->onAnimationEnd()V

    .line 1478
    iget-object v2, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget-boolean v2, v2, Lcom/htc/widget/Gallery;->mNeedModify:Z

    if-eqz v2, :cond_1

    .line 1479
    iget-object v2, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget v3, v2, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    iget-object v4, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget v4, v4, Lcom/htc/widget/Gallery;->mDetachCounter:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    .line 1480
    iget-object v2, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iput-boolean v6, v2, Lcom/htc/widget/Gallery;->mNeedModify:Z

    .line 1483
    :cond_1
    iput-boolean v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsRequiredFill:Z

    .line 1484
    return-void

    .line 1470
    :cond_2
    iget-object v2, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v7}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v0, p0}, Lcom/htc/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1401
    return-void
.end method


# virtual methods
.method public isPartialFling()Z
    .locals 1

    .prologue
    .line 1429
    iget-boolean v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1487
    iget-object v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget v5, v5, Lcom/htc/widget/AdapterView;->mItemCount:I

    if-nez v5, :cond_0

    .line 1488
    invoke-direct {p0, v9}, Lcom/htc/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 1538
    :goto_0
    return-void

    .line 1492
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    const/4 v6, 0x0

    #setter for: Lcom/htc/widget/Gallery;->mShouldStopFling:Z
    invoke-static {v5, v6}, Lcom/htc/widget/Gallery;->access$402(Lcom/htc/widget/Gallery;Z)Z

    .line 1495
    iget-boolean v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    if-eqz v5, :cond_2

    .line 1496
    iget-object v3, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mPartialScroller:Landroid/widget/Scroller;

    .line 1500
    .local v3, scroller:Landroid/widget/Scroller;
    :goto_1
    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 1501
    .local v1, more:Z
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 1505
    .local v4, x:I
    iget v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mLastFlingX:I

    sub-int v0, v5, v4

    .line 1508
    .local v0, delta:I
    if-lez v0, :cond_3

    .line 1510
    iget-object v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget v6, v6, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    #setter for: Lcom/htc/widget/Gallery;->mDownTouchPosition:I
    invoke-static {v5, v6}, Lcom/htc/widget/Gallery;->access$502(Lcom/htc/widget/Gallery;I)I

    .line 1512
    iget-boolean v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    if-nez v5, :cond_1

    .line 1514
    iget-object v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v5}, Lcom/htc/widget/Gallery;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I
    invoke-static {v6}, Lcom/htc/widget/Gallery;->access$600(Lcom/htc/widget/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/AbsSpinner;->mPaddingRight:I
    invoke-static {v6}, Lcom/htc/widget/Gallery;->access$700(Lcom/htc/widget/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1525
    :cond_1
    :goto_2
    iget-boolean v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    if-nez v5, :cond_4

    .line 1526
    iget-object v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v5, v0}, Lcom/htc/widget/Gallery;->trackMotionScroll(I)V

    .line 1532
    :goto_3
    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/Gallery;->mShouldStopFling:Z
    invoke-static {v5}, Lcom/htc/widget/Gallery;->access$400(Lcom/htc/widget/Gallery;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1533
    iput v4, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1534
    iget-object v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v5, p0}, Lcom/htc/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1498
    .end local v0           #delta:I
    .end local v1           #more:Z
    .end local v3           #scroller:Landroid/widget/Scroller;
    .end local v4           #x:I
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .restart local v3       #scroller:Landroid/widget/Scroller;
    goto :goto_1

    .line 1517
    .restart local v0       #delta:I
    .restart local v1       #more:Z
    .restart local v4       #x:I
    :cond_3
    iget-object v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v5}, Lcom/htc/widget/Gallery;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 1518
    .local v2, offsetToLast:I
    iget-object v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget v6, v6, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v2

    #setter for: Lcom/htc/widget/Gallery;->mDownTouchPosition:I
    invoke-static {v5, v6}, Lcom/htc/widget/Gallery;->access$502(Lcom/htc/widget/Gallery;I)I

    .line 1520
    iget-boolean v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    if-nez v5, :cond_1

    .line 1522
    iget-object v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v5}, Lcom/htc/widget/Gallery;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/AbsSpinner;->mPaddingRight:I
    invoke-static {v6}, Lcom/htc/widget/Gallery;->access$800(Lcom/htc/widget/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I
    invoke-static {v6}, Lcom/htc/widget/Gallery;->access$900(Lcom/htc/widget/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    neg-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 1528
    .end local v2           #offsetToLast:I
    :cond_4
    iget-object v5, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mFrom:I

    iget v7, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mTo:I

    iget-boolean v8, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsRequiredFill:Z

    invoke-virtual {v5, v6, v7, v0, v8}, Lcom/htc/widget/Gallery;->trackMotionScroll(IIIZ)V

    goto :goto_3

    .line 1536
    :cond_5
    invoke-direct {p0, v9}, Lcom/htc/widget/Gallery$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0
.end method

.method public startPartialUsingDistance(IIIZ)V
    .locals 7
    .parameter "from"
    .parameter "to"
    .parameter "distance"
    .parameter "isRequiredFill"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1432
    if-nez p3, :cond_0

    .line 1447
    :goto_0
    return-void

    .line 1434
    :cond_0
    invoke-direct {p0, v1}, Lcom/htc/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 1435
    iput-boolean v6, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    .line 1436
    iput-boolean p4, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsRequiredFill:Z

    .line 1437
    invoke-direct {p0}, Lcom/htc/widget/Gallery$FlingRunnable;->startCommon()V

    .line 1439
    iput v1, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1441
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mPartialScroller:Landroid/widget/Scroller;

    neg-int v3, p3

    const/16 v5, 0x1f4

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1442
    iput p1, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mFrom:I

    .line 1443
    iput p2, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mTo:I

    .line 1444
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iput v1, v0, Lcom/htc/widget/Gallery;->mDetachCounter:I

    .line 1445
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iput-boolean v6, v0, Lcom/htc/widget/Gallery;->mNeedModify:Z

    .line 1446
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v0, p0}, Lcom/htc/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startUsingDistance(I)V
    .locals 6
    .parameter "distance"

    .prologue
    const/4 v1, 0x0

    .line 1418
    iget-boolean v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    if-eqz v0, :cond_1

    .line 1427
    :cond_0
    :goto_0
    return-void

    .line 1420
    :cond_1
    if-eqz p1, :cond_0

    .line 1422
    invoke-direct {p0}, Lcom/htc/widget/Gallery$FlingRunnable;->startCommon()V

    .line 1424
    iput v1, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1425
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v3, p1

    iget-object v2, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    #getter for: Lcom/htc/widget/Gallery;->mAnimationDuration:I
    invoke-static {v2}, Lcom/htc/widget/Gallery;->access$200(Lcom/htc/widget/Gallery;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1426
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v0, p0}, Lcom/htc/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startUsingVelocity(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v2, 0x0

    .line 1404
    iget-boolean v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mIsPartialFling:Z

    if-eqz v0, :cond_1

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1406
    :cond_1
    if-eqz p1, :cond_0

    .line 1408
    invoke-direct {p0}, Lcom/htc/widget/Gallery$FlingRunnable;->startCommon()V

    .line 1410
    if-gez p1, :cond_2

    move v1, v6

    .line 1411
    .local v1, initialX:I
    :goto_1
    iput v1, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1412
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1414
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v0, p0}, Lcom/htc/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v1           #initialX:I
    :cond_2
    move v1, v2

    .line 1410
    goto :goto_1
.end method

.method public stop(Z)V
    .locals 1
    .parameter "scrollIntoSlots"

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v0, p0}, Lcom/htc/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1451
    invoke-direct {p0, p1}, Lcom/htc/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 1452
    iget-object v0, p0, Lcom/htc/widget/Gallery$FlingRunnable;->this$0:Lcom/htc/widget/Gallery;

    iget-object v0, v0, Lcom/htc/widget/Gallery;->mDragger:Lcom/htc/widget/DragController;

    check-cast v0, Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->getDropAnimationRunnable()Lcom/htc/widget/CarouselHost$DropAnimationRunnable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/CarouselHost$DropAnimationRunnable;->stop(Z)V

    .line 1453
    return-void
.end method
