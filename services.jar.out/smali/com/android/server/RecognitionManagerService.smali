.class public Lcom/android/server/RecognitionManagerService;
.super Landroid/os/Binder;
.source "RecognitionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RecognitionManagerService$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final HTC_VDSTRING:Ljava/lang/String; = "com.htc.android.voicedictation/.VoiceDictationService"

.field static final TAG:Ljava/lang/String; = "RecognitionManagerService"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mMonitor:Lcom/android/server/RecognitionManagerService$MyPackageMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/RecognitionManagerService;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;-><init>(Lcom/android/server/RecognitionManagerService;)V

    iput-object v0, p0, Lcom/android/server/RecognitionManagerService;->mMonitor:Lcom/android/server/RecognitionManagerService$MyPackageMonitor;

    .line 68
    iget-object v0, p0, Lcom/android/server/RecognitionManagerService;->mMonitor:Lcom/android/server/RecognitionManagerService$MyPackageMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/RecognitionManagerService$MyPackageMonitor;->register(Landroid/content/Context;Z)V

    .line 69
    return-void
.end method


# virtual methods
.method findAvailRecognizer(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 11
    .parameter "prefPackage"

    .prologue
    const/4 v10, 0x0

    .line 89
    iget-object v7, p0, Lcom/android/server/RecognitionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.speech.RecognitionService"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 92
    .local v0, available:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 94
    .local v3, numAvailable:I
    if-nez v3, :cond_0

    .line 95
    const-string v7, "RecognitionManagerService"

    const-string v8, "no available voice recognition services found"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v7, 0x0

    .line 120
    :goto_0
    return-object v7

    .line 98
    :cond_0
    if-eqz p1, :cond_2

    .line 99
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 100
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v6, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 101
    .local v6, serviceInfo:Landroid/content/pm/ServiceInfo;
    iget-object v7, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 102
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 106
    .end local v2           #i:I
    .end local v6           #serviceInfo:Landroid/content/pm/ServiceInfo;
    :cond_2
    const/4 v1, 0x0

    .line 107
    .local v1, choice:I
    const/4 v7, 0x1

    if-le v3, v7, :cond_3

    .line 108
    const-string v7, "RecognitionManagerService"

    const-string v8, "more than one voice recognition service found, picking first"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 111
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, recognizerComponent:Ljava/lang/String;
    const-string v7, "com.htc.android.voicedictation/.VoiceDictationService"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 115
    const/4 v1, 0x1

    .line 119
    .end local v4           #recognizerComponent:Ljava/lang/String;
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v6, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 120
    .restart local v6       #serviceInfo:Landroid/content/pm/ServiceInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method getCurRecognizer()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/server/RecognitionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_recognition_service"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, curRecognizer:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const/4 v1, 0x0

    .line 131
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0
.end method

.method setCurRecognizer(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "comp"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/RecognitionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_recognition_service"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 138
    return-void

    .line 135
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public systemReady()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/android/server/RecognitionManagerService;->getCurRecognizer()Landroid/content/ComponentName;

    move-result-object v0

    .line 73
    .local v0, comp:Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/android/server/RecognitionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0, v4}, Lcom/android/server/RecognitionManagerService;->setCurRecognizer(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 81
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/server/RecognitionManagerService;->findAvailRecognizer(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/server/RecognitionManagerService;->setCurRecognizer(Landroid/content/ComponentName;)V

    goto :goto_0
.end method
