.class public final Lcom/android/camera/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public contentUri:Landroid/net/Uri;

.field public filePath:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .parameter "contentUri"
    .parameter "mimeType"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/MediaInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "contentUri"
    .parameter "filePath"
    .parameter "mimeType"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 26
    iput-object p2, p0, Lcom/android/camera/MediaInfo;->filePath:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/camera/MediaInfo;
    .locals 5

    .prologue
    .line 37
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/MediaInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 41
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Lcom/android/camera/MediaInfo;

    iget-object v2, p0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/MediaInfo;->filePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/MediaInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/android/camera/MediaInfo;->clone()Lcom/android/camera/MediaInfo;

    move-result-object v0

    return-object v0
.end method
