.class public Lcom/android/camera/HTCSnapbooth;
.super Landroid/app/Activity;
.source "HTCSnapbooth.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/HTCSnapbooth$MainHandler;
    }
.end annotation


# static fields
.field public static final ACTION_ORIENTATION_LIGHT:Ljava/lang/String; = "com.htc.content.intent.action.ORIENTATION_LIGHT"

.field public static final CAPTURE_CANCELED:I = 0x4

.field public static final CAPTURE_COMPLETED:I = 0x5

.field private static final COUNTDOWN_INTERVAL:I = 0x320

.field public static final COUNT_DOWN_SELFTIMER:I = 0x6

.field public static final DCAP_RESET_CAPTURE_CANCELABLE:I = 0x1

.field public static final DCAP_UNFREEZE_ORIENTATION:I = 0x2

.field private static final EFFECT_SLIDE_DURATION:I = 0x190

.field public static final EXTRA_MANUAL:Ljava/lang/String; = "manual"

.field public static final EXTRA_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final FIRST_PREVIEW_FRAME_ARRIVED:I = 0x8

.field public static final INIT_THUMBNAIL_CREATED:I = 0x64

.field private static final INTENT_MODE_CAMERA:Ljava/lang/String; = "camera"

.field private static final INTENT_MODE_KEY:Ljava/lang/String; = "capture_mode"

.field public static final NOTIFY_STORAGE_STATE:I = 0x2a

.field private static final NO_KEEP_VOLUME:I = -0x1

.field public static final PLAY_SOUND:I = 0x22

.field public static final PREVIEW_STARTED:I = 0x2

.field public static final PREVIEW_STOPPED:I = 0x3

.field public static final RESET_SURFACEVIEW_LAYOUT:I = 0x1

.field public static final REVIEW_ANIMATION:I = 0xc

.field public static final REVIEW_SCREEN:I = 0xb

.field private static final REVIEW_SCREEN_DURATION:I = 0x7d0

.field public static final SHOW_TOAST:I = 0x1f

.field private static final SHUTTER_SLIDE_DURATION:I = 0x190

.field public static final STORE_IMAGE_FAILED:I = 0x65

.field private static final TAG:Ljava/lang/String; = "HTCSnapbooth"

.field public static final UPDATE_MULTISHUTTER_BUBBLE:I = 0x7


# instance fields
.field private mActivityOnPause:Z

.field private mAlertDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioStreamType:I

.field private mCaptureCancelable:Z

.field private mCaptureLandscapeBtn:Landroid/widget/Button;

.field private mCaptureLandscapeLayout:Landroid/view/View;

.field private mCaptureLayout:Landroid/view/View;

.field private mCapturePortraitBtn:Landroid/widget/Button;

.field private mCapturePortraitLayout:Landroid/view/View;

.field private mCountBubbleLandscapeLayout:Landroid/view/View;

.field private mCountBubbleLayout:Landroid/view/View;

.field private mCountBubblePortraitLayout:Landroid/view/View;

.field private mCountdownLandscapeLayout:Landroid/view/View;

.field private mCountdownLayout:Landroid/view/View;

.field private mCountdownPortraitLayout:Landroid/view/View;

.field private mCurrentAlertDialog:Landroid/app/Dialog;

.field private mCurrentShutterNum:I

.field private mCurrentThumbnail:Landroid/graphics/Bitmap;

.field private mEffectLandscapePanel:Landroid/view/View;

.field private mEffectPortraitPanel:Landroid/view/View;

.field private mFreezeOrientation:I

.field private mGalleryLandscapeAnimationThumbnail:Landroid/widget/ImageView;

.field private mGalleryLandscapeLayout:Landroid/view/View;

.field private mGalleryLandscapeThumbnail:Landroid/widget/ImageView;

.field private mGalleryPortraitAnimationThumbnail:Landroid/widget/ImageView;

.field private mGalleryPortraitLayout:Landroid/view/View;

.field private mGalleryPortraitThumbnail:Landroid/widget/ImageView;

.field private mIntentManager:Lcom/android/camera/SnapboothIntentManager;

.field private mIsCanceling:Z

.field private mIsCapturing:Z

.field private mIsFreezeOrientation:Z

.field private mIsMultiShutter:Z

.field private mIsPreviewFrameArrived:Z

.field private mIsPreviewStarted:Z

.field private mIsReviewAnimationCompleted:Z

.field private mIsReviewScreenVisible:Z

.field private mIsShareDialogCanceled:Z

.field private mLastOrientation:I

.field private mMainLayout:Landroid/view/View;

.field private mNeedInitThumbnail:Z

.field private final mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnCreateIsCalled:Z

.field private final mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOriginalVolume_Alarm:I

.field private mOriginalVolume_Ring:I

.field private mReviewImage:Landroid/graphics/Bitmap;

.field private mReviewImageContainer:Landroid/view/View;

.field private mReviewImageView:Landroid/widget/ImageView;

.field private mReviewLayout:Landroid/view/View;

.field private mReviewScreenButtons:[Landroid/widget/Button;

.field private mReviewScreenButtonsPanel:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mReviewThumbnail:Landroid/graphics/Bitmap;

.field private mSecondLayout:Landroid/view/View;

.field private mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

.field private mSnapboothHandler:Landroid/os/Handler;

.field private mSnapboothThread:Lcom/android/camera/SnapboothThread;

.field private mStorageCardEventReceiver:Landroid/content/BroadcastReceiver;

.field private mSurfaceCreated:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mToast:Lcom/android/camera/rotate/RotateToast;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    .line 78
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    .line 80
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    .line 81
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothThread:Lcom/android/camera/SnapboothThread;

    .line 83
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    .line 86
    iput v0, p0, Lcom/android/camera/HTCSnapbooth;->mLastOrientation:I

    .line 87
    iput v0, p0, Lcom/android/camera/HTCSnapbooth;->mFreezeOrientation:I

    .line 89
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioManager:Landroid/media/AudioManager;

    .line 90
    iput v0, p0, Lcom/android/camera/HTCSnapbooth;->mOriginalVolume_Alarm:I

    .line 91
    iput v0, p0, Lcom/android/camera/HTCSnapbooth;->mOriginalVolume_Ring:I

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/HTCSnapbooth;->mAudioStreamType:I

    .line 94
    iput v2, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentShutterNum:I

    .line 103
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceView:Landroid/view/SurfaceView;

    .line 104
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 105
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    .line 106
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSecondLayout:Landroid/view/View;

    .line 107
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;

    .line 108
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLayout:Landroid/view/View;

    .line 109
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLayout:Landroid/view/View;

    .line 111
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeLayout:Landroid/view/View;

    .line 112
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitLayout:Landroid/view/View;

    .line 113
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeThumbnail:Landroid/widget/ImageView;

    .line 114
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeAnimationThumbnail:Landroid/widget/ImageView;

    .line 115
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitThumbnail:Landroid/widget/ImageView;

    .line 116
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitAnimationThumbnail:Landroid/widget/ImageView;

    .line 118
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLandscapeLayout:Landroid/view/View;

    .line 119
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCapturePortraitLayout:Landroid/view/View;

    .line 121
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLandscapeBtn:Landroid/widget/Button;

    .line 122
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCapturePortraitBtn:Landroid/widget/Button;

    .line 124
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLandscapeLayout:Landroid/view/View;

    .line 125
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownPortraitLayout:Landroid/view/View;

    .line 127
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLandscapeLayout:Landroid/view/View;

    .line 128
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubblePortraitLayout:Landroid/view/View;

    .line 130
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mEffectLandscapePanel:Landroid/view/View;

    .line 131
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mEffectPortraitPanel:Landroid/view/View;

    .line 133
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewLayout:Landroid/view/View;

    .line 134
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImageContainer:Landroid/view/View;

    .line 135
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImageView:Landroid/widget/ImageView;

    .line 137
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtonsPanel:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 138
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtons:[Landroid/widget/Button;

    .line 148
    iput-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mActivityOnPause:Z

    .line 149
    iput-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureCancelable:Z

    .line 152
    iput-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mIsFreezeOrientation:Z

    .line 153
    iput-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mIsMultiShutter:Z

    .line 167
    new-instance v0, Lcom/android/camera/HTCSnapbooth$1;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCSnapbooth$1;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    iput-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mStorageCardEventReceiver:Landroid/content/BroadcastReceiver;

    .line 176
    new-instance v0, Lcom/android/camera/HTCSnapbooth$2;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCSnapbooth$2;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    iput-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 186
    new-instance v0, Lcom/android/camera/HTCSnapbooth$3;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCSnapbooth$3;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    iput-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/HTCSnapbooth;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/HTCSnapbooth;)Lcom/android/camera/SnapboothCustomize;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/HTCSnapbooth;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsMultiShutter:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/HTCSnapbooth;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentShutterNum:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/camera/HTCSnapbooth;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentShutterNum:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/HTCSnapbooth;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->closeCaptureUI()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/HTCSnapbooth;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/HTCSnapbooth;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/HTCSnapbooth;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCSnapbooth;->showToast(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/HTCSnapbooth;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCSnapbooth;->closeReviewScreen(ZZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/HTCSnapbooth;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCSnapbooth;->showReviewScreen(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mNeedInitThumbnail:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsPreviewStarted:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/camera/HTCSnapbooth;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/camera/HTCSnapbooth;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/camera/HTCSnapbooth;->mIsPreviewStarted:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/HTCSnapbooth;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeThumbnail:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/HTCSnapbooth;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitThumbnail:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/HTCSnapbooth;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCSnapbooth;->showStorageToast(IZ)V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/camera/HTCSnapbooth;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/android/camera/HTCSnapbooth;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/camera/HTCSnapbooth;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth;->onRotateChanged(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/camera/HTCSnapbooth;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->capture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/HTCSnapbooth;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->cancelCapture()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mActivityOnPause:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/HTCSnapbooth;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/camera/HTCSnapbooth;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsShareDialogCanceled:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/camera/HTCSnapbooth;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/camera/HTCSnapbooth;->mIsShareDialogCanceled:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->deleteCurrentImageFile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3302(Lcom/android/camera/HTCSnapbooth;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/camera/HTCSnapbooth;->mIsReviewAnimationCompleted:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsReviewScreenVisible:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/camera/HTCSnapbooth;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth;->showShareImageChooser(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/HTCSnapbooth;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth;->doneForServiceMode(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/HTCSnapbooth;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth;->confirmDeletingCurrentImageFile(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera/HTCSnapbooth;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->reCaptureForServiceMode()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/camera/HTCSnapbooth;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureCancelable:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/camera/HTCSnapbooth;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/HTCSnapbooth;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureCancelable:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/camera/HTCSnapbooth;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/camera/HTCSnapbooth;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsFreezeOrientation:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/HTCSnapbooth;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/camera/HTCSnapbooth;->mIsFreezeOrientation:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/camera/HTCSnapbooth;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/camera/HTCSnapbooth;->mIsPreviewFrameArrived:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/HTCSnapbooth;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsCanceling:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/HTCSnapbooth;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/camera/HTCSnapbooth;->mIsCanceling:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/HTCSnapbooth;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->unfreezeUIRotation()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/HTCSnapbooth;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/camera/HTCSnapbooth;->mFreezeOrientation:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/HTCSnapbooth;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/android/camera/HTCSnapbooth;->mFreezeOrientation:I

    return p1
.end method

.method private broadcastStopFM()V
    .locals 3

    .prologue
    .line 1367
    const-string v1, "HTCSnapbooth"

    const-string v2, "!!!! @@@@ broadcastStopFM() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fm.servicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1369
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1370
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCSnapbooth;->sendBroadcast(Landroid/content/Intent;)V

    .line 1371
    const-string v1, "HTCSnapbooth"

    const-string v2, "!!!! @@@@ broadcastStopFM() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    return-void
.end method

.method private broadcastStopVoiceRecording()V
    .locals 3

    .prologue
    .line 1355
    const-string v1, "HTCSnapbooth"

    const-string v2, "!!!! @@@@ broadcastStopVoiceRecording() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.soundrecorder.recordingservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1357
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "stoprecord"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1358
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCSnapbooth;->sendBroadcast(Landroid/content/Intent;)V

    .line 1359
    const-string v1, "HTCSnapbooth"

    const-string v2, "!!!! @@@@ broadcastStopVoiceRecording() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    return-void
.end method

.method private cancelCapture()V
    .locals 2

    .prologue
    .line 2072
    const-string v0, "HTCSnapbooth"

    const-string v1, "Cancel capture!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsCapturing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsCanceling:Z

    if-eqz v0, :cond_1

    .line 2085
    :cond_0
    :goto_0
    return-void

    .line 2077
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsCanceling:Z

    .line 2080
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 2081
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2084
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->closeCaptureUI()V

    goto :goto_0
.end method

.method private capture()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 989
    const-string v1, "HTCSnapbooth"

    const-string v4, "Start capture"

    invoke-static {v1, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 994
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothThread:Lcom/android/camera/SnapboothThread;

    invoke-virtual {v1}, Lcom/android/camera/SnapboothThread;->getCurrentStorageState()I

    move-result v0

    .line 995
    .local v0, storageState:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 997
    if-eqz v0, :cond_0

    .line 999
    invoke-direct {p0, v0, v2}, Lcom/android/camera/HTCSnapbooth;->showStorageToast(IZ)V

    move v1, v2

    .line 1042
    .end local v0           #storageState:I
    :goto_0
    return v1

    .line 1006
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsPreviewFrameArrived:Z

    if-nez v1, :cond_1

    move v1, v2

    .line 1007
    goto :goto_0

    .line 1010
    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mNeedInitThumbnail:Z

    .line 1013
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v1}, Lcom/android/camera/SnapboothCustomize;->isMultiShutter()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsMultiShutter:Z

    .line 1014
    iput v3, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentShutterNum:I

    .line 1017
    iget v1, p0, Lcom/android/camera/HTCSnapbooth;->mLastOrientation:I

    iput v1, p0, Lcom/android/camera/HTCSnapbooth;->mFreezeOrientation:I

    .line 1018
    iput-boolean v3, p0, Lcom/android/camera/HTCSnapbooth;->mIsFreezeOrientation:Z

    .line 1021
    iget-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsMultiShutter:Z

    if-eqz v1, :cond_2

    .line 1023
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/HTCSnapbooth;->isOrientationPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubblePortraitLayout:Landroid/view/View;

    :goto_1
    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLayout:Landroid/view/View;

    .line 1024
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1028
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->setCancelableCaptureUI()V

    .line 1031
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1034
    iput-boolean v3, p0, Lcom/android/camera/HTCSnapbooth;->mIsCapturing:Z

    .line 1035
    iget-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsMultiShutter:Z

    if-eqz v1, :cond_3

    .line 1037
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    invoke-static {v1, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1038
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    iget v5, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentShutterNum:I

    invoke-static {v1, v4, v5, v2, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1040
    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-static {v1, v4, v6, v2, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    move v1, v3

    .line 1042
    goto :goto_0

    .line 1023
    :cond_4
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLandscapeLayout:Landroid/view/View;

    goto :goto_1
.end method

.method private closeCaptureUI()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1062
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsMultiShutter:Z

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v0}, Lcom/android/camera/SnapboothCustomize;->disableCountBubbles()V

    .line 1065
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->slideOutShutterBar()V

    .line 1074
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothCustomize;->enableGalleryButton(Z)V

    .line 1075
    return-void
.end method

.method private closeReviewScreen(ZZ)V
    .locals 22
    .parameter "showAnimation"
    .parameter "updateThumbnail"

    .prologue
    .line 1873
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/HTCSnapbooth;->mIsReviewScreenVisible:Z

    if-nez v4, :cond_0

    .line 2031
    :goto_0
    return-void

    .line 1877
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/HTCSnapbooth;->mIsReviewScreenVisible:Z

    .line 1880
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 1881
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/camera/HTCSnapbooth;->mNeedInitThumbnail:Z

    .line 1884
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/HTCSnapbooth;->getFreezeOrientation()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/camera/rotate/OrientationConfig;->mapDrgreeToUIOrientationEx(IZ)I

    move-result v17

    .line 1885
    .local v17, freezeUIOrientation:I
    const/4 v4, 0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    move/from16 v0, v17

    if-ne v0, v4, :cond_5

    :cond_2
    const/16 v18, 0x1

    .line 1888
    .local v18, isLandscape:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewImageContainer:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1889
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtonsPanel:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 1893
    const/4 v4, 0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    move/from16 v0, v17

    if-ne v0, v4, :cond_6

    .line 1894
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeAnimationThumbnail:Landroid/widget/ImageView;

    .line 1899
    .local v14, aniThumbImageView:Landroid/widget/ImageView;
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeAnimationThumbnail:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1900
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitAnimationThumbnail:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1903
    const/16 v16, 0x2bc

    .line 1904
    .local v16, duration:I
    if-eqz p1, :cond_7

    .line 1906
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v12, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1907
    .local v12, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    const/16 v4, 0x190

    int-to-long v4, v4

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1908
    const-wide/16 v4, 0x12c

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 1909
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3fe66666

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3fc0

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    const/4 v9, 0x1

    const/high16 v10, 0x3f00

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1910
    .local v2, scaleAnimation:Landroid/view/animation/ScaleAnimation;
    const/16 v4, 0x190

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1911
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 1912
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v15, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1913
    .local v15, animationSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v15, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1914
    invoke-virtual {v15, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1915
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v14, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1916
    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1918
    new-instance v4, Lcom/android/camera/HTCSnapbooth$17;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v4, v0, v1, v14}, Lcom/android/camera/HTCSnapbooth$17;-><init>(Lcom/android/camera/HTCSnapbooth;ZLandroid/widget/ImageView;)V

    invoke-virtual {v15, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1967
    .end local v2           #scaleAnimation:Landroid/view/animation/ScaleAnimation;
    .end local v12           #alphaAnimation:Landroid/view/animation/AlphaAnimation;
    .end local v15           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/camera/SnapboothCustomize;->hideViewfinderCover(Z)V

    .line 1970
    if-eqz p1, :cond_a

    .line 1972
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewImageContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 1973
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-direct {v13, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1974
    .local v13, aniSet:Landroid/view/animation/AnimationSet;
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f80

    const v5, 0x3e4ccccd

    const/high16 v6, 0x3f80

    const v7, 0x3e19999a

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    const/4 v10, 0x1

    const/high16 v11, 0x3f00

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1976
    .local v3, anim:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 1977
    const/16 v4, 0x1f4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1978
    invoke-virtual {v13, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1979
    new-instance v21, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    const v5, 0x3dcccccd

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1980
    .local v21, showBarAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x1f4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 1981
    const/16 v4, 0xc8

    int-to-long v4, v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1982
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1984
    if-eqz v18, :cond_9

    .line 1985
    new-instance v20, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    sget v5, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_ANIMATION_DX_LAND:I

    int-to-float v5, v5

    const/4 v6, 0x0

    sget v7, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_ANIMATION_DY_LAND:I

    int-to-float v7, v7

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1988
    .local v20, showAni:Landroid/view/animation/TranslateAnimation;
    :goto_4
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1989
    const-wide/16 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1990
    move/from16 v0, v16

    int-to-long v4, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1991
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1992
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewImageContainer:Landroid/view/View;

    invoke-virtual {v4, v13}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1994
    new-instance v4, Lcom/android/camera/HTCSnapbooth$18;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/camera/HTCSnapbooth$18;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0

    .line 1885
    .end local v3           #anim:Landroid/view/animation/ScaleAnimation;
    .end local v13           #aniSet:Landroid/view/animation/AnimationSet;
    .end local v14           #aniThumbImageView:Landroid/widget/ImageView;
    .end local v16           #duration:I
    .end local v18           #isLandscape:Z
    .end local v20           #showAni:Landroid/view/animation/TranslateAnimation;
    .end local v21           #showBarAni:Landroid/view/animation/AlphaAnimation;
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1896
    .restart local v18       #isLandscape:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitAnimationThumbnail:Landroid/widget/ImageView;

    .restart local v14       #aniThumbImageView:Landroid/widget/ImageView;
    goto/16 :goto_2

    .line 1949
    .restart local v16       #duration:I
    :cond_7
    if-eqz p2, :cond_8

    .line 1951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    .line 1952
    .local v19, oldBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeThumbnail:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1953
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitThumbnail:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1954
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    .line 1955
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;

    .line 1956
    if-eqz v19, :cond_4

    .line 1957
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_3

    .line 1961
    .end local v19           #oldBitmap:Landroid/graphics/Bitmap;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    .line 1962
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_3

    .line 1987
    .restart local v3       #anim:Landroid/view/animation/ScaleAnimation;
    .restart local v13       #aniSet:Landroid/view/animation/AnimationSet;
    .restart local v21       #showBarAni:Landroid/view/animation/AlphaAnimation;
    :cond_9
    new-instance v20, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    sget v5, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_ANIMATION_DX_PORT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    sget v7, Lcom/android/camera/SnapboothCustomize;->REVIEW_IMAGE_ANIMATION_DY_PORT:I

    int-to-float v7, v7

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v20       #showAni:Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_4

    .line 2018
    .end local v3           #anim:Landroid/view/animation/ScaleAnimation;
    .end local v13           #aniSet:Landroid/view/animation/AnimationSet;
    .end local v20           #showAni:Landroid/view/animation/TranslateAnimation;
    .end local v21           #showBarAni:Landroid/view/animation/AlphaAnimation;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewImageContainer:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2021
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewImageView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2022
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewImage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_b

    .line 2024
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 2025
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/HTCSnapbooth;->mReviewImage:Landroid/graphics/Bitmap;

    .line 2029
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/HTCSnapbooth;->unfreezeUIRotation()V

    goto/16 :goto_0
.end method

.method private confirmDeletingCurrentImageFile(I)V
    .locals 9
    .parameter "freezeUIOrientation"

    .prologue
    .line 1570
    iget-object v4, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_1

    .line 1619
    :cond_0
    :goto_0
    return-void

    .line 1574
    :cond_1
    iget-object v4, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0xc

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1577
    new-instance v3, Lcom/android/camera/HTCSnapbooth$11;

    invoke-direct {v3, p0}, Lcom/android/camera/HTCSnapbooth$11;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    .line 1586
    .local v3, yesButtonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/camera/HTCSnapbooth$12;

    invoke-direct {v2, p0}, Lcom/android/camera/HTCSnapbooth$12;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    .line 1594
    .local v2, noButtonListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {p0}, Lcom/android/camera/SnapboothFileManager;->getCurrentImageFileIndex(Landroid/app/Activity;)I

    move-result v0

    .line 1595
    .local v0, fileIndex:I
    if-ltz v0, :cond_0

    .line 1597
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0142

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/camera/DCFRuler;->DefaultDCFInfo:Lcom/android/camera/DCFInfo;

    invoke-static {v8, v0}, Lcom/android/camera/DCFRuler;->fillImageFileName(Lcom/android/camera/DCFInfo;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/camera/DCFRuler;->getFileExtension()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1600
    .local v1, msg:Ljava/lang/String;
    new-instance v4, Lcom/android/camera/rotate/RotateDialog$Builder;

    invoke-direct {v4, p0}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setIcon(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x20c01fc

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/HTCSnapbooth;->mAlertDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    .line 1608
    iget-object v4, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    check-cast v4, Lcom/android/camera/rotate/RotateDialog;

    rem-int/lit8 v5, p1, 0x2

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog;->setOrientation(I)V

    .line 1609
    iget-object v4, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    new-instance v5, Lcom/android/camera/HTCSnapbooth$13;

    invoke-direct {v5, p0}, Lcom/android/camera/HTCSnapbooth$13;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1618
    iget-object v4, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method private deleteCurrentImageFile()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1753
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1756
    invoke-direct {p0, v2, v2}, Lcom/android/camera/HTCSnapbooth;->closeReviewScreen(ZZ)V

    .line 1759
    const/4 v0, 0x1

    return v0
.end method

.method private doneForServiceMode(I)V
    .locals 9
    .parameter "freezeUIOrientation"

    .prologue
    .line 1626
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    invoke-virtual {v6}, Lcom/android/camera/SnapboothIntentManager;->getSaveUri()Landroid/net/Uri;

    move-result-object v5

    .line 1628
    .local v5, saveUri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1629
    .local v3, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 1630
    .local v1, data:[B
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothThread:Lcom/android/camera/SnapboothThread;

    if-eqz v6, :cond_0

    .line 1632
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothThread:Lcom/android/camera/SnapboothThread;

    invoke-virtual {v6}, Lcom/android/camera/SnapboothThread;->getJpegData()[B

    move-result-object v1

    .line 1635
    :cond_0
    sget-object v6, Lcom/android/camera/IntentRequestName;->Contacts:Lcom/android/camera/IntentRequestName;

    invoke-virtual {p0, v6}, Lcom/android/camera/HTCSnapbooth;->isRequestName(Lcom/android/camera/IntentRequestName;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1637
    if-nez v1, :cond_1

    .line 1638
    const-string v6, "HTCSnapbooth"

    const-string v7, "contacts - jpeg data is null !!"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    :goto_0
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/camera/HTCSnapbooth;->mIsReviewScreenVisible:Z

    .line 1730
    const/4 v1, 0x0

    .line 1731
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v3}, Lcom/android/camera/HTCSnapbooth;->setResult(ILandroid/content/Intent;)V

    .line 1732
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->finish()V

    .line 1733
    return-void

    .line 1641
    :cond_1
    const/4 v0, 0x0

    .line 1642
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth;->isOrientationPortrait(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1644
    sget v6, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    sget v7, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    sget-object v8, Lcom/android/camera/Resolution;->CONTACT_STYLE:Lcom/android/camera/Resolution;

    invoke-virtual {v8}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v8

    invoke-static {v1, v6, v7, v8}, Lcom/android/camera/Util;->cropSquareImg([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1657
    :goto_1
    if-nez v0, :cond_3

    .line 1658
    const-string v6, "HTCSnapbooth"

    const-string v7, "return jpeg decode error!!"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1651
    :cond_2
    sget v6, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    sget v7, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    sget-object v8, Lcom/android/camera/Resolution;->CONTACT_STYLE:Lcom/android/camera/Resolution;

    invoke-virtual {v8}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v8

    invoke-static {v1, v6, v7, v8}, Lcom/android/camera/Util;->cropSquareImg([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 1661
    :cond_3
    const-string v6, "inline-data"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "data"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 1665
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    sget-object v6, Lcom/android/camera/IntentRequestName;->Square:Lcom/android/camera/IntentRequestName;

    invoke-virtual {p0, v6}, Lcom/android/camera/HTCSnapbooth;->isRequestName(Lcom/android/camera/IntentRequestName;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1667
    if-nez v1, :cond_5

    .line 1668
    const-string v6, "HTCSnapbooth"

    const-string v7, "contacts - jpeg data is null !!"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1671
    :cond_5
    const/4 v0, 0x0

    .line 1672
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth;->isOrientationPortrait(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1674
    sget v6, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    sget v7, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    sget v8, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    invoke-static {v1, v6, v7, v8}, Lcom/android/camera/Util;->cropSquareImg([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1687
    :goto_2
    if-nez v0, :cond_7

    .line 1688
    const-string v6, "HTCSnapbooth"

    const-string v7, "return jpeg decode error!!"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1681
    :cond_6
    sget v6, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    sget v7, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    sget v8, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    invoke-static {v1, v6, v7, v8}, Lcom/android/camera/Util;->cropSquareImg([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 1691
    :cond_7
    const-string v6, "inline-data"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "data"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1697
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_8
    if-eqz v5, :cond_a

    .line 1699
    if-eqz v1, :cond_9

    .line 1701
    const/4 v4, 0x0

    .line 1703
    .local v4, outputStream:Ljava/io/OutputStream;
    :try_start_0
    const-string v6, "HTCSnapbooth"

    const-string v7, "sent MediaStore.EXTRA_OUTPUT - start"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    .line 1705
    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1706
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 1708
    const-string v6, "HTCSnapbooth"

    const-string v7, "sent MediaStore.EXTRA_OUTPUT - end"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1712
    :goto_3
    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1709
    :catch_0
    move-exception v2

    .line 1710
    .local v2, ex:Ljava/io/IOException;
    :try_start_1
    const-string v6, "HTCSnapbooth"

    const-string v7, "sent JpegData fail"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1712
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-static {v4}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    .line 1717
    .end local v4           #outputStream:Ljava/io/OutputStream;
    :cond_9
    const-string v6, "HTCSnapbooth"

    const-string v7, "EXTRA_OUTPUT - jpeg data is null !!"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1722
    :cond_a
    invoke-static {p0}, Lcom/android/camera/SnapboothFileManager;->getLastContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1723
    const-string v6, "HTCSnapbooth"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "return request:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/android/camera/SnapboothFileManager;->getLastContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getAdjustedVolume(I)I
    .locals 4
    .parameter "max"

    .prologue
    .line 1339
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/HeadsetHelper;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1342
    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1346
    :goto_0
    return v0

    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x3fd3333333333333L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private initEffectPanel()V
    .locals 2

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mEffectLandscapePanel:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothCustomize;->initLandEffectBar(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mEffectLandscapePanel:Landroid/view/View;

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mEffectPortraitPanel:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1125
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothCustomize;->initPortEffectBar(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mEffectPortraitPanel:Landroid/view/View;

    .line 1127
    :cond_1
    return-void
.end method

.method private initializeUILayout()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 851
    const-string v8, "HTCSnapbooth"

    const-string v9, "initializeUILayout() - start"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const/4 v5, 0x0

    .line 855
    .local v5, stub:Landroid/view/ViewStub;
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    if-nez v8, :cond_0

    .line 857
    const-string v8, "HTCSnapbooth"

    const-string v9, "mMainLayout == null - initiate mMainLayout"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    invoke-static {}, Lcom/android/camera/SnapboothCustomize;->getSnapboothMainLayout()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCSnapbooth;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #stub:Landroid/view/ViewStub;
    check-cast v5, Landroid/view/ViewStub;

    .line 859
    .restart local v5       #stub:Landroid/view/ViewStub;
    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    .line 861
    :cond_0
    const-string v8, "HTCSnapbooth"

    const-string v9, "initOnCreate_after_preview() - set mMainLayout visible"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 865
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSecondLayout:Landroid/view/View;

    if-nez v8, :cond_1

    .line 867
    const-string v8, "HTCSnapbooth"

    const-string v9, "mSecondLayout == null - initiate mSecondLayout"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    invoke-static {}, Lcom/android/camera/SnapboothCustomize;->getSnapboothSecondLayout()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCSnapbooth;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #stub:Landroid/view/ViewStub;
    check-cast v5, Landroid/view/ViewStub;

    .line 869
    .restart local v5       #stub:Landroid/view/ViewStub;
    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSecondLayout:Landroid/view/View;

    .line 873
    :cond_1
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mReviewLayout:Landroid/view/View;

    if-nez v8, :cond_2

    .line 875
    const-string v8, "HTCSnapbooth"

    const-string v9, "mReviewLayout == null - initiate mReviewLayout"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-static {}, Lcom/android/camera/SnapboothCustomize;->getSnapboothReviewLayout()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCSnapbooth;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #stub:Landroid/view/ViewStub;
    check-cast v5, Landroid/view/ViewStub;

    .line 877
    .restart local v5       #stub:Landroid/view/ViewStub;
    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mReviewLayout:Landroid/view/View;

    .line 881
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v8

    if-nez v8, :cond_4

    .line 883
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeLayout:Landroid/view/View;

    if-nez v8, :cond_3

    .line 885
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v9, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/android/camera/SnapboothCustomize;->initLandGalleryBar(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeLayout:Landroid/view/View;

    .line 886
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v8}, Lcom/android/camera/SnapboothCustomize;->getLandGalleryThumbnail()Landroid/widget/ImageView;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeThumbnail:Landroid/widget/ImageView;

    .line 887
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v8}, Lcom/android/camera/SnapboothCustomize;->getLandGalleryAnimationThumbnail()Landroid/widget/ImageView;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeAnimationThumbnail:Landroid/widget/ImageView;

    .line 889
    :cond_3
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitLayout:Landroid/view/View;

    if-nez v8, :cond_4

    .line 891
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v9, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/android/camera/SnapboothCustomize;->initPortGalleryBar(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitLayout:Landroid/view/View;

    .line 892
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v8}, Lcom/android/camera/SnapboothCustomize;->getPortGalleryThumbnail()Landroid/widget/ImageView;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitThumbnail:Landroid/widget/ImageView;

    .line 893
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v8}, Lcom/android/camera/SnapboothCustomize;->getPortGalleryAnimationThumbnail()Landroid/widget/ImageView;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitAnimationThumbnail:Landroid/widget/ImageView;

    .line 898
    :cond_4
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLandscapeLayout:Landroid/view/View;

    if-nez v8, :cond_5

    .line 900
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v9, p0, Lcom/android/camera/HTCSnapbooth;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/android/camera/SnapboothCustomize;->initLandShutterBar(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLandscapeLayout:Landroid/view/View;

    .line 901
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v8}, Lcom/android/camera/SnapboothCustomize;->getLandShutterBtn()Landroid/widget/Button;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLandscapeBtn:Landroid/widget/Button;

    .line 903
    :cond_5
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mCapturePortraitLayout:Landroid/view/View;

    if-nez v8, :cond_6

    .line 905
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v9, p0, Lcom/android/camera/HTCSnapbooth;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/android/camera/SnapboothCustomize;->initPortShutterBar(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mCapturePortraitLayout:Landroid/view/View;

    .line 906
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v8}, Lcom/android/camera/SnapboothCustomize;->getPortShutterBtn()Landroid/widget/Button;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mCapturePortraitBtn:Landroid/widget/Button;

    .line 910
    :cond_6
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImageContainer:Landroid/view/View;

    if-nez v8, :cond_8

    .line 912
    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v9, p0, Lcom/android/camera/HTCSnapbooth;->mReviewLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v10

    if-nez v10, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {v8, v9, v6}, Lcom/android/camera/SnapboothCustomize;->initReviewImage(Landroid/view/View;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImageContainer:Landroid/view/View;

    .line 913
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v6}, Lcom/android/camera/SnapboothCustomize;->getLandReviewImg()Landroid/widget/ImageView;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImageView:Landroid/widget/ImageView;

    .line 917
    :cond_8
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtonsPanel:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v6, :cond_9

    .line 919
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v6}, Lcom/android/camera/SnapboothCustomize;->getReviewScreenButtonsPanel()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtonsPanel:Lcom/android/camera/rotate/RotateRelativeLayout;

    .line 920
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v6}, Lcom/android/camera/SnapboothCustomize;->getReviewScreenButtons()[Landroid/widget/Button;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtons:[Landroid/widget/Button;

    .line 921
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtons:[Landroid/widget/Button;

    .local v0, arr$:[Landroid/widget/Button;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_9

    aget-object v1, v0, v2

    .line 923
    .local v1, button:Landroid/widget/Button;
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 924
    .local v3, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    sget v6, Lcom/android/camera/SnapboothCustomize;->REVIEW_SCREEN_BUTTON_WIDTH:I

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 925
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 921
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 930
    .end local v0           #arr$:[Landroid/widget/Button;
    .end local v1           #button:Landroid/widget/Button;
    .end local v2           #i$:I
    .end local v3           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #len$:I
    :cond_9
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLandscapeLayout:Landroid/view/View;

    if-nez v6, :cond_a

    .line 931
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    invoke-virtual {v6, v8}, Lcom/android/camera/SnapboothCustomize;->initLandCountdownLayer(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLandscapeLayout:Landroid/view/View;

    .line 932
    :cond_a
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownPortraitLayout:Landroid/view/View;

    if-nez v6, :cond_b

    .line 933
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    invoke-virtual {v6, v8}, Lcom/android/camera/SnapboothCustomize;->initPortCountdownLayer(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownPortraitLayout:Landroid/view/View;

    .line 936
    :cond_b
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLandscapeLayout:Landroid/view/View;

    if-nez v6, :cond_c

    .line 937
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    invoke-virtual {v6, v8}, Lcom/android/camera/SnapboothCustomize;->initLandCountBubbleLayer(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLandscapeLayout:Landroid/view/View;

    .line 938
    :cond_c
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubblePortraitLayout:Landroid/view/View;

    if-nez v6, :cond_d

    .line 939
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-object v8, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    invoke-virtual {v6, v8}, Lcom/android/camera/SnapboothCustomize;->initPortCountBubbleLayer(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubblePortraitLayout:Landroid/view/View;

    .line 942
    :cond_d
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->initEffectPanel()V

    .line 945
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v6

    if-ne v6, v7, :cond_e

    .line 946
    iget-object v6, p0, Lcom/android/camera/HTCSnapbooth;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v6}, Landroid/view/OrientationEventListener;->enable()V

    .line 949
    :cond_e
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->setupUIElements()V

    .line 951
    const-string v6, "HTCSnapbooth"

    const-string v7, "initializeUILayout() - end"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    return-void
.end method

.method private isOrientationPortrait(I)Z
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1257
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onRotateChanged(I)Z
    .locals 5
    .parameter "orientation"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1166
    invoke-static {p1}, Lcom/android/camera/rotate/OrientationConfig;->isEqual_UIOrientation(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1168
    const-string v2, "HTCSnapbooth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRotateChanged old ui orientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", set orientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    invoke-static {p1}, Lcom/android/camera/rotate/OrientationConfig;->setUIOrientation(I)V

    .line 1174
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v2, v0}, Lcom/android/camera/SnapboothCustomize;->showPreviewCover(Z)V

    .line 1177
    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth;->setLayoutOrientation(I)V

    .line 1180
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v0}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1181
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v0, p1, v1, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1184
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1187
    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth;->slideInEffectBar(I)V

    .line 1190
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->slideInShutterBar()V

    .line 1195
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private reCaptureForServiceMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1741
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1744
    invoke-direct {p0, v2, v2}, Lcom/android/camera/HTCSnapbooth;->closeReviewScreen(ZZ)V

    .line 1745
    return-void
.end method

.method private setCancelableCaptureUI()V
    .locals 2

    .prologue
    .line 1050
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->slideOutEffectBar()V

    .line 1051
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureCancelable:Z

    .line 1052
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureCancelable:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothCustomize;->switchShutterBtn(Z)V

    .line 1053
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothCustomize;->enableGalleryButton(Z)V

    .line 1054
    return-void
.end method

.method private setLayoutOrientation(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x4

    .line 1203
    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth;->isOrientationPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1205
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mEffectLandscapePanel:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1206
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mEffectLandscapePanel:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1207
    :cond_0
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLandscapeLayout:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1208
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLandscapeLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1209
    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLandscapeLayout:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1210
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLandscapeLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1211
    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeLayout:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1212
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1214
    :cond_3
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCapturePortraitLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;

    .line 1215
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownPortraitLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLayout:Landroid/view/View;

    .line 1216
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitLayout:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 1217
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1238
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    if-ne p1, v1, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {v2, v0}, Lcom/android/camera/SnapboothCustomize;->setBackground(Z)V

    .line 1241
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mToast:Lcom/android/camera/rotate/RotateToast;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1243
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    .line 1244
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateToast;->updateOrientation(I)V

    .line 1245
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast;->show()V

    .line 1249
    :cond_6
    invoke-direct {p0, p1, v1}, Lcom/android/camera/HTCSnapbooth;->updateVirtualHwKeysOrientation(IZ)V

    .line 1250
    return-void

    .line 1221
    :cond_7
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mEffectPortraitPanel:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 1222
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mEffectPortraitPanel:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1223
    :cond_8
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCapturePortraitLayout:Landroid/view/View;

    if-eqz v2, :cond_9

    .line 1224
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCapturePortraitLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1225
    :cond_9
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownPortraitLayout:Landroid/view/View;

    if-eqz v2, :cond_a

    .line 1226
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownPortraitLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1227
    :cond_a
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitLayout:Landroid/view/View;

    if-eqz v2, :cond_b

    .line 1228
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1230
    :cond_b
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLandscapeLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;

    .line 1231
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLandscapeLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLayout:Landroid/view/View;

    .line 1233
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeLayout:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 1234
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMaxBrightness()V
    .locals 5

    .prologue
    .line 1379
    const-string v2, "HTCSnapbooth"

    const-string v3, "setMaxBrightness()"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd hh:mm:ss SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1381
    .local v1, mDateFormat:Ljava/text/SimpleDateFormat;
    const-string v2, "########## HtcSettingsReceiver ##########"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(ms) onReceive-start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1383
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings.request.BRIGHTNESS_MAX"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1384
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCSnapbooth;->sendBroadcast(Landroid/content/Intent;)V

    .line 1385
    return-void
.end method

.method private setOldBrightness()V
    .locals 5

    .prologue
    .line 1392
    const-string v2, "HTCSnapbooth"

    const-string v3, "setOldBrightness()"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd hh:mm:ss SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1394
    .local v1, mDateFormat:Ljava/text/SimpleDateFormat;
    const-string v2, "########## HtcSettingsReceiver ##########"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(ms) onReceive-start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1396
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings.request.BRIGHTNESS_NORMAL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1397
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCSnapbooth;->sendBroadcast(Landroid/content/Intent;)V

    .line 1398
    return-void
.end method

.method private setupUIElements()V
    .locals 3

    .prologue
    .line 959
    const-string v1, "HTCSnapbooth"

    const-string v2, "setupUIElements() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    new-instance v0, Lcom/android/camera/HTCSnapbooth$6;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCSnapbooth$6;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    .line 978
    .local v0, onClickListener:Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLandscapeBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 979
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCapturePortraitBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 981
    const-string v1, "HTCSnapbooth"

    const-string v2, "setupUIElements() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    return-void
.end method

.method private showCaptureUI()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1083
    iget v1, p0, Lcom/android/camera/HTCSnapbooth;->mLastOrientation:I

    invoke-static {v1, v2}, Lcom/android/camera/rotate/OrientationConfig;->mapDrgreeToUIOrientationEx(IZ)I

    move-result v0

    .line 1086
    .local v0, orientation:I
    iget-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsMultiShutter:Z

    if-eqz v1, :cond_0

    .line 1088
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v1}, Lcom/android/camera/SnapboothCustomize;->disableCountBubbles()V

    .line 1089
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1090
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1094
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureCancelable:Z

    .line 1097
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    iget-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureCancelable:Z

    invoke-virtual {v1, v2}, Lcom/android/camera/SnapboothCustomize;->switchShutterBtn(Z)V

    .line 1100
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountdownLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1101
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v1, v0}, Lcom/android/camera/SnapboothCustomize;->disableCountdowns(I)V

    .line 1104
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->slideInShutterBar()V

    .line 1107
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->slideInEffectBar()V

    .line 1110
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/SnapboothCustomize;->enableGalleryButton(Z)V

    .line 1111
    return-void
.end method

.method private showReviewScreen(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "reviewImage"
    .parameter "thumbnail"

    .prologue
    const v1, 0x3f8ccccd

    const/high16 v6, 0x3f00

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 1768
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->getFreezeOrientation()I

    move-result v3

    invoke-static {v3, v11}, Lcom/android/camera/rotate/OrientationConfig;->mapDrgreeToUIOrientationEx(IZ)I

    move-result v9

    .line 1769
    .local v9, freezeUIOrientation:I
    if-eq v9, v5, :cond_0

    const/4 v3, 0x3

    if-ne v9, v3, :cond_3

    :cond_0
    move v10, v5

    .line 1772
    .local v10, isLandscape:Z
    :goto_0
    iput-boolean v5, p0, Lcom/android/camera/HTCSnapbooth;->mIsReviewScreenVisible:Z

    .line 1773
    iput-boolean v11, p0, Lcom/android/camera/HTCSnapbooth;->mIsReviewAnimationCompleted:Z

    .line 1776
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v3, v10}, Lcom/android/camera/SnapboothCustomize;->setReviewImageBounds(Z)V

    .line 1777
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v3, v10}, Lcom/android/camera/SnapboothCustomize;->setReviewButtonBounds(Z)V

    .line 1780
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v3, v10, v11}, Lcom/android/camera/SnapboothCustomize;->showViewfinderCover(ZZ)V

    .line 1783
    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImage:Landroid/graphics/Bitmap;

    .line 1784
    iput-object p2, p0, Lcom/android/camera/HTCSnapbooth;->mReviewThumbnail:Landroid/graphics/Bitmap;

    .line 1785
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->isRequestSquare()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1787
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v3, v10, v5}, Lcom/android/camera/SnapboothCustomize;->setReviewImageShadow(ZZ)V

    .line 1793
    :goto_1
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1794
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImageContainer:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1795
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1796
    .local v0, animation:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v3, 0x320

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1797
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3f4ccccd

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1798
    new-instance v1, Lcom/android/camera/HTCSnapbooth$14;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCSnapbooth$14;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1812
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewImageContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1815
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtons:[Landroid/widget/Button;

    aget-object v1, v1, v11

    new-instance v3, Lcom/android/camera/HTCSnapbooth$15;

    invoke-direct {v3, p0, v9}, Lcom/android/camera/HTCSnapbooth$15;-><init>(Lcom/android/camera/HTCSnapbooth;I)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1831
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtons:[Landroid/widget/Button;

    aget-object v1, v1, v5

    new-instance v3, Lcom/android/camera/HTCSnapbooth$16;

    invoke-direct {v3, p0, v9}, Lcom/android/camera/HTCSnapbooth$16;-><init>(Lcom/android/camera/HTCSnapbooth;I)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1849
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtonsPanel:Lcom/android/camera/rotate/RotateRelativeLayout;

    rem-int/lit8 v3, v9, 0x2

    invoke-virtual {v1, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    .line 1850
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mReviewScreenButtonsPanel:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v11}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    .line 1853
    iget-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsMultiShutter:Z

    if-eqz v1, :cond_1

    .line 1855
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLandscapeLayout:Landroid/view/View;

    const/4 v3, 0x0

    const/16 v4, 0x190

    invoke-static {v1, v2, v3, v11, v4}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    .line 1856
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v1}, Lcom/android/camera/SnapboothCustomize;->disableCountBubbles()V

    .line 1857
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCountBubbleLandscapeLayout:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1860
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1863
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    const/4 v3, 0x2

    new-array v8, v3, [Landroid/graphics/Bitmap;

    aput-object p1, v8, v11

    aput-object p2, v8, v5

    const-wide/16 v6, 0x7d0

    move v3, v11

    move v4, v11

    move-object v5, v8

    invoke-static/range {v1 .. v7}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    .line 1865
    :cond_2
    return-void

    .end local v0           #animation:Landroid/view/animation/ScaleAnimation;
    .end local v10           #isLandscape:Z
    :cond_3
    move v10, v11

    .line 1769
    goto/16 :goto_0

    .line 1791
    .restart local v10       #isLandscape:Z
    :cond_4
    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v3, v10, v11}, Lcom/android/camera/SnapboothCustomize;->setReviewImageShadow(ZZ)V

    goto/16 :goto_1
.end method

.method private showShareImageChooser(I)V
    .locals 4
    .parameter "freezeUIOrientation"

    .prologue
    .line 1517
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 1562
    :goto_0
    return-void

    .line 1521
    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1526
    .local v0, shareMediaInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/MediaInfo;>;"
    new-instance v1, Lcom/android/camera/MediaInfo;

    invoke-static {p0}, Lcom/android/camera/SnapboothFileManager;->getLastContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "image/jpeg"

    invoke-direct {v1, v2, v3}, Lcom/android/camera/MediaInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1527
    const-string v1, "snapbooth_last_share"

    invoke-static {p0, v0, v1}, Lcom/android/camera/share/MediaShareDialogBuilder;->create(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Lcom/android/camera/rotate/RotateDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    .line 1528
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    if-nez v1, :cond_1

    .line 1530
    const-string v1, "HTCSnapbooth"

    const-string v2, "showShareImageChooser() - mCurrentAlertDialog == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1533
    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    check-cast v1, Lcom/android/camera/rotate/RotateDialog;

    rem-int/lit8 v2, p1, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateDialog;->setOrientation(I)V

    .line 1534
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mAlertDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1535
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/android/camera/HTCSnapbooth$9;

    invoke-direct {v2, p0}, Lcom/android/camera/HTCSnapbooth$9;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1546
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/android/camera/HTCSnapbooth$10;

    invoke-direct {v2, p0}, Lcom/android/camera/HTCSnapbooth$10;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1560
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsShareDialogCanceled:Z

    .line 1561
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private showStorageToast(IZ)V
    .locals 2
    .parameter "storageState"
    .parameter "cancelCapture"

    .prologue
    .line 2122
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2134
    :goto_0
    return-void

    .line 2124
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2127
    :pswitch_0
    if-eqz p2, :cond_1

    .line 2128
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->cancelCapture()V

    .line 2129
    :cond_1
    const v0, 0x7f0a0169

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCSnapbooth;->showToast(ILjava/lang/String;)V

    goto :goto_0

    .line 2124
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private showToast(ILjava/lang/String;)V
    .locals 3
    .parameter "resId"
    .parameter "args"

    .prologue
    .line 2141
    invoke-virtual {p0, p1}, Lcom/android/camera/HTCSnapbooth;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2142
    .local v0, text:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 2143
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2144
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/HTCSnapbooth;->showToast(Ljava/lang/String;)V

    .line 2145
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mToast:Lcom/android/camera/rotate/RotateToast;

    if-nez v0, :cond_0

    .line 2149
    const v0, 0x186a0

    invoke-static {p0, p1, v0}, Lcom/android/camera/rotate/RotateToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/camera/rotate/RotateToast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mToast:Lcom/android/camera/rotate/RotateToast;

    .line 2155
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateToast;->updateOrientation(I)V

    .line 2156
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast;->show()V

    .line 2157
    return-void

    .line 2152
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    .line 2153
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateToast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private slideInEffectBar()V
    .locals 1

    .prologue
    .line 1458
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/HTCSnapbooth;->slideInEffectBar(I)V

    .line 1459
    return-void
.end method

.method private slideInEffectBar(I)V
    .locals 8
    .parameter "orientation"

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 1462
    if-ne p1, v7, :cond_1

    .line 1463
    .local v7, isLandscape:Z
    :goto_0
    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mEffectLandscapePanel:Landroid/view/View;

    .line 1465
    .local v0, bar:Landroid/view/View;
    :goto_1
    if-eqz v0, :cond_4

    .line 1467
    if-eqz v7, :cond_3

    :goto_2
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x190

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideIn(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    move-result-object v6

    .line 1468
    .local v6, animation:Landroid/view/animation/Animation;
    new-instance v1, Lcom/android/camera/HTCSnapbooth$8;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCSnapbooth$8;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    invoke-virtual {v6, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1488
    .end local v6           #animation:Landroid/view/animation/Animation;
    :cond_0
    :goto_3
    return-void

    .end local v0           #bar:Landroid/view/View;
    .end local v7           #isLandscape:Z
    :cond_1
    move v7, v1

    .line 1462
    goto :goto_0

    .line 1463
    .restart local v7       #isLandscape:Z
    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mEffectPortraitPanel:Landroid/view/View;

    goto :goto_1

    .line 1467
    .restart local v0       #bar:Landroid/view/View;
    :cond_3
    const/4 v1, 0x3

    goto :goto_2

    .line 1485
    :cond_4
    iget-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mIsPreviewStarted:Z

    if-eqz v2, :cond_0

    .line 1486
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v2, v1}, Lcom/android/camera/SnapboothCustomize;->showPreviewCover(Z)V

    goto :goto_3
.end method

.method private slideInShutterBar()V
    .locals 7

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1408
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x190

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideIn(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    move-result-object v6

    .line 1409
    .local v6, animation:Landroid/view/animation/Animation;
    new-instance v0, Lcom/android/camera/HTCSnapbooth$7;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCSnapbooth$7;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1423
    .end local v6           #animation:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private slideOutEffectBar()V
    .locals 1

    .prologue
    .line 1495
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/HTCSnapbooth;->slideOutEffectBar(I)V

    .line 1496
    return-void
.end method

.method private slideOutEffectBar(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    const-wide/16 v4, 0x190

    const-wide/16 v2, 0x0

    .line 1499
    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth;->isOrientationPortrait(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1501
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mEffectPortraitPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mEffectPortraitPanel:Landroid/view/View;

    const/4 v1, 0x3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideOut(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    .line 1509
    :cond_0
    :goto_0
    return-void

    .line 1506
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mEffectLandscapePanel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mEffectLandscapePanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideOut(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method private slideOutShutterBar()V
    .locals 6

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1433
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureLayout:Landroid/view/View;

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x190

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideOut(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    .line 1451
    :cond_0
    return-void
.end method

.method private unfreezeUIRotation()V
    .locals 2

    .prologue
    .line 2038
    iget v0, p0, Lcom/android/camera/HTCSnapbooth;->mLastOrientation:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/rotate/OrientationConfig;->mapDrgreeToUIOrientationEx(IZ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/HTCSnapbooth;->unfreezeUIRotation(I)V

    .line 2039
    return-void
.end method

.method private unfreezeUIRotation(I)V
    .locals 3
    .parameter "currentUIOrientation"

    .prologue
    const/4 v2, 0x0

    .line 2043
    iput-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mIsFreezeOrientation:Z

    .line 2044
    invoke-direct {p0, p1}, Lcom/android/camera/HTCSnapbooth;->onRotateChanged(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2046
    const-string v0, "HTCSnapbooth"

    const-string v1, "unfreezeUIRotation - UI rotated"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->closeCaptureUI()V

    .line 2048
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->slideInShutterBar()V

    .line 2049
    iput-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureCancelable:Z

    .line 2050
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v0, v2}, Lcom/android/camera/SnapboothCustomize;->switchShutterBtn(Z)V

    .line 2051
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothCustomize;->enableGalleryButton(Z)V

    .line 2058
    :goto_0
    iget v0, p0, Lcom/android/camera/HTCSnapbooth;->mLastOrientation:I

    iput v0, p0, Lcom/android/camera/HTCSnapbooth;->mFreezeOrientation:I

    .line 2061
    iput v2, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentShutterNum:I

    .line 2064
    iput-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mIsCapturing:Z

    .line 2065
    return-void

    .line 2055
    :cond_0
    const-string v0, "HTCSnapbooth"

    const-string v1, "unfreezeUIRotation - UI rotated"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->showCaptureUI()V

    goto :goto_0
.end method

.method private updateVirtualHwKeysOrientation(IZ)V
    .locals 4
    .parameter "orientation"
    .parameter "enabled"

    .prologue
    .line 839
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.content.intent.action.ORIENTATION_LIGHT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "package_name"

    const-string v3, "com.android.camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "manual"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "orientation"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 843
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCSnapbooth;->sendBroadcast(Landroid/content/Intent;)V

    .line 844
    return-void
.end method


# virtual methods
.method public PlaySound(I)V
    .locals 13
    .parameter "id"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 1265
    const-string v1, "HTCSnapbooth"

    const-string v2, "PlaySound() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 1276
    .local v0, player:Landroid/media/MediaPlayer;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 1277
    .local v7, afd:Landroid/content/res/AssetFileDescriptor;
    const-string v1, "HTCSnapbooth"

    const-string v2, "PlaySound() - set data source"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1280
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1282
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioStreamType:I

    .line 1283
    const-string v1, "HTCSnapbooth"

    const-string v2, "PlaySound() - StreamType : STREAM_ALARM"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    :goto_0
    iget v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1290
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1291
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1292
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1300
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 1301
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCSnapbooth;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioManager:Landroid/media/AudioManager;

    .line 1303
    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eq v1, v11, :cond_1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1307
    :cond_1
    const-string v1, "HTCSnapbooth"

    const-string v2, "Set stream volume"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/camera/HTCSnapbooth;->mAudioStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    .line 1311
    .local v6, MaxVolume:I
    iget v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioStreamType:I

    if-ne v1, v12, :cond_5

    .line 1313
    iget v1, p0, Lcom/android/camera/HTCSnapbooth;->mOriginalVolume_Alarm:I

    if-ne v1, v9, :cond_2

    .line 1315
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/camera/HTCSnapbooth;->mAudioStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCSnapbooth;->mOriginalVolume_Alarm:I

    .line 1316
    const-string v1, "HTCSnapbooth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOriginalVolume_Alarm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/HTCSnapbooth;->mOriginalVolume_Alarm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/camera/HTCSnapbooth;->mAudioStreamType:I

    invoke-direct {p0, v6}, Lcom/android/camera/HTCSnapbooth;->getAdjustedVolume(I)I

    move-result v3

    invoke-virtual {v1, v2, v3, v10}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1331
    .end local v6           #MaxVolume:I
    :cond_3
    invoke-virtual {v0, v10}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1332
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1334
    const-string v1, "HTCSnapbooth"

    const-string v2, "PlaySound() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    .end local v7           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_2
    return-void

    .line 1285
    .restart local v7       #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_4
    const/4 v1, 0x2

    :try_start_1
    iput v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioStreamType:I

    .line 1286
    const-string v1, "HTCSnapbooth"

    const-string v2, "PlaySound() - StreamType : STREAM_RING"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1294
    .end local v7           #afd:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v8

    .line 1295
    .local v8, ex:Ljava/lang/Exception;
    const-string v1, "HTCSnapbooth"

    const-string v2, "PlaySound failed"

    invoke-static {v1, v2, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1296
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    goto :goto_2

    .line 1321
    .end local v8           #ex:Ljava/lang/Exception;
    .restart local v6       #MaxVolume:I
    .restart local v7       #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_5
    iget v1, p0, Lcom/android/camera/HTCSnapbooth;->mOriginalVolume_Ring:I

    if-ne v1, v9, :cond_2

    .line 1323
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/camera/HTCSnapbooth;->mAudioStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCSnapbooth;->mOriginalVolume_Ring:I

    .line 1324
    const-string v1, "HTCSnapbooth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOriginalVolume_Ring = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/HTCSnapbooth;->mOriginalVolume_Ring:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getFreezeOrientation()I
    .locals 1

    .prologue
    .line 1158
    iget v0, p0, Lcom/android/camera/HTCSnapbooth;->mFreezeOrientation:I

    return v0
.end method

.method public getIntentManager()Lcom/android/camera/SnapboothIntentManager;
    .locals 1

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRequestName()Lcom/android/camera/IntentRequestName;
    .locals 2

    .prologue
    .line 2217
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    if-nez v0, :cond_0

    .line 2219
    const-string v0, "HTCSnapbooth"

    const-string v1, "getRequestName() - mIntentManager == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    const/4 v0, 0x0

    .line 2223
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    invoke-virtual {v0}, Lcom/android/camera/SnapboothIntentManager;->getRequestName()Lcom/android/camera/IntentRequestName;

    move-result-object v0

    goto :goto_0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public final isCapturing()Z
    .locals 1

    .prologue
    .line 2267
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsCapturing:Z

    return v0
.end method

.method public final isPreviewFrameArrived()Z
    .locals 1

    .prologue
    .line 2275
    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mIsPreviewFrameArrived:Z

    return v0
.end method

.method public isRequestName(Lcom/android/camera/IntentRequestName;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 2245
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    if-nez v1, :cond_1

    .line 2247
    const-string v1, "HTCSnapbooth"

    const-string v2, "isRequestName() - mIntentManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    invoke-virtual {v1}, Lcom/android/camera/SnapboothIntentManager;->getRequestName()Lcom/android/camera/IntentRequestName;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRequestSquare()Z
    .locals 1

    .prologue
    .line 2259
    sget-object v0, Lcom/android/camera/IntentRequestName;->Contacts:Lcom/android/camera/IntentRequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCSnapbooth;->isRequestName(Lcom/android/camera/IntentRequestName;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/IntentRequestName;->Square:Lcom/android/camera/IntentRequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCSnapbooth;->isRequestName(Lcom/android/camera/IntentRequestName;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceMode()Z
    .locals 2

    .prologue
    .line 2231
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    if-nez v0, :cond_0

    .line 2233
    const-string v0, "HTCSnapbooth"

    const-string v1, "isServiceMode() - mIntentManager == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    const/4 v0, 0x0

    .line 2237
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    invoke-virtual {v0}, Lcom/android/camera/SnapboothIntentManager;->isServiceMode()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 456
    const-string v1, "HTCSnapbooth"

    const-string v2, "onCreate() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 462
    iput-boolean v4, p0, Lcom/android/camera/HTCSnapbooth;->mOnCreateIsCalled:Z

    .line 465
    iput-boolean v4, p0, Lcom/android/camera/HTCSnapbooth;->mNeedInitThumbnail:Z

    .line 468
    new-instance v1, Lcom/android/camera/HTCSnapbooth$MainHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/HTCSnapbooth$MainHandler;-><init>(Lcom/android/camera/HTCSnapbooth;Lcom/android/camera/HTCSnapbooth$1;)V

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    .line 471
    new-instance v1, Lcom/android/camera/SnapboothThread;

    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/SnapboothThread;-><init>(Lcom/android/camera/HTCSnapbooth;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothThread:Lcom/android/camera/SnapboothThread;

    .line 472
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothThread:Lcom/android/camera/SnapboothThread;

    invoke-virtual {v1}, Lcom/android/camera/SnapboothThread;->start()V

    .line 473
    :goto_0
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothThread:Lcom/android/camera/SnapboothThread;

    invoke-virtual {v1}, Lcom/android/camera/SnapboothThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    .line 476
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 480
    :cond_0
    new-instance v1, Lcom/android/camera/SnapboothCustomize;

    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/SnapboothCustomize;-><init>(Lcom/android/camera/HTCSnapbooth;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    .line 483
    invoke-static {}, Lcom/android/camera/SnapboothCustomize;->getSnapbooth()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCSnapbooth;->setContentView(I)V

    .line 484
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v1}, Lcom/android/camera/SnapboothCustomize;->initPreviewSurface()Landroid/view/SurfaceView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceView:Landroid/view/SurfaceView;

    .line 485
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 486
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 487
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 490
    new-instance v1, Lcom/android/camera/SnapboothIntentManager;

    invoke-direct {v1}, Lcom/android/camera/SnapboothIntentManager;-><init>()V

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    .line 491
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/SnapboothIntentManager;->initManager(Landroid/content/Intent;)V

    .line 494
    new-instance v1, Lcom/android/camera/HTCSnapbooth$4;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCSnapbooth$4;-><init>(Lcom/android/camera/HTCSnapbooth;)V

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mAlertDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 512
    const-string v1, "pref_camera_switch"

    invoke-static {p0, v1, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    .line 515
    const-string v1, "pref_front_camera_mode"

    invoke-static {p0, v1, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    .line 518
    const-string v1, "pref_camera_effect"

    const-string v2, "none"

    invoke-static {p0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 521
    const/16 v1, 0x10e

    iput v1, p0, Lcom/android/camera/HTCSnapbooth;->mLastOrientation:I

    .line 522
    invoke-static {v4}, Lcom/android/camera/rotate/OrientationConfig;->setUIOrientation(I)V

    .line 525
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 527
    new-instance v1, Lcom/android/camera/HTCSnapbooth$5;

    invoke-direct {v1, p0, p0}, Lcom/android/camera/HTCSnapbooth$5;-><init>(Lcom/android/camera/HTCSnapbooth;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 551
    :cond_1
    sput-boolean v4, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    .line 553
    const-string v1, "HTCSnapbooth"

    const-string v2, "onCreate() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 782
    const-string v0, "HTCSnapbooth"

    const-string v1, "onDestroy() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 786
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothThread:Lcom/android/camera/SnapboothThread;

    invoke-virtual {v0}, Lcom/android/camera/SnapboothThread;->releaseSnapboothThread()V

    .line 787
    iput-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothThread:Lcom/android/camera/SnapboothThread;

    .line 788
    iput-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    .line 791
    iput-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mIntentManager:Lcom/android/camera/SnapboothIntentManager;

    .line 794
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 796
    const-string v0, "HTCSnapbooth"

    const-string v1, "onDestroy() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 2166
    sparse-switch p1, :sswitch_data_0

    .line 2201
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    :sswitch_0
    return v0

    .line 2169
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsReviewScreenVisible:Z

    if-eqz v1, :cond_3

    .line 2171
    iget-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsReviewAnimationCompleted:Z

    if-eqz v1, :cond_1

    .line 2173
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2174
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2176
    invoke-direct {p0, v0, v0}, Lcom/android/camera/HTCSnapbooth;->closeReviewScreen(ZZ)V

    goto :goto_1

    .line 2180
    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 2181
    invoke-direct {p0, v3, v3}, Lcom/android/camera/HTCSnapbooth;->closeReviewScreen(ZZ)V

    goto :goto_1

    .line 2189
    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 2190
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 2166
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 675
    const-string v1, "HTCSnapbooth"

    const-string v2, "onPause() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mStorageCardEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCSnapbooth;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 681
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 683
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 684
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentAlertDialog:Landroid/app/Dialog;

    .line 688
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/HTCSnapbooth;->mIsReviewScreenVisible:Z

    if-eqz v1, :cond_1

    .line 690
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 691
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->reCaptureForServiceMode()V

    .line 697
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v1, v4}, Lcom/android/camera/SnapboothCustomize;->showActivityCover(Z)V

    .line 700
    iput-boolean v4, p0, Lcom/android/camera/HTCSnapbooth;->mActivityOnPause:Z

    .line 703
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 704
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x1f

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 707
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->setOldBrightness()V

    .line 710
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->cancelCapture()V

    .line 713
    iput-boolean v3, p0, Lcom/android/camera/HTCSnapbooth;->mIsPreviewFrameArrived:Z

    .line 714
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 715
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    invoke-static {v1, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 718
    iget v1, p0, Lcom/android/camera/HTCSnapbooth;->mLastOrientation:I

    iput v1, p0, Lcom/android/camera/HTCSnapbooth;->mFreezeOrientation:I

    .line 721
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 724
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v1

    if-ne v1, v4, :cond_2

    .line 725
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 728
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.eas.intent.resumeSync"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 729
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.eas.extra.tag"

    const-string v2, "com.android.camera.HTCCamera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCSnapbooth;->sendBroadcast(Landroid/content/Intent;)V

    .line 733
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mToast:Lcom/android/camera/rotate/RotateToast;

    if-eqz v1, :cond_3

    .line 734
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    .line 737
    :cond_3
    invoke-direct {p0, v3, v3}, Lcom/android/camera/HTCSnapbooth;->updateVirtualHwKeysOrientation(IZ)V

    .line 740
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_4

    .line 741
    iget-object v1, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 744
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 746
    const-string v1, "HTCSnapbooth"

    const-string v2, "onPause() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    return-void

    .line 693
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    invoke-direct {p0, v3, v4}, Lcom/android/camera/HTCSnapbooth;->closeReviewScreen(ZZ)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 590
    const-string v2, "HTCSnapbooth"

    const-string v3, "onResume() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 595
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.eas.intent.pauseSync"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 596
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.htc.eas.extra.tag"

    const-string v3, "com.android.camera.HTCCamera"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    invoke-virtual {p0, v0}, Lcom/android/camera/HTCSnapbooth;->sendBroadcast(Landroid/content/Intent;)V

    .line 600
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->broadcastStopVoiceRecording()V

    .line 603
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isHalfPCB()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 604
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->broadcastStopFM()V

    .line 607
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mOnCreateIsCalled:Z

    if-nez v2, :cond_1

    .line 609
    iput-boolean v5, p0, Lcom/android/camera/HTCSnapbooth;->mNeedInitThumbnail:Z

    .line 610
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 614
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->initializeUILayout()V

    .line 617
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    if-nez v2, :cond_5

    .line 619
    invoke-static {v5}, Lcom/android/camera/rotate/OrientationConfig;->setUIOrientation(I)V

    .line 620
    invoke-direct {p0, v4}, Lcom/android/camera/HTCSnapbooth;->onRotateChanged(I)Z

    .line 629
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/HTCSnapbooth;->setMaxBrightness()V

    .line 632
    iput-boolean v4, p0, Lcom/android/camera/HTCSnapbooth;->mCaptureCancelable:Z

    .line 633
    iput-boolean v4, p0, Lcom/android/camera/HTCSnapbooth;->mActivityOnPause:Z

    .line 634
    iput-boolean v4, p0, Lcom/android/camera/HTCSnapbooth;->mOnCreateIsCalled:Z

    .line 637
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 640
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 641
    iget-boolean v2, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceCreated:Z

    if-eqz v2, :cond_2

    .line 642
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v4, v5, v4, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 645
    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 647
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mMainLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 648
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 649
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->enable()V

    .line 653
    :cond_3
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothCus:Lcom/android/camera/SnapboothCustomize;

    invoke-virtual {v2, v4}, Lcom/android/camera/SnapboothCustomize;->showActivityCover(Z)V

    .line 656
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 657
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 658
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 659
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 660
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 661
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 662
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 663
    iget-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mStorageCardEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/HTCSnapbooth;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 665
    invoke-static {}, Lcom/android/camera/DisplayDevice;->DisablePen()Z

    move-result v2

    if-ne v2, v5, :cond_4

    .line 666
    invoke-static {p0}, Lcom/android/camera/Util;->disableSketcher(Landroid/app/Activity;)V

    .line 667
    :cond_4
    return-void

    .line 624
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_5
    invoke-static {v4}, Lcom/android/camera/rotate/OrientationConfig;->setUIOrientation(I)V

    .line 625
    invoke-direct {p0, v5}, Lcom/android/camera/HTCSnapbooth;->onRotateChanged(I)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 563
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 564
    const-string v1, "HTCSnapbooth"

    const-string v2, "onStart() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 568
    .local v0, initOrientation:I
    if-eq v0, v3, :cond_0

    .line 569
    const/4 v0, 0x0

    .line 572
    :cond_0
    invoke-direct {p0, v0, v3}, Lcom/android/camera/HTCSnapbooth;->updateVirtualHwKeysOrientation(IZ)V

    .line 575
    invoke-virtual {p0, v3}, Lcom/android/camera/HTCSnapbooth;->setRequestedOrientation(I)V

    .line 578
    invoke-static {v0}, Lcom/android/camera/rotate/OrientationConfig;->mapUIOrientationToDegree(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCSnapbooth;->mLastOrientation:I

    .line 579
    invoke-static {v0}, Lcom/android/camera/rotate/OrientationConfig;->setUIOrientation(I)V

    .line 581
    const-string v1, "HTCSnapbooth"

    const-string v2, "onStart() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 755
    const-string v0, "HTCSnapbooth"

    const-string v1, "onStop() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 760
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeThumbnail:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryLandscapeThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitThumbnail:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mGalleryPortraitThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 765
    iput-object v2, p0, Lcom/android/camera/HTCSnapbooth;->mCurrentThumbnail:Landroid/graphics/Bitmap;

    .line 769
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCSnapbooth;->setRequestedOrientation(I)V

    .line 772
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 773
    const-string v0, "HTCSnapbooth"

    const-string v1, "onStop() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    return-void
.end method

.method public startAlbum()V
    .locals 5

    .prologue
    .line 2094
    sget-object v2, Lcom/android/camera/IntentRequestName;->Album:Lcom/android/camera/IntentRequestName;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCSnapbooth;->isRequestName(Lcom/android/camera/IntentRequestName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2096
    new-instance v2, Landroid/content/Intent;

    const-string v3, "FROM_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "preview_mode"

    const-string v4, "filmstrip"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2098
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/HTCSnapbooth;->setResult(ILandroid/content/Intent;)V

    .line 2099
    invoke-virtual {p0}, Lcom/android/camera/HTCSnapbooth;->finish()V

    .line 2115
    :goto_0
    return-void

    .line 2104
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.album.action.VIEW_SNAPBOOTH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "capture_mode"

    const-string v4, "camera"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2109
    .restart local v1       #intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/camera/HTCSnapbooth;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2111
    :catch_0
    move-exception v0

    .line 2113
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "HTCSnapbooth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start - Go to album after pressing filmstrip button : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 803
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 810
    const-string v0, "HTCSnapbooth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$$$$$ surfaceCreated $$$$$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iput-object p1, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 813
    iput-boolean v4, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceCreated:Z

    .line 815
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothThread:Lcom/android/camera/SnapboothThread;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mActivityOnPause:Z

    if-nez v0, :cond_0

    .line 817
    const-string v0, "HTCSnapbooth"

    const-string v1, "$$$$$ surfaceCreated $$$$$  start preview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSnapboothHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v3, v4, v3, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 822
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 829
    const-string v0, "HTCSnapbooth"

    const-string v1, "$$$$$ surfaceDestroyed $$$$$"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceCreated:Z

    .line 831
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCSnapbooth;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 832
    return-void
.end method
