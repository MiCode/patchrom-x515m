.class public Lcom/android/camera/component/ThumbnailController;
.super Lcom/android/camera/component/AsyncCameraThreadComponent;
.source "ThumbnailController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    }
.end annotation


# static fields
.field private static final MEDIA_TYPE_IMAGE:I = 0x1

.field private static final MEDIA_TYPE_VIDEO:I = 0x2

.field public static final MSG_CREATE_THUMB_IMAGE:I = 0x1

.field public static final NAME:Ljava/lang/String; = "Thumbnail Controller"

.field private static final STATIC_TAG:Ljava/lang/String; = "ThumbnailController"

.field private static final THUMBNAIL_IMAGE_POOL_SIZE:I = 0x5

.field private static final m_ThumbnailImagePool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_CapturingMediaCount:I

.field private volatile m_IsDeletingMedia:Z

.field private volatile m_LatestRecordedVideoPath:Ljava/lang/String;

.field private volatile m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

.field private m_LatestSavedMediaFilePath:Ljava/lang/String;

.field private m_LatestThumbnailImagePathForUI:Ljava/lang/String;

.field private final m_MediaCaptureStartedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_MediaDeletionCompletedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_MediaSaveFailedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_MediaSavedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_RequestDeleteMediaEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "cameraThread"

    .prologue
    .line 151
    const-string v0, "Thumbnail Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    .line 79
    new-instance v0, Lcom/android/camera/component/ThumbnailController$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ThumbnailController$1;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_MediaCaptureStartedEventHandler:Lcom/android/camera/IEventHandler;

    .line 89
    new-instance v0, Lcom/android/camera/component/ThumbnailController$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ThumbnailController$2;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_MediaDeletionCompletedEventHandler:Lcom/android/camera/IEventHandler;

    .line 101
    new-instance v0, Lcom/android/camera/component/ThumbnailController$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ThumbnailController$3;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_MediaSavedEventHandler:Lcom/android/camera/IEventHandler;

    .line 120
    new-instance v0, Lcom/android/camera/component/ThumbnailController$4;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ThumbnailController$4;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_MediaSaveFailedEventHandler:Lcom/android/camera/IEventHandler;

    .line 130
    new-instance v0, Lcom/android/camera/component/ThumbnailController$5;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ThumbnailController$5;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_RequestDeleteMediaEventHandler:Lcom/android/camera/IEventHandler;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ThumbnailController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/camera/component/ThumbnailController;->m_CapturingMediaCount:I

    return v0
.end method

.method static synthetic access$004(Lcom/android/camera/component/ThumbnailController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/camera/component/ThumbnailController;->m_CapturingMediaCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/ThumbnailController;->m_CapturingMediaCount:I

    return v0
.end method

.method static synthetic access$006(Lcom/android/camera/component/ThumbnailController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/camera/component/ThumbnailController;->m_CapturingMediaCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/component/ThumbnailController;->m_CapturingMediaCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ThumbnailController;)Lcom/android/camera/component/ThumbnailUI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/component/ThumbnailController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LatestSavedMediaFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/component/ThumbnailController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController;->m_LatestSavedMediaFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/component/ThumbnailController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailController;->onMediaSaved()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LatestThumbnailImagePathForUI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/ThumbnailController;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/component/ThumbnailController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/camera/component/ThumbnailController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Ljava/lang/String;

    return-object p1
.end method

.method private createThumbnailImage(Z)V
    .locals 34
    .parameter "sendBackToUI"

    .prologue
    .line 159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createThumbnailImage(sendBackToUI = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ") - start"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    move-object/from16 v33, v0

    .line 163
    .local v33, ui:Lcom/android/camera/component/ThumbnailUI;
    if-nez v33, :cond_0

    .line 165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "No ThumbnailUI compoment is linked, cannot create thumbnail image"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual/range {v33 .. v33}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->isPaused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "Cancel creating thumbnail image because UI is paused"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_1
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 178
    .local v5, imgUri:Landroid/net/Uri;
    sget-object v10, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 183
    .local v10, videoUri:Landroid/net/Uri;
    sget-boolean v4, Lcom/android/camera/DCFRuler$StorageCardControl;->bSupportPhoneStorage:Z

    if-nez v4, :cond_8

    .line 185
    const-string v7, "_data LIKE ?"

    .line 186
    .local v7, conditions:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "DCIM"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/%"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v4

    .line 200
    .local v8, conditionArgs:[Ljava/lang/String;
    :goto_1
    invoke-virtual/range {v33 .. v33}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v17

    .line 201
    .local v17, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v11, "_id"

    aput-object v11, v6, v9

    const/4 v9, 0x1

    const-string v11, "_data"

    aput-object v11, v6, v9

    const/4 v9, 0x2

    const-string v11, "datetaken"

    aput-object v11, v6, v9

    const/4 v9, 0x3

    const-string v11, "mime_type"

    aput-object v11, v6, v9

    const-string v9, "datetaken DESC LIMIT 0,1"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 207
    .local v18, cursorImage:Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 208
    .local v21, lastImagePath:Ljava/lang/String;
    const-wide/16 v22, 0x0

    .line 209
    .local v22, lastImageTime:J
    const/16 v24, 0x0

    .line 212
    .local v24, lastImageType:Ljava/lang/String;
    if-eqz v18, :cond_2

    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-lez v4, :cond_2

    .line 216
    :try_start_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    .line 217
    const-string v4, "_data"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 218
    const-string v4, "datetaken"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 219
    const-string v4, "mime_type"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v24

    .line 235
    :cond_2
    :goto_2
    if-eqz v18, :cond_3

    .line 236
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v4, 0x4

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v11, v4

    const/4 v4, 0x1

    const-string v6, "_data"

    aput-object v6, v11, v4

    const/4 v4, 0x2

    const-string v6, "datetaken"

    aput-object v6, v11, v4

    const/4 v4, 0x3

    const-string v6, "mime_type"

    aput-object v6, v11, v4

    const-string v14, "datetaken DESC LIMIT 0,1"

    move-object v12, v7

    move-object v13, v8

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 246
    .local v19, cursorVideo:Landroid/database/Cursor;
    const/16 v25, 0x0

    .line 247
    .local v25, lastVideoPath:Ljava/lang/String;
    const-wide/16 v26, 0x0

    .line 248
    .local v26, lastVideoTime:J
    const/16 v28, 0x0

    .line 251
    .local v28, lastVideoType:Ljava/lang/String;
    if-eqz v19, :cond_4

    :try_start_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    if-lez v4, :cond_4

    .line 255
    :try_start_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    .line 256
    const-string v4, "_data"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 257
    const-string v4, "datetaken"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 258
    const-string v4, "mime_type"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v28

    .line 274
    :cond_4
    :goto_3
    if-eqz v19, :cond_5

    .line 275
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_5
    const/16 v29, 0x0

    .line 285
    .local v29, thumb:Landroid/graphics/Bitmap;
    if-eqz v21, :cond_d

    .line 287
    if-eqz v25, :cond_c

    .line 289
    cmp-long v4, v22, v26

    if-lez v4, :cond_b

    .line 291
    move-object/from16 v30, v21

    .line 292
    .local v30, thumbPath:Ljava/lang/String;
    move-wide/from16 v31, v22

    .line 318
    .local v31, thumbTime:J
    :goto_4
    if-eqz v30, :cond_6

    .line 320
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The latest media file is \'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 324
    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-wide/from16 v1, v31

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/camera/component/ThumbnailController;->getThumbnailImageFromPool(Ljava/lang/String;JILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v29

    .line 358
    :cond_6
    :goto_5
    if-eqz p1, :cond_7

    .line 360
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/ThumbnailController;->m_LatestThumbnailImagePathForUI:Ljava/lang/String;

    .line 361
    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v4, 0x0

    aput-object v30, v16, v4

    const/4 v4, 0x1

    aput-object v29, v16, v4

    move-object/from16 v11, p0

    move-object/from16 v12, v33

    invoke-virtual/range {v11 .. v16}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 364
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "createThumbnailImage() - end"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    .end local v7           #conditions:Ljava/lang/String;
    .end local v8           #conditionArgs:[Ljava/lang/String;
    .end local v17           #cameraActivity:Lcom/android/camera/HTCCamera;
    .end local v18           #cursorImage:Landroid/database/Cursor;
    .end local v19           #cursorVideo:Landroid/database/Cursor;
    .end local v21           #lastImagePath:Ljava/lang/String;
    .end local v22           #lastImageTime:J
    .end local v24           #lastImageType:Ljava/lang/String;
    .end local v25           #lastVideoPath:Ljava/lang/String;
    .end local v26           #lastVideoTime:J
    .end local v28           #lastVideoType:Ljava/lang/String;
    .end local v29           #thumb:Landroid/graphics/Bitmap;
    .end local v30           #thumbPath:Ljava/lang/String;
    .end local v31           #thumbTime:J
    :cond_8
    const-string v7, "_data LIKE ? OR _data LIKE ?"

    .line 193
    .restart local v7       #conditions:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "DCIM"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/%"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v4

    const/4 v4, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "DCIM"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/%"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v4

    .restart local v8       #conditionArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 221
    .restart local v17       #cameraActivity:Lcom/android/camera/HTCCamera;
    .restart local v18       #cursorImage:Landroid/database/Cursor;
    .restart local v21       #lastImagePath:Ljava/lang/String;
    .restart local v22       #lastImageTime:J
    .restart local v24       #lastImageType:Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 223
    .local v20, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "Exception occurred while querying image file"

    move-object/from16 v0, v20

    invoke-static {v4, v6, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    const/16 v21, 0x0

    .line 230
    goto/16 :goto_2

    .line 226
    .end local v20           #ex:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v20

    .line 228
    .local v20, ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "Exception occurred while querying image file"

    move-object/from16 v0, v20

    invoke-static {v4, v6, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 229
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 235
    .end local v20           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v18, :cond_9

    .line 236
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 235
    :cond_9
    throw v4

    .line 260
    .restart local v19       #cursorVideo:Landroid/database/Cursor;
    .restart local v25       #lastVideoPath:Ljava/lang/String;
    .restart local v26       #lastVideoTime:J
    .restart local v28       #lastVideoType:Ljava/lang/String;
    :catch_2
    move-exception v20

    .line 262
    .local v20, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "Exception occurred while querying video file"

    move-object/from16 v0, v20

    invoke-static {v4, v6, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    const/16 v25, 0x0

    .line 269
    goto/16 :goto_3

    .line 265
    .end local v20           #ex:Landroid/database/sqlite/SQLiteException;
    :catch_3
    move-exception v20

    .line 267
    .local v20, ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "Exception occurred while querying video file"

    move-object/from16 v0, v20

    invoke-static {v4, v6, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 268
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 274
    .end local v20           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-eqz v19, :cond_a

    .line 275
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_a
    throw v4

    .line 296
    .restart local v29       #thumb:Landroid/graphics/Bitmap;
    :cond_b
    move-object/from16 v30, v25

    .line 297
    .restart local v30       #thumbPath:Ljava/lang/String;
    move-wide/from16 v31, v26

    .restart local v31       #thumbTime:J
    goto/16 :goto_4

    .line 302
    .end local v30           #thumbPath:Ljava/lang/String;
    .end local v31           #thumbTime:J
    :cond_c
    move-object/from16 v30, v21

    .line 303
    .restart local v30       #thumbPath:Ljava/lang/String;
    move-wide/from16 v31, v22

    .restart local v31       #thumbTime:J
    goto/16 :goto_4

    .line 306
    .end local v30           #thumbPath:Ljava/lang/String;
    .end local v31           #thumbTime:J
    :cond_d
    if-eqz v25, :cond_e

    .line 308
    move-object/from16 v30, v25

    .line 309
    .restart local v30       #thumbPath:Ljava/lang/String;
    move-wide/from16 v31, v26

    .restart local v31       #thumbTime:J
    goto/16 :goto_4

    .line 313
    .end local v30           #thumbPath:Ljava/lang/String;
    .end local v31           #thumbTime:J
    :cond_e
    const/16 v30, 0x0

    .line 314
    .restart local v30       #thumbPath:Ljava/lang/String;
    const-wide/16 v31, 0x0

    .restart local v31       #thumbTime:J
    goto/16 :goto_4

    .line 327
    :cond_f
    :try_start_7
    monitor-enter p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 329
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Ljava/lang/String;

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 331
    const-string v4, "ThumbnailController"

    const-string v6, "Use latest recorded video thumbnail image"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_10

    .line 333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v29

    .line 342
    :goto_6
    monitor-exit p0

    goto/16 :goto_5

    :catchall_2
    move-exception v4

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 346
    :catch_4
    move-exception v20

    .line 348
    .restart local v20       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "Exception occurred while creating thumbnail image"

    move-object/from16 v0, v20

    invoke-static {v4, v6, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    const/16 v30, 0x0

    .line 350
    if-eqz v29, :cond_6

    .line 352
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->recycle()V

    .line 353
    const/16 v29, 0x0

    goto/16 :goto_5

    .line 336
    .end local v20           #ex:Ljava/lang/Exception;
    :cond_10
    :try_start_a
    const-string v4, "ThumbnailController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Latest recorded video is \'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\', but no thumbnail image"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/16 v29, 0x0

    goto :goto_6

    .line 341
    :cond_11
    const/4 v4, 0x2

    move-object/from16 v0, v30

    move-wide/from16 v1, v31

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/camera/component/ThumbnailController;->getThumbnailImageFromPool(Ljava/lang/String;JILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v29

    goto :goto_6
.end method

.method private static declared-synchronized getThumbnailImageFromPool(Ljava/lang/String;JILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "filePath"
    .parameter "fileTime"
    .parameter "mediaType"
    .parameter "mimeType"

    .prologue
    const/4 v4, 0x0

    .line 383
    const-class v5, Lcom/android/camera/component/ThumbnailController;

    monitor-enter v5

    if-nez p0, :cond_0

    .line 385
    :try_start_0
    const-string v6, "filePath"

    invoke-static {v6}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :goto_0
    monitor-exit v5

    return-object v4

    .line 390
    :cond_0
    :try_start_1
    sget-object v6, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;

    .line 392
    .local v3, thumbInfo:Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    iget-object v6, v3, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-wide v6, v3, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->fileTime:J

    cmp-long v6, v6, p1

    if-nez v6, :cond_1

    .line 394
    sget-object v4, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 395
    sget-object v4, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 396
    iget-object v4, v3, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 404
    .end local v3           #thumbInfo:Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    :cond_2
    :try_start_2
    invoke-static {p0, p4}, Lcom/android/camera/ThumbnailUtility;->createThumbnailImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 411
    .local v2, thumb:Landroid/graphics/Bitmap;
    if-nez v2, :cond_3

    .line 413
    :try_start_3
    const-string v6, "ThumbnailController"

    const-string v7, "No thumbnail image created"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 383
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #thumb:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 406
    .restart local v1       #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 408
    .local v0, ex:Ljava/lang/Throwable;
    :try_start_4
    const-string v6, "ThumbnailController"

    const-string v7, "Exception occurred while creating thumbnail image"

    invoke-static {v6, v7, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 418
    .end local v0           #ex:Ljava/lang/Throwable;
    .restart local v2       #thumb:Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    sget-object v4, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v6, 0x5

    if-lt v4, v6, :cond_4

    .line 420
    sget-object v4, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;

    .line 421
    .restart local v3       #thumbInfo:Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    iget-object v4, v3, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 422
    sget-object v4, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_1

    .line 426
    .end local v3           #thumbInfo:Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    :cond_4
    new-instance v3, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;-><init>(Ljava/lang/String;JLandroid/graphics/Bitmap;)V

    .line 427
    .restart local v3       #thumbInfo:Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    sget-object v4, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 430
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    goto :goto_0
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    const/4 v0, 0x0

    .line 580
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onMediaSaved()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 557
    iget v3, p0, Lcom/android/camera/component/ThumbnailController;->m_CapturingMediaCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/camera/component/ThumbnailController;->m_CapturingMediaCount:I

    .line 560
    iget-object v3, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    if-nez v3, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    invoke-virtual {v3}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->needsReview()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v0, v2

    .line 565
    .local v0, sendBackToUI:Z
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v1, v3}, Lcom/android/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    .line 568
    iget v1, p0, Lcom/android/camera/component/ThumbnailController;->m_CapturingMediaCount:I

    if-nez v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0

    .end local v0           #sendBackToUI:Z
    :cond_3
    move v0, v1

    .line 564
    goto :goto_1
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    .line 374
    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->deinitializeOverride()V

    .line 375
    return-void
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 439
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 456
    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 444
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ThumbnailController;->hasAsyncMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    iget-boolean v0, p0, Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/ThumbnailController;->createThumbnailImage(Z)V

    goto :goto_0

    .line 439
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 467
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 484
    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    .line 487
    :goto_0
    return-void

    .line 472
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->isWorkerThreadRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v6, 0x64

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;I)Z

    goto :goto_0

    .line 479
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/android/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    goto :goto_0

    .line 467
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    .line 496
    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->initializeOverride()V

    .line 499
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 502
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    .line 503
    .local v1, eventManager:Lcom/android/camera/EventManager;
    const-string v2, "Media.Saved"

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailController;->m_MediaSavedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 504
    const-string v2, "Media.SaveFailed"

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailController;->m_MediaSaveFailedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 505
    const-string v2, "Media.DeletionCompleted"

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailController;->m_MediaDeletionCompletedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 506
    const-string v2, "Recording_Started"

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailController;->m_MediaCaptureStartedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 507
    const-string v2, "Request.DeleteLatestMedia"

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailController;->m_RequestDeleteMediaEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 508
    const-string v2, "Capture.Started"

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailController;->m_MediaCaptureStartedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 509
    const-string v2, "VideoThumbnailImage.Created"

    new-instance v3, Lcom/android/camera/component/ThumbnailController$6;

    invoke-direct {v3, p0}, Lcom/android/camera/component/ThumbnailController$6;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    .line 541
    return-void
.end method

.method link(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0
    .parameter "ui"

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    .line 549
    return-void
.end method
