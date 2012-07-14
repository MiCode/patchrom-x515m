.class public final Lcom/android/camera/ImageSettings;
.super Ljava/lang/Object;
.source "ImageSettings.java"


# static fields
.field public static final SETTING_ALL:I = 0x7fffffff

.field public static final SETTING_BRIGHTNESS:I = 0x1

.field public static final SETTING_CONSTRAST:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final SETTING_IMAGE_PROPERTIES:I = 0x0

.field public static final SETTING_ISO:I = 0x4

.field public static final SETTING_SATURATION:I = 0x8

.field public static final SETTING_SHARPNESS:I = 0x10

.field public static final SETTING_WHITEBALANCE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ImageSettings"


# instance fields
.field public brightness:Ljava/lang/Integer;

.field public final cameraActivity:Lcom/android/camera/HTCCamera;

.field public contrast:Ljava/lang/Integer;

.field public iso:Ljava/lang/String;

.field public saturation:Ljava/lang/Integer;

.field public sharpness:Ljava/lang/Integer;

.field public whiteBalanceFront:Ljava/lang/String;

.field public whiteBalanceMain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x1b

    sput v0, Lcom/android/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0
    .parameter "cameraActivity"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/camera/ImageSettings;->cameraActivity:Lcom/android/camera/HTCCamera;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/ImageSettings;I)V
    .locals 0
    .parameter "cameraActivity"
    .parameter "template"
    .parameter "target"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    .line 50
    invoke-virtual {p0, p2, p3}, Lcom/android/camera/ImageSettings;->copyFrom(Lcom/android/camera/ImageSettings;I)V

    .line 51
    return-void
.end method

.method public static backup(Lcom/android/camera/HTCCamera;I)Lcom/android/camera/ImageSettings;
    .locals 1
    .parameter "cameraActivity"
    .parameter "targets"

    .prologue
    .line 129
    new-instance v0, Lcom/android/camera/ImageSettings;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    .line 130
    .local v0, settings:Lcom/android/camera/ImageSettings;
    invoke-virtual {v0, p1}, Lcom/android/camera/ImageSettings;->backup(I)V

    .line 131
    return-object v0
.end method

.method public static getDefaultSettings(Lcom/android/camera/HTCCamera;I)Lcom/android/camera/ImageSettings;
    .locals 3
    .parameter "cameraActivity"
    .parameter "targets"

    .prologue
    const/4 v2, 0x5

    .line 246
    new-instance v0, Lcom/android/camera/ImageSettings;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageSettings;-><init>(Lcom/android/camera/HTCCamera;)V

    .line 249
    .local v0, settings:Lcom/android/camera/ImageSettings;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 250
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Integer;

    .line 253
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 254
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Integer;

    .line 257
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 258
    const-string v1, "auto"

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    .line 261
    :cond_2
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 262
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Integer;

    .line 265
    :cond_3
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    .line 266
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Integer;

    .line 269
    :cond_4
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    .line 271
    const-string v1, "auto"

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    .line 272
    const-string v1, "auto"

    iput-object v1, v0, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    .line 276
    :cond_5
    return-object v0
.end method


# virtual methods
.method public apply()V
    .locals 1

    .prologue
    .line 58
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageSettings;->apply(I)V

    .line 59
    return-void
.end method

.method public apply(I)V
    .locals 9
    .parameter "settings"

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0x2c

    const/4 v3, 0x0

    .line 62
    const-string v4, "ImageSettings"

    const-string v5, "apply image settings"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    if-nez p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ImageSettings;->cameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 70
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    if-nez v0, :cond_2

    .line 72
    const-string v3, "ImageSettings"

    const-string v4, "Cannot apply image settings because there is no camera thread"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v2, 0x1

    .line 76
    .local v2, isMainCamera:Z
    :goto_1
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 77
    .local v1, handler:Landroid/os/Handler;
    if-nez v1, :cond_4

    .line 79
    const-string v3, "ImageSettings"

    const-string v4, "Cannot apply image settings because there is no camera thread handler"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #isMainCamera:Z
    :cond_3
    move v2, v3

    .line 75
    goto :goto_1

    .line 84
    .restart local v1       #handler:Landroid/os/Handler;
    .restart local v2       #isMainCamera:Z
    :cond_4
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Integer;

    if-eqz v4, :cond_5

    .line 85
    iget-object v4, p0, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "exposure-compensation"

    invoke-static {v1, v7, v4, v3, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 88
    :cond_5
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Integer;

    if-eqz v4, :cond_6

    .line 89
    iget-object v4, p0, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "contrast"

    invoke-static {v1, v7, v4, v3, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 92
    :cond_6
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 94
    iget-object v4, p0, Lcom/android/camera/ImageSettings;->cameraActivity:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_iso"

    iget-object v6, p0, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 95
    const/16 v4, 0x12

    iget-object v5, p0, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    invoke-static {v1, v4, v3, v3, v5}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 99
    :cond_7
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Integer;

    if-eqz v4, :cond_8

    .line 100
    iget-object v4, p0, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "saturation"

    invoke-static {v1, v7, v4, v3, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 103
    :cond_8
    and-int/lit8 v4, p1, 0x10

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Integer;

    if-eqz v4, :cond_9

    .line 104
    iget-object v4, p0, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "sharpness"

    invoke-static {v1, v7, v4, v3, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 107
    :cond_9
    and-int/lit8 v4, p1, 0x20

    if-eqz v4, :cond_0

    .line 109
    iget-object v4, p0, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 111
    iget-object v4, p0, Lcom/android/camera/ImageSettings;->cameraActivity:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_white_balance"

    iget-object v6, p0, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 112
    if-eqz v2, :cond_a

    .line 113
    iget-object v4, p0, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    invoke-static {v1, v8, v3, v3, v4}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 115
    :cond_a
    iget-object v4, p0, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 117
    iget-object v4, p0, Lcom/android/camera/ImageSettings;->cameraActivity:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_white_balance_2nd"

    iget-object v6, p0, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 118
    if-nez v2, :cond_0

    .line 119
    iget-object v4, p0, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    invoke-static {v1, v8, v3, v3, v4}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public backup(I)V
    .locals 6
    .parameter "targets"

    .prologue
    const/4 v5, 0x5

    .line 135
    const-string v2, "ImageSettings"

    const-string v3, "backup current image settings"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/android/camera/ImageSettings;->cameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 139
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    if-nez v0, :cond_1

    .line 141
    const-string v2, "ImageSettings"

    const-string v3, "Cannot backup image settings because there is no camera thread"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v1

    .line 145
    .local v1, controller:Lcom/android/camera/CameraController;
    if-nez v1, :cond_2

    .line 147
    const-string v2, "ImageSettings"

    const-string v3, "Cannot backup image settings because there is no camera controller"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_2
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_3

    .line 154
    const-string v2, "exposure-compensation"

    iget-object v3, p0, Lcom/android/camera/ImageSettings;->cameraActivity:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_camera_brightness"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Integer;

    .line 162
    :cond_3
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_4

    .line 164
    const-string v2, "contrast"

    iget-object v3, p0, Lcom/android/camera/ImageSettings;->cameraActivity:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_camera_contrast"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Integer;

    .line 172
    :cond_4
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_5

    .line 173
    iget-object v2, p0, Lcom/android/camera/ImageSettings;->cameraActivity:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_iso"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    .line 176
    :cond_5
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_6

    .line 178
    const-string v2, "saturation"

    iget-object v3, p0, Lcom/android/camera/ImageSettings;->cameraActivity:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_camera_saturation"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Integer;

    .line 186
    :cond_6
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_7

    .line 188
    const-string v2, "sharpness"

    iget-object v3, p0, Lcom/android/camera/ImageSettings;->cameraActivity:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_camera_shaprness"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Integer;

    .line 196
    :cond_7
    and-int/lit8 v2, p1, 0x20

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/android/camera/ImageSettings;->cameraActivity:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_white_balance"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    .line 199
    iget-object v2, p0, Lcom/android/camera/ImageSettings;->cameraActivity:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_white_balance_2nd"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public copyFrom(Lcom/android/camera/ImageSettings;I)V
    .locals 1
    .parameter "template"
    .parameter "targets"

    .prologue
    .line 209
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p1, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/camera/ImageSettings;->brightness:Ljava/lang/Integer;

    .line 217
    :cond_2
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, p1, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/camera/ImageSettings;->contrast:Ljava/lang/Integer;

    .line 221
    :cond_3
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    .line 222
    iget-object v0, p1, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/ImageSettings;->iso:Ljava/lang/String;

    .line 225
    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    .line 226
    iget-object v0, p1, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/camera/ImageSettings;->saturation:Ljava/lang/Integer;

    .line 229
    :cond_5
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_6

    .line 230
    iget-object v0, p1, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/camera/ImageSettings;->sharpness:Ljava/lang/Integer;

    .line 233
    :cond_6
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p1, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/ImageSettings;->whiteBalanceMain:Ljava/lang/String;

    .line 236
    iget-object v0, p1, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/ImageSettings;->whiteBalanceFront:Ljava/lang/String;

    goto :goto_0
.end method
