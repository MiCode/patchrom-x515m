.class public final Landroid/provider/DrmHelper$RightsObject;
.super Ljava/lang/Object;
.source "DrmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/DrmHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RightsObject"
.end annotation


# instance fields
.field private count:I

.field private endDate:Ljava/util/Date;

.field private interval:J

.field private noConstraint:Z

.field private startDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/provider/DrmStore$DrmConstraint;)V
    .locals 2
    .parameter "constraint"

    .prologue
    const/4 v1, 0x0

    .line 447
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/provider/DrmHelper$RightsObject;->noConstraint:Z

    .line 442
    const/4 v0, -0x1

    iput v0, p0, Landroid/provider/DrmHelper$RightsObject;->count:I

    .line 443
    iput-object v1, p0, Landroid/provider/DrmHelper$RightsObject;->startDate:Ljava/util/Date;

    .line 444
    iput-object v1, p0, Landroid/provider/DrmHelper$RightsObject;->endDate:Ljava/util/Date;

    .line 445
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/provider/DrmHelper$RightsObject;->interval:J

    .line 448
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->isNoConstraint()Z

    move-result v0

    iput-boolean v0, p0, Landroid/provider/DrmHelper$RightsObject;->noConstraint:Z

    .line 449
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getCount()I

    move-result v0

    iput v0, p0, Landroid/provider/DrmHelper$RightsObject;->count:I

    .line 450
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getStartDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/DrmHelper$RightsObject;->startDate:Ljava/util/Date;

    .line 451
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getEndDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Landroid/provider/DrmHelper$RightsObject;->endDate:Ljava/util/Date;

    .line 452
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getInterval()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/provider/DrmHelper$RightsObject;->interval:J

    .line 454
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Landroid/provider/DrmHelper$RightsObject;->count:I

    return v0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Landroid/provider/DrmHelper$RightsObject;->endDate:Ljava/util/Date;

    return-object v0
.end method

.method public getInterval()J
    .locals 2

    .prologue
    .line 473
    iget-wide v0, p0, Landroid/provider/DrmHelper$RightsObject;->interval:J

    return-wide v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Landroid/provider/DrmHelper$RightsObject;->startDate:Ljava/util/Date;

    return-object v0
.end method

.method public isNoConstraint()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Landroid/provider/DrmHelper$RightsObject;->noConstraint:Z

    return v0
.end method
