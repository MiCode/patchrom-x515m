.class Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "AlbumAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/AlbumAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Lcom/htc/opensense/widget/AlbumAbsListView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/htc/opensense/widget/AlbumAbsListView;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/AlbumAbsListView;)V
    .locals 1
    .parameter

    .prologue
    .line 3349
    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3363
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method private pruneScrapViews()V
    .locals 12

    .prologue
    .line 3561
    iget-object v9, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v9

    .line 3562
    .local v3, maxViews:I
    iget v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mViewTypeCount:I

    .line 3563
    .local v8, viewTypeCount:I
    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 3564
    .local v5, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_1

    .line 3565
    aget-object v4, v5, v1

    .line 3566
    .local v4, scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3567
    .local v6, size:I
    sub-int v0, v6, v3

    .line 3568
    .local v0, extras:I
    add-int/lit8 v6, v6, -0x1

    .line 3569
    const/4 v2, 0x0

    .local v2, j:I
    move v7, v6

    .end local v6           #size:I
    .local v7, size:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 3570
    iget-object v10, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    add-int/lit8 v6, v7, -0x1

    .end local v7           #size:I
    .restart local v6       #size:I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    const/4 v11, 0x0

    #calls: Lcom/htc/opensense/widget/AlbumAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v10, v9, v11}, Lcom/htc/opensense/widget/AlbumAbsListView;->access$1600(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/View;Z)V

    .line 3569
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6           #size:I
    .restart local v7       #size:I
    goto :goto_1

    .line 3564
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3573
    .end local v0           #extras:I
    .end local v2           #j:I
    .end local v4           #scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7           #size:I
    :cond_1
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;)V
    .locals 4
    .parameter "scrap"

    .prologue
    .line 3490
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    .line 3491
    .local v0, lp:Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;
    if-nez v0, :cond_1

    .line 3511
    :cond_0
    :goto_0
    return-void

    .line 3497
    :cond_1
    iget v1, v0, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;->viewType:I

    .line 3498
    .local v1, viewType:I
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3502
    iget v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 3503
    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3508
    :goto_1
    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/opensense/widget/AlbumAbsListView$RecyclerListener;

    if-eqz v2, :cond_0

    .line 3509
    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/opensense/widget/AlbumAbsListView$RecyclerListener;

    invoke-interface {v2, p1}, Lcom/htc/opensense/widget/AlbumAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_0

    .line 3505
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method clear()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3396
    iget v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 3397
    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3398
    .local v2, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3399
    .local v3, scrapCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 3400
    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    #calls: Lcom/htc/opensense/widget/AlbumAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Lcom/htc/opensense/widget/AlbumAbsListView;->access$1400(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/View;Z)V

    .line 3399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3403
    .end local v0           #i:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    :cond_0
    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mViewTypeCount:I

    .line 3404
    .local v4, typeCount:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 3405
    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 3406
    .restart local v2       #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3407
    .restart local v3       #scrapCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 3408
    iget-object v6, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    #calls: Lcom/htc/opensense/widget/AlbumAbsListView;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Lcom/htc/opensense/widget/AlbumAbsListView;->access$1500(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/View;Z)V

    .line 3407
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3404
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3412
    .end local v1           #j:I
    .end local v2           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3           #scrapCount:I
    .end local v4           #typeCount:I
    :cond_2
    return-void
.end method

.method fillActiveViews(II)V
    .locals 6
    .parameter "childCount"
    .parameter "firstActivePosition"

    .prologue
    .line 3422
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_0

    .line 3423
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 3425
    :cond_0
    iput p2, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mFirstActivePosition:I

    .line 3427
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 3428
    .local v0, activeViews:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 3429
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v4, v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3430
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    .line 3432
    .local v3, lp:Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 3435
    aput-object v1, v0, v2

    .line 3428
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3438
    .end local v1           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;
    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 3448
    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v4

    .line 3449
    .local v1, index:I
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 3450
    .local v0, activeViews:[Landroid/view/View;
    if-ltz v1, :cond_0

    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 3451
    aget-object v2, v0, v1

    .line 3452
    .local v2, match:Landroid/view/View;
    aput-object v3, v0, v1

    .line 3455
    .end local v2           #match:Landroid/view/View;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 6
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 3463
    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 3464
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3465
    .local v0, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3466
    .local v1, size:I
    if-lez v1, :cond_0

    .line 3467
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3481
    .end local v0           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1           #size:I
    :cond_0
    :goto_0
    return-object v3

    .line 3472
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    iget-object v4, v4, Lcom/htc/opensense/widget/AlbumAbsListView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v2

    .line 3473
    .local v2, whichScrap:I
    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 3474
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v4, v2

    .line 3475
    .restart local v0       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3476
    .restart local v1       #size:I
    if-lez v1, :cond_0

    .line 3477
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    goto :goto_0
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3579
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 3580
    iget-object v4, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3589
    :cond_0
    return-void

    .line 3582
    :cond_1
    iget v3, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mViewTypeCount:I

    .line 3583
    .local v3, viewTypeCount:I
    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 3584
    .local v2, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 3585
    aget-object v1, v2, v0

    .line 3586
    .local v1, scrapPile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3584
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method scrapActiveViews()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3517
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 3518
    .local v0, activeViews:[Landroid/view/View;
    iget-object v10, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/opensense/widget/AlbumAbsListView$RecyclerListener;

    if-eqz v10, :cond_1

    move v2, v8

    .line 3519
    .local v2, hasListener:Z
    :goto_0
    iget v10, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mViewTypeCount:I

    if-le v10, v8, :cond_2

    move v4, v8

    .line 3521
    .local v4, multipleScraps:Z
    :goto_1
    iget-object v5, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3522
    .local v5, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 3523
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v1, :cond_5

    .line 3524
    aget-object v6, v0, v3

    .line 3525
    .local v6, victim:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 3526
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;

    iget v7, v8, Lcom/htc/opensense/widget/AlbumAbsListView$LayoutParams;->viewType:I

    .line 3529
    .local v7, whichScrap:I
    const/4 v8, 0x0

    aput-object v8, v0, v3

    .line 3531
    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 3523
    .end local v7           #whichScrap:I
    :cond_0
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1           #count:I
    .end local v2           #hasListener:Z
    .end local v3           #i:I
    .end local v4           #multipleScraps:Z
    .end local v5           #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6           #victim:Landroid/view/View;
    :cond_1
    move v2, v9

    .line 3518
    goto :goto_0

    .restart local v2       #hasListener:Z
    :cond_2
    move v4, v9

    .line 3519
    goto :goto_1

    .line 3536
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v4       #multipleScraps:Z
    .restart local v5       #scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v6       #victim:Landroid/view/View;
    .restart local v7       #whichScrap:I
    :cond_3
    if-eqz v4, :cond_4

    .line 3537
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v5, v8, v7

    .line 3539
    :cond_4
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3541
    if-eqz v2, :cond_0

    .line 3542
    iget-object v8, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mRecyclerListener:Lcom/htc/opensense/widget/AlbumAbsListView$RecyclerListener;

    invoke-interface {v8, v6}, Lcom/htc/opensense/widget/AlbumAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_3

    .line 3553
    .end local v6           #victim:Landroid/view/View;
    .end local v7           #whichScrap:I
    :cond_5
    invoke-direct {p0}, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->pruneScrapViews()V

    .line 3554
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4
    .parameter "viewTypeCount"

    .prologue
    .line 3375
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 3376
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3379
    :cond_0
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 3380
    .local v1, scrapViews:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 3381
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 3380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3383
    :cond_1
    iput p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mViewTypeCount:I

    .line 3384
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3385
    iput-object v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 3386
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1
    .parameter "viewType"

    .prologue
    .line 3389
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
