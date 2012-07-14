.class Lcom/android/camera/ImageManager$VideoList;
.super Lcom/android/camera/ImageManager$BaseImageList;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoList"
.end annotation


# instance fields
.field final INDEX_CATEGORY:I

.field final INDEX_DATA:I

.field final INDEX_DATE_MODIFIED:I

.field final INDEX_DATE_TAKEN:I

.field final INDEX_DESCRIPTION:I

.field final INDEX_DISPLAY_NAME:I

.field final INDEX_ID:I

.field final INDEX_LANGUAGE:I

.field final INDEX_LATITUDE:I

.field final INDEX_LONGITUDE:I

.field final INDEX_MIME_TYPE:I

.field final INDEX_MINI_THUMB_MAGIC:I

.field final INDEX_PRIVATE:I

.field final INDEX_TAGS:I

.field final INDEX_THUMB_ID:I

.field final INDEX_TITLE:I

.field private final sProjection:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 12
    .parameter
    .parameter "ctx"
    .parameter "cr"
    .parameter "uri"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 4178
    iput-object p1, p0, Lcom/android/camera/ImageManager$VideoList;->this$0:Lcom/android/camera/ImageManager;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    .line 4179
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImageList;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    .line 4131
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v0, v1

    const/4 v1, 0x1

    const-string v4, "_data"

    aput-object v4, v0, v1

    const/4 v1, 0x2

    const-string v4, "date_modified"

    aput-object v4, v0, v1

    const/4 v1, 0x3

    const-string v4, "datetaken"

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-string v4, "title"

    aput-object v4, v0, v1

    const/4 v1, 0x5

    const-string v4, "_display_name"

    aput-object v4, v0, v1

    const/4 v1, 0x6

    const-string v4, "description"

    aput-object v4, v0, v1

    const/4 v1, 0x7

    const-string v4, "isprivate"

    aput-object v4, v0, v1

    const/16 v1, 0x8

    const-string v4, "tags"

    aput-object v4, v0, v1

    const/16 v1, 0x9

    const-string v4, "category"

    aput-object v4, v0, v1

    const/16 v1, 0xa

    const-string v4, "language"

    aput-object v4, v0, v1

    const/16 v1, 0xb

    const-string v4, "latitude"

    aput-object v4, v0, v1

    const/16 v1, 0xc

    const-string v4, "longitude"

    aput-object v4, v0, v1

    const/16 v1, 0xd

    const-string v4, "mini_thumb_magic"

    aput-object v4, v0, v1

    const/16 v1, 0xe

    const-string v4, "mime_type"

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    .line 4149
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "_id"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_ID:I

    .line 4150
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "_data"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_DATA:I

    .line 4151
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "date_modified"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_DATE_MODIFIED:I

    .line 4152
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "datetaken"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_DATE_TAKEN:I

    .line 4153
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "title"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_TITLE:I

    .line 4154
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "_display_name"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_DISPLAY_NAME:I

    .line 4155
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "mime_type"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_MIME_TYPE:I

    .line 4156
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "description"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_DESCRIPTION:I

    .line 4157
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "isprivate"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_PRIVATE:I

    .line 4158
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "tags"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_TAGS:I

    .line 4159
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "category"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_CATEGORY:I

    .line 4160
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "language"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_LANGUAGE:I

    .line 4161
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "latitude"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_LATITUDE:I

    .line 4162
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "longitude"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_LONGITUDE:I

    .line 4163
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "mini_thumb_magic"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_MINI_THUMB_MAGIC:I

    .line 4164
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "_id"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_THUMB_ID:I

    .line 4181
    iget-object v2, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/camera/ImageManager$VideoList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    move-object v0, p3

    move-object/from16 v1, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    .line 4187
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 4188
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 4190
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4191
    const/4 v8, 0x0

    .line 4193
    .local v8, row:I
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoList;->indexId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 4194
    .local v2, imageId:J
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoList;->indexDateTaken()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 4195
    .local v6, dateTaken:J
    iget-object v10, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    new-instance v0, Lcom/android/camera/ImageManager$VideoObject;

    add-int/lit8 v9, v8, 0x1

    .end local v8           #row:I
    .local v9, row:I
    move-object v1, p1

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/ImageManager$VideoObject;-><init>(Lcom/android/camera/ImageManager;JLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$VideoList;JI)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4196
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4198
    .end local v2           #imageId:J
    .end local v6           #dateTaken:J
    .end local v9           #row:I
    :cond_1
    return-void

    .restart local v2       #imageId:J
    .restart local v6       #dateTaken:J
    .restart local v9       #row:I
    :cond_2
    move v8, v9

    .end local v9           #row:I
    .restart local v8       #row:I
    goto :goto_0
.end method

.method private sortOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4256
    iget v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mSort:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, " ASC"

    .line 4257
    .local v0, ascending:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "date_added"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4256
    .end local v0           #ascending:Ljava/lang/String;
    :cond_0
    const-string v0, " DESC"

    goto :goto_0
.end method


# virtual methods
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
    .line 4201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method protected indexData()I
    .locals 1

    .prologue
    .line 4209
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_DATA:I

    return v0
.end method

.method protected indexDateTaken()I
    .locals 1

    .prologue
    .line 4206
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_DATE_TAKEN:I

    return v0
.end method

.method protected indexDescription()I
    .locals 1

    .prologue
    .line 4207
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_DESCRIPTION:I

    return v0
.end method

.method protected indexDisplayName()I
    .locals 1

    .prologue
    .line 4217
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_DISPLAY_NAME:I

    return v0
.end method

.method protected indexId()I
    .locals 1

    .prologue
    .line 4210
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_ID:I

    return v0
.end method

.method protected indexLatitude()I
    .locals 1

    .prologue
    .line 4211
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_LATITUDE:I

    return v0
.end method

.method protected indexLongitude()I
    .locals 1

    .prologue
    .line 4212
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_LONGITUDE:I

    return v0
.end method

.method protected indexMimeType()I
    .locals 1

    .prologue
    .line 4208
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_MIME_TYPE:I

    return v0
.end method

.method protected indexMiniThumbId()I
    .locals 1

    .prologue
    .line 4213
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_MINI_THUMB_MAGIC:I

    return v0
.end method

.method protected indexOrientation()I
    .locals 1

    .prologue
    .line 4204
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPicasaWeb()I
    .locals 1

    .prologue
    .line 4214
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPrivate()I
    .locals 1

    .prologue
    .line 4215
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_PRIVATE:I

    return v0
.end method

.method protected indexThumbId()I
    .locals 1

    .prologue
    .line 4218
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_THUMB_ID:I

    return v0
.end method

.method protected indexTimeStamp()I
    .locals 1

    .prologue
    .line 4205
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_DATE_MODIFIED:I

    return v0
.end method

.method protected indexTitle()I
    .locals 1

    .prologue
    .line 4216
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_TITLE:I

    return v0
.end method

.method protected make(JLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$IImageList;JI)Lcom/android/camera/ImageManager$IImage;
    .locals 9
    .parameter "id"
    .parameter "cr"
    .parameter "list"
    .parameter "timestamp"
    .parameter "index"

    .prologue
    .line 4221
    new-instance v0, Lcom/android/camera/ImageManager$VideoObject;

    iget-object v1, p0, Lcom/android/camera/ImageManager$VideoList;->this$0:Lcom/android/camera/ImageManager;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p0

    move-wide v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/ImageManager$VideoObject;-><init>(Lcom/android/camera/ImageManager;JLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$VideoList;JI)V

    return-object v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "targetWidthHeight"
    .parameter "uri"
    .parameter "pfdInput"
    .parameter "options"

    .prologue
    .line 4226
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 4227
    .local v0, mmr:Landroid/media/MediaMetadataRetriever;
    const/4 v1, 0x0

    .line 4231
    .local v1, thumbnail:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/camera/ImageManager$VideoList;->getImageForUri(Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 4236
    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4247
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 4249
    :goto_0
    return-object v1

    .line 4245
    :catch_0
    move-exception v2

    .line 4247
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v2
.end method

.method protected whereClause()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4167
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bucket_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4170
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected whereClauseArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4175
    const/4 v0, 0x0

    return-object v0
.end method
