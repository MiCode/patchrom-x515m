.class public Lcom/android/camera/AutoUploader;
.super Ljava/lang/Object;
.source "AutoUploader.java"


# static fields
.field private static final AUTO_UPLOAD_ALBUM:Ljava/lang/String; = "AUTO_UPLOAD_ALBUM"

.field private static final AUTO_UPLOAD_COMPOMENT_NAME:Ljava/lang/String; = "AUTO_UPLOAD_COMPOMENT_NAME"

.field private static final TAG:Ljava/lang/String; = "AutoUploader"

.field private static mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

.field private static mAutoUploadAlbumId:Ljava/lang/String;

.field private static mAutoUploadAlbumName:Ljava/lang/String;

.field private static mAutoUploadAlbumPrivacy:Ljava/lang/String;

.field private static mAutoUploadComponentName:Landroid/content/ComponentName;

.field private static mAutoUploadFrequence:Ljava/lang/String;

.field private static mAutoUploadService:Ljava/lang/String;

.field private static mAutoUploadServiceLabel:Ljava/lang/String;

.field private static mAutoUploadServiceTitle:Ljava/lang/String;

.field private static mIsAutoUploadInited:Z


# instance fields
.field public mAutoUploadUri:Landroid/net/Uri;

.field private mHTCCamera:Lcom/android/camera/HTCCamera;

.field private mHourOfDay:I

.field private mMinOfHour:I

.field private mUIHandler:Landroid/os/Handler;

.field private mUploaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    const-string v0, "Off"

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    .line 43
    const-string v0, ""

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    .line 44
    const-string v0, ""

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    .line 47
    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    .line 48
    const-string v0, ""

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    .line 52
    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    .line 53
    const-string v0, ""

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumId:Ljava/lang/String;

    .line 54
    const-string v0, ""

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumName:Ljava/lang/String;

    .line 55
    const-string v0, ""

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumPrivacy:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;Landroid/os/Handler;)V
    .locals 2
    .parameter "activity"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    .line 38
    iput-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 39
    iput-object v1, p0, Lcom/android/camera/AutoUploader;->mUIHandler:Landroid/os/Handler;

    .line 49
    iput v0, p0, Lcom/android/camera/AutoUploader;->mHourOfDay:I

    .line 50
    iput v0, p0, Lcom/android/camera/AutoUploader;->mMinOfHour:I

    .line 58
    iput-boolean v0, p0, Lcom/android/camera/AutoUploader;->mUploaded:Z

    .line 70
    iput-object p1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 71
    iput-object p2, p0, Lcom/android/camera/AutoUploader;->mUIHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/AutoUploader;)Lcom/android/camera/HTCCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    return-object v0
.end method


# virtual methods
.method public ShowAutoUploadSetting()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 96
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.MediaAutoUploadSetting"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    const-string v2, "immediately"

    sput-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    .line 100
    :cond_0
    const-string v2, "AutoUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShowAutoUploadSetting UPLOAD_FREQUENCY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "UPLOAD_FREQUENCY"

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    const-string v3, "Off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    :cond_1
    const-string v2, "AUTO_UPLOAD"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    const-string v2, "Facebook"

    sput-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    .line 107
    const-string v2, "AutoUploader"

    const-string v3, "ShowAutoUploadSetting AUTO_UPLOAD:false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    const-string v2, "SERVICE_LABEL"

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v2, "AutoUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShowAutoUploadSetting SERVICE_LABEL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/Global$REQUEST_CODE;->REQUEST_AUTO_UPLOAD_SETTING:Lcom/android/camera/Global$REQUEST_CODE;

    invoke-virtual {v3}, Lcom/android/camera/Global$REQUEST_CODE;->ordinal()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/HTCCamera;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_1
    return-void

    .line 110
    :cond_2
    const-string v2, "AUTO_UPLOAD"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    const-string v2, "AutoUploader"

    const-string v3, "ShowAutoUploadSetting AUTO_UPLOAD:true"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v2, "ALBUM_NAME"

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v3, v3, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v2, "AutoUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShowAutoUploadSetting ALBUM_NAME:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v4, v4, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, RE:Ljava/lang/RuntimeException;
    const-string v2, "AutoUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShowAutoUploadSetting RE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public handleAutoUploadSettingResult(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 345
    const-string v1, "AUTO_UPLOAD"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 346
    .local v0, enable:Z
    if-eqz v0, :cond_7

    .line 348
    const-string v1, "On"

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    .line 349
    const-string v1, "SERVICE_LABEL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    .line 350
    const-string v1, "SERVICE_TITLE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    .line 351
    const-string v1, "SERVICE_COMPONENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    .line 352
    const-string v1, "ALBUM"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/social/data/Album;

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    .line 354
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    if-eqz v1, :cond_2

    .line 356
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 357
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumId:Ljava/lang/String;

    .line 359
    :cond_0
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 360
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumName:Ljava/lang/String;

    .line 362
    :cond_1
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Album;->privacy:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 363
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v1, v1, Lcom/htc/opensense/social/data/Album;->privacy:Ljava/lang/String;

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumPrivacy:Ljava/lang/String;

    .line 365
    :cond_2
    const-string v1, "UPLOAD_FREQUENCY"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    .line 367
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    const-string v2, "immediately"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 390
    :cond_3
    :goto_0
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_AUTO_UPLOAD_SETTING: enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_AUTO_UPLOAD_SETTING: PREF_AUTO_UPLOAD_SERVICE_LABEL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_AUTO_UPLOAD_SETTING: PREF_AUTO_UPLOAD_SERVICE_TITLE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_AUTO_UPLOAD_SETTING: PREF_AUTO_UPLOAD_FREQUENCE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_AUTO_UPLOAD_SETTING: PREF_AUTO_UPLOAD_ALBUMID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_AUTO_UPLOAD_SETTING: PREF_AUTO_UPLOAD_ALBUMNAME:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_AUTO_UPLOAD_SETTING: PREF_AUTO_UPLOAD_ALBUMPRIVACY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumPrivacy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 401
    const-string v1, "AutoUploader"

    const-string v2, "mAutoUploadService is null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v1, "Off"

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    .line 405
    :cond_4
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 407
    const-string v1, "AutoUploader"

    const-string v2, "mAutoUploadServiceLabel is null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v1, ""

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    .line 411
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/AutoUploader;->setAutoUploadToPreference()V

    .line 413
    return-void

    .line 371
    :cond_6
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    const-string v2, "wifi_only"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_0

    .line 376
    :cond_7
    const-string v1, "Off"

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    .line 377
    const-string v1, "Off"

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    .line 378
    const-string v1, ""

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    .line 379
    const-string v1, ""

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    .line 380
    iput v2, p0, Lcom/android/camera/AutoUploader;->mHourOfDay:I

    .line 381
    iput v2, p0, Lcom/android/camera/AutoUploader;->mMinOfHour:I

    .line 382
    sput-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    .line 383
    sput-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    .line 384
    const-string v1, ""

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumId:Ljava/lang/String;

    .line 385
    const-string v1, ""

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumName:Ljava/lang/String;

    .line 386
    const-string v1, ""

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumPrivacy:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public loadAutoUploadSettings()V
    .locals 4

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-nez v1, :cond_1

    .line 169
    const-string v1, "AutoUploader"

    const-string v2, "loadAutoUploadSettings: mHTCCamera = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_auto_upload"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    .line 175
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    const-string v1, "Off"

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_auto_upload_label"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_auto_upload_service_title"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_auto_upload_component_name"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, str:Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 185
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    .line 187
    :cond_3
    iget-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_auto_upload_frequence"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    .line 189
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    if-nez v1, :cond_4

    .line 190
    new-instance v1, Lcom/htc/opensense/social/data/Album;

    invoke-direct {v1}, Lcom/htc/opensense/social/data/Album;-><init>()V

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    .line 192
    :cond_4
    iget-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_auto_upload_album_id"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 196
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v2, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_auto_upload_album_id"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    .line 197
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v2, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_auto_upload_album_name"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    .line 198
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v2, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_auto_upload_album_privacy"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense/social/data/Album;->privacy:Ljava/lang/String;

    .line 207
    :goto_1
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 208
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadAutoUploadSettings, mAutoUploadService ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_5
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 211
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadAutoUploadSettings, mAutoUploadServiceLabel ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_6
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 214
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadAutoUploadSettings, mAutoUploadServiceTitle ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_7
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_8

    .line 217
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadAutoUploadSettings, mAutoUploadComponentName ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_8
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    if-eqz v1, :cond_0

    .line 221
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadAutoUploadSettings, mAutoUploadAlbum.albumId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v3, v3, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadAutoUploadSettings, mAutoUploadAlbum.name ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v3, v3, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadAutoUploadSettings, mAutoUploadAlbum.privacy ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v3, v3, Lcom/htc/opensense/social/data/Album;->privacy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :cond_9
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    const-string v2, ""

    iput-object v2, v1, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    .line 203
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    const-string v2, ""

    iput-object v2, v1, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    .line 204
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    const-string v2, ""

    iput-object v2, v1, Lcom/htc/opensense/social/data/Album;->privacy:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public releaseResource()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    .line 82
    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    .line 83
    iput-object v0, p0, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    .line 84
    return-void
.end method

.method public setAutoUploadToPreference()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-nez v0, :cond_0

    .line 132
    const-string v0, "AutoUploader"

    const-string v1, "setAutoUploadToPreference: mHTCCamera = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_service_title"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_frequence"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_label"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_component_name"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 151
    :goto_1
    sget-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    if-nez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_album_id"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_album_name"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_album_privacy"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_component_name"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_album_id"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v2, v2, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_album_name"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v2, v2, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_album_privacy"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v2, v2, Lcom/htc/opensense/social/data/Album;->privacy:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public setParent(Lcom/android/camera/HTCCamera;)V
    .locals 2
    .parameter "actParent"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v0, "AutoUploader"

    const-string v1, "setParent HTCCamera"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSaveDone()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    monitor-enter v1

    .line 314
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    .line 315
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/AutoUploader$5;

    invoke-direct {v1, p0}, Lcom/android/camera/AutoUploader$5;-><init>(Lcom/android/camera/AutoUploader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    :cond_1
    return-void

    .line 315
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public showAutoUploadDialog()V
    .locals 7

    .prologue
    .line 234
    new-instance v3, Lcom/android/camera/AutoUploader$1;

    invoke-direct {v3, p0}, Lcom/android/camera/AutoUploader$1;-><init>(Lcom/android/camera/AutoUploader;)V

    .line 243
    .local v3, positive_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/camera/AutoUploader$2;

    invoke-direct {v2, p0}, Lcom/android/camera/AutoUploader$2;-><init>(Lcom/android/camera/AutoUploader;)V

    .line 252
    .local v2, negative_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/camera/AutoUploader$3;

    invoke-direct {v1, p0}, Lcom/android/camera/AutoUploader$3;-><init>(Lcom/android/camera/AutoUploader;)V

    .line 262
    .local v1, mCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v4, Lcom/android/camera/rotate/RotateDialog$Builder;

    iget-object v5, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-direct {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a0097

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0049

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setMessage(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x20c0008

    invoke-virtual {v4, v5, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x20c0007

    invoke-virtual {v4, v5, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v0

    .local v0, AutoUploadDialog:Landroid/app/Dialog;
    move-object v4, v0

    .line 271
    check-cast v4, Lcom/android/camera/rotate/RotateDialog;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog;->setOrientation(I)V

    .line 273
    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateDialog;->show()V

    .line 276
    iget-object v4, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_first_time_launch"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    .line 277
    return-void
.end method

.method public showOKDialog()V
    .locals 4

    .prologue
    .line 280
    new-instance v1, Lcom/android/camera/AutoUploader$4;

    invoke-direct {v1, p0}, Lcom/android/camera/AutoUploader$4;-><init>(Lcom/android/camera/AutoUploader;)V

    .line 287
    .local v1, positive_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/camera/rotate/RotateDialog$Builder;

    iget-object v3, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-direct {v2, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0097

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a004a

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setMessage(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v2

    const v3, 0x20c0009

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v0

    .local v0, OKDialog:Landroid/app/Dialog;
    move-object v2, v0

    .line 294
    check-cast v2, Lcom/android/camera/rotate/RotateDialog;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateDialog;->setOrientation(I)V

    .line 296
    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateDialog;->show()V

    .line 298
    return-void
.end method

.method public triggerAutoUpload()V
    .locals 8

    .prologue
    .line 423
    const-string v5, "AutoUploader"

    const-string v6, "triggerAutoUpload"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportAutoUpload()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    const-string v6, "Off"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v5, :cond_0

    .line 432
    iget-object v6, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    monitor-enter v6

    .line 435
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    if-nez v5, :cond_1

    .line 436
    monitor-exit v6

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v2, p0, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    .line 439
    .local v2, autoUploadUri:Landroid/net/Uri;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    .line 441
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 444
    .local v1, autoUploadService:Landroid/content/Intent;
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v4, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 448
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.htc.providers.uploads"

    const-string v7, "com.htc.providers.uploads.AutoUploadService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 454
    const-string v5, "frequency"

    sget-object v6, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v5, "service_title"

    sget-object v6, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const-string v5, "upload_service_component"

    sget-object v6, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 457
    const-string v5, "get_album"

    sget-object v6, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 458
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 461
    if-eqz v3, :cond_2

    .line 462
    const-string v5, "AutoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_STREAM:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_2
    const-string v5, "AutoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_AUTO_UPLOAD_FREQUENCY:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v5, "AutoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_AUTO_UPLOAD_SERVICE_TITLE:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    sget-object v5, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v5, v5, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 468
    const-string v5, "AutoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_AUTO_UPLOAD_GET_ALBUM albumId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v7, v7, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_3
    sget-object v5, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v5, v5, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 471
    const-string v5, "AutoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_AUTO_UPLOAD_GET_ALBUM name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v7, v7, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_4
    sget-object v5, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v5, v5, Lcom/htc/opensense/social/data/Album;->privacy:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 474
    const-string v5, "AutoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_AUTO_UPLOAD_GET_ALBUM privacy:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v7, v7, Lcom/htc/opensense/social/data/Album;->privacy:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5, v1}, Lcom/android/camera/HTCCamera;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 478
    :catch_0
    move-exception v0

    .line 480
    .local v0, SE:Ljava/lang/SecurityException;
    const-string v5, "AutoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startService SE:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 441
    .end local v0           #SE:Ljava/lang/SecurityException;
    .end local v1           #autoUploadService:Landroid/content/Intent;
    .end local v2           #autoUploadUri:Landroid/net/Uri;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method
