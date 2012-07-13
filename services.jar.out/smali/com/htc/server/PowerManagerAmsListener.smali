.class public Lcom/htc/server/PowerManagerAmsListener;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "PowerManagerAmsListener.java"


# instance fields
.field private final APP_DIM_TIMEOUT:I

.field private final TAG:Ljava/lang/String;

.field private mAppDimTimeoutMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIPowerManager:Landroid/os/IPowerManager;

.field private mPowerSaverEnabled:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    .line 19
    const-string v0, "PowerManagerAmsListener"

    iput-object v0, p0, Lcom/htc/server/PowerManagerAmsListener;->TAG:Ljava/lang/String;

    .line 22
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/htc/server/PowerManagerAmsListener;->APP_DIM_TIMEOUT:I

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/server/PowerManagerAmsListener;->mPowerSaverEnabled:Z

    .line 69
    new-instance v0, Lcom/htc/server/PowerManagerAmsListener$1;

    invoke-direct {v0, p0}, Lcom/htc/server/PowerManagerAmsListener$1;-><init>(Lcom/htc/server/PowerManagerAmsListener;)V

    iput-object v0, p0, Lcom/htc/server/PowerManagerAmsListener;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/htc/server/PowerManagerAmsListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/htc/server/PowerManagerAmsListener;->mPowerSaverEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/server/PowerManagerAmsListener;)Landroid/os/IPowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/server/PowerManagerAmsListener;->mIPowerManager:Landroid/os/IPowerManager;

    return-object v0
.end method

.method private getAppScreenDimTimeout(Ljava/lang/String;)I
    .locals 4
    .parameter "appName"

    .prologue
    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/htc/server/PowerManagerAmsListener;->mAppDimTimeoutMapping:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/htc/server/PowerManagerAmsListener;->mAppDimTimeoutMapping:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 123
    :goto_0
    return v1

    .line 119
    :cond_0
    const/16 v1, 0x3a98

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PowerManagerAmsListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppScreenDimTimeout: [EXCEPTION]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onFinishBooting()V
    .locals 3

    .prologue
    .line 61
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/server/PowerManagerAmsListener;->mIPowerManager:Landroid/os/IPowerManager;

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.server.htcpowersaver.action.ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v1, "com.android.server.htcpowersaver.action.OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/htc/server/PowerManagerAmsListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/server/PowerManagerAmsListener;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void
.end method

.method public onHandleTopAppChanged(Lcom/android/server/am/HtcWrapProcessRecord;)V
    .locals 5
    .parameter "process"

    .prologue
    .line 92
    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/HtcWrapProcessRecord;->processName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/server/PowerManagerAmsListener;->getAppScreenDimTimeout(Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, appScreenDimTimeout:I
    iget-boolean v2, p0, Lcom/htc/server/PowerManagerAmsListener;->mPowerSaverEnabled:Z

    if-eqz v2, :cond_0

    .line 107
    :try_start_0
    iget-object v2, p0, Lcom/htc/server/PowerManagerAmsListener;->mIPowerManager:Landroid/os/IPowerManager;

    invoke-interface {v2, v0}, Landroid/os/IPowerManager;->setAppScreenDimTimeout(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "PowerManagerAmsListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHandleTopAppChanged: [EXCEPTION]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 4
    .parameter "service"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 36
    iput-object p1, p0, Lcom/htc/server/PowerManagerAmsListener;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 37
    iput-object p2, p0, Lcom/htc/server/PowerManagerAmsListener;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/server/PowerManagerAmsListener;->mAppDimTimeoutMapping:Ljava/util/Map;

    .line 40
    iget-object v0, p0, Lcom/htc/server/PowerManagerAmsListener;->mAppDimTimeoutMapping:Ljava/util/Map;

    const-string v1, "com.android.browser"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/htc/server/PowerManagerAmsListener;->mAppDimTimeoutMapping:Ljava/util/Map;

    const-string v1, "com.htc.friendstream"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/htc/server/PowerManagerAmsListener;->mAppDimTimeoutMapping:Ljava/util/Map;

    const-string v1, "com.htc.android.mail"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/htc/server/PowerManagerAmsListener;->mAppDimTimeoutMapping:Ljava/util/Map;

    const-string v1, "com.htc.ereader"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/htc/server/PowerManagerAmsListener;->mAppDimTimeoutMapping:Ljava/util/Map;

    const-string v1, "com.sdgtl.watch"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/htc/server/PowerManagerAmsListener;->mAppDimTimeoutMapping:Ljava/util/Map;

    const-string v1, "com.htc.Weather"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/htc/server/PowerManagerAmsListener;->mAppDimTimeoutMapping:Ljava/util/Map;

    const-string v1, "com.htc.android.Stock"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/htc/server/PowerManagerAmsListener;->mAppDimTimeoutMapping:Ljava/util/Map;

    const-string v1, "com.htc.laputa"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/htc/server/PowerManagerAmsListener;->mAppDimTimeoutMapping:Ljava/util/Map;

    const-string v1, "com.adobe.reader"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/htc/server/PowerManagerAmsListener;->mAppDimTimeoutMapping:Ljava/util/Map;

    const-string v1, "com.infraware.docmaster"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/htc/server/PowerManagerAmsListener;->mAppDimTimeoutMapping:Ljava/util/Map;

    const-string v1, "com.htc.store"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/htc/server/PowerManagerAmsListener;->mAppDimTimeoutMapping:Ljava/util/Map;

    const-string v1, "com.google.android.apps.maps"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/htc/server/PowerManagerAmsListener;->mAppDimTimeoutMapping:Ljava/util/Map;

    const-string v1, "com.google.android.youtube"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/htc/server/PowerManagerAmsListener;->mAppDimTimeoutMapping:Ljava/util/Map;

    const-string v1, "com.google.android.gm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/htc/server/PowerManagerAmsListener;->mAppDimTimeoutMapping:Ljava/util/Map;

    const-string v1, "com.google.android.apps.genie.geniewidget"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/htc/server/PowerManagerAmsListener;->mAppDimTimeoutMapping:Ljava/util/Map;

    const-string v1, "com.android.vending"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method
