.class public Lcom/android/server/WifiService;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WifiService$18;,
        Lcom/android/server/WifiService$WifiHandler;,
        Lcom/android/server/WifiService$NotificationEnabledSettingObserver;,
        Lcom/android/server/WifiService$Multicaster;,
        Lcom/android/server/WifiService$DeathRecipient;,
        Lcom/android/server/WifiService$LockList;,
        Lcom/android/server/WifiService$WifiLock;,
        Lcom/android/server/WifiService$WifiStateMachineHandler;,
        Lcom/android/server/WifiService$AsyncServiceHandler;
    }
.end annotation


# static fields
.field private static final ACTION_CW_EXPIRED_REREGISTER:Ljava/lang/String; = "com.android.server.WifiManager.action.CW_EXPIRED_REREGISTER"

.field private static final ACTION_DEVICE_IDLE:Ljava/lang/String; = "com.android.server.WifiManager.action.DEVICE_IDLE"

.field private static final ACTION_UPDATE_WIFI_STATE:Ljava/lang/String; = "com.android.server.WifiManager.action.UPDATE_WIFI_STATE"

.field private static final ACTION_WIFI_AP_CONN_REQ_TIMEOUT:Ljava/lang/String; = "com.android.server.HotspotManager.action.WIFI_AP_CONN_REQ_TIMEOUT"

.field private static final AP_MODE:I = 0x1

.field private static final BROADCAST_INTENT_ACTION_CUSTOMIZATION:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_CHANGE"

.field private static final DBG:Z = true

.field private static final DEFAULT_IDLE_MS:J = 0xdbba0L

.field private static final DRIVER_PHONE_CALL_COME:I = 0x1

.field private static final DRIVER_PHONE_CALL_END:I = 0x0

.field private static final DRIVER_POWER_MODE_BROWSER_ACTIVE:I = 0xb

.field private static final DRIVER_POWER_MODE_BROWSER_AUTO:I = 0xa

.field private static final DRIVER_POWER_MODE_FOTA_DOWNLOADING_START:I = 0x1f

.field private static final DRIVER_POWER_MODE_FOTA_DOWNLOADING_STOP:I = 0x1e

.field private static final DRIVER_WIFI_BEST_PERFORMANCE_DISABLE:I = 0x14

.field private static final DRIVER_WIFI_BEST_PERFORMANCE_ENABLE:I = 0x15

.field private static final ICON_NETWORKS_AVAILABLE:I = 0x10804f4

.field private static final IDLE_REQUEST:I = 0x0

.field private static final KINETO_GANLITE_INTENT_ACTION:Ljava/lang/String; = "com.android.kineto.GanState"

.field private static final MESSAGE_CHECK_CW_STATUS:I = 0x64

.field private static final NUM_SCANS_BEFORE_ACTUALLY_SCANNING:I = 0x3

.field private static final POLL_TRAFFIC_STATS_INTERVAL_MSECS:I = 0x3e8

.field private static final STA_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field private static final UPDATE_STATE_REQUEST:I = 0x1

.field private static final WIFI_AP_IDLE:Ljava/lang/String; = "com.android.server.HotspotManager.action.DEVICE_IDLE"

.field private static final WIFI_DISABLED:I = 0x0

.field private static final WIFI_DISABLED_AIRPLANE_ON:I = 0x3

.field private static final WIFI_ENABLED:I = 0x1

.field private static final WIFI_ENABLED_AIRPLANE_OVERRIDE:I = 0x2

.field private static mWimaxConnected:Z


# instance fields
.field private final NOTIFICATION_REPEAT_DELAY_MS:J

.field private mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

.field private mAutoEnableWifiApInDockMode:Z

.field private mAutoEnableWifiInDockMode:Z

.field private final mBackgroundScanSupported:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mCWExpiredReregisterIntent:Landroid/app/PendingIntent;

.field private mCWRegisteredWhenScreenOff:Z

.field private mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/AsyncChannel;",
            ">;"
        }
    .end annotation
.end field

.field mCm:Landroid/net/ConnectivityManager;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mContext:Landroid/content/Context;

.field private mCwExpiredTime:J

.field private mDataActivity:I

.field private mDeviceIdle:Z

.field private mEmergencyCallbackMode:Z

.field private mEmergencyModeChanged:Z

.field private mEnableImeiPassword:Z

.field private mEnableImeiSsid:Z

.field private mEnableMHS:Z

.field private mEnableMdnPassword:Z

.field private mEnableMhsFeature:Z

.field private mEnableTrafficStatsPoll:Z

.field private mEnablingWifiInterrupted:Z

.field private mForbiddenByExchangePolicy:Z

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mHTCWirelessInSleepTime:Z

.field private mHTCWirelessSleepEndTimeMillis:J

.field private mHTCWirelessSleepEndToStartMillis:J

.field private mHTCWirelessSleepModeEnabled:Z

.field private mHTCWirelessSleepStartTimeMillis:J

.field private mHTCWirelessSleepStartToEndMillis:J

.field private mIdleIntent:Landroid/app/PendingIntent;

.field private mIfWiFiRegBastReceiver:Z

.field private mInDockMode:Z

.field private mInterfaceName:Ljava/lang/String;

.field private mIsReceiverRegistered:Z

.field private final mLocks:Lcom/android/server/WifiService$LockList;

.field private final mMhsReceiver:Landroid/content/BroadcastReceiver;

.field private mMhsStatus:I

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WifiService$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationEnabled:Z

.field private mNotificationEnabledSettingObserver:Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

.field private mNotificationRepeatTime:J

.field private mNotificationShown:Z

.field private mNumScansSinceNetworkStateChange:I

.field private mPersistMHS:Z

.field private mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPluggedType:I

.field private mPreEmergencyModeChanged:Z

.field private mProcessingMHS:Z

.field private mQuickBootPowerOffIntentReceived:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRxPkts:J

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field private mScreenOff:Z

.field private mScreenOffSaved:Z

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mTrafficStatsPollToken:I

.field private mTxPkts:J

.field private mUpdateStateIntent:Landroid/app/PendingIntent;

.field private mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWifiApMhsPermission:Z

.field private mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

.field private mWifiEnabled:Z

.field private mWifiEnabledByDock:Z

.field private final mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

.field private final mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

.field private mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiStateMachineHandler:Lcom/android/server/WifiService$WifiStateMachineHandler;

.field private mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

.field private mpreDeviceIdle:Z

.field private msenseVersion:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/WifiService;->mWimaxConnected:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/16 v13, 0xd8

    const/16 v12, 0xa8

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 583
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    .line 146
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mScreenOffSaved:Z

    .line 149
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mpreDeviceIdle:Z

    .line 150
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    .line 151
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mEmergencyModeChanged:Z

    .line 152
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mPreEmergencyModeChanged:Z

    .line 158
    new-instance v6, Lcom/android/server/WifiService$LockList;

    invoke-direct {v6, p0, v11}, Lcom/android/server/WifiService$LockList;-><init>(Lcom/android/server/WifiService;Lcom/android/server/WifiService$1;)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    .line 177
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepModeEnabled:Z

    .line 178
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mHTCWirelessInSleepTime:Z

    .line 181
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mQuickBootPowerOffIntentReceived:Z

    .line 185
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 188
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mForbiddenByExchangePolicy:Z

    .line 193
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    .line 194
    iput-boolean v10, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    .line 195
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mInDockMode:Z

    .line 199
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    .line 234
    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v6, p0, Lcom/android/server/WifiService;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 237
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    .line 244
    iput-object v11, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    .line 245
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z

    .line 246
    iput v9, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    .line 255
    const-wide/16 v6, 0xe10

    iput-wide v6, p0, Lcom/android/server/WifiService;->mCwExpiredTime:J

    .line 290
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/WifiService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 303
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mCWRegisteredWhenScreenOff:Z

    .line 306
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 308
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 312
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mIsReceiverRegistered:Z

    .line 315
    new-instance v6, Landroid/net/NetworkInfo;

    const-string v7, "WIFI"

    const-string v8, ""

    invoke-direct {v6, v10, v9, v7, v8}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 370
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mEnableMHS:Z

    .line 371
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    .line 372
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mPersistMHS:Z

    .line 373
    iput-object v11, p0, Lcom/android/server/WifiService;->mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

    .line 374
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    .line 375
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    .line 376
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/WifiService;->mMhsStatus:I

    .line 387
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/WifiService;->mClients:Ljava/util/List;

    .line 391
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mEnableImeiPassword:Z

    .line 392
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mEnableImeiSsid:Z

    .line 393
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mEnableMdnPassword:Z

    .line 395
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mWifiEnabledByDock:Z

    .line 396
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/WifiService;->msenseVersion:F

    .line 580
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6}, Landroid/os/WorkSource;-><init>()V

    iput-object v6, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 1954
    new-instance v6, Lcom/android/server/WifiService$16;

    invoke-direct {v6, p0}, Lcom/android/server/WifiService$16;-><init>(Lcom/android/server/WifiService;)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    .line 1979
    new-instance v6, Lcom/android/server/WifiService$17;

    invoke-direct {v6, p0}, Lcom/android/server/WifiService$17;-><init>(Lcom/android/server/WifiService;)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 584
    iput-object p1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    .line 586
    const-string v6, "wifi.interface"

    const-string v7, "wlan0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    .line 588
    new-instance v6, Landroid/net/wifi/WifiStateMachine;

    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 589
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, v10}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 590
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 593
    :try_start_0
    sget-object v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/android/server/WifiService;->msenseVersion:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :goto_0
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iput-object v6, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 597
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-direct {v2, v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 598
    .local v2, idleIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    .line 600
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.server.WifiManager.action.UPDATE_WIFI_STATE"

    invoke-direct {v4, v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 601
    .local v4, updateStateIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/WifiService;->mUpdateStateIntent:Landroid/app/PendingIntent;

    .line 604
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.android.server.WifiManager.action.CW_EXPIRED_REREGISTER"

    invoke-direct {v0, v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 605
    .local v0, cwExpiredReregisterIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/WifiService;->mCWExpiredReregisterIntent:Landroid/app/PendingIntent;

    .line 616
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v6, v12, :cond_1

    :cond_0
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 617
    :cond_1
    iput-boolean v10, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    .line 618
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 619
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v6, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 620
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/WifiService;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 622
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    :cond_2
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x9b

    if-eq v6, v7, :cond_3

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x40

    if-ne v6, v7, :cond_b

    .line 623
    :cond_3
    iput-boolean v10, p0, Lcom/android/server/WifiService;->mEnableImeiPassword:Z

    .line 624
    iput-boolean v10, p0, Lcom/android/server/WifiService;->mEnableImeiSsid:Z

    .line 630
    :cond_4
    :goto_1
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "WifiService"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 631
    .local v5, wifiThread:Landroid/os/HandlerThread;
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 633
    new-instance v6, Lcom/android/server/WifiService$WifiHandler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/server/WifiService$WifiHandler;-><init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    .line 635
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$1;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$1;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 677
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 678
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 679
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 680
    const-string v6, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 683
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 686
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$2;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$2;-><init>(Lcom/android/server/WifiService;)V

    invoke-virtual {v6, v7, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 724
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v6, v13, :cond_5

    .line 725
    const-string v6, "WifiService"

    const-string v7, "[C+W] Add ACTION_CW_REGISTRATION_STATE_CHANGED receiver"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$3;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$3;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 758
    const-string v6, "WifiService"

    const-string v7, "[C+W] Add ACTION_MOBILEDATA_MODE_CHANGED receiver"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$4;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$4;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.MOBILEDATA_MODE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 783
    :cond_5
    iget-boolean v6, p0, Lcom/android/server/WifiService;->mEnableMdnPassword:Z

    if-nez v6, :cond_6

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v6, v13, :cond_7

    .line 784
    :cond_6
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$5;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$5;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 849
    :cond_7
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$6;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$6;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.QUICKBOOT_POWERON"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 879
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$7;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$7;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 915
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$8;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$8;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.android.kineto.GanState"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 959
    invoke-direct {p0}, Lcom/android/server/WifiService;->isExchangePolicyEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 960
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$9;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$9;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.app.admin.intent.ALLOW_WIFI_CHANGE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 982
    :cond_8
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$10;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$10;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 994
    iget-boolean v6, p0, Lcom/android/server/WifiService;->mEnableMdnPassword:Z

    if-eqz v6, :cond_c

    .line 995
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$11;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$11;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1033
    :cond_9
    :goto_2
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v6, v12, :cond_d

    iget v6, p0, Lcom/android/server/WifiService;->msenseVersion:F

    const/high16 v7, 0x4040

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_d

    .line 1034
    const-string v6, "WifiService"

    const-string v7, "DockWifi - Add ACTION_DOCK_EVENT (wifi) receiver"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$13;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$13;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.DOCK_EVENT"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1077
    :goto_3
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v6, :cond_a

    .line 1078
    const-string v6, "WifiService"

    const-string v7, "AKA: HTC_EAP_AKA_flag is true"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$15;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$15;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1100
    :cond_a
    new-instance v6, Lcom/android/server/WifiService$AsyncServiceHandler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/server/WifiService$AsyncServiceHandler;-><init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    .line 1101
    new-instance v6, Lcom/android/server/WifiService$WifiStateMachineHandler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/server/WifiService$WifiStateMachineHandler;-><init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachineHandler:Lcom/android/server/WifiService$WifiStateMachineHandler;

    .line 1104
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_networks_available_repeat_delay"

    const/16 v8, 0x384

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/WifiService;->NOTIFICATION_REPEAT_DELAY_MS:J

    .line 1106
    new-instance v6, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;-><init>(Lcom/android/server/WifiService;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/server/WifiService;->mNotificationEnabledSettingObserver:Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

    .line 1107
    iget-object v6, p0, Lcom/android/server/WifiService;->mNotificationEnabledSettingObserver:Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

    invoke-virtual {v6}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->register()V

    .line 1109
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x111000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/WifiService;->mBackgroundScanSupported:Z

    .line 1111
    return-void

    .line 625
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v5           #wifiThread:Landroid/os/HandlerThread;
    :cond_b
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v6, v12, :cond_4

    .line 626
    iput-boolean v10, p0, Lcom/android/server/WifiService;->mEnableMdnPassword:Z

    goto/16 :goto_1

    .line 1009
    .restart local v1       #filter:Landroid/content/IntentFilter;
    .restart local v5       #wifiThread:Landroid/os/HandlerThread;
    :cond_c
    iget-boolean v6, p0, Lcom/android/server/WifiService;->mEnableImeiPassword:Z

    iget-boolean v7, p0, Lcom/android/server/WifiService;->mEnableImeiSsid:Z

    or-int/2addr v6, v7

    if-eqz v6, :cond_9

    .line 1011
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$12;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$12;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.SERVICE_STATE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1055
    :cond_d
    iget v6, p0, Lcom/android/server/WifiService;->msenseVersion:F

    const/high16 v7, 0x4000

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_e

    .line 1056
    const-string v6, "WifiService"

    const-string v7, "DockWifi - Add ACTION_DOCK_EVENT (hotspot) receiver"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/WifiService$14;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$14;-><init>(Lcom/android/server/WifiService;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.DOCK_EVENT"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1074
    :cond_e
    const-string v6, "WifiService"

    const-string v7, "DockWifi - NOT add ACTION_DOCK_EVENT receiver"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 594
    .end local v0           #cwExpiredReregisterIntent:Landroid/content/Intent;
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #idleIntent:Landroid/content/Intent;
    .end local v4           #updateStateIntent:Landroid/content/Intent;
    .end local v5           #wifiThread:Landroid/os/HandlerThread;
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/android/server/WifiService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/WifiService;->mClients:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnableImeiPassword:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnableImeiSsid:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/WifiService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiState(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiApEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/WifiService;ZLandroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->sendAccessPointMhsRequestMessage(ZLandroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WifiService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/WifiService;->resetNotification()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/WifiService;->checkAndSetNotification()V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mScreenOffSaved:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/WifiService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/android/server/WifiService;->mCwExpiredTime:J

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/android/server/WifiService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-wide p1, p0, Lcom/android/server/WifiService;->mCwExpiredTime:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/WifiService;->setCWExpiredReregisterAlarm()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$WifiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnablingWifiInterrupted:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEnablingWifiInterrupted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mQuickBootPowerOffIntentReceived:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mForbiddenByExchangePolicy:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/WifiService;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->checkHtcCustomization(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$AsyncServiceHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mInDockMode:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->setWifiEnableInDockMode(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->setWifiApEnableInDockMode(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/server/WifiService;->mMhsStatus:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/server/WifiService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/android/server/WifiService;->mMhsStatus:I

    return p1
.end method

.method static synthetic access$408(Lcom/android/server/WifiService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/WifiService;->checkWifiApRemindDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/WifiService;->actionScreenOn()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/WifiService;->actionScreenOff()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/WifiService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return v0
.end method

.method static synthetic access$4802(Lcom/android/server/WifiService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return p1
.end method

.method static synthetic access$4900(Lcom/android/server/WifiService;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->shouldWifiStayAwake(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/WifiService;->notifyOnDataActivity()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEmergencyModeChanged:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEmergencyModeChanged:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mPreEmergencyModeChanged:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mPreEmergencyModeChanged:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$LockList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/WifiService;Landroid/os/IBinder;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    return v0
.end method

.method static synthetic access$6300(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    return v0
.end method

.method static synthetic access$6400(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    return v0
.end method

.method static synthetic access$6800(Lcom/android/server/WifiService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/server/WifiService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/WifiService;ZLandroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->setWifiApEnabledBlockingMHS(ZLandroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7002(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mNotificationEnabled:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mCWRegisteredWhenScreenOff:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    return p1
.end method

.method private acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z
    .locals 6
    .parameter "wifiLock"

    .prologue
    .line 2511
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireWifiLockLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    iget-object v3, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->addLock(Lcom/android/server/WifiService$WifiLock;)V
    invoke-static {v3, p1}, Lcom/android/server/WifiService$LockList;->access$6500(Lcom/android/server/WifiService$LockList;Lcom/android/server/WifiService$WifiLock;)V

    .line 2515
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2517
    .local v1, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 2518
    iget v3, p1, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 2533
    :goto_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 2535
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2536
    const/4 v3, 0x1

    .line 2540
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2538
    return v3

    .line 2520
    :pswitch_0
    :try_start_1
    iget v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    goto :goto_0

    .line 2537
    :catch_0
    move-exception v0

    .line 2538
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_1

    .line 2523
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    iget v3, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2540
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2527
    :pswitch_2
    :try_start_2
    iget v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2518
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private actionScreenOff()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1346
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_idle_ms"

    const-wide/32 v5, 0xdbba0

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1349
    .local v0, idleMillis:J
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "stay_on_while_plugged_in"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1354
    .local v2, stayAwakeConditions:I
    const-string v3, "WifiService"

    const-string v4, "ACTION_SCREEN_OFF"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iput-boolean v7, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    .line 1357
    invoke-direct {p0}, Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V

    .line 1358
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v8}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 1359
    iget-boolean v3, p0, Lcom/android/server/WifiService;->mBackgroundScanSupported:Z

    if-eqz v3, :cond_0

    .line 1360
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    .line 1363
    :cond_0
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd8

    if-ne v3, v4, :cond_1

    .line 1364
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/android/server/WifiService$WifiHandler;->removeMessages(I)V

    .line 1365
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/WifiService;->mCWRegisteredWhenScreenOff:Z

    .line 1366
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[C+W] screen off with mCWRegisteredWhenScreenOff = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/WifiService;->mCWRegisteredWhenScreenOff:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_1
    iget v3, p0, Lcom/android/server/WifiService;->mPluggedType:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/WifiService;->shouldWifiStayAwake(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1376
    iget-object v3, p0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_3

    .line 1377
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setting ACTION_DEVICE_IDLE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    iget-object v3, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    iget-object v6, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v8, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1389
    :cond_2
    :goto_0
    return-void

    .line 1383
    :cond_3
    const-string v3, "WifiService"

    const-string v4, "setting ACTION_DEVICE_IDLE: 120000 ms"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    iget-object v3, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x1d4c0

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v8, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private actionScreenOn()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x64

    .line 1323
    const-string v0, "WifiService"

    const-string v1, "ACTION_SCREEN_ON"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object v0, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1326
    iput-boolean v2, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    .line 1327
    invoke-direct {p0}, Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V

    .line 1328
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 1329
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mBackgroundScanSupported:Z

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->enableAllNetworks()V

    .line 1333
    invoke-direct {p0, v2}, Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V

    .line 1335
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_1

    .line 1336
    const-string v0, "WifiService"

    const-string v1, "[C+W] send MESSAGE_CHECK_CW_STATUS"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/WifiService$WifiHandler;->sendEmptyMessage(I)Z

    .line 1338
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/WifiService$WifiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1339
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/WifiService$WifiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1340
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/WifiService$WifiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1343
    :cond_1
    return-void
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 3510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3511
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 3512
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3513
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3514
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3516
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 3515
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private cancelCWExpiredReregisterAlarm()V
    .locals 2

    .prologue
    .line 2963
    const-string v0, "WifiService"

    const-string v1, "[C+W] cancelling re-register timer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    iget-object v0, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/WifiService;->mCWExpiredReregisterIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2965
    return-void
.end method

.method private checkAndSetNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2835
    iget-boolean v5, p0, Lcom/android/server/WifiService;->mNotificationEnabled:Z

    if-nez v5, :cond_1

    .line 2873
    :cond_0
    :goto_0
    return-void

    .line 2837
    :cond_1
    iget-object v5, p0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 2838
    .local v4, state:Landroid/net/NetworkInfo$State;
    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_2

    sget-object v5, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_5

    .line 2841
    :cond_2
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v3

    .line 2842
    .local v3, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v3, :cond_5

    .line 2843
    const/4 v1, 0x0

    .line 2844
    .local v1, numOpenNetworks:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 2845
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 2849
    .local v2, scanResult:Landroid/net/wifi/ScanResult;
    iget-object v5, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "[ESS]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2851
    add-int/lit8 v1, v1, 0x1

    .line 2844
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2855
    .end local v2           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_4
    if-lez v1, :cond_5

    .line 2856
    iget v5, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    const/4 v6, 0x3

    if-lt v5, v6, :cond_0

    .line 2864
    const/4 v5, 0x1

    invoke-direct {p0, v5, v1, v7, v7}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    goto :goto_0

    .line 2872
    .end local v0           #i:I
    .end local v1           #numOpenNetworks:I
    .end local v3           #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_5
    invoke-direct {p0, v7, v7, v7, v7}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    goto :goto_0
.end method

.method private checkHtcCustomization(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 3450
    const-string v1, "content://customization_settings/SettingTable/application_Wifihotspot"

    .line 3452
    .local v1, customize_uri:Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/android/server/WifiService;->getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 3453
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bundle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3454
    if-eqz v0, :cond_0

    .line 3455
    invoke-direct {p0, v0, p1}, Lcom/android/server/WifiService;->parseBundle(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 3457
    :cond_0
    return-void
.end method

.method private checkScreenOffSavedAndDoCommand()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1312
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOffSaved:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    if-ne v0, v1, :cond_1

    .line 1313
    const-string v0, "WifiService"

    const-string v1, "checkScreenOffSavedAndDoCommand screen on"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    invoke-direct {p0}, Lcom/android/server/WifiService;->actionScreenOn()V

    .line 1319
    :cond_0
    :goto_0
    return-void

    .line 1315
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOffSaved:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    if-nez v0, :cond_0

    .line 1316
    const-string v0, "WifiService"

    const-string v1, "checkScreenOffSavedAndDoCommand screen off"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    invoke-direct {p0}, Lcom/android/server/WifiService;->actionScreenOff()V

    goto :goto_0
.end method

.method private checkWifiApRemindDialog()Z
    .locals 10

    .prologue
    const/16 v9, 0xa8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3595
    const/4 v2, -0x1

    .line 3596
    .local v2, showDialog:I
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v6, v9, :cond_0

    .line 3598
    :try_start_0
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hotspot_power_mode_remind"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 3599
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkWifiApRemindDialog flag = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3606
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v6, v9, :cond_1

    .line 3608
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.hotspot.SetupPowerMode"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3609
    .local v1, newIntent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3610
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3638
    .end local v1           #newIntent:Landroid/content/Intent;
    :goto_1
    return v4

    .line 3600
    :catch_0
    move-exception v0

    .line 3601
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x0

    .line 3602
    const-string v6, "WifiService"

    const-string v7, "checkWifiApRemindDialog exception"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3611
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v0

    .line 3612
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkWifiApRemindDialog startActivity exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3616
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-boolean v6, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    if-nez v6, :cond_2

    .line 3617
    const-string v5, "WifiService"

    const-string v6, "MHS permission is not allowed"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3620
    :cond_2
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiApEnabled()Z

    move-result v3

    .line 3621
    .local v3, wifiApEnabled:Z
    iget-boolean v6, p0, Lcom/android/server/WifiService;->mEnableMHS:Z

    invoke-direct {p0, v6}, Lcom/android/server/WifiService;->persistWifiAPEnabled(Z)V

    .line 3622
    iget-boolean v6, p0, Lcom/android/server/WifiService;->mEnableMHS:Z

    if-eqz v6, :cond_4

    .line 3623
    const-string v4, "WifiService"

    const-string v6, "[setWifiApEnabledMhsRequest] enable AP  "

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3624
    if-nez v3, :cond_3

    .line 3625
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->registerForBroadcasts(I)V

    .line 3626
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->startSoftapEventLoop()V

    .line 3627
    iput-boolean v5, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    .line 3636
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v7, p0, Lcom/android/server/WifiService;->mEnableMHS:Z

    invoke-virtual {v4, v6, v7}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    move v4, v5

    .line 3638
    goto :goto_1

    .line 3630
    :cond_4
    iget-boolean v6, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    if-eqz v6, :cond_3

    .line 3631
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3632
    iput-boolean v4, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    .line 3633
    sput-boolean v4, Lcom/android/server/WifiService;->mWimaxConnected:Z

    goto :goto_2
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .locals 3

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    return-void
.end method

.method private evaluateTrafficStatsPolling()V
    .locals 5

    .prologue
    const/16 v4, 0x15

    const/4 v3, 0x0

    .line 2786
    iget-object v1, p0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    if-nez v1, :cond_0

    .line 2787
    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    const/4 v2, 0x1

    invoke-static {v1, v4, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 2793
    .local v0, msg:Landroid/os/Message;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2794
    return-void

    .line 2790
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    invoke-static {v1, v4, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_0
.end method

.method private getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .parameter "context"
    .parameter "uriString"

    .prologue
    const/4 v2, 0x0

    .line 3460
    const/4 v1, 0x0

    .line 3461
    .local v1, uri:Landroid/net/Uri;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3506
    :cond_0
    :goto_0
    return-object v2

    .line 3464
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3466
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3467
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 3468
    const-string v0, "WifiService"

    const-string v3, "Failed to get cursor"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3471
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 3472
    const-string v0, "WifiService"

    const-string v3, "cursor size is 0"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3474
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3476
    :cond_3
    const/4 v7, 0x0

    .line 3477
    goto :goto_0

    .line 3479
    :cond_4
    const-string v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 3480
    .local v10, nValueIdx:I
    const/4 v0, -0x1

    if-ne v0, v10, :cond_6

    .line 3481
    const-string v0, "WifiService"

    const-string v3, "no customized data support"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3483
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3485
    :cond_5
    const/4 v7, 0x0

    .line 3486
    goto :goto_0

    .line 3488
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3489
    const/4 v8, 0x0

    .line 3490
    .local v8, data:[B
    const/4 v6, 0x0

    .line 3493
    .local v6, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 3494
    invoke-direct {p0, v8}, Lcom/android/server/WifiService;->byteArray2Bundle([B)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 3499
    if-eqz v7, :cond_8

    .line 3500
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3501
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3503
    :cond_7
    :goto_1
    const/4 v7, 0x0

    :cond_8
    move-object v2, v6

    .line 3506
    goto :goto_0

    .line 3495
    :catch_0
    move-exception v9

    .line 3496
    .local v9, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load customize URI failed, get exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3497
    const/4 v6, 0x0

    .line 3499
    if-eqz v7, :cond_8

    .line 3500
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3501
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 3499
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_a

    .line 3500
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 3501
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3503
    :cond_9
    const/4 v7, 0x0

    .line 3499
    :cond_a
    throw v0
.end method

.method private getPersistedDockWifiApEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1231
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1233
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "dock_hotspot_on"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    .line 1237
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 1233
    goto :goto_0

    .line 1234
    :catch_0
    move-exception v1

    .line 1235
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "dock_hotspot_on"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1236
    const-string v2, "WifiService"

    const-string v4, "DockWifi- set DOCK_HOTSPOT_ON to 0 in getPersistedDockWifiApEnabled"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1237
    goto :goto_0
.end method

.method private getPersistedDockWifiEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1250
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1252
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "dock_wifi_on"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1256
    :goto_0
    return v2

    .line 1252
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1253
    :catch_0
    move-exception v1

    .line 1254
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "dock_wifi_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1255
    const-string v3, "WifiService"

    const-string v4, "DockWifi- set DOCK_WIFI_ON to 1 in getPersistedDockWifiEnabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPersistedWifiApEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1190
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1192
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "hotspot_on"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    .line 1195
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 1192
    goto :goto_0

    .line 1193
    :catch_0
    move-exception v1

    .line 1194
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "hotspot_on"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    .line 1195
    goto :goto_0
.end method

.method private getPersistedWifiState()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1165
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1167
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "wifi_on"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1170
    :goto_0
    return v2

    .line 1168
    :catch_0
    move-exception v1

    .line 1169
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "wifi_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private getPersistedWirelessSleepMode()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x5265c00

    const-wide/16 v4, 0x0

    .line 3412
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3414
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "htc_wireless_sleep_mode_enabled"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepModeEnabled:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3420
    :goto_0
    :try_start_1
    const-string v2, "htc_wireless_sleep_start_time"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartTimeMillis:J
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3426
    :goto_1
    :try_start_2
    const-string v2, "htc_wireless_sleep_end_time"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndTimeMillis:J
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3432
    :goto_2
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WirelessSleep- get variables from db: enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepModeEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", start= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartTimeMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", end= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndTimeMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    iget-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndTimeMillis:J

    iget-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartTimeMillis:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 3437
    iget-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndTimeMillis:J

    iget-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartTimeMillis:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartToEndMillis:J

    .line 3439
    iget-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartToEndMillis:J

    sub-long v2, v6, v2

    iput-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndToStartMillis:J

    .line 3446
    :goto_3
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WirelessSleep- start->end = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartToEndMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", end->start= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndToStartMillis:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    return-void

    .line 3415
    :catch_0
    move-exception v1

    .line 3416
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepModeEnabled:Z

    .line 3417
    const-string v2, "WifiService"

    const-string v3, "WirelessSleep- set mHTCWirelessSleepModeEnabled default value: true"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3421
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v1

    .line 3422
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iput-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartTimeMillis:J

    .line 3423
    const-string v2, "WifiService"

    const-string v3, "WirelessSleep- set mHTCWirelessSleepStartTimeMillis default value: 0"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3427
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_2
    move-exception v1

    .line 3428
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iput-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndTimeMillis:J

    .line 3429
    const-string v2, "WifiService"

    const-string v3, "WirelessSleep- set mHTCWirelessSleepEndTimeMillis default value: 0"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3442
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    iget-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartTimeMillis:J

    iget-wide v4, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndTimeMillis:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndToStartMillis:J

    .line 3444
    iget-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepEndToStartMillis:J

    sub-long v2, v6, v2

    iput-wide v2, p0, Lcom/android/server/WifiService;->mHTCWirelessSleepStartToEndMillis:J

    goto :goto_3
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2327
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneSensitive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isAirplaneSensitive()Z
    .locals 3

    .prologue
    .line 2308
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2310
    .local v0, airplaneModeRadios:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAirplaneToggleable()Z
    .locals 3

    .prologue
    .line 2315
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2317
    .local v0, toggleableRadios:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isExchangePolicyEnabled()Z
    .locals 2

    .prologue
    .line 1458
    const/4 v0, 0x0

    .line 1460
    .local v0, senseVersion:F
    :try_start_0
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1463
    :goto_0
    const/high16 v1, 0x4040

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1461
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V
    .locals 2
    .parameter "wifiLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2487
    iget v0, p1, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 2496
    :goto_0
    return-void

    .line 2490
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 2493
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScanWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 2487
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V
    .locals 2
    .parameter "wifiLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2499
    iget v0, p1, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 2508
    :goto_0
    return-void

    .line 2502
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 2505
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScanWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 2499
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyOnDataActivity()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    .line 2806
    iget-wide v5, p0, Lcom/android/server/WifiService;->mTxPkts:J

    .local v5, preTxPkts:J
    iget-wide v3, p0, Lcom/android/server/WifiService;->mRxPkts:J

    .line 2807
    .local v3, preRxPkts:J
    const/4 v1, 0x0

    .line 2809
    .local v1, dataActivity:I
    iget-object v11, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/WifiService;->mTxPkts:J

    .line 2810
    iget-object v11, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/WifiService;->mRxPkts:J

    .line 2812
    cmp-long v11, v5, v13

    if-gtz v11, :cond_0

    cmp-long v11, v3, v13

    if-lez v11, :cond_3

    .line 2813
    :cond_0
    iget-wide v11, p0, Lcom/android/server/WifiService;->mTxPkts:J

    sub-long v9, v11, v5

    .line 2814
    .local v9, sent:J
    iget-wide v11, p0, Lcom/android/server/WifiService;->mRxPkts:J

    sub-long v7, v11, v3

    .line 2815
    .local v7, received:J
    cmp-long v11, v9, v13

    if-lez v11, :cond_1

    .line 2816
    or-int/lit8 v1, v1, 0x2

    .line 2818
    :cond_1
    cmp-long v11, v7, v13

    if-lez v11, :cond_2

    .line 2819
    or-int/lit8 v1, v1, 0x1

    .line 2822
    :cond_2
    iget v11, p0, Lcom/android/server/WifiService;->mDataActivity:I

    if-eq v1, v11, :cond_3

    iget-boolean v11, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    if-nez v11, :cond_3

    .line 2823
    iput v1, p0, Lcom/android/server/WifiService;->mDataActivity:I

    .line 2824
    iget-object v11, p0, Lcom/android/server/WifiService;->mClients:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    .line 2825
    .local v0, client:Lcom/android/internal/util/AsyncChannel;
    const/4 v11, 0x1

    iget v12, p0, Lcom/android/server/WifiService;->mDataActivity:I

    invoke-virtual {v0, v11, v12}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto :goto_0

    .line 2829
    .end local v0           #client:Lcom/android/internal/util/AsyncChannel;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v7           #received:J
    .end local v9           #sent:J
    :cond_3
    return-void
.end method

.method private parseBundle(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 10
    .parameter "bundle"
    .parameter "context"

    .prologue
    .line 3520
    const-string v7, "usermanagement"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 3521
    .local v6, usermanagementList:Landroid/os/Bundle;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/os/Bundle;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 3523
    const-string v3, "plenty_set1"

    .line 3524
    .local v3, key_plenty:Ljava/lang/String;
    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 3526
    .local v5, usermanagement:Landroid/os/Bundle;
    const-string v1, "max_connection"

    .line 3527
    .local v1, KEY_MAX_CONNECTION:Ljava/lang/String;
    const-string v0, "connection_array"

    .line 3529
    .local v0, KEY_CONNECTION_ARRAY:Ljava/lang/String;
    const-string v4, "0"

    .line 3530
    .local v4, max_connection:Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3531
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3532
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get max_connection:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3533
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_max_connection"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3535
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    .line 3540
    :goto_0
    const-string v2, "0"

    .line 3541
    .local v2, connection_array:Ljava/lang/String;
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3542
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3543
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get connection_array:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3544
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_connection_array"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3546
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    .line 3551
    .end local v0           #KEY_CONNECTION_ARRAY:Ljava/lang/String;
    .end local v1           #KEY_MAX_CONNECTION:Ljava/lang/String;
    .end local v2           #connection_array:Ljava/lang/String;
    .end local v3           #key_plenty:Ljava/lang/String;
    .end local v4           #max_connection:Ljava/lang/String;
    .end local v5           #usermanagement:Landroid/os/Bundle;
    :cond_0
    :goto_1
    return-void

    .line 3537
    .restart local v0       #KEY_CONNECTION_ARRAY:Ljava/lang/String;
    .restart local v1       #KEY_MAX_CONNECTION:Ljava/lang/String;
    .restart local v3       #key_plenty:Ljava/lang/String;
    .restart local v4       #max_connection:Ljava/lang/String;
    .restart local v5       #usermanagement:Landroid/os/Bundle;
    :cond_1
    const-string v7, "WifiService"

    const-string v8, "Can\'t get max_connection"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3548
    .restart local v2       #connection_array:Ljava/lang/String;
    :cond_2
    const-string v7, "WifiService"

    const-string v8, "Can\'t get connection_array"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private persistDockWifiApEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1243
    if-eqz p1, :cond_0

    const-string v1, "WifiService"

    const-string v2, "DockWifi- persistDockWifiApEnabled 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :goto_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1246
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "dock_hotspot_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1247
    return-void

    .line 1244
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "DockWifi- persistDockWifiApEnabled 0"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1246
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private persistDockWifiEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1261
    if-eqz p1, :cond_0

    const-string v1, "WifiService"

    const-string v2, "DockWifi- persistDockWifiEnabled 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :goto_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1264
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "dock_wifi_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1265
    return-void

    .line 1262
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "DockWifi- persistDockWifiEnabled 0"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1264
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private persistWifiAPEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1224
    if-eqz p1, :cond_0

    const-string v1, "WifiService"

    const-string v2, "persistWifiApEnabled 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :goto_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1227
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "hotspot_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1228
    return-void

    .line 1225
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "persistWifiApEnabled 0"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1227
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private persistWifiState(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1201
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1202
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 1203
    .local v0, airplane:Z
    :goto_0
    if-eqz p1, :cond_2

    .line 1204
    if-eqz v0, :cond_1

    .line 1205
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1207
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1219
    :goto_1
    const-string v2, "wifi_on"

    iget-object v3, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1220
    return-void

    .end local v0           #airplane:Z
    :cond_0
    move v0, v3

    .line 1202
    goto :goto_0

    .line 1210
    .restart local v0       #airplane:Z
    :cond_1
    iget-object v3, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 1213
    :cond_2
    if-eqz v0, :cond_3

    .line 1214
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 1216
    :cond_3
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1
.end method

.method private registerForBroadcasts(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 2269
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2270
    .local v0, intentFilter:Landroid/content/IntentFilter;
    if-nez p1, :cond_1

    .line 2271
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2272
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2273
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2274
    const-string v1, "android.intent.action.WIFIACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2275
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2276
    const-string v1, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2277
    const-string v1, "com.android.server.WifiManager.action.UPDATE_WIFI_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2278
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2279
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2281
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-ne v1, v2, :cond_0

    .line 2282
    const-string v1, "com.android.server.WifiManager.action.CW_EXPIRED_REREGISTER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2283
    const-string v1, "WifiService"

    const-string v2, "[C+W] Add Action ACTION_CW_EXPIRED_REREGISTER"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    :cond_0
    :goto_0
    const-string v1, "android.net.wifi.UNREGISTER_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2302
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2303
    return-void

    .line 2293
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2294
    const-string v1, "android.net.hotspot.ASSOCLIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2295
    const-string v1, "android.net.hotspot.connecitonrequest"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2296
    const-string v1, "com.android.server.HotspotManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2297
    const-string v1, "com.android.server.HotspotManager.action.WIFI_AP_CONN_REQ_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2298
    const-string v1, "android.intent.action.HTC_EMERGENCY_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .locals 7
    .parameter "lock"

    .prologue
    .line 2581
    iget-object v4, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;
    invoke-static {v4, p1}, Lcom/android/server/WifiService$LockList;->access$6700(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;

    move-result-object v3

    .line 2583
    .local v3, wifiLock:Lcom/android/server/WifiService$WifiLock;
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseWifiLockLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 2587
    .local v0, hadLock:Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2589
    .local v1, ident:J
    if-eqz v0, :cond_0

    .line 2590
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 2591
    iget v4, v3, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 2605
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2609
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2612
    return v0

    .line 2585
    .end local v0           #hadLock:Z
    .end local v1           #ident:J
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2593
    .restart local v0       #hadLock:Z
    .restart local v1       #ident:J
    :pswitch_0
    :try_start_1
    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    goto :goto_1

    .line 2607
    :catch_0
    move-exception v4

    goto :goto_2

    .line 2596
    :pswitch_1
    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2609
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2599
    :pswitch_2
    :try_start_2
    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 2591
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private removeMulticasterLocked(II)V
    .locals 5
    .parameter "i"
    .parameter "uid"

    .prologue
    .line 2740
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    .line 2742
    .local v1, removed:Lcom/android/server/WifiService$Multicaster;
    if-eqz v1, :cond_0

    .line 2743
    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->unlinkDeathRecipient()V

    .line 2745
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 2748
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_self()V

    .line 2749
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV6Packets()V

    .line 2750
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_dhcpoffer()V

    .line 2752
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_arp()V

    .line 2753
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->isSsdpFilterRuleEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2754
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_ssdp(Z)V

    .line 2760
    :cond_1
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {p0}, Lcom/android/server/WifiService;->isMulticastEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->setMulticastEnabled(Z)V

    .line 2763
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2765
    .local v0, ident:Ljava/lang/Long;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2768
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2770
    return-void

    .line 2768
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2766
    :catch_0
    move-exception v2

    .line 2768
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method private declared-synchronized reportStartWorkSource()V
    .locals 3

    .prologue
    .line 2150
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    .line 2151
    iget-boolean v1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v1, :cond_0

    .line 2152
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService$LockList;->access$5500(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2153
    iget-object v2, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService$LockList;->access$5500(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$WifiLock;

    iget-object v1, v1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 2152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2156
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2157
    monitor-exit p0

    return-void

    .line 2150
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private resetNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2880
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/WifiService;->mNotificationRepeatTime:J

    .line 2881
    iput v2, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    .line 2882
    invoke-direct {p0, v2, v2, v2, v2}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    .line 2883
    return-void
.end method

.method private sendAccessPointMhsRequestMessage(ZLandroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "enable"
    .parameter "wifiConfig"

    .prologue
    .line 2798
    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    if-eqz p1, :cond_0

    const/16 v0, 0x1f

    :goto_0
    invoke-static {v1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2801
    return-void

    .line 2798
    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method private setCWExpiredReregisterAlarm()V
    .locals 10

    .prologue
    .line 2948
    const-string v4, "WifiService"

    const-string v5, "[C+W] setCWExpiredReregisterAlarm+"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    const-string v4, "wifi.cw.advanced.time"

    const-string v5, "60"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2951
    .local v1, advancedTimeProp:Ljava/lang/String;
    const/16 v0, 0x3c

    .line 2953
    .local v0, advancedTime:I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2956
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/WifiService;->mCwExpiredTime:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    mul-int/lit16 v6, v0, 0x3e8

    int-to-long v6, v6

    sub-long v2, v4, v6

    .line 2957
    .local v2, triggerTime:J
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[C+W] set re-register triggerTime to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "advancedTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    iget-object v4, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/WifiService;->mCWExpiredReregisterIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2959
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[C+W] setted re-register triggerTime to"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    return-void

    .line 2954
    .end local v2           #triggerTime:J
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private setDeviceIdleAndUpdateWifi(Z)V
    .locals 5
    .parameter "deviceIdle"

    .prologue
    .line 2137
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    iput-boolean v0, p0, Lcom/android/server/WifiService;->mpreDeviceIdle:Z

    .line 2138
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    .line 2139
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 2144
    iget-object v0, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/WifiService;->mUpdateStateIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2147
    return-void
.end method

.method private setNotificationVisible(ZIZI)V
    .locals 9
    .parameter "visible"
    .parameter "numNetworks"
    .parameter "force"
    .parameter "delay"

    .prologue
    const/4 v8, 0x0

    const v7, 0x10804f4

    .line 2904
    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/android/server/WifiService;->mNotificationShown:Z

    if-nez v3, :cond_1

    if-nez p3, :cond_1

    .line 2944
    :cond_0
    :goto_0
    return-void

    .line 2908
    :cond_1
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 2912
    .local v1, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_3

    .line 2915
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/WifiService;->mNotificationRepeatTime:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 2919
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    if-nez v3, :cond_2

    .line 2921
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    .line 2922
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 2923
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iput v7, v3, Landroid/app/Notification;->icon:I

    .line 2924
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 2925
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v8, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2929
    :cond_2
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1130011

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2931
    .local v2, title:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1130012

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2933
    .local v0, details:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2934
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v2, v0, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2936
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/WifiService;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/WifiService;->mNotificationRepeatTime:J

    .line 2938
    iget-object v3, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2943
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v2           #title:Ljava/lang/CharSequence;
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mNotificationShown:Z

    goto :goto_0

    .line 2940
    :cond_3
    invoke-virtual {v1, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method private setParameterMHS(ZZLandroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "enable"
    .parameter "persist"
    .parameter "wifiConfig"

    .prologue
    .line 3644
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEnableMHS:Z

    .line 3645
    iput-boolean p2, p0, Lcom/android/server/WifiService;->mPersistMHS:Z

    .line 3646
    iput-object p3, p0, Lcom/android/server/WifiService;->mWifiConfigMHS:Landroid/net/wifi/WifiConfiguration;

    .line 3647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    .line 3648
    return-void
.end method

.method private setWifiApEnableInDockMode(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 3136
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3137
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - setWifiApEnableInDockMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 3140
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "DockWifi - setWifiApEnableInDockMode return due to hotspot already on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    :goto_0
    return-void

    .line 3143
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 3144
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    .line 3145
    .local v0, WifiState:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 3146
    :cond_2
    const-string v1, "WifiService"

    const-string v2, "DockWifi - setWifiApEnableInDockMode turn off Wifi then enable hotspot"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 3150
    .end local v0           #WifiState:I
    :cond_3
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - setWifiApEnableInDockMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0
.end method

.method private setWifiApEnabledBlockingMHS(ZLandroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "enable"
    .parameter "wifiConfig"

    .prologue
    .line 3559
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/WifiService;->setWifiApMhsRequest(ZZLandroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method private setWifiApMhsRequest(ZZLandroid/net/wifi/WifiConfiguration;)Z
    .locals 6
    .parameter "enable"
    .parameter "persist"
    .parameter "wifiConfig"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3564
    const-string v0, "WifiService"

    const-string v3, "setWifiApMhsRequest enter"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    if-ne v0, v2, :cond_0

    if-ne p1, v2, :cond_0

    .line 3566
    const-string v0, "WifiService"

    const-string v2, "MHS is processing"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 3591
    :goto_0
    return v0

    .line 3569
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 3570
    iput-boolean v1, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    .line 3571
    iput-boolean v1, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    .line 3572
    invoke-virtual {p0, v5, v1}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    move v0, v2

    .line 3573
    goto :goto_0

    .line 3576
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WifiService;->setParameterMHS(ZZLandroid/net/wifi/WifiConfiguration;)V

    .line 3577
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    .line 3578
    iget-object v0, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/16 v3, -0x13

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/WifiService;->mMhsStatus:I

    .line 3579
    iget v0, p0, Lcom/android/server/WifiService;->mMhsStatus:I

    if-nez v0, :cond_3

    .line 3580
    const-string v0, "WifiService"

    const-string v1, "MHS HTC_PERMITTED_TETHER_ALLOW"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3581
    iput-boolean v2, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    .line 3582
    invoke-direct {p0}, Lcom/android/server/WifiService;->checkWifiApRemindDialog()Z

    :cond_2
    :goto_1
    move v0, v2

    .line 3591
    goto :goto_0

    .line 3583
    :cond_3
    iget v0, p0, Lcom/android/server/WifiService;->mMhsStatus:I

    if-ne v0, v2, :cond_4

    .line 3584
    const-string v0, "WifiService"

    const-string v3, "MHS HTC_PERMITTED_TETHER_DENY"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    iput-boolean v1, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    goto :goto_1

    .line 3586
    :cond_4
    iget v0, p0, Lcom/android/server/WifiService;->mMhsStatus:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 3587
    const-string v0, "WifiService"

    const-string v2, "MHS HTC_PERMITTED_TETHER_PROGRASSING"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3588
    iput-boolean v1, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    move v0, v1

    .line 3589
    goto :goto_0
.end method

.method private setWifiEnableInDockMode(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3155
    if-ne p1, v3, :cond_4

    .line 3156
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 3157
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "DockWifi - setWifiEnableInDockMode return due to wifi is already on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    :goto_0
    return-void

    .line 3160
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/WifiService;->mWifiEnabledByDock:Z

    .line 3161
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 3162
    :cond_2
    const-string v1, "WifiService"

    const-string v2, "DockWifi - setWifiEnableInDockMode turn off hotspot then enable wifi"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 3165
    :cond_3
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - setWifiEnableInDockMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    invoke-virtual {p0, p1}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 3168
    :cond_4
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 3169
    :cond_5
    const-string v1, "WifiService"

    const-string v2, "DockWifi - setWifiEnableInDockMode return due to wifi is already off"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    iput-boolean v4, p0, Lcom/android/server/WifiService;->mWifiEnabledByDock:Z

    goto :goto_0

    .line 3173
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/WifiService;->mWifiEnabledByDock:Z

    if-eqz v1, :cond_9

    .line 3174
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 3175
    .local v0, suppState:Landroid/net/wifi/SupplicantState;
    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_7

    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_8

    .line 3178
    :cond_7
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - setWifiEnableInDockMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    invoke-virtual {p0, p1}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 3186
    .end local v0           #suppState:Landroid/net/wifi/SupplicantState;
    :goto_1
    iput-boolean v4, p0, Lcom/android/server/WifiService;->mWifiEnabledByDock:Z

    goto/16 :goto_0

    .line 3181
    .restart local v0       #suppState:Landroid/net/wifi/SupplicantState;
    :cond_8
    const-string v1, "WifiService"

    const-string v2, "DockWifi - We don\'t turn off wifi due to Wifi is connecting or connected."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3184
    .end local v0           #suppState:Landroid/net/wifi/SupplicantState;
    :cond_9
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DockWifi - We don\'t turn off wifi due to mWifiEnabledByDock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/WifiService;->mWifiEnabledByDock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private shouldDeviceStayAwake(II)Z
    .locals 1
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    .line 2133
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiBeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1176
    iget-boolean v2, p0, Lcom/android/server/WifiService;->mForbiddenByExchangePolicy:Z

    if-eqz v2, :cond_1

    .line 1177
    const-string v0, "WifiService"

    const-string v2, "shouldWifiBeEnabled(): ForbiddenByExchangePolicy"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1184
    :cond_0
    :goto_0
    return v0

    .line 1181
    :cond_1
    iget-object v2, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1182
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 1184
    :cond_2
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private shouldWifiStayAwake(II)Z
    .locals 5
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 2101
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2105
    .local v0, wifiSleepPolicy:I
    if-ne v0, v4, :cond_1

    .line 2114
    :cond_0
    :goto_0
    return v1

    .line 2108
    :cond_1
    if-ne v0, v1, :cond_2

    if-nez p2, :cond_0

    .line 2114
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_0
.end method

.method private testAndClearWifiSavedState()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1152
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1153
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 1155
    .local v1, wifiSavedState:I
    :try_start_0
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 1156
    if-ne v1, v2, :cond_0

    .line 1157
    const-string v4, "wifi_saved_state"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    :cond_0
    :goto_0
    if-ne v1, v2, :cond_1

    :goto_1
    return v2

    :cond_1
    move v2, v3

    goto :goto_1

    .line 1158
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private updateWifiState()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2162
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mQuickBootPowerOffIntentReceived:Z

    if-eqz v8, :cond_0

    .line 2163
    const-string v6, "WifiService"

    const-string v7, "updateWifiState(): mQuickBootPowerOffIntentReceived"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    :goto_0
    return-void

    .line 2168
    :cond_0
    iget-object v8, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->hasLocks()Z
    invoke-static {v8}, Lcom/android/server/WifiService$LockList;->access$5600(Lcom/android/server/WifiService$LockList;)Z

    move-result v0

    .line 2169
    .local v0, lockHeld:Z
    const/4 v1, 0x1

    .line 2172
    .local v1, strongestLockMode:I
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiApEnabled()Z

    move-result v3

    .line 2173
    .local v3, wifiApEnabled:Z
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_8

    move v2, v6

    .line 2174
    .local v2, wifiApAirplaneMode:Z
    :goto_1
    if-eqz v3, :cond_9

    if-nez v2, :cond_9

    move v4, v6

    .line 2177
    .local v4, wifiApShouldBeEnabled:Z
    :goto_2
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    if-eqz v8, :cond_a

    .line 2178
    const/4 v5, 0x0

    .line 2182
    .local v5, wifiShouldBeStarted:Z
    :goto_3
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEmergencyModeChanged:Z

    if-eqz v8, :cond_1

    const/4 v4, 0x0

    .line 2184
    :cond_1
    if-eqz v0, :cond_2

    .line 2185
    iget-object v8, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->getStrongestLockMode()I
    invoke-static {v8}, Lcom/android/server/WifiService$LockList;->access$5700(Lcom/android/server/WifiService$LockList;)I

    move-result v1

    .line 2188
    :cond_2
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-nez v8, :cond_3

    if-ne v1, v12, :cond_3

    .line 2189
    const/4 v1, 0x1

    .line 2194
    :cond_3
    if-eqz v4, :cond_d

    .line 2195
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    if-nez v8, :cond_4

    .line 2196
    const-string v8, "WifiService"

    const-string v9, "updateWifiState: enable hotspot: MHS permission is not allowed"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    :cond_4
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    if-ne v8, v6, :cond_6

    .line 2199
    :cond_5
    const-string v8, "WifiService"

    const-string v9, "updateWifiState(): enable hotspot"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, v11, v6}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 2227
    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/android/server/WifiService;->shouldWifiBeEnabled()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 2228
    if-eqz v5, :cond_15

    .line 2229
    const-string v8, "WifiService"

    const-string v9, "updateWifiState(): enable and start wifi"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 2231
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mpreDeviceIdle:Z

    if-ne v8, v6, :cond_7

    .line 2232
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-boolean v9, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v8, v7, v9}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    .line 2233
    :cond_7
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 2234
    iget-object v9, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    if-ne v1, v12, :cond_13

    move v8, v6

    :goto_5
    invoke-virtual {v9, v8}, Landroid/net/wifi/WifiStateMachine;->setScanOnlyMode(Z)V

    .line 2236
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-boolean v9, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v8, v6, v9}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    .line 2237
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v9, 0x3

    if-ne v1, v9, :cond_14

    :goto_6
    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiStateMachine;->setHighPerfModeEnabled(Z)V

    goto/16 :goto_0

    .end local v2           #wifiApAirplaneMode:Z
    .end local v4           #wifiApShouldBeEnabled:Z
    .end local v5           #wifiShouldBeStarted:Z
    :cond_8
    move v2, v7

    .line 2173
    goto/16 :goto_1

    .restart local v2       #wifiApAirplaneMode:Z
    :cond_9
    move v4, v7

    .line 2174
    goto/16 :goto_2

    .line 2180
    .restart local v4       #wifiApShouldBeEnabled:Z
    :cond_a
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v8, :cond_b

    if-eqz v0, :cond_c

    :cond_b
    move v5, v6

    .restart local v5       #wifiShouldBeStarted:Z
    :goto_7
    goto/16 :goto_3

    .end local v5           #wifiShouldBeStarted:Z
    :cond_c
    move v5, v7

    goto :goto_7

    .line 2204
    .restart local v5       #wifiShouldBeStarted:Z
    :cond_d
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_e

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    if-nez v8, :cond_e

    .line 2205
    const-string v8, "WifiService"

    const-string v9, "updateWifiState: disable hotspot: MHS permission is not allowed"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    :cond_e
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_10

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_f

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    if-eq v8, v6, :cond_10

    :cond_f
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEmergencyModeChanged:Z

    if-ne v8, v6, :cond_6

    .line 2208
    :cond_10
    const-string v8, "WifiService"

    const-string v9, "updateWifiState(): disable hotspot"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v8, v11, v7}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 2210
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_11

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    if-eq v8, v6, :cond_6

    .line 2214
    :cond_11
    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v8, :cond_6

    .line 2215
    iget-object v8, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/16 v9, -0x43

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    .line 2216
    :cond_12
    iput-boolean v7, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    goto/16 :goto_4

    :cond_13
    move v8, v7

    .line 2234
    goto :goto_5

    :cond_14
    move v6, v7

    .line 2237
    goto :goto_6

    .line 2240
    :cond_15
    const-string v6, "WifiService"

    const-string v8, "updateWifiState(): stop wifi"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-boolean v8, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    goto/16 :goto_0

    .line 2244
    :cond_16
    const-string v6, "WifiService"

    const-string v8, "updateWifiState(): disable wifi"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public NotifyWifiPhoneCallComeIn()Z
    .locals 3

    .prologue
    .line 3050
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->notifyPhoneCallStatus(I)Z

    move-result v0

    .line 3051
    .local v0, bRtn:Z
    return v0
.end method

.method public NotifyWifiPhoneCallEnd()Z
    .locals 3

    .prologue
    .line 3055
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->notifyPhoneCallStatus(I)Z

    move-result v0

    .line 3056
    .local v0, bRtn:Z
    return v0
.end method

.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .parameter "binder"
    .parameter "tag"

    .prologue
    .line 2686
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 2688
    iget-object v3, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v3

    .line 2689
    :try_start_0
    iget v2, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    .line 2690
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    new-instance v4, Lcom/android/server/WifiService$Multicaster;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/server/WifiService$Multicaster;-><init>(Lcom/android/server/WifiService;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2698
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_self()V

    .line 2699
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopFilteringMulticastV6Packets()V

    .line 2700
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_dhcpoffer()V

    .line 2702
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_arp()V

    .line 2703
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->isSsdpFilterRuleEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2704
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_ssdp(Z)V

    .line 2707
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2709
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {p0}, Lcom/android/server/WifiService;->isMulticastEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->setMulticastEnabled(Z)V

    .line 2712
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2713
    .local v1, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2715
    .local v0, ident:Ljava/lang/Long;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2718
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2720
    return-void

    .line 2707
    .end local v0           #ident:Ljava/lang/Long;
    .end local v1           #uid:I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2718
    .restart local v0       #ident:Ljava/lang/Long;
    .restart local v1       #uid:I
    :catchall_1
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2716
    :catch_0
    move-exception v2

    .line 2718
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 6
    .parameter "binder"
    .parameter "lockMode"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 2463
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 2467
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument, lockMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2471
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 2472
    const/4 p4, 0x0

    .line 2474
    :cond_1
    if-eqz p4, :cond_2

    .line 2475
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WifiService;->enforceWakeSourcePermission(II)V

    .line 2477
    :cond_2
    if-nez p4, :cond_3

    .line 2478
    new-instance p4, Landroid/os/WorkSource;

    .end local p4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p4, v1}, Landroid/os/WorkSource;-><init>(I)V

    .line 2480
    .restart local p4
    :cond_3
    new-instance v0, Lcom/android/server/WifiService$WifiLock;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WifiService$WifiLock;-><init>(Lcom/android/server/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 2481
    .local v0, wifiLock:Lcom/android/server/WifiService$WifiLock;
    iget-object v2, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v2

    .line 2482
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 2483
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "config"

    .prologue
    .line 1706
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1707
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1711
    :goto_0
    return v0

    .line 1710
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .parameter "bssid"

    .prologue
    .line 1917
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1919
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->addToBlacklist(Ljava/lang/String;)V

    .line 1920
    return-void
.end method

.method public checkAndStartWifi()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1120
    iget-object v2, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1121
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1123
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedDockWifiApEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    .line 1124
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedDockWifiEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    .line 1125
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DockWifi - mAutoEnableWifiApInDockMode ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mAutoEnableWifiInDockMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiApEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 1131
    .local v0, wifiApEnabled:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->shouldWifiBeEnabled()Z

    move-result v1

    .line 1132
    .local v1, wifiEnabled:Z
    const-string v3, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiService starting up with Wi-Fi "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_2

    const-string v2, "enabled"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " and Hotspot "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_3

    const-string v2, "enabled"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->updateProfile()V

    .line 1136
    if-eqz v1, :cond_4

    .line 1137
    invoke-virtual {p0, v1}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 1147
    :cond_0
    :goto_3
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->makeWifiWatchdogStateMachine(Landroid/content/Context;)Landroid/net/wifi/WifiWatchdogStateMachine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    .line 1149
    return-void

    .line 1127
    .end local v0           #wifiApEnabled:Z
    .end local v1           #wifiEnabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1132
    .restart local v0       #wifiApEnabled:Z
    .restart local v1       #wifiEnabled:Z
    :cond_2
    const-string v2, "disabled"

    goto :goto_1

    :cond_3
    const-string v2, "disabled"

    goto :goto_2

    .line 1138
    :cond_4
    if-eqz v0, :cond_0

    .line 1140
    iget-boolean v2, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v2, :cond_5

    .line 1141
    invoke-virtual {p0, v5, v0}, Lcom/android/server/WifiService;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_3

    .line 1143
    :cond_5
    invoke-virtual {p0, v5, v0}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_3
.end method

.method public checkWifiApEnabledMhsRequest()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 3380
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 3382
    :goto_0
    return v0

    .line 3381
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    .line 3382
    iget-object v0, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/16 v2, -0x23

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public clearBlacklist()V
    .locals 1

    .prologue
    .line 1927
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1929
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->clearBlacklist()V

    .line 1930
    return-void
.end method

.method public disableNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 1762
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1763
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1764
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 1767
    :goto_0
    return v0

    .line 1766
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disableSsdpPacket()Z
    .locals 2

    .prologue
    .line 3044
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3045
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->stopPacketFiltering_ssdp(Z)V

    .line 3046
    const/4 v0, 0x1

    return v0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 1671
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1672
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->disconnectCommand()V

    .line 1673
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v7, 0x0

    .line 2333
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 2335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump WifiService from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2376
    :goto_0
    return-void

    .line 2340
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wi-Fi is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stay-awake conditions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "stay_on_while_plugged_in"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2344
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2346
    const-string v3, "Internal state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2347
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2348
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2349
    const-string v3, "Latest scan results:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2350
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v2

    .line 2351
    .local v2, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 2352
    const-string v3, "  BSSID              Frequency   RSSI  Flags             SSID"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2353
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 2354
    .local v1, r:Landroid/net/wifi/ScanResult;
    const-string v4, "  %17s  %9d  %5d  %-16s  %s%n"

    const/4 v3, 0x5

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v3, v5, v7

    const/4 v3, 0x1

    iget v6, v1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    iget v6, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x3

    iget-object v6, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    aput-object v6, v5, v3

    const/4 v6, 0x4

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    :goto_2
    aput-object v3, v5, v6

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_1

    :cond_1
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_2

    .line 2362
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Landroid/net/wifi/ScanResult;
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locks acquired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full high perf, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locks released: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full high perf, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2369
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2370
    const-string v3, "Locks held:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2371
    iget-object v3, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v3, p2}, Lcom/android/server/WifiService$LockList;->access$5800(Lcom/android/server/WifiService$LockList;Ljava/io/PrintWriter;)V

    .line 2373
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2374
    const-string v3, "WifiWatchdogStateMachine dump"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2375
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v3, p2}, Landroid/net/wifi/WifiWatchdogStateMachine;->dump(Ljava/io/PrintWriter;)V

    goto/16 :goto_0
.end method

.method public enableAutoIP(I)Z
    .locals 4
    .parameter "state"

    .prologue
    .line 3214
    const/4 v2, 0x0

    .line 3216
    .local v2, result:Z
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 3217
    .local v1, ifname:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3219
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v1, p1}, Landroid/net/NetworkUtils;->enableDhcpAutoip(Ljava/lang/String;I)Z

    move-result v2

    .line 3220
    const-string v3, "wifi_auto_ip_on"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3222
    return v2
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 1739
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1741
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_0

    .line 1742
    if-eqz p2, :cond_0

    .line 1743
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->tryTostartCWDeRegister()V

    .line 1746
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_1

    .line 1747
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/WifiStateMachine;->syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z

    move-result v0

    .line 1751
    :goto_0
    return v0

    .line 1750
    :cond_1
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enablePowerActiveForFotaDownload(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 3067
    const/4 v0, 0x0

    .line 3068
    .local v0, bRtn:Z
    if-eqz p1, :cond_0

    .line 3069
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 3070
    const-string v1, "WifiService"

    const-string v2, "enable PowerActive for FOTA download"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    :goto_0
    return v0

    .line 3072
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 3073
    const-string v1, "WifiService"

    const-string v2, "disable PowerActive for FOTA download"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enablePowerActiveMode(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 3199
    const/4 v0, 0x0

    .line 3200
    .local v0, bRtn:Z
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3201
    .local v1, cr:Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 3202
    const-string v2, "wifi_pwr_active_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3203
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 3204
    const-string v2, "WifiService"

    const-string v3, "Enable Actvie mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    :goto_0
    return v0

    .line 3206
    :cond_0
    const-string v2, "wifi_pwr_active_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3207
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 3208
    const-string v2, "WifiService"

    const-string v3, "disable Actvie mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableSsdpPacket()Z
    .locals 2

    .prologue
    .line 3038
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3039
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_ssdp(Z)V

    .line 3040
    const/4 v0, 0x1

    return v0
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 2455
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2460
    :goto_0
    return-void

    .line 2458
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public getAssocListStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3301
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3302
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getAssocListStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3306
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3307
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getClientInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1950
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1951
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1696
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1697
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 1776
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1781
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionPolicyEnabled()Z
    .locals 1

    .prologue
    .line 3370
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getConnectionPolicyEnabled()Z

    move-result v0

    return v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 1

    .prologue
    .line 1871
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1872
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDockWifiApAutoEnabled()Z
    .locals 3

    .prologue
    .line 3114
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3115
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - getDockWifiApAutoEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    return v0
.end method

.method public getDockWifiAutoEnabled()Z
    .locals 3

    .prologue
    .line 3130
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3131
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - getDockWifiAutoEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    return v0
.end method

.method public getFrequencyBand()I
    .locals 1

    .prologue
    .line 1849
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1850
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getFrequencyBand()I

    move-result v0

    return v0
.end method

.method public getHotspotNumAllowedChannels()I
    .locals 1

    .prologue
    .line 3341
    const/16 v0, 0xb

    return v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1941
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1942
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1943
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getMostPreferredNetwork()I
    .locals 1

    .prologue
    .line 3293
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getMostPreferredNetwork()I

    move-result v0

    return v0
.end method

.method public getRequestedList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3345
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3346
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getRequestedList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1790
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1791
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSmartWifiEnabledState()I
    .locals 1

    .prologue
    .line 3063
    const/4 v0, 0x0

    return v0
.end method

.method public getTetheringDhcpRange()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3554
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getTetheringDhcpRange()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWagAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3264
    const-string v1, "persist.sys.cw.wagaddr"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3265
    .local v0, wagAddr:Ljava/lang/String;
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWagAddress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    return-object v0
.end method

.method public getWagAsUserDefined()Z
    .locals 4

    .prologue
    .line 3257
    const-string v1, "persist.sys.cw.settestwag"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3258
    .local v0, val:Ljava/lang/String;
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWagAsUserDefined : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3259
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 1640
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1644
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApEnabledState()I
    .locals 1

    .prologue
    .line 1631
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1632
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    return v0
.end method

.method public getWifiEnabledState()I
    .locals 1

    .prologue
    .line 1567
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1568
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    return v0
.end method

.method public getWifiOffloadEnabled()Z
    .locals 1

    .prologue
    .line 3100
    const/4 v0, 0x0

    return v0
.end method

.method public initializeMulticastFiltering()V
    .locals 2

    .prologue
    .line 2665
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 2667
    iget-object v1, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 2669
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2670
    monitor-exit v1

    .line 2683
    :goto_0
    return-void

    .line 2674
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_self()V

    .line 2675
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV6Packets()V

    .line 2676
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_dhcpoffer()V

    .line 2679
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2681
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {p0}, Lcom/android/server/WifiService;->isMulticastEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setMulticastEnabled(Z)V

    goto :goto_0

    .line 2679
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isDualBandSupported()Z
    .locals 2

    .prologue
    .line 1858
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-ne v0, v1, :cond_0

    .line 1859
    const/4 v0, 0x1

    .line 1861
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    .line 2773
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2775
    iget-object v1, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 2776
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2777
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isWifiPowerModeNormal()Z
    .locals 1

    .prologue
    .line 3034
    const/4 v0, 0x1

    return v0
.end method

.method public pingSupplicant()Z
    .locals 2

    .prologue
    .line 1275
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1276
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v0

    .line 1280
    :goto_0
    return v0

    .line 1279
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reassociate()V
    .locals 1

    .prologue
    .line 1687
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1688
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reassociateCommand()V

    .line 1689
    return-void
.end method

.method public reconnect()V
    .locals 1

    .prologue
    .line 1679
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1680
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    .line 1681
    return-void
.end method

.method public releaseMulticastLock()V
    .locals 6

    .prologue
    .line 2723
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 2725
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2726
    .local v3, uid:I
    iget-object v5, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v5

    .line 2727
    :try_start_0
    iget v4, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    .line 2728
    iget-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 2729
    .local v2, size:I
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 2730
    iget-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    .line 2731
    .local v1, m:Lcom/android/server/WifiService$Multicaster;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->getUid()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 2732
    invoke-direct {p0, v0, v3}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    .line 2729
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2735
    .end local v1           #m:Lcom/android/server/WifiService$Multicaster;
    :cond_1
    monitor-exit v5

    .line 2736
    return-void

    .line 2735
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "lock"

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2573
    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v1

    .line 2574
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2575
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 1722
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1723
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 1727
    :goto_0
    return v0

    .line 1726
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetDhcpConfig()V
    .locals 1

    .prologue
    .line 3350
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3351
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->resetDhcpConfig()V

    .line 3352
    return-void
.end method

.method public saveConfiguration()Z
    .locals 3

    .prologue
    .line 1801
    const/4 v0, 0x1

    .line 1802
    .local v0, result:Z
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1803
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_0

    .line 1804
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v1

    .line 1807
    :goto_0
    return v1

    .line 1806
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setConnectionPolicyEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 3366
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setConnectionPolicyEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 3
    .parameter "countryCode"
    .parameter "persist"

    .prologue
    .line 1821
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiService trying to set country code to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with persist set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1824
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    .line 1825
    return-void
.end method

.method public setDockWifiApAutoEnabled(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    .line 3104
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3105
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - setDockWifiApAutoEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    .line 3107
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistDockWifiApEnabled(Z)V

    .line 3108
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mInDockMode:Z

    if-ne v0, v3, :cond_0

    if-ne p1, v3, :cond_0

    .line 3109
    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->setWifiApEnableInDockMode(Z)V

    .line 3110
    :cond_0
    return v3
.end method

.method public setDockWifiAutoEnabled(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    .line 3120
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3121
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - setDockWifiAutoEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    .line 3123
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistDockWifiEnabled(Z)V

    .line 3124
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mInDockMode:Z

    if-ne v0, v3, :cond_0

    if-ne p1, v3, :cond_0

    .line 3125
    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->setWifiEnableInDockMode(Z)V

    .line 3126
    :cond_0
    return v3
.end method

.method public setFrequencyBand(IZ)V
    .locals 3
    .parameter "band"
    .parameter "persist"

    .prologue
    .line 1837
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1838
    invoke-virtual {p0}, Lcom/android/server/WifiService;->isDualBandSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1842
    :goto_0
    return-void

    .line 1839
    :cond_0
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiService trying to set frequency band to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with persist set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand(IZ)V

    goto :goto_0
.end method

.method public setHotspotAutoChannel(I)V
    .locals 3
    .parameter "autoChannel"

    .prologue
    .line 3193
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHotspotAutoChannel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setHotspotAutoChannel(I)V

    .line 3196
    return-void
.end method

.method public setMostPreferredNetwork(I)Z
    .locals 1
    .parameter "networkId"

    .prologue
    .line 3297
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setMostPreferredNetwork(I)Z

    move-result v0

    return v0
.end method

.method public setWagAddress(Ljava/lang/String;)Z
    .locals 3
    .parameter "addr"

    .prologue
    .line 3271
    const-string v0, "persist.sys.cw.wagaddr"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3272
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWagAddress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3273
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3274
    :cond_0
    const-string v0, "persist.sys.cw.wagaddr"

    const-string v1, "114.81.255.179"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3275
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Just for test setWagAddress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3277
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setWagAsUserDefined(Z)Z
    .locals 3
    .parameter "set"

    .prologue
    const/4 v2, 0x1

    .line 3281
    if-ne p1, v2, :cond_0

    .line 3282
    const-string v0, "persist.sys.cw.settestwag"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3283
    const-string v0, "WifiService"

    const-string v1, "setWagAsUserDefined : true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    :goto_0
    return v2

    .line 3286
    :cond_0
    const-string v0, "persist.sys.cw.settestwag"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3287
    const-string v0, "WifiService"

    const-string v1, "setWagAsUserDefined : false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWifiApConfig(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 3355
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3356
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApConfig(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "wifiConfig"

    .prologue
    .line 1659
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1660
    if-nez p1, :cond_0

    .line 1661
    const-string v0, "WifiService"

    const-string v1, "[setWifiApConfiguration] wifiConfig == null "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :goto_0
    return-void

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 6
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1578
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiApEnabled enable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    iget-boolean v3, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    if-nez v3, :cond_1

    if-ne p2, v1, :cond_1

    .line 1581
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WifiService;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1620
    :cond_0
    :goto_0
    return-void

    .line 1584
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v3, :cond_2

    if-nez p2, :cond_2

    .line 1585
    iput-boolean v2, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    .line 1586
    iput-boolean v2, p0, Lcom/android/server/WifiService;->mProcessingMHS:Z

    .line 1589
    :cond_2
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1590
    if-eqz p2, :cond_6

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v1

    .line 1591
    .local v0, WifiAPflightenable:Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1592
    if-eqz v0, :cond_3

    .line 1593
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1596
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/WifiService;->persistWifiAPEnabled(Z)V

    .line 1598
    if-eqz p2, :cond_7

    .line 1599
    const-string v3, "WifiService"

    const-string v4, "[setWifiApEnabled] enable AP  "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    invoke-direct {p0, v1}, Lcom/android/server/WifiService;->registerForBroadcasts(I)V

    .line 1601
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->startSoftapEventLoop()V

    .line 1602
    iput-boolean v1, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    .line 1611
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1613
    iget-boolean v1, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v1, :cond_0

    .line 1614
    if-nez p2, :cond_0

    .line 1615
    iget-object v1, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/16 v3, -0x43

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    .line 1616
    :cond_5
    iput-boolean v2, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    goto :goto_0

    .end local v0           #WifiAPflightenable:Z
    :cond_6
    move v0, v2

    .line 1590
    goto :goto_1

    .line 1604
    .restart local v0       #WifiAPflightenable:Z
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    if-eqz v1, :cond_4

    .line 1605
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1606
    iput-boolean v2, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    .line 1607
    sput-boolean v2, Lcom/android/server/WifiService;->mWimaxConnected:Z

    goto :goto_2
.end method

.method public setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 6
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3394
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiApEnabledMhsRequest enable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    iget-boolean v3, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-nez v3, :cond_0

    .line 3407
    :goto_0
    return v2

    .line 3396
    :cond_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 3399
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 3400
    .local v0, WifiAPflightenable:Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3401
    if-eqz v0, :cond_1

    .line 3402
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3405
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/android/server/WifiService;->sendAccessPointMhsRequestMessage(ZLandroid/net/wifi/WifiConfiguration;)V

    move v2, v1

    .line 3407
    goto :goto_0

    .end local v0           #WifiAPflightenable:Z
    :cond_2
    move v0, v2

    .line 3399
    goto :goto_1
.end method

.method public setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 3360
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3361
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I

    .line 3362
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized setWifiEnabled(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    .line 1399
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1402
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiApEnabled()Z

    move-result v0

    .line 1403
    .local v0, wifiApEnabled:Z
    if-eqz v0, :cond_3

    .line 1404
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiApAirplaneModeOverwridden:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1405
    iget-boolean v1, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    if-eqz v1, :cond_0

    .line 1406
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1407
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    .line 1408
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/WifiService;->mWimaxConnected:Z

    .line 1410
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1411
    iget-boolean v1, p0, Lcom/android/server/WifiService;->mEnableMhsFeature:Z

    if-eqz v1, :cond_2

    .line 1412
    iget-object v1, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/16 v2, -0x43

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    .line 1413
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WifiService;->mWifiApMhsPermission:Z

    .line 1415
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/WifiService;->persistWifiAPEnabled(Z)V

    .line 1417
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/WifiService;->setWifiEnabledPersist(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 1399
    .end local v0           #wifiApEnabled:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setWifiEnabledPersist(ZZ)Z
    .locals 10
    .parameter "enable"
    .parameter "persist"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1468
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1470
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setWifiEnabledPersist enable="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", persist="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", getCallingPid()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/server/WifiService;->getCallingPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_TI_PROJECT_flag:Z

    if-eqz v7, :cond_1

    .line 1473
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1475
    .local v3, ident:J
    :try_start_0
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setWifiEnabledPersist enable:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  BTisTuringOn:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    iget-object v7, p0, Lcom/android/server/WifiService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v7

    const/16 v8, 0xb

    if-ne v7, v8, :cond_0

    .line 1479
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BT is turing on...Wifi enable delay 2s for a while!!!!  BTisTuringOn:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    const-wide/16 v7, 0x7d0

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1485
    :cond_0
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1496
    .end local v3           #ident:J
    :cond_1
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_FEATURE_3LM:Z

    if-eqz v7, :cond_2

    .line 1498
    const-string v7, "DeviceManager3LM"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v2

    .line 1501
    .local v2, dm:Landroid/os/IDeviceManager3LM;
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/os/IDeviceManager3LM;->getWifiState()I

    move-result v7

    if-nez v7, :cond_2

    .line 1502
    const v7, 0x104050e

    const v8, 0x104050e

    const/4 v9, 0x0

    invoke-interface {v2, v7, v8, v9}, Landroid/os/IDeviceManager3LM;->notification(III)V

    .line 1504
    const-string v7, "WifiService"

    const-string v8, "[3LM] no allow"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1554
    .end local v2           #dm:Landroid/os/IDeviceManager3LM;
    :goto_1
    return v5

    .line 1485
    .restart local v3       #ident:J
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1507
    .end local v3           #ident:J
    .restart local v2       #dm:Landroid/os/IDeviceManager3LM;
    :catch_0
    move-exception v7

    .line 1513
    .end local v2           #dm:Landroid/os/IDeviceManager3LM;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/WifiService;->isExchangePolicyEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1514
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 1515
    .local v1, devicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v0

    .line 1516
    .local v0, allowStatus:I
    if-nez v0, :cond_3

    .line 1517
    const-string v6, "WifiService"

    const-string v7, "Forbidden by Exchange policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1522
    .end local v0           #allowStatus:I
    .end local v1           #devicePolicyManager:Landroid/app/admin/DevicePolicyManager;
    :cond_3
    if-eqz p1, :cond_4

    .line 1523
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 1525
    :cond_4
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 1533
    if-eqz p2, :cond_5

    .line 1534
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1535
    .restart local v3       #ident:J
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiState(Z)V

    .line 1536
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1539
    .end local v3           #ident:J
    :cond_5
    if-eqz p1, :cond_7

    .line 1540
    iget-boolean v7, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    if-nez v7, :cond_6

    .line 1543
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->registerForBroadcasts(I)V

    .line 1544
    iput-boolean v6, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    .line 1546
    invoke-direct {p0}, Lcom/android/server/WifiService;->checkScreenOffSavedAndDoCommand()V

    :cond_6
    :goto_2
    move v5, v6

    .line 1554
    goto :goto_1

    .line 1549
    :cond_7
    iget-boolean v7, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    if-eqz v7, :cond_6

    .line 1550
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1552
    iput-boolean v5, p0, Lcom/android/server/WifiService;->mIfWiFiRegBastReceiver:Z

    goto :goto_2

    .line 1483
    .restart local v3       #ident:J
    :catch_1
    move-exception v7

    goto/16 :goto_0
.end method

.method public setWifiOffloadEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 3089
    const/4 v0, 0x0

    return v0
.end method

.method public setWifiPowerSavingMode(I)Z
    .locals 3
    .parameter "status"

    .prologue
    .line 3021
    const/4 v0, 0x0

    .line 3022
    .local v0, bRtn:Z
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 3023
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/16 v2, 0x58

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 3024
    const-string v1, "WifiService"

    const-string v2, "do not let wifi enter deep powe saving"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    :goto_0
    return v0

    .line 3026
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/16 v2, 0x57

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->setPowerMode(I)Z

    move-result v0

    .line 3027
    const-string v1, "WifiService"

    const-string v2, "allow wifi enter deep powe saving"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWpsPbc()Z
    .locals 1

    .prologue
    .line 3231
    const/4 v0, 0x0

    return v0
.end method

.method public setWpsPin(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "bssid"

    .prologue
    .line 3253
    const-string v0, "0"

    return-object v0
.end method

.method public startScan(Z)V
    .locals 1
    .parameter "forceActive"

    .prologue
    .line 1288
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1289
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->startScan(Z)V

    .line 1290
    return-void
.end method

.method public startWifi()V
    .locals 3

    .prologue
    .line 1880
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1886
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    .line 1887
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    .line 1890
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWirelessSleepMode()V

    .line 1891
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedDockWifiApEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    .line 1892
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedDockWifiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    .line 1893
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DockWifi - mAutoEnableWifiApInDockMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mAutoEnableWifiApInDockMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAutoEnableWifiInDockMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mAutoEnableWifiInDockMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    return-void
.end method

.method public stopWifi()V
    .locals 3

    .prologue
    .line 1903
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1908
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    .line 1909
    return-void
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 9
    .parameter "lock"
    .parameter "ws"

    .prologue
    .line 2545
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2546
    .local v4, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 2547
    .local v3, pid:I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 2548
    const/4 p2, 0x0

    .line 2550
    :cond_0
    if-eqz p2, :cond_1

    .line 2551
    invoke-virtual {p0, v4, v3}, Lcom/android/server/WifiService;->enforceWakeSourcePermission(II)V

    .line 2553
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2555
    .local v0, ident:J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2556
    :try_start_1
    iget-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I
    invoke-static {v6, p1}, Lcom/android/server/WifiService$LockList;->access$6600(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)I

    move-result v2

    .line 2557
    .local v2, index:I
    if-gez v2, :cond_2

    .line 2558
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "Wifi lock not active"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2564
    .end local v2           #index:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2565
    :catch_0
    move-exception v6

    .line 2567
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2569
    return-void

    .line 2560
    .restart local v2       #index:I
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/WifiService$LockList;->access$5500(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WifiService$WifiLock;

    .line 2561
    .local v5, wl:Lcom/android/server/WifiService$WifiLock;
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 2562
    if-eqz p2, :cond_3

    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_1
    iput-object v6, v5, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    .line 2563
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 2564
    monitor-exit v7

    goto :goto_0

    .line 2562
    :cond_3
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, v4}, Landroid/os/WorkSource;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2567
    .end local v2           #index:I
    .end local v5           #wl:Lcom/android/server/WifiService$WifiLock;
    :catchall_1
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method
