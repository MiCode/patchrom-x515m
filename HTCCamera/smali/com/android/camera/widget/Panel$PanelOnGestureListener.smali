.class Lcom/android/camera/widget/Panel$PanelOnGestureListener;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanelOnGestureListener"
.end annotation


# instance fields
.field scrollX:F

.field scrollY:F

.field final synthetic this$0:Lcom/android/camera/widget/Panel;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/Panel;)V
    .locals 0
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 555
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollY:F

    iput v0, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollX:F

    .line 557
    iget-object v0, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->setting_bar:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/widget/Panel;->access$2000(Lcom/android/camera/widget/Panel;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->setting_bar_is_right:Z
    invoke-static {v0}, Lcom/android/camera/widget/Panel;->access$1800(Lcom/android/camera/widget/Panel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-virtual {v0}, Lcom/android/camera/widget/Panel;->initChange()Z

    .line 564
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/high16 v8, 0x41f0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 568
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mState:Lcom/android/camera/widget/Panel$State;
    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$000(Lcom/android/camera/widget/Panel;)Lcom/android/camera/widget/Panel$State;

    move-result-object v2

    sget-object v5, Lcom/android/camera/widget/Panel$State;->TRACKING:Lcom/android/camera/widget/Panel$State;

    if-eq v2, v5, :cond_0

    .line 607
    .end local p4
    :goto_0
    return v3

    .line 572
    .restart local p4
    :cond_0
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    sget-object v5, Lcom/android/camera/widget/Panel$State;->FLYING:Lcom/android/camera/widget/Panel$State;

    #setter for: Lcom/android/camera/widget/Panel;->mState:Lcom/android/camera/widget/Panel$State;
    invoke-static {v2, v5}, Lcom/android/camera/widget/Panel;->access$002(Lcom/android/camera/widget/Panel;Lcom/android/camera/widget/Panel$State;)Lcom/android/camera/widget/Panel$State;

    .line 573
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    iget-object v5, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mOrientation:I
    invoke-static {v5}, Lcom/android/camera/widget/Panel;->access$300(Lcom/android/camera/widget/Panel;)I

    move-result v5

    if-ne v5, v4, :cond_5

    .end local p4
    :goto_1
    #setter for: Lcom/android/camera/widget/Panel;->mVelocity:F
    invoke-static {v2, p4}, Lcom/android/camera/widget/Panel;->access$1002(Lcom/android/camera/widget/Panel;F)F

    .line 578
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mState:Lcom/android/camera/widget/Panel$State;
    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$000(Lcom/android/camera/widget/Panel;)Lcom/android/camera/widget/Panel$State;

    move-result-object v2

    sget-object v5, Lcom/android/camera/widget/Panel$State;->FLYING:Lcom/android/camera/widget/Panel$State;

    if-ne v2, v5, :cond_3

    .line 579
    iget-object v5, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mPosition:I
    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$400(Lcom/android/camera/widget/Panel;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mPosition:I
    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$400(Lcom/android/camera/widget/Panel;)I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_6

    :cond_1
    move v2, v4

    :goto_2
    iget-object v6, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mVelocity:F
    invoke-static {v6}, Lcom/android/camera/widget/Panel;->access$1000(Lcom/android/camera/widget/Panel;)F

    move-result v6

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    move v3, v4

    :cond_2
    xor-int/2addr v2, v3

    #setter for: Lcom/android/camera/widget/Panel;->mIsShrinking:Z
    invoke-static {v5, v2}, Lcom/android/camera/widget/Panel;->access$902(Lcom/android/camera/widget/Panel;Z)Z

    .line 582
    :cond_3
    cmpl-float v2, p3, v7

    if-lez v2, :cond_7

    .line 585
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mTrackX:F
    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$1400(Lcom/android/camera/widget/Panel;)F

    move-result v2

    const/high16 v3, -0x3db8

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 587
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    iget-object v3, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mTrackX:F
    invoke-static {v3}, Lcom/android/camera/widget/Panel;->access$1400(Lcom/android/camera/widget/Panel;)F

    move-result v3

    add-float/2addr v3, v8

    #setter for: Lcom/android/camera/widget/Panel;->mTrackX:F
    invoke-static {v2, v3}, Lcom/android/camera/widget/Panel;->access$1402(Lcom/android/camera/widget/Panel;F)F

    .line 589
    :cond_4
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mTrackX:F
    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$1400(Lcom/android/camera/widget/Panel;)F

    move-result v2

    invoke-direct {v1, v2, v7, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 590
    .local v1, open_animation:Landroid/view/animation/TranslateAnimation;
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->open_duration:I
    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$2100(Lcom/android/camera/widget/Panel;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 591
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->animationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$1600(Lcom/android/camera/widget/Panel;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 592
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-virtual {v2, v1}, Lcom/android/camera/widget/Panel;->startAnimation(Landroid/view/animation/Animation;)V

    .end local v1           #open_animation:Landroid/view/animation/TranslateAnimation;
    :goto_3
    move v3, v4

    .line 607
    goto/16 :goto_0

    .restart local p4
    :cond_5
    move p4, p3

    .line 573
    goto :goto_1

    .end local p4
    :cond_6
    move v2, v3

    .line 579
    goto :goto_2

    .line 596
    :cond_7
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mTrackX:F
    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$1400(Lcom/android/camera/widget/Panel;)F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mContentWidth:I
    invoke-static {v3}, Lcom/android/camera/widget/Panel;->access$500(Lcom/android/camera/widget/Panel;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x32

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 598
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    iget-object v3, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mTrackX:F
    invoke-static {v3}, Lcom/android/camera/widget/Panel;->access$1400(Lcom/android/camera/widget/Panel;)F

    move-result v3

    sub-float/2addr v3, v8

    #setter for: Lcom/android/camera/widget/Panel;->mTrackX:F
    invoke-static {v2, v3}, Lcom/android/camera/widget/Panel;->access$1402(Lcom/android/camera/widget/Panel;F)F

    .line 600
    :cond_8
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mTrackX:F
    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$1400(Lcom/android/camera/widget/Panel;)F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mContentWidth:I
    invoke-static {v3}, Lcom/android/camera/widget/Panel;->access$500(Lcom/android/camera/widget/Panel;)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v0, v2, v3, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 601
    .local v0, close_animation:Landroid/view/animation/TranslateAnimation;
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->close_duration:I
    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$2200(Lcom/android/camera/widget/Panel;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 602
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->animationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$1600(Lcom/android/camera/widget/Panel;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 603
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-virtual {v2, v0}, Lcom/android/camera/widget/Panel;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 611
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 614
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->setting_bar:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$2000(Lcom/android/camera/widget/Panel;)Landroid/widget/ImageView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 624
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    sget-object v3, Lcom/android/camera/widget/Panel$State;->TRACKING:Lcom/android/camera/widget/Panel$State;

    #setter for: Lcom/android/camera/widget/Panel;->mState:Lcom/android/camera/widget/Panel$State;
    invoke-static {v2, v3}, Lcom/android/camera/widget/Panel;->access$002(Lcom/android/camera/widget/Panel;Lcom/android/camera/widget/Panel$State;)Lcom/android/camera/widget/Panel$State;

    .line 625
    :cond_0
    const/4 v1, 0x0

    .local v1, tmpY:F
    const/4 v0, 0x0

    .line 626
    .local v0, tmpX:F
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mOrientation:I
    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$300(Lcom/android/camera/widget/Panel;)I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 627
    iget v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollY:F

    sub-float/2addr v2, p4

    iput v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollY:F

    .line 628
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mPosition:I
    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$400(Lcom/android/camera/widget/Panel;)I

    move-result v2

    if-nez v2, :cond_4

    .line 629
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    iget v3, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollY:F

    iget-object v4, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mContentHeight:I
    invoke-static {v4}, Lcom/android/camera/widget/Panel;->access$600(Lcom/android/camera/widget/Panel;)I

    move-result v4

    neg-int v4, v4

    #calls: Lcom/android/camera/widget/Panel;->ensureRange(FII)F
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/widget/Panel;->access$2300(Lcom/android/camera/widget/Panel;FII)F

    move-result v1

    .line 643
    :goto_0
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mContentWidth:I
    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$500(Lcom/android/camera/widget/Panel;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->setting_bar_is_right:Z
    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$1800(Lcom/android/camera/widget/Panel;)Z

    move-result v2

    if-ne v2, v6, :cond_7

    .line 645
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #setter for: Lcom/android/camera/widget/Panel;->setting_bar_is_right:Z
    invoke-static {v2, v5}, Lcom/android/camera/widget/Panel;->access$1802(Lcom/android/camera/widget/Panel;Z)Z

    .line 654
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mTrackX:F
    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$1400(Lcom/android/camera/widget/Panel;)F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mTrackY:F
    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$1100(Lcom/android/camera/widget/Panel;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    .line 655
    :cond_2
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #setter for: Lcom/android/camera/widget/Panel;->mTrackX:F
    invoke-static {v2, v0}, Lcom/android/camera/widget/Panel;->access$1402(Lcom/android/camera/widget/Panel;F)F

    .line 656
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #setter for: Lcom/android/camera/widget/Panel;->mTrackY:F
    invoke-static {v2, v1}, Lcom/android/camera/widget/Panel;->access$1102(Lcom/android/camera/widget/Panel;F)F

    .line 657
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    invoke-virtual {v2}, Lcom/android/camera/widget/Panel;->invalidate()V

    .line 661
    :cond_3
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    iget-object v3, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mDuration:I
    invoke-static {v3}, Lcom/android/camera/widget/Panel;->access$1300(Lcom/android/camera/widget/Panel;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mTrackX:F
    invoke-static {v4}, Lcom/android/camera/widget/Panel;->access$1400(Lcom/android/camera/widget/Panel;)F

    move-result v4

    neg-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mContentWidth:I
    invoke-static {v4}, Lcom/android/camera/widget/Panel;->access$500(Lcom/android/camera/widget/Panel;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    #setter for: Lcom/android/camera/widget/Panel;->open_duration:I
    invoke-static {v2, v3}, Lcom/android/camera/widget/Panel;->access$2102(Lcom/android/camera/widget/Panel;I)I

    .line 662
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    iget-object v3, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mDuration:I
    invoke-static {v3}, Lcom/android/camera/widget/Panel;->access$1300(Lcom/android/camera/widget/Panel;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mContentWidth:I
    invoke-static {v4}, Lcom/android/camera/widget/Panel;->access$500(Lcom/android/camera/widget/Panel;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mTrackX:F
    invoke-static {v5}, Lcom/android/camera/widget/Panel;->access$1400(Lcom/android/camera/widget/Panel;)F

    move-result v5

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mContentWidth:I
    invoke-static {v4}, Lcom/android/camera/widget/Panel;->access$500(Lcom/android/camera/widget/Panel;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    #setter for: Lcom/android/camera/widget/Panel;->close_duration:I
    invoke-static {v2, v3}, Lcom/android/camera/widget/Panel;->access$2202(Lcom/android/camera/widget/Panel;I)I

    .line 666
    return v6

    .line 631
    :cond_4
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    iget v3, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollY:F

    iget-object v4, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mContentHeight:I
    invoke-static {v4}, Lcom/android/camera/widget/Panel;->access$600(Lcom/android/camera/widget/Panel;)I

    move-result v4

    #calls: Lcom/android/camera/widget/Panel;->ensureRange(FII)F
    invoke-static {v2, v3, v5, v4}, Lcom/android/camera/widget/Panel;->access$2300(Lcom/android/camera/widget/Panel;FII)F

    move-result v1

    goto/16 :goto_0

    .line 634
    :cond_5
    iget v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollX:F

    sub-float/2addr v2, p3

    iput v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollX:F

    .line 635
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mPosition:I
    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$400(Lcom/android/camera/widget/Panel;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 636
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    iget v3, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollX:F

    iget-object v4, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mContentWidth:I
    invoke-static {v4}, Lcom/android/camera/widget/Panel;->access$500(Lcom/android/camera/widget/Panel;)I

    move-result v4

    neg-int v4, v4

    #calls: Lcom/android/camera/widget/Panel;->ensureRange(FII)F
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/widget/Panel;->access$2300(Lcom/android/camera/widget/Panel;FII)F

    move-result v0

    goto/16 :goto_0

    .line 638
    :cond_6
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    iget v3, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollX:F

    iget-object v4, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mContentWidth:I
    invoke-static {v4}, Lcom/android/camera/widget/Panel;->access$500(Lcom/android/camera/widget/Panel;)I

    move-result v4

    #calls: Lcom/android/camera/widget/Panel;->ensureRange(FII)F
    invoke-static {v2, v3, v5, v4}, Lcom/android/camera/widget/Panel;->access$2300(Lcom/android/camera/widget/Panel;FII)F

    move-result v0

    goto/16 :goto_0

    .line 647
    :cond_7
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mContentWidth:I
    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$500(Lcom/android/camera/widget/Panel;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->setting_bar_is_right:Z
    invoke-static {v2}, Lcom/android/camera/widget/Panel;->access$1800(Lcom/android/camera/widget/Panel;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 649
    iget-object v2, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->this$0:Lcom/android/camera/widget/Panel;

    #setter for: Lcom/android/camera/widget/Panel;->setting_bar_is_right:Z
    invoke-static {v2, v6}, Lcom/android/camera/widget/Panel;->access$1802(Lcom/android/camera/widget/Panel;Z)Z

    goto/16 :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 670
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 673
    const/4 v0, 0x0

    return v0
.end method

.method public setScroll(II)V
    .locals 1
    .parameter "initScrollX"
    .parameter "initScrollY"

    .prologue
    .line 551
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollX:F

    .line 552
    int-to-float v0, p2

    iput v0, p0, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->scrollY:F

    .line 553
    return-void
.end method
