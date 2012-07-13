.class public final Lcom/htc/preference/HtcPreferenceActivity$Header;
.super Ljava/lang/Object;
.source "HtcPreferenceActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Header"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public breadCrumbShortTitle:Ljava/lang/CharSequence;

.field public breadCrumbShortTitleRes:I

.field public breadCrumbTitle:Ljava/lang/CharSequence;

.field public breadCrumbTitleRes:I

.field public extras:Landroid/os/Bundle;

.field public fragment:Ljava/lang/String;

.field public fragmentArguments:Landroid/os/Bundle;

.field public iconRes:I

.field public id:J

.field public intent:Landroid/content/Intent;

.field public packageName:Ljava/lang/String;

.field public summary:Ljava/lang/CharSequence;

.field public summaryRes:I

.field public title:Ljava/lang/CharSequence;

.field public titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 548
    new-instance v0, Lcom/htc/preference/HtcPreferenceActivity$Header$1;

    invoke-direct {v0}, Lcom/htc/preference/HtcPreferenceActivity$Header$1;-><init>()V

    sput-object v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 424
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 426
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 544
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 545
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity$Header;->readFromParcel(Landroid/os/Parcel;)V

    .line 546
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method public getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "res"

    .prologue
    .line 489
    iget v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbShortTitleRes:I

    if-eqz v0, :cond_0

    .line 490
    iget v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbShortTitleRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 492
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "res"

    .prologue
    .line 476
    iget v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbTitleRes:I

    if-eqz v0, :cond_0

    .line 477
    iget v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbTitleRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 479
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "res"

    .prologue
    .line 440
    iget v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    if-eqz v0, :cond_0

    .line 441
    iget v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 443
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "res"

    .prologue
    .line 464
    iget v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->summaryRes:I

    if-eqz v0, :cond_0

    .line 465
    iget v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->summaryRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 467
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "res"

    .prologue
    .line 452
    iget v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    if-eqz v0, :cond_0

    .line 453
    iget v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 455
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    .line 527
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->summaryRes:I

    .line 529
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 530
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 531
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 533
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 534
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    .line 535
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    .line 536
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 537
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 538
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 541
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 542
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 502
    iget-wide v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 503
    iget v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 505
    iget v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->summaryRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 507
    iget v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 509
    iget v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbShortTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 511
    iget v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->iconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 515
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 516
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 521
    :goto_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 522
    return-void

    .line 519
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
