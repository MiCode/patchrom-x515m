.class Lcom/android/camera/MenuHandler$8;
.super Ljava/lang/Object;
.source "MenuHandler.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MenuHandler;->createImagePropertyView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MenuHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/MenuHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/camera/MenuHandler$8;->this$0:Lcom/android/camera/MenuHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "focus"

    .prologue
    .line 595
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    .line 596
    .local v0, orientation:I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 597
    :cond_0
    iget-object v1, p0, Lcom/android/camera/MenuHandler$8;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mTitleText_Saturation:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/camera/MenuHandler;->access$800(Lcom/android/camera/MenuHandler;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 600
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v1, p0, Lcom/android/camera/MenuHandler$8;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mContentText_Saturation:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/camera/MenuHandler;->access$900(Lcom/android/camera/MenuHandler;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method
