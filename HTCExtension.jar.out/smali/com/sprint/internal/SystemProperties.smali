.class public Lcom/sprint/internal/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/internal/SystemProperties$CmdThread;,
        Lcom/sprint/internal/SystemProperties$SettingProp;,
        Lcom/sprint/internal/SystemProperties$Prop;
    }
.end annotation


# static fields
.field private static final A_Key:I = 0x190

.field private static final A_Key_new:I = 0x18f

.field private static final BROWSER_FORCECHANGE_CUSTOMIZE_URI:Ljava/lang/String; = "content://customization_settings/SettingTable/force_change_Browser"

.field public static final DBG:Z = false

.field private static final DSA_Operation_Mode:I = 0x1a2

.field private static final DSA_SERVER_PROXY_IP:I = 0x195

.field private static final DSA_SERVER_PROXY_PORT:I = 0x196

.field private static final DSA_SERVER_URL:I = 0x192

.field private static final HTTPPD_PROXY_ADDR:I = 0x19e

.field private static final HTTPPD_PROXY_PORT:I = 0x19f

#the value of this static final field might be set in the static constructor
.field public static final IS_BOOST_PROJECT:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_NOT_SPC_PROJECT:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_SPRINT_PROJECT:Z = false

#the value of this static final field might be set in the static constructor
.field public static final IS_VM_PROJECT:Z = false

.field private static final MDN:I = 0x1

.field private static final MEID:I = 0x1e

.field private static final MSID:I = 0x23

.field private static final PRL_Version:I = 0x19b

.field public static final PROP_MEDIA_HttpProxyHost:Ljava/lang/String; = "streamplayer_httpproxyip_HTC"

.field public static final PROP_MEDIA_HttpProxyPort:Ljava/lang/String; = "streamplayer_httpproxyport_HTC"

.field public static final PROP_MEDIA_RtspProxyHost:Ljava/lang/String; = "streamplayer_rtspproxyip_HTC"

.field public static final PROP_MEDIA_RtspProxyPort:Ljava/lang/String; = "streamplayer_rtspproxyport_HTC"

.field private static final Pseudo_ESN:I = 0x3

.field private static final RTSP_PROXY_ADDR:I = 0x19c

.field private static final RTSP_PROXY_PORT:I = 0x19d

.field private static final SELLER_NAME_420:I = 0x1a4

.field static final SETTING_PROPS:[Lcom/sprint/internal/SystemProperties$SettingProp; = null

.field private static final SIWA_Key:I = 0x10000001

.field private static final SIWA_Key_new_440:I = 0x1b8

.field static final SUPPORTED_PROPS:[Lcom/sprint/internal/SystemProperties$Prop; = null

.field private static final Slot_1_AAA_Auth_Algo:I = 0x5d

.field private static final Slot_1_AAA_SPI:I = 0x5e

.field private static final Slot_1_HA_Auth_Algo:I = 0x5a

.field private static final Slot_1_HA_Password:I = 0x5c

.field private static final Slot_1_HA_SPI:I = 0x5b

.field private static final Slot_1_Mobile_IP_Address:I = 0x57

.field private static final Slot_1_NAI:I = 0x2

.field private static final Slot_1_NAI_Password:I = 0x2b

.field private static final Slot_1_Primary_HA:I = 0x32

.field private static final Slot_1_Reverse_Tunnel:I = 0x56

.field private static final Slot_1_Secondary_HA:I = 0x33

.field private static TAG:Ljava/lang/String; = null

.field private static final UAProf:I = 0xe

.field private static final countLock:Ljava/lang/Object;

.field private static dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

.field public static flagLoad:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSuspendLock:Ljava/lang/Object;

.field private mSuspendLock_set:Ljava/lang/Object;

.field message:Ljava/lang/String;

.field private signaturePass:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 31
    const-string v0, "HTC-DSA-SystemProperties"

    sput-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    .line 37
    sput-boolean v2, Lcom/sprint/internal/SystemProperties;->flagLoad:Z

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    .line 44
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_SPRINT_PROJECT:Z

    .line 45
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xaf

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_VM_PROJECT:Z

    .line 46
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xc

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_BOOST_PROJECT:Z

    .line 47
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_SPRINT_PROJECT:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_VM_PROJECT:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_BOOST_PROJECT:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sprint/internal/SystemProperties;->countLock:Ljava/lang/Object;

    .line 583
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/sprint/internal/SystemProperties$Prop;

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const-string v4, "MDN"

    invoke-direct {v3, v1, v4, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v0, v2

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const-string v4, "Slot1 NAI"

    invoke-direct {v3, v8, v4, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v0, v1

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const-string v4, "Pseudo ESN"

    invoke-direct {v3, v9, v4, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v0, v8

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v4, 0xe

    const-string v5, "UAProf"

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v0, v9

    new-instance v3, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v4, 0x1e

    const-string v5, "MEID"

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v3, v0, v10

    const/4 v3, 0x5

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x23

    const-string v6, "MSID"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/4 v3, 0x6

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x2b

    const-string v6, "Slot1 NAI Password"

    invoke-direct {v4, v5, v6, v2, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/4 v3, 0x7

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x32

    const-string v6, "Slot1 Primary HA"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x8

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x33

    const-string v6, "Slot1 Secondary HA"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x9

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x56

    const-string v6, "Slot1 Reverse Tunneling"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0xa

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x57

    const-string v6, "Slot1 Mobile IP"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0xb

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x5a

    const-string v6, "Slot1 HA Auth Algorithm"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0xc

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x5b

    const-string v6, "Slot1 HA SPI"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0xd

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x5c

    const-string v6, "Slot1 HA Password"

    invoke-direct {v4, v5, v6, v2, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0xe

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x5d

    const-string v6, "Slot1 AAA Auth Algorithm"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0xf

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x5e

    const-string v6, "Slot1 AAA SPI"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x10

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x18f

    const-string v6, "A-Key"

    invoke-direct {v4, v5, v6, v2, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x11

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x190

    const-string v6, "A-Key"

    invoke-direct {v4, v5, v6, v2, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x12

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x192

    const-string v6, "DSA Server URL"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x13

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x195

    const-string v6, "DSA Server Proxy IP"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x14

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x196

    const-string v6, "DSA Server Proxy Port"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x15

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x197

    const-string v6, "MS-Assisted Timout"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x16

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x19b

    const-string v6, "PRL Version"

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x17

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x19c

    const-string v6, "RTSP Proxy Address"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x18

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x19d

    const-string v6, "RTSP Proxy Port"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x19

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x19e

    const-string v6, "RTSP HTTPPD Address"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x1a

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x19f

    const-string v6, "RTSP HTTPPD Port"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x1b

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1a2

    const-string v6, "DSA Operation Mode"

    invoke-direct {v4, v5, v6, v2, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x1c

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1a4

    const-string v6, "Seller Name"

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x1d

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const v5, 0x10000001

    const-string v6, "SIWA Key"

    sget-boolean v7, Lcom/sprint/internal/SystemProperties;->IS_VM_PROJECT:Z

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x1e

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x1b8

    const-string v6, "SIWA Key"

    sget-boolean v7, Lcom/sprint/internal/SystemProperties;->IS_VM_PROJECT:Z

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    const/16 v3, 0x1f

    new-instance v4, Lcom/sprint/internal/SystemProperties$Prop;

    const/16 v5, 0x12c

    const-string v6, "MobileSync Enabled"

    invoke-direct {v4, v5, v6, v1, v1}, Lcom/sprint/internal/SystemProperties$Prop;-><init>(ILjava/lang/String;ZZ)V

    aput-object v4, v0, v3

    sput-object v0, Lcom/sprint/internal/SystemProperties;->SUPPORTED_PROPS:[Lcom/sprint/internal/SystemProperties$Prop;

    .line 627
    new-array v0, v10, [Lcom/sprint/internal/SystemProperties$SettingProp;

    new-instance v3, Lcom/sprint/internal/SystemProperties$SettingProp;

    const/16 v4, 0x19c

    const-string v5, "streamplayer_rtspproxyip_HTC"

    invoke-direct {v3, v4, v5}, Lcom/sprint/internal/SystemProperties$SettingProp;-><init>(ILjava/lang/String;)V

    aput-object v3, v0, v2

    new-instance v2, Lcom/sprint/internal/SystemProperties$SettingProp;

    const/16 v3, 0x19d

    const-string v4, "streamplayer_rtspproxyport_HTC"

    invoke-direct {v2, v3, v4}, Lcom/sprint/internal/SystemProperties$SettingProp;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/sprint/internal/SystemProperties$SettingProp;

    const/16 v2, 0x19e

    const-string v3, "streamplayer_httpproxyip_HTC"

    invoke-direct {v1, v2, v3}, Lcom/sprint/internal/SystemProperties$SettingProp;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/sprint/internal/SystemProperties$SettingProp;

    const/16 v2, 0x19f

    const-string v3, "streamplayer_httpproxyport_HTC"

    invoke-direct {v1, v2, v3}, Lcom/sprint/internal/SystemProperties$SettingProp;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v9

    sput-object v0, Lcom/sprint/internal/SystemProperties;->SETTING_PROPS:[Lcom/sprint/internal/SystemProperties$SettingProp;

    return-void

    :cond_0
    move v0, v2

    .line 44
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 45
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 46
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 47
    goto/16 :goto_3
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctxt"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/internal/SystemProperties;->signaturePass:Z

    .line 163
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->message:Ljava/lang/String;

    .line 272
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock:Ljava/lang/Object;

    .line 273
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock_set:Ljava/lang/Object;

    .line 55
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iput-object p1, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    .line 58
    sget-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemProperties - Caller: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {p1}, Lcom/sprint/internal/ConnectionManager;->checkCallerSignature(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprint/internal/SystemProperties;->signaturePass:Z

    .line 62
    iget-boolean v0, p0, Lcom/sprint/internal/SystemProperties;->signaturePass:Z

    if-nez v0, :cond_0

    .line 63
    sget-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " signature fail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private GetATAgent()Lcom/sprint/internal/dm/DMAgentConnector;
    .locals 5

    .prologue
    .line 72
    sget-object v2, Lcom/sprint/internal/SystemProperties;->countLock:Ljava/lang/Object;

    monitor-enter v2

    .line 74
    :try_start_0
    sget-object v1, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    invoke-virtual {v1}, Lcom/sprint/internal/dm/DMAgentConnector;->isError()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    invoke-virtual {v1}, Lcom/sprint/internal/dm/DMAgentConnector;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    :cond_0
    sget-object v1, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v3, "Release AT agent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Lcom/sprint/internal/SystemProperties;->ReleaseATAgent()V

    .line 78
    :cond_1
    sget-object v1, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    if-nez v1, :cond_2

    .line 79
    sget-object v1, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v3, "nul: Initial AT agent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v1, Lcom/sprint/internal/dm/DMAgentConnector;

    const-string v3, ":IDOMADM"

    invoke-direct {v1, v3}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    .line 81
    sget-object v1, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    invoke-virtual {v1}, Lcom/sprint/internal/dm/DMAgentConnector;->openConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_2
    :try_start_1
    sget-object v1, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dmATAgent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-object v1, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countLock:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sprint/internal/SystemProperties;->countLock:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v1, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    monitor-exit v2

    :goto_0
    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 89
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static declared-synchronized ReleaseATAgent()V
    .locals 4

    .prologue
    .line 93
    const-class v1, Lcom/sprint/internal/SystemProperties;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/sprint/internal/SystemProperties;->countLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    :try_start_1
    sget-object v0, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    invoke-virtual {v0}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    :cond_0
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    .line 103
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    monitor-exit v1

    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 101
    const/4 v0, 0x0

    :try_start_3
    sput-object v0, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 93
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 101
    :catchall_2
    move-exception v0

    const/4 v3, 0x0

    :try_start_5
    sput-object v3, Lcom/sprint/internal/SystemProperties;->dmATAgent:Lcom/sprint/internal/dm/DMAgentConnector;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method static synthetic access$000(Lcom/sprint/internal/SystemProperties;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sprint/internal/SystemProperties;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sprint/internal/SystemProperties;->getStringViaDMagent(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sprint/internal/SystemProperties;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock_set:Ljava/lang/Object;

    return-object v0
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 776
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 777
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 778
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 780
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 781
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 782
    const/4 v0, 0x0

    .line 786
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 785
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private getDSA()Ljava/lang/String;
    .locals 3

    .prologue
    .line 714
    iget-object v2, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 715
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, ""

    .line 716
    .local v1, strDSAURL:Ljava/lang/String;
    const-string v2, "dsa_server_url"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 717
    if-nez v1, :cond_0

    .line 718
    const-string v1, ""

    .line 720
    :cond_0
    return-object v1
.end method

.method private getDSA(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .parameter "contentResolver"

    .prologue
    .line 709
    const-string v0, ""

    return-object v0
.end method

.method private getDSAProxyIP()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dsa_proxy_url"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, proxyUrl:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 110
    const-string v2, ""

    .line 115
    .end local v1           #proxyUrl:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 112
    .restart local v1       #proxyUrl:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 113
    .end local v1           #proxyUrl:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    const-string v2, ""

    goto :goto_0
.end method

.method private getDSAProxyPort()Ljava/lang/String;
    .locals 4

    .prologue
    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dsa_proxy_url"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, proxyUrl:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 122
    const-string v2, "0"

    .line 127
    .end local v1           #proxyUrl:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 124
    .restart local v1       #proxyUrl:Ljava/lang/String;
    :cond_0
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 125
    .end local v1           #proxyUrl:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    const-string v2, ""

    goto :goto_0
.end method

.method private getOP_Mode(Lcom/sprint/internal/dm/DMAgentConnector;)Ljava/lang/String;
    .locals 1
    .parameter "dmAgent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 850
    const-string v0, ""

    return-object v0
.end method

.method private getPRLVer()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 1028
    const-string v2, "ro.cdma.prl"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1029
    .local v0, iprl_prop:I
    if-lez v0, :cond_1

    .line 1030
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1031
    .local v1, prl_prop:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_0

    .line 1032
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1035
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 1036
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1040
    .end local v1           #prl_prop:Ljava/lang/String;
    :goto_1
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method private getSIWA_Key()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 811
    const/4 v2, 0x0

    .line 812
    .local v2, isException:Z
    const-string v3, ""

    .line 813
    .local v3, result:Ljava/lang/String;
    const/4 v5, 0x0

    .line 814
    .local v5, s_Key:Ljava/lang/String;
    sget-object v7, Lcom/sprint/internal/SystemProperties;->countLock:Ljava/lang/Object;

    monitor-enter v7

    .line 815
    :try_start_0
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->GetATAgent()Lcom/sprint/internal/dm/DMAgentConnector;

    move-result-object v0

    .line 816
    .local v0, dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    sget-object v6, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY1:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/sprint/internal/dm/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 817
    const-string v6, "AT+HTC_SIWA_KEY=?"

    invoke-virtual {v0, v6}, Lcom/sprint/internal/dm/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 818
    sget-object v6, Lcom/sprint/internal/dm/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/sprint/internal/dm/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 819
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    if-nez v5, :cond_0

    .line 821
    sget-object v6, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v7, "s_Key is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v2, 0x1

    .line 841
    :goto_0
    if-eqz v2, :cond_2

    .line 842
    new-instance v6, Lcom/sprint/internal/SystemPropertiesException;

    const-string v7, "SystemProperty readable exception: not allow to read"

    invoke-direct {v6, v7}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 819
    .end local v0           #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 826
    .restart local v0       #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    :cond_0
    :try_start_2
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 828
    .local v4, sKey:[Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 829
    sget-object v6, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSIWA_Key result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const/4 v2, 0x1

    .line 834
    :cond_1
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_0

    .line 835
    .end local v4           #sKey:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 836
    .local v1, e:Ljava/lang/Exception;
    sget-object v6, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v7, "s_Key[1].toString().trim() ERROR !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v2, 0x1

    goto :goto_0

    .line 845
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    return-object v3
.end method

.method private getSIWA_Key(Lcom/sprint/internal/dm/DMAgentConnector;)Ljava/lang/String;
    .locals 1
    .parameter "dmAgent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 808
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSellerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 967
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_SPRINT_PROJECT:Z

    if-eqz v0, :cond_0

    .line 968
    const-string v0, "Sprint"

    .line 994
    :goto_0
    return-object v0

    .line 970
    :cond_0
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_VM_PROJECT:Z

    if-eqz v0, :cond_1

    .line 971
    const-string v0, "Virgin"

    goto :goto_0

    .line 973
    :cond_1
    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_BOOST_PROJECT:Z

    if-eqz v0, :cond_2

    .line 974
    const-string v0, "Boost"

    goto :goto_0

    .line 994
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private getSettingValue(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 1
    .parameter "cr"
    .parameter "id"

    .prologue
    .line 725
    invoke-static {p2}, Lcom/sprint/internal/SystemProperties$SettingProp;->getSettingName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringViaDMagent(I)Ljava/lang/String;
    .locals 13
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 276
    const-string v6, ""

    .line 277
    .local v6, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 283
    .local v0, dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    const v8, 0x10000001

    if-eq p1, v8, :cond_0

    const/16 v8, 0x1b8

    if-ne p1, v8, :cond_1

    .line 285
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getSIWA_Key()Ljava/lang/String;
    :try_end_0
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v7, v6

    .line 347
    .end local v6           #result:Ljava/lang/String;
    .local v7, result:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 286
    .end local v7           #result:Ljava/lang/String;
    .restart local v6       #result:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 287
    .local v3, e:Lcom/sprint/internal/SystemPropertiesException;
    throw v3

    .line 295
    .end local v3           #e:Lcom/sprint/internal/SystemPropertiesException;
    :cond_1
    new-instance v0, Lcom/sprint/internal/dm/DMAgentConnector;

    .end local v0           #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    const-string v8, ":XCMD"

    invoke-direct {v0, v8}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .line 296
    .restart local v0       #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    if-eqz v0, :cond_4

    .line 298
    :try_start_1
    invoke-virtual {v0}, Lcom/sprint/internal/dm/DMAgentConnector;->openConnection()Z

    .line 299
    const/16 v8, 0x23

    if-ne p1, v8, :cond_5

    .line 301
    const-string v8, "C018"

    invoke-virtual {v0, v8}, Lcom/sprint/internal/dm/DMAgentConnector;->sendReadCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, min1:Ljava/lang/String;
    invoke-static {v4}, Lcom/sprint/internal/dm/DMAgentConnector;->reverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 303
    .local v1, dwMin1:Ljava/lang/Long;
    invoke-static {v1}, Lcom/sprint/internal/dm/DMAgentConnector;->decodeBCDMin1(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v4

    .line 306
    const-string v8, "C019"

    invoke-virtual {v0, v8}, Lcom/sprint/internal/dm/DMAgentConnector;->sendReadCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, min2:Ljava/lang/String;
    invoke-static {v5}, Lcom/sprint/internal/dm/DMAgentConnector;->reverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 309
    .local v2, dwMin2:Ljava/lang/Long;
    const-string v8, "%03d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-wide/16 v11, 0x3

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/sprint/internal/dm/DMAgentConnector;->decodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 310
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    .line 338
    .end local v1           #dwMin1:Ljava/lang/Long;
    .end local v2           #dwMin2:Ljava/lang/Long;
    .end local v4           #min1:Ljava/lang/String;
    .end local v5           #min2:Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 339
    :try_start_2
    invoke-virtual {v0}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 344
    :cond_3
    :goto_2
    const/4 v0, 0x0

    :cond_4
    :goto_3
    move-object v7, v6

    .line 347
    .end local v6           #result:Ljava/lang/String;
    .restart local v7       #result:Ljava/lang/String;
    goto :goto_0

    .line 312
    .end local v7           #result:Ljava/lang/String;
    .restart local v6       #result:Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-static {p1}, Lcom/sprint/internal/SystemProperties;->mappingItem(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/sprint/internal/dm/DMAgentConnector;->sendReadCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 318
    invoke-virtual {p0, p1}, Lcom/sprint/internal/SystemProperties;->isTransIPid(I)Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v6, :cond_7

    .line 319
    invoke-static {v6}, Lcom/sprint/internal/dm/DMAgentConnector;->transHexStringtoIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 328
    :cond_6
    :goto_4
    if-nez v6, :cond_2

    .line 329
    const-string v6, ""

    goto :goto_1

    .line 321
    :cond_7
    invoke-virtual {p0, p1}, Lcom/sprint/internal/SystemProperties;->isTransHexid(I)Z

    move-result v8

    if-eqz v8, :cond_8

    if-eqz v6, :cond_8

    .line 322
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/sprint/internal/dm/DMAgentConnector;->hexStringToByte(Ljava/lang/String;Z)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    .end local v6           #result:Ljava/lang/String;
    .restart local v7       #result:Ljava/lang/String;
    move-object v6, v7

    .end local v7           #result:Ljava/lang/String;
    .restart local v6       #result:Ljava/lang/String;
    goto :goto_4

    .line 324
    :cond_8
    invoke-virtual {p0, p1}, Lcom/sprint/internal/SystemProperties;->isRevert(I)Z

    move-result v8

    if-eqz v8, :cond_9

    if-eqz v6, :cond_9

    .line 325
    invoke-static {v6}, Lcom/sprint/internal/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 326
    :cond_9
    const/16 v8, 0x56

    if-ne p1, v8, :cond_6

    .line 327
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v6

    goto :goto_4

    .line 341
    :catch_1
    move-exception v3

    .line 342
    .local v3, e:Ljava/lang/Exception;
    sget-object v8, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "close Connection fail"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 333
    .end local v3           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 335
    .restart local v3       #e:Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 338
    if-eqz v0, :cond_a

    .line 339
    :try_start_4
    invoke-virtual {v0}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 344
    :cond_a
    :goto_5
    const/4 v0, 0x0

    .line 345
    goto :goto_3

    .line 341
    :catch_3
    move-exception v3

    .line 342
    sget-object v8, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "close Connection fail"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 337
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 338
    if-eqz v0, :cond_b

    .line 339
    :try_start_5
    invoke-virtual {v0}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 344
    :cond_b
    :goto_6
    const/4 v0, 0x0

    throw v8

    .line 341
    :catch_4
    move-exception v3

    .line 342
    .restart local v3       #e:Ljava/lang/Exception;
    sget-object v9, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "close Connection fail"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private isMainThread()Z
    .locals 6

    .prologue
    .line 1099
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 1100
    .local v2, myLooper:Landroid/os/Looper;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 1101
    .local v1, mainLooper:Landroid/os/Looper;
    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    .line 1102
    .local v0, bIsMainLooper:Z
    :goto_0
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bIsMainLooper="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return v0

    .line 1101
    .end local v0           #bIsMainLooper:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 12
    .parameter "context"
    .parameter "customizeURI"
    .parameter "selection"

    .prologue
    const/4 v11, 0x0

    .line 737
    const/4 v7, 0x0

    .line 738
    .local v7, c:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 741
    .local v6, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 742
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 743
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 745
    if-nez v7, :cond_1

    .line 746
    sget-object v2, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Quering browser customization database failed, abort performing customization, Customization URI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    if-eqz v7, :cond_0

    .line 766
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 767
    const/4 v7, 0x0

    :cond_0
    move-object v2, v11

    .line 771
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 750
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    .line 751
    sget-object v2, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Quering browser customization database failed, abort performing customization, Customization URI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 753
    const/4 v7, 0x0

    .line 765
    if-eqz v7, :cond_2

    .line 766
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 767
    const/4 v7, 0x0

    :cond_2
    move-object v2, v11

    goto :goto_0

    .line 757
    :cond_3
    :try_start_2
    const-string v2, "value"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 759
    .local v10, idValue:I
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 760
    .local v8, data:[B
    invoke-direct {p0, v8}, Lcom/sprint/internal/SystemProperties;->byteArray2Bundle([B)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 765
    if-eqz v7, :cond_4

    .line 766
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 767
    const/4 v7, 0x0

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v8           #data:[B
    .end local v10           #idValue:I
    :cond_4
    :goto_1
    move-object v2, v6

    .line 771
    goto :goto_0

    .line 761
    :catch_0
    move-exception v9

    .line 762
    .local v9, ex:Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v3, "Quering browser customization database failed with exception, abort performing customization"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 763
    const/4 v6, 0x0

    .line 765
    if-eqz v7, :cond_4

    .line 766
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 767
    const/4 v7, 0x0

    goto :goto_1

    .line 765
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_5

    .line 766
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 767
    const/4 v7, 0x0

    :cond_5
    throw v2
.end method

.method public static mappingItem(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 639
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_0

    .line 676
    :goto_0
    return-object v0

    .line 640
    :cond_0
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 642
    :sswitch_0
    const-string v0, "C001"

    goto :goto_0

    .line 646
    :sswitch_1
    const-string v0, "C004"

    goto :goto_0

    .line 648
    :sswitch_2
    const-string v0, "C003"

    goto :goto_0

    .line 650
    :sswitch_3
    const-string v0, "C005"

    goto :goto_0

    .line 652
    :sswitch_4
    const-string v0, "C005"

    goto :goto_0

    .line 654
    :sswitch_5
    const-string v0, "C006"

    goto :goto_0

    .line 656
    :sswitch_6
    const-string v0, "C007"

    goto :goto_0

    .line 658
    :sswitch_7
    const-string v0, "C008"

    goto :goto_0

    .line 660
    :sswitch_8
    const-string v0, "C009"

    goto :goto_0

    .line 662
    :sswitch_9
    const-string v0, "C010"

    goto :goto_0

    .line 664
    :sswitch_a
    const-string v0, "C011"

    goto :goto_0

    .line 666
    :sswitch_b
    const-string v0, "C012"

    goto :goto_0

    .line 668
    :sswitch_c
    const-string v0, "C013"

    goto :goto_0

    .line 670
    :sswitch_d
    const-string v0, "C014"

    goto :goto_0

    .line 672
    :sswitch_e
    const-string v0, "C015"

    goto :goto_0

    .line 674
    :sswitch_f
    const-string v0, "C016"

    goto :goto_0

    .line 640
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x3 -> :sswitch_2
        0x1e -> :sswitch_1
        0x2b -> :sswitch_6
        0x32 -> :sswitch_7
        0x33 -> :sswitch_8
        0x56 -> :sswitch_e
        0x57 -> :sswitch_f
        0x5a -> :sswitch_9
        0x5b -> :sswitch_a
        0x5c -> :sswitch_b
        0x5d -> :sswitch_c
        0x5e -> :sswitch_d
        0x18f -> :sswitch_4
        0x190 -> :sswitch_3
    .end sparse-switch
.end method

.method private refreshUI()V
    .locals 3

    .prologue
    .line 496
    iget-object v0, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "APP_REQUEST_REFRESH_PHONE_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 497
    return-void
.end method

.method private setDSAProxyIP(Ljava/lang/String;)V
    .locals 5
    .parameter "strIP"

    .prologue
    .line 132
    const-string v2, ""

    .line 133
    .local v2, proxyUrl:Ljava/lang/String;
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getDSAProxyPort()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, port:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 136
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    :goto_0
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dsa_proxy_url"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
    :goto_1
    return-void

    .line 139
    :cond_0
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v4, "Invalid Proxy"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setDSAProxyPort(Ljava/lang/String;)V
    .locals 5
    .parameter "strPort"

    .prologue
    .line 148
    const-string v1, ""

    .line 149
    .local v1, proxyUrl:Ljava/lang/String;
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getDSAProxyIP()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, strIP:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 152
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    :goto_0
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dsa_proxy_url"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 162
    :goto_1
    return-void

    .line 155
    :cond_0
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v4, "Invalid Proxy"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setOP_Mode(Lcom/sprint/internal/dm/DMAgentConnector;Ljava/lang/String;)V
    .locals 0
    .parameter "dmAgent"
    .parameter "strMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 854
    return-void
.end method

.method private setSettingValue(Landroid/content/ContentResolver;ILjava/lang/String;)V
    .locals 3
    .parameter "cr"
    .parameter "id"
    .parameter "value"

    .prologue
    .line 730
    sget-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/sprint/internal/SystemProperties$SettingProp;->getSettingName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-static {p2}, Lcom/sprint/internal/SystemProperties$SettingProp;->getSettingName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 732
    sget-object v0, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/sprint/internal/SystemProperties;->getSettingValue(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 11
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 165
    sget-boolean v8, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v8, :cond_1

    move-object v3, v7

    .line 268
    :cond_0
    :goto_0
    return-object v3

    .line 167
    :cond_1
    iget-boolean v8, p0, Lcom/sprint/internal/SystemProperties;->signaturePass:Z

    if-nez v8, :cond_2

    .line 168
    new-instance v7, Lcom/sprint/internal/SystemPropertiesException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Verify "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " signature fail."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 170
    :cond_2
    invoke-static {p1}, Lcom/sprint/internal/SystemProperties$Prop;->getReadable(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 171
    sget-object v7, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not allowed to read"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v7, Lcom/sprint/internal/SystemPropertiesException;

    const-string v8, "SystemProperty readable exception: not allow to read"

    invoke-direct {v7, v8}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 176
    :cond_3
    const-string v8, "com.sprint.internal.permission.SYSTEMPROPERTIES"

    invoke-static {v8}, Lcom/sprint/internal/SecurityManager;->checkPermission(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 185
    const-string v3, ""

    .line 186
    .local v3, result:Ljava/lang/String;
    const/16 v8, 0x5a

    if-eq p1, v8, :cond_4

    const/16 v8, 0x5d

    if-ne p1, v8, :cond_6

    .line 187
    :cond_4
    const-string v3, "MD5"

    goto :goto_0

    .line 179
    .end local v3           #result:Ljava/lang/String;
    :cond_5
    sget-object v7, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v8, "****** require SYSTEMPROPERTIES permission-getString!!****** "

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v7, Lcom/sprint/internal/SystemPropertiesException;

    const-string v8, "Current process does not hascom.sprint.internal.permission.SYSTEMPROPERTIES"

    invoke-direct {v7, v8}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 189
    .restart local v3       #result:Ljava/lang/String;
    :cond_6
    const/16 v8, 0x192

    if-ne p1, v8, :cond_7

    .line 190
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getDSA()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 192
    :cond_7
    const/16 v8, 0x195

    if-ne p1, v8, :cond_8

    .line 193
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getDSAProxyIP()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 195
    :cond_8
    const/16 v8, 0x196

    if-ne p1, v8, :cond_9

    .line 196
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getDSAProxyPort()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 198
    :cond_9
    const/16 v8, 0x19c

    if-lt p1, v8, :cond_a

    const/16 v8, 0x19f

    if-gt p1, v8, :cond_a

    .line 199
    iget-object v7, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {p0, v7, p1}, Lcom/sprint/internal/SystemProperties;->getSettingValue(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 201
    :cond_a
    const/16 v8, 0x19b

    if-ne p1, v8, :cond_b

    .line 202
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getPRLVer()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 204
    :cond_b
    const/16 v8, 0x1a4

    if-ne p1, v8, :cond_c

    .line 205
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->getSellerName()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 208
    :cond_c
    const/16 v8, 0xe

    if-ne p1, v8, :cond_e

    .line 209
    const-string v3, ""

    .line 210
    iget-object v8, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    const-string v9, "content://customization_settings/SettingTable/force_change_Browser"

    invoke-direct {p0, v8, v9, v7}, Lcom/sprint/internal/SystemProperties;->loadCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 213
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "ua_profile"

    .line 214
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 215
    .local v5, ua_profileBundle:Landroid/os/Bundle;
    if-nez v5, :cond_d

    .line 216
    sget-object v7, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v8, "No UA profile customization data found, abort customizing browser UA profile"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_d
    const-string v2, "value"

    .line 222
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 225
    .local v6, value:Ljava/lang/String;
    sget-object v7, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uaProfile:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    if-eqz v6, :cond_0

    .line 227
    move-object v3, v6

    goto/16 :goto_0

    .line 231
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #key:Ljava/lang/String;
    .end local v5           #ua_profileBundle:Landroid/os/Bundle;
    .end local v6           #value:Ljava/lang/String;
    :cond_e
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->isMainThread()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 233
    new-instance v4, Lcom/sprint/internal/SystemProperties$1;

    invoke-direct {v4, p0}, Lcom/sprint/internal/SystemProperties$1;-><init>(Lcom/sprint/internal/SystemProperties;)V

    .line 251
    .local v4, t:Lcom/sprint/internal/SystemProperties$CmdThread;
    iget-object v8, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v8

    .line 252
    :try_start_0
    invoke-virtual {v4, p1}, Lcom/sprint/internal/SystemProperties$CmdThread;->setID(I)V

    .line 253
    invoke-virtual {v4}, Lcom/sprint/internal/SystemProperties$CmdThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :try_start_1
    iget-object v7, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock:Ljava/lang/Object;

    const-wide/16 v9, 0x1388

    invoke-virtual {v7, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 260
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Lcom/sprint/internal/SystemProperties$CmdThread;->getStrResult()Ljava/lang/String;

    move-result-object v3

    .line 261
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 256
    :catch_0
    move-exception v1

    .line 257
    .local v1, ie:Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v7, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v9, "wait><"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 263
    .end local v1           #ie:Ljava/lang/InterruptedException;
    .end local v4           #t:Lcom/sprint/internal/SystemProperties$CmdThread;
    :cond_f
    invoke-direct {p0, p1}, Lcom/sprint/internal/SystemProperties;->getStringViaDMagent(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public isRevert(I)Z
    .locals 2
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    .line 701
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_1

    .line 704
    :cond_0
    :goto_0
    return v0

    .line 702
    :cond_1
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1e

    if-eq p1, v1, :cond_0

    const/16 v1, 0x5e

    if-eq p1, v1, :cond_0

    const/16 v1, 0x5b

    if-eq p1, v1, :cond_0

    .line 704
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransHexid(I)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 693
    sget-boolean v2, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v2, :cond_1

    .line 698
    :cond_0
    :goto_0
    return v0

    .line 694
    :cond_1
    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/16 v2, 0x2b

    if-eq p1, v2, :cond_2

    const/16 v2, 0x5c

    if-ne p1, v2, :cond_0

    :cond_2
    move v0, v1

    .line 697
    goto :goto_0
.end method

.method public isTransIPid(I)Z
    .locals 2
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    .line 682
    sget-boolean v1, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v1, :cond_1

    .line 689
    :cond_0
    :goto_0
    return v0

    .line 683
    :cond_1
    const/16 v1, 0x32

    if-eq p1, v1, :cond_0

    const/16 v1, 0x33

    if-eq p1, v1, :cond_0

    const/16 v1, 0x57

    if-eq p1, v1, :cond_0

    .line 689
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDSA(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .parameter "contentResolver"
    .parameter "value"

    .prologue
    .line 791
    const/4 v0, 0x0

    return v0
.end method

.method public setDSA(Ljava/lang/String;)I
    .locals 4
    .parameter "value"

    .prologue
    .line 796
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 797
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 799
    .local v0, blStore:Z
    :try_start_0
    const-string v3, "dsa_server_url"

    invoke-static {v1, v3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 803
    :goto_0
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 800
    :catch_0
    move-exception v2

    .line 801
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 803
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public setString(ILjava/lang/String;)V
    .locals 7
    .parameter "id"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 417
    sget-boolean v3, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v3, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setString("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-boolean v3, p0, Lcom/sprint/internal/SystemProperties;->signaturePass:Z

    if-nez v3, :cond_2

    .line 420
    new-instance v3, Lcom/sprint/internal/SystemPropertiesException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Verify "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " signature fail."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 422
    :cond_2
    invoke-static {p1}, Lcom/sprint/internal/SystemProperties$Prop;->getWritable(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 423
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not allowed to write"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v3, Lcom/sprint/internal/SystemPropertiesException;

    const-string v4, "SystemProperty writable exception: not allow to write"

    invoke-direct {v3, v4}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 428
    :cond_3
    const-string v3, "com.sprint.internal.permission.SYSTEMPROPERTIES_WRITE"

    invoke-static {v3}, Lcom/sprint/internal/SecurityManager;->checkPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 429
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v4, "****** require SYSTEMPROPERTIES_WRITE permission-setString!!****** "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    new-instance v3, Lcom/sprint/internal/SystemPropertiesException;

    const-string v4, "Current process does not hascom.sprint.internal.permission.SYSTEMPROPERTIES_WRITE"

    invoke-direct {v3, v4}, Lcom/sprint/internal/SystemPropertiesException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 434
    :cond_4
    const/4 v0, 0x1

    .line 435
    .local v0, bPropNoDMAgent:Z
    const/16 v3, 0x192

    if-ne p1, v3, :cond_5

    .line 436
    invoke-virtual {p0, p2}, Lcom/sprint/internal/SystemProperties;->setDSA(Ljava/lang/String;)I

    .line 453
    :goto_1
    if-nez v0, :cond_0

    .line 457
    invoke-direct {p0}, Lcom/sprint/internal/SystemProperties;->isMainThread()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 459
    new-instance v2, Lcom/sprint/internal/SystemProperties$2;

    invoke-direct {v2, p0}, Lcom/sprint/internal/SystemProperties$2;-><init>(Lcom/sprint/internal/SystemProperties;)V

    .line 478
    .local v2, t:Lcom/sprint/internal/SystemProperties$CmdThread;
    iget-object v4, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock_set:Ljava/lang/Object;

    monitor-enter v4

    .line 479
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/sprint/internal/SystemProperties$CmdThread;->setID(I)V

    .line 480
    invoke-virtual {v2, p2}, Lcom/sprint/internal/SystemProperties$CmdThread;->setValue(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v2}, Lcom/sprint/internal/SystemProperties$CmdThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    :try_start_1
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mSuspendLock_set:Ljava/lang/Object;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 488
    :goto_2
    :try_start_2
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 438
    .end local v2           #t:Lcom/sprint/internal/SystemProperties$CmdThread;
    :cond_5
    const/16 v3, 0x19c

    if-lt p1, v3, :cond_6

    const/16 v3, 0x19f

    if-gt p1, v3, :cond_6

    .line 439
    iget-object v3, p0, Lcom/sprint/internal/SystemProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {p0, v3, p1, p2}, Lcom/sprint/internal/SystemProperties;->setSettingValue(Landroid/content/ContentResolver;ILjava/lang/String;)V

    goto :goto_1

    .line 441
    :cond_6
    const/16 v3, 0x195

    if-ne p1, v3, :cond_7

    .line 442
    invoke-direct {p0, p2}, Lcom/sprint/internal/SystemProperties;->setDSAProxyIP(Ljava/lang/String;)V

    goto :goto_1

    .line 444
    :cond_7
    const/16 v3, 0x196

    if-ne p1, v3, :cond_8

    .line 445
    invoke-direct {p0, p2}, Lcom/sprint/internal/SystemProperties;->setDSAProxyPort(Ljava/lang/String;)V

    goto :goto_1

    .line 450
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 484
    .restart local v2       #t:Lcom/sprint/internal/SystemProperties$CmdThread;
    :catch_0
    move-exception v1

    .line 485
    .local v1, ie:Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v3, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    const-string v5, "wait><"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 490
    .end local v1           #ie:Ljava/lang/InterruptedException;
    .end local v2           #t:Lcom/sprint/internal/SystemProperties$CmdThread;
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/sprint/internal/SystemProperties;->setStringViaDMAgent(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setStringViaDMAgent(ILjava/lang/String;)V
    .locals 21
    .parameter "id"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/SystemPropertiesException;
        }
    .end annotation

    .prologue
    .line 351
    new-instance v5, Lcom/sprint/internal/dm/DMAgentConnector;

    const-string v18, ":XCMD"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .line 352
    .local v5, dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    new-instance v5, Lcom/sprint/internal/dm/DMAgentConnector;

    .end local v5           #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    const-string v18, ":XCMD"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lcom/sprint/internal/dm/DMAgentConnector;-><init>(Ljava/lang/String;)V

    .line 353
    .restart local v5       #dmAgent:Lcom/sprint/internal/dm/DMAgentConnector;
    invoke-virtual {v5}, Lcom/sprint/internal/dm/DMAgentConnector;->openConnection()Z

    .line 355
    const/16 v18, 0x23

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 356
    const/16 v18, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 358
    .local v11, min1:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sprint/internal/dm/DMAgentConnector;->EncodeBCD_Min1([C)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 359
    .local v6, dwCdmaMin1:J
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    .line 360
    .local v14, strHexCdmaMin1:Ljava/lang/String;
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-static {v14, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 361
    invoke-static {v14}, Lcom/sprint/internal/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, cdmaMin1:Ljava/lang/String;
    const-string v18, "C018"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v3}, Lcom/sprint/internal/dm/DMAgentConnector;->sendWriteCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 364
    const/16 v18, 0x0

    const/16 v19, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 366
    .local v12, min2:Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 367
    .local v8, dwCdmaMin2:J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-wide/16 v19, 0x3

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/sprint/internal/dm/DMAgentConnector;->EncodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 368
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v15

    .line 369
    .local v15, strHexCdmaMin2:Ljava/lang/String;
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/sprint/internal/dm/DMAgentConnector;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 370
    invoke-static {v15}, Lcom/sprint/internal/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, cdmaMin2:Ljava/lang/String;
    const-string v18, "C019"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v4}, Lcom/sprint/internal/dm/DMAgentConnector;->sendWriteCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 373
    invoke-virtual {v5}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z

    .line 414
    .end local v3           #cdmaMin1:Ljava/lang/String;
    .end local v4           #cdmaMin2:Ljava/lang/String;
    .end local v6           #dwCdmaMin1:J
    .end local v8           #dwCdmaMin2:J
    .end local v11           #min1:Ljava/lang/String;
    .end local v12           #min2:Ljava/lang/String;
    .end local v14           #strHexCdmaMin1:Ljava/lang/String;
    .end local v15           #strHexCdmaMin2:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    const/16 v18, 0x2b

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 377
    invoke-static/range {p2 .. p2}, Lcom/sprint/internal/dm/DMAgentConnector;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 378
    .local v10, haString:Ljava/lang/String;
    const-string v18, "C007"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v10}, Lcom/sprint/internal/dm/DMAgentConnector;->sendWriteCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 379
    invoke-virtual {v5}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z

    goto :goto_0

    .line 383
    .end local v10           #haString:Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/internal/SystemProperties;->isTransIPid(I)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 385
    invoke-static/range {p2 .. p2}, Lcom/sprint/internal/dm/DMAgentConnector;->transIPtoHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 401
    :cond_3
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/sprint/internal/SystemProperties;->mappingItem(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->sendWriteCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 402
    .local v13, result:Z
    sget-object v18, Lcom/sprint/internal/SystemProperties;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setString("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "):"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 406
    invoke-direct/range {p0 .. p0}, Lcom/sprint/internal/SystemProperties;->refreshUI()V

    .line 409
    :cond_4
    const/16 v16, 0x1

    .line 410
    .local v16, tag:Z
    if-eqz v16, :cond_0

    .line 411
    invoke-virtual {v5}, Lcom/sprint/internal/dm/DMAgentConnector;->closeConnection()Z

    goto :goto_0

    .line 388
    .end local v13           #result:Z
    .end local v16           #tag:Z
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/internal/SystemProperties;->isTransHexid(I)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 390
    move-object/from16 v17, p2

    .line 391
    .local v17, tmp:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/sprint/internal/dm/DMAgentConnector;->doASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 392
    goto :goto_1

    .line 394
    .end local v17           #tmp:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/internal/SystemProperties;->isRevert(I)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 395
    const/16 v18, 0x5b

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    const/16 v18, 0x5e

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 396
    :cond_7
    const/16 v18, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sprint/internal/dm/DMAgentConnector;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 398
    :cond_8
    invoke-static/range {p2 .. p2}, Lcom/sprint/internal/dm/DMAgentConnector;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method
