.class public Lcom/htc/net/usbnet/UsbnetStateTracker;
.super Ljava/lang/Object;
.source "UsbnetStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/usbnet/UsbnetStateTracker$DhcpHandler;,
        Lcom/htc/net/usbnet/UsbnetStateTracker$NetworkStateChangeResult;
    }
.end annotation


# static fields
.field private static final DISCONNECT_DELAY_MSECS:I = 0x3a98

.field private static final EVENTLOG_INTERFACE_CONFIGURATION_STATE_CHANGED:I = 0x9c58

.field private static final EVENTLOG_NETWORK_STATE_CHANGED:I = 0x9c55

.field private static final EVENT_DEFERRED_DISCONNECT:I = 0xc

.field private static final EVENT_DHCP_START:I = 0x7

.field private static final EVENT_INTERFACE_CONFIGURATION_FAILED:I = 0xb

.field private static final EVENT_INTERFACE_CONFIGURATION_SUCCEEDED:I = 0xa

.field private static final EVENT_INVALID:I = 0x0

.field private static final EVENT_NETWORK_STATE_CHANGED:I = 0x4

.field private static final EVENT_POLL_INTERVAL:I = 0x6

.field private static final LOCAL_LOGD:Z = true

.field private static LS:Ljava/lang/String; = null

.field private static final NETWORKTYPE:Ljava/lang/String; = "USBNET"

.field private static final POLL_STATUS_INTERVAL_MSECS:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "UsbnetStateTracker"

.field private static sDnsPropNames:[Ljava/lang/String;

.field private static final stateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/NetworkInfo$DetailedState;",
            "Landroid/net/NetworkInfo$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCsHandler:Landroid/os/Handler;

.field private mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDhcpInfo:Landroid/net/DhcpInfo;

.field private mDhcpTarget:Lcom/htc/net/usbnet/UsbnetStateTracker$DhcpHandler;

.field private mDisconnectPending:Z

.field private mHaveIPAddress:Z

.field private mInterfaceName:Ljava/lang/String;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mObtainingIPAddress:Z

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mReconnectCount:I

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTornDownByConnMgr:Z

.field private mUsbnetController:Lcom/htc/net/usbnet/UsbnetController;

.field private mUsbnetInfo:Lcom/htc/net/usbnet/UsbnetInfo;

.field private mUsbnetMonitor:Lcom/htc/net/usbnet/UsbnetMonitor;

.field private mUsbnetState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 108
    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->LS:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    .line 125
    sget-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6
    .parameter "context"
    .parameter "target"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 139
    const-string v0, "UsbnetStateTracker"

    const-string v1, "UsbnetStateTracker+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iput v5, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetState:I

    .line 141
    new-instance v0, Lcom/htc/net/usbnet/UsbnetMonitor;

    invoke-direct {v0, p0}, Lcom/htc/net/usbnet/UsbnetMonitor;-><init>(Lcom/htc/net/usbnet/UsbnetStateTracker;)V

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetMonitor:Lcom/htc/net/usbnet/UsbnetMonitor;

    .line 142
    new-instance v0, Lcom/htc/net/usbnet/UsbnetInfo;

    invoke-direct {v0}, Lcom/htc/net/usbnet/UsbnetInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetInfo:Lcom/htc/net/usbnet/UsbnetInfo;

    .line 144
    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v1, 0x12

    const-string v2, "USBNET"

    const-string v3, ""

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 145
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v0, :cond_0

    const-string v0, "UsbnetStateTracker"

    const-string/jumbo v1, "mNetworkInfo null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 147
    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 149
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 151
    invoke-direct {p0, v4}, Lcom/htc/net/usbnet/UsbnetStateTracker;->setTornDownByConnMgr(Z)V

    .line 152
    invoke-virtual {p0, v4}, Lcom/htc/net/usbnet/UsbnetStateTracker;->setTeardownRequested(Z)V

    .line 155
    new-instance v0, Landroid/net/DhcpInfo;

    invoke-direct {v0}, Landroid/net/DhcpInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    .line 157
    const-string/jumbo v0, "usb0"

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mInterfaceName:Ljava/lang/String;

    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcp."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dns1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcp."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dns2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->sDnsPropNames:[Ljava/lang/String;

    .line 164
    const-string v0, "UsbnetStateTracker"

    const-string v1, "UsbnetStateTracker-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/htc/net/usbnet/UsbnetStateTracker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/net/usbnet/UsbnetStateTracker;)Landroid/net/DhcpInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    return-object v0
.end method

.method private cancelDisconnect()V
    .locals 2

    .prologue
    .line 256
    const-string v0, "UsbnetStateTracker"

    const-string v1, "cancelDisconnect +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDisconnectPending:Z

    .line 263
    const-string v0, "UsbnetStateTracker"

    const-string v1, "cancelDisconnect -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method

.method private configureInterface()V
    .locals 2

    .prologue
    .line 411
    const-string v0, "UsbnetStateTracker"

    const-string v1, "configureInterface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-boolean v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mHaveIPAddress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mObtainingIPAddress:Z

    if-nez v0, :cond_0

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mObtainingIPAddress:Z

    .line 415
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDhcpTarget:Lcom/htc/net/usbnet/UsbnetStateTracker$DhcpHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/htc/net/usbnet/UsbnetStateTracker$DhcpHandler;->sendEmptyMessage(I)Z

    .line 417
    :cond_0
    return-void
.end method

.method private handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3
    .parameter "newState"

    .prologue
    .line 444
    const-string v1, "UsbnetStateTracker"

    const-string v2, "Deconfiguring usbnet interface and stopping DHCP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-boolean v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDisconnectPending:Z

    if-eqz v1, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/htc/net/usbnet/UsbnetStateTracker;->cancelDisconnect()V

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/htc/net/usbnet/UsbnetStateTracker;->resetInterface()V

    .line 454
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.net.usbnet.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "networkInfo"

    iget-object v2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 456
    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 457
    return-void
.end method

.method private static nap(I)V
    .locals 2
    .parameter "secs"

    .prologue
    .line 504
    mul-int/lit16 v0, p0, 0x3e8

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private requestNetworkStatus(Lcom/htc/net/usbnet/UsbnetInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/htc/net/usbnet/UsbnetStateTracker;->getIpAddress()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/htc/net/usbnet/UsbnetInfo;->setIpAddress(I)V

    .line 519
    return-void
.end method

.method private declared-synchronized requestPolledInfo(Lcom/htc/net/usbnet/UsbnetInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    const-string v0, "UsbnetStateTracker"

    const-string/jumbo v1, "requestPolledInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    monitor-exit p0

    return-void

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private scheduleDisconnect()V
    .locals 2

    .prologue
    .line 243
    const-string v0, "UsbnetStateTracker"

    const-string/jumbo v1, "scheduleDisconnect +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDisconnectPending:Z

    .line 252
    const-string v0, "UsbnetStateTracker"

    const-string/jumbo v1, "scheduleDisconnect -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void
.end method

.method private sendNetworkStateChangeBroadcast()V
    .locals 4

    .prologue
    .line 432
    const-string v1, "UsbnetStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendNetworkStateChange intent, state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.net.usbnet.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "networkInfo"

    iget-object v2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 435
    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 436
    return-void
.end method

.method private declared-synchronized setPollTimer()V
    .locals 2

    .prologue
    .line 424
    monitor-enter p0

    :try_start_0
    const-string v0, "UsbnetStateTracker"

    const-string/jumbo v1, "setPollTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    monitor-exit p0

    return-void

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setTornDownByConnMgr(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 570
    const-string v0, "UsbnetStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTornDownByConnMgr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iput-boolean p1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mTornDownByConnMgr:Z

    .line 572
    invoke-direct {p0}, Lcom/htc/net/usbnet/UsbnetStateTracker;->updateNetworkInfo()V

    .line 573
    return-void
.end method

.method private updateNetworkInfo()V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Lcom/htc/net/usbnet/UsbnetStateTracker;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 674
    return-void
.end method


# virtual methods
.method public NetStateNotification(I)V
    .locals 13
    .parameter "state"

    .prologue
    .line 176
    const-string v10, "UsbnetStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NetStateNotification +: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v10, 0x2

    if-ne p1, v10, :cond_3

    .line 179
    iget-object v10, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 183
    :goto_0
    const/4 v10, 0x2

    if-ne p1, v10, :cond_7

    .line 185
    const/4 v7, 0x0

    .line 188
    .local v7, result:I
    :try_start_0
    iget-object v10, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v10}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v6

    .line 189
    .local v6, networkInterface:Ljava/net/NetworkInterface;
    iget-object v10, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v11, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InterfaceAddress;

    .line 192
    .local v0, addr:Ljava/net/InterfaceAddress;
    new-instance v9, Landroid/net/LinkAddress;

    invoke-direct {v9, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InterfaceAddress;)V

    .line 193
    .local v9, sLinkAddress:Landroid/net/LinkAddress;
    iget-object v10, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10, v9}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 214
    .end local v0           #addr:Ljava/net/InterfaceAddress;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #networkInterface:Ljava/net/NetworkInterface;
    .end local v9           #sLinkAddress:Landroid/net/LinkAddress;
    :catch_0
    move-exception v8

    .line 215
    .local v8, sEx:Ljava/net/UnknownHostException;
    const-string v10, "UsbnetStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NetStateNotification: UnknowHostException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v8}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 217
    const/4 v7, -0x1

    .line 224
    .end local v8           #sEx:Ljava/net/UnknownHostException;
    :cond_0
    :goto_2
    if-eqz v7, :cond_1

    .line 225
    const-string v10, "UsbnetStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "clearing LinkProperties. Error="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v10, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->clear()V

    .line 229
    :cond_1
    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/htc/net/usbnet/UsbnetStateTracker;->notifyStateChange(Landroid/net/NetworkInfo$DetailedState;I)V

    .line 239
    .end local v7           #result:I
    :cond_2
    :goto_3
    const-string v10, "UsbnetStateTracker"

    const-string v11, "NetStateNotification -"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void

    .line 181
    :cond_3
    iget-object v10, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    goto :goto_0

    .line 196
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v6       #networkInterface:Ljava/net/NetworkInterface;
    .restart local v7       #result:I
    :cond_4
    const/4 v10, 0x2

    :try_start_1
    new-array v1, v10, [Ljava/lang/String;

    .line 198
    .local v1, dnsServers:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, jj:I
    :goto_4
    const/4 v10, 0x1

    if-ge v4, v10, :cond_0

    .line 199
    add-int/lit8 v5, v4, 0x1

    .line 201
    .local v5, kk:I
    const/4 v3, 0x0

    .local v3, ii:I
    :goto_5
    const/4 v10, 0x4

    if-ge v3, v10, :cond_5

    .line 202
    sget-object v10, Lcom/htc/net/usbnet/UsbnetStateTracker;->sDnsPropNames:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v4

    .line 204
    const-string v10, "UsbnetStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "net.dns"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/htc/net/usbnet/UsbnetStateTracker;->sDnsPropNames:[Ljava/lang/String;

    aget-object v12, v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v1, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    aget-object v10, v1, v4

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    aget-object v10, v1, v4

    const-string v11, "0.0.0.0"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 207
    iget-object v10, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    aget-object v11, v1, v4

    invoke-static {v11}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 208
    iget-object v10, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v11, Landroid/net/RouteInfo;

    aget-object v12, v1, v4

    invoke-static {v12}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {v10, v11}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 198
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 211
    :cond_6
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/htc/net/usbnet/UsbnetStateTracker;->nap(I)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 218
    .end local v1           #dnsServers:[Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ii:I
    .end local v4           #jj:I
    .end local v5           #kk:I
    .end local v6           #networkInterface:Ljava/net/NetworkInterface;
    :catch_1
    move-exception v8

    .line 219
    .local v8, sEx:Ljava/net/SocketException;
    const-string v10, "UsbnetStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NetStateNotification: SocketException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v8}, Ljava/net/SocketException;->printStackTrace()V

    .line 221
    const/4 v7, -0x2

    goto/16 :goto_2

    .line 231
    .end local v7           #result:I
    .end local v8           #sEx:Ljava/net/SocketException;
    :cond_7
    const/4 v10, 0x1

    if-ne p1, v10, :cond_8

    .line 232
    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/htc/net/usbnet/UsbnetStateTracker;->notifyStateChange(Landroid/net/NetworkInfo$DetailedState;I)V

    goto/16 :goto_3

    .line 233
    :cond_8
    if-nez p1, :cond_2

    .line 235
    iget-object v10, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->clear()V

    .line 236
    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/htc/net/usbnet/UsbnetStateTracker;->notifyStateChange(Landroid/net/NetworkInfo$DetailedState;I)V

    goto/16 :goto_3
.end method

.method public defaultRouteSet(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 342
    return-void
.end method

.method public getDefaultGatewayAddr()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDefaultGatewayAddr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 2

    .prologue
    .line 267
    const-string v0, "UsbnetStateTracker"

    const-string v1, "getDhcpInfo+-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    return-object v0
.end method

.method public getIpAddress()I
    .locals 2

    .prologue
    .line 295
    const-string v0, "UsbnetStateTracker"

    const-string v1, "getTcpBufferSizesPropName +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    return v0
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 320
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 310
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getStateByDetailState(Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$State;
    .locals 1
    .parameter "setailedstate"

    .prologue
    .line 698
    sget-object v0, Lcom/htc/net/usbnet/UsbnetStateTracker;->stateMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$State;

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 349
    const-string v0, "UsbnetStateTracker"

    const-string v1, "getTcpBufferSizesPropName +-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string/jumbo v0, "net.tcp.buffersize.usbnet"

    return-object v0
.end method

.method public getUsbnetEnabledState()I
    .locals 1

    .prologue
    .line 677
    iget v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetState:I

    return v0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 483
    const-string v0, "UsbnetStateTracker"

    const-string/jumbo v1, "isAvailable+-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected notifyStateChange(Landroid/net/NetworkInfo$DetailedState;I)V
    .locals 4
    .parameter "newState"
    .parameter "networkId"

    .prologue
    .line 536
    const-string v1, "UsbnetStateTracker"

    const-string/jumbo v2, "notifyStateChange"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mCsHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 539
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 540
    return-void
.end method

.method public privateDnsRouteSet(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 642
    return-void
.end method

.method public reconnect()Z
    .locals 2

    .prologue
    .line 547
    const-string v0, "UsbnetStateTracker"

    const-string/jumbo v1, "reconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 549
    const/4 v0, 0x1

    return v0
.end method

.method public requestConnectionInfo()Lcom/htc/net/usbnet/UsbnetInfo;
    .locals 2

    .prologue
    .line 512
    const-string v0, "UsbnetStateTracker"

    const-string/jumbo v1, "requestConnectionInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetInfo:Lcom/htc/net/usbnet/UsbnetInfo;

    invoke-direct {p0, v0}, Lcom/htc/net/usbnet/UsbnetStateTracker;->requestPolledInfo(Lcom/htc/net/usbnet/UsbnetInfo;)V

    .line 514
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetInfo:Lcom/htc/net/usbnet/UsbnetInfo;

    return-object v0
.end method

.method public resetInterface()V
    .locals 2

    .prologue
    .line 464
    const-string v0, "UsbnetStateTracker"

    const-string/jumbo v1, "resetInterface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetInfo:Lcom/htc/net/usbnet/UsbnetInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/net/usbnet/UsbnetInfo;->setIpAddress(I)V

    .line 473
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    .line 474
    return-void
.end method

.method public setDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 627
    const-string v0, "UsbnetStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataEnabled: IGNORING enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-void
.end method

.method public setDependencyMet(Z)V
    .locals 0
    .parameter "met"

    .prologue
    .line 777
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 495
    const-string v0, "UsbnetStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ignoring setPolicyDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void
.end method

.method public setRadio(Z)Z
    .locals 2
    .parameter "turnOn"

    .prologue
    .line 558
    const-string v0, "UsbnetStateTracker"

    const-string/jumbo v1, "setRadio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetController:Lcom/htc/net/usbnet/UsbnetController;

    invoke-virtual {v0, p1}, Lcom/htc/net/usbnet/UsbnetController;->setUsbnetEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setTeardownRequested(Z)V
    .locals 1
    .parameter "isRequested"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 169
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 490
    const-string v0, "UsbnetStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ignoring setUserDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "target"

    .prologue
    .line 579
    iput-object p2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mCsHandler:Landroid/os/Handler;

    .line 580
    iput-object p1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mContext:Landroid/content/Context;

    .line 586
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usbnet"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/net/usbnet/UsbnetController;

    iput-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetController:Lcom/htc/net/usbnet/UsbnetController;

    .line 587
    return-void
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 603
    const/4 v0, -0x1

    return v0
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 620
    const/4 v0, -0x1

    return v0
.end method

.method public teardown()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 651
    const-string v0, "UsbnetStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "teardown, mTornDownByConnMgr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mTornDownByConnMgr:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const-string v0, "UsbnetStateTracker"

    const-string v1, "DEVICE_STOP_EVENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 654
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 659
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 660
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetInfo:Lcom/htc/net/usbnet/UsbnetInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/htc/net/usbnet/UsbnetStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 661
    const-string/jumbo v1, "interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/htc/net/usbnet/UsbnetStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 662
    iget-object v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/htc/net/usbnet/UsbnetStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 663
    const-string v1, "haveIpAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mHaveIPAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", obtainingIpAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mObtainingIPAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/htc/net/usbnet/UsbnetStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", explicitlyDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mTornDownByConnMgr:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 665
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateUsbnetEnabledState(I)V
    .locals 5
    .parameter "currentState"

    .prologue
    .line 681
    iget v1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetState:I

    .line 684
    .local v1, previousUsbnetState:I
    iput p1, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mUsbnetState:I

    .line 688
    const-string v2, "UsbnetStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send broadcast UsbnetController.USBNET_ENABLED_CHANGED_ACTION, currrent state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", previous state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.net.usbnet.USBNET_ENABLED_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "curUsbnetEnabledState"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 693
    const-string/jumbo v2, "preUsbnetEnabledState"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 694
    iget-object v2, p0, Lcom/htc/net/usbnet/UsbnetStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 695
    return-void
.end method
