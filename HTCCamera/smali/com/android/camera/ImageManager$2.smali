.class Lcom/android/camera/ImageManager$2;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageManager;->emptyImageList()Lcom/android/camera/ImageManager$IImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 5317
    iput-object p1, p0, Lcom/android/camera/ImageManager$2;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 0

    .prologue
    .line 5326
    return-void
.end method

.method public checkThumbnails(Lcom/android/camera/ImageManager$IImageList$ThumbCheckCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 5319
    return-void
.end method

.method public commitChanges()V
    .locals 0

    .prologue
    .line 5322
    return-void
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 5329
    return-void
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 5336
    const/4 v0, 0x0

    return v0
.end method

.method public getImageAt(I)Lcom/android/camera/ImageManager$IImage;
    .locals 1
    .parameter "i"

    .prologue
    .line 5340
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageForFilePath(Ljava/lang/String;)Lcom/android/camera/ImageManager$IImage;
    .locals 1
    .parameter "filePath"

    .prologue
    .line 5349
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;
    .locals 1
    .parameter "uri"

    .prologue
    .line 5344
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeImage(Lcom/android/camera/ImageManager$IImage;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 5354
    const/4 v0, 0x0

    return v0
.end method

.method public removeImageAt(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 5358
    return-void
.end method

.method public removeOnChangeListener(Lcom/android/camera/ImageManager$IImageList$OnChange;)V
    .locals 0
    .parameter "changeCallback"

    .prologue
    .line 5361
    return-void
.end method

.method public setOnChangeListener(Lcom/android/camera/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V
    .locals 0
    .parameter "changeCallback"
    .parameter "h"

    .prologue
    .line 5364
    return-void
.end method
