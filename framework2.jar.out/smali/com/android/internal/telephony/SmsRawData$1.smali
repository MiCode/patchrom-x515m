.class final Lcom/android/internal/telephony/SmsRawData$1;
.super Ljava/lang/Object;
.source "SmsRawData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsRawData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/telephony/SmsRawData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/SmsRawData;
    .locals 5
    .parameter "source"

    .prologue
    const/4 v3, 0x1

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 38
    .local v2, size:I
    new-array v0, v2, [B

    .line 39
    .local v0, data:[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 43
    .local v1, isCdmaFormat:I
    new-instance v4, Lcom/android/internal/telephony/SmsRawData;

    if-ne v1, v3, :cond_0

    :goto_0
    invoke-direct {v4, v0, v3}, Lcom/android/internal/telephony/SmsRawData;-><init>([BZ)V

    return-object v4

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsRawData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/SmsRawData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/SmsRawData;
    .locals 1
    .parameter "size"

    .prologue
    .line 48
    new-array v0, p1, [Lcom/android/internal/telephony/SmsRawData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsRawData$1;->newArray(I)[Lcom/android/internal/telephony/SmsRawData;

    move-result-object v0

    return-object v0
.end method
