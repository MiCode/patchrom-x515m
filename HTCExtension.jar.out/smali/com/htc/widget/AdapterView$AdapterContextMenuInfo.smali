.class public Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 0
    .parameter "targetView"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 389
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p1, p0, Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 391
    iput p2, p0, Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 392
    iput-wide p3, p0, Lcom/htc/widget/AdapterView$AdapterContextMenuInfo;->id:J

    .line 393
    return-void
.end method
