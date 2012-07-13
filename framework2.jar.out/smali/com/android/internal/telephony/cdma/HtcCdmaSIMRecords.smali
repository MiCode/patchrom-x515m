.class public final Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "HtcCdmaSIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$1;,
        Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;
    }
.end annotation


# static fields
.field static final CFF_LINE1_MASK:I = 0xf

.field static final CFF_LINE1_RESET:I = 0xf0

.field static final CFF_UNCONDITIONAL_ACTIVE:I = 0xa

.field static final CFF_UNCONDITIONAL_DEACTIVE:I = 0x5

.field private static final CPHS_SST_MBN_ENABLED:I = 0x30

.field private static final CPHS_SST_MBN_MASK:I = 0x30

.field private static final CRASH_RIL:Z = false

.field private static final DBG:Z = true

.field private static final EVENT_AUTO_SELECT_DONE:I = 0x6a

.field private static final EVENT_CB_ON_SIM:I = 0x21

.field private static final EVENT_DELAY_CFU_QUERY:I = 0x6c

.field private static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CB_CHANNEL_DONE:I = 0x23

.field private static final EVENT_GET_CB_DONE:I = 0x22

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_DONE:I = 0x25

.field private static final EVENT_GET_EFLP_DONE:I = 0x68

.field private static final EVENT_GET_FPLMN_DONE:I = 0x6b

.field private static final EVENT_GET_HTC_SIM_TYPES:I = 0x27

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field private static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field private static final EVENT_GET_SIM_TYPES_DONE:I = 0x65

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_SUBSIDY_LOCK_DONE:I = 0x66

.field private static final EVENT_GET_UIMID_DONE:I = 0x26

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_HTC_EXTENDED_OFFSET:I = 0x64

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_PBK_READY:I = 0x6d

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_SET_CB_CHANNEL_DONE:I = 0x24

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_EFLP_DONE:I = 0x69

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field private static final EVENT_SET_SUBSIDY_LOCK_DONE:I = 0x67

.field private static final EVENT_SIM_READY:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_SIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "HtcCdmaSIMRecords"

.field static final SPN_RULE_SHOW_PLMN:I = 0x2

.field static final SPN_RULE_SHOW_SPN:I = 0x1

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI_PLMN_LIST:I = 0x80

.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"


# instance fields
.field callForwardingEnabled:Z

.field cfuQueried:Z

.field disableCfuIcon:Z

.field efCPHS_MWI:[B

.field efMWIS:[B

.field imsi:Ljava/lang/String;

.field private mCphsInfo:[B

.field mEfCff:[B

.field mEfCfis:[B

.field mEfCsp:[B

.field mFPLMNList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkSelectionEnabled:Z

.field mPendingIccLoaded:Z

.field private mSimSmsRecordIndexes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSpnOverride:Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

.field mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

.field pnnHomeName:Ljava/lang/String;

.field spdiNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field spnDisplayCondition:I

.field private spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 5
    .parameter "p"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 230
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 108
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCphsInfo:[B

    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    .line 111
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    .line 112
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    .line 113
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    .line 116
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    .line 117
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mNetworkSelectionEnabled:Z

    .line 121
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 126
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 128
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 224
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    .line 2549
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mPendingIccLoaded:Z

    .line 232
    new-instance v0, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 234
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    .line 235
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSpnOverride:Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

    .line 237
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 240
    iput v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 243
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 244
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 246
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 247
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 249
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x6d

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerPBReadyNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gsm.sim.types"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onRadioOffOrNotAvailable()V

    .line 255
    const-string v0, "CDMA"

    const-string v1, "HtcCdmaSIMRecords create."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void
.end method

.method private appendFileId(I)I
    .locals 5
    .parameter "efid"

    .prologue
    .line 2310
    move v1, p1

    .line 2312
    .local v1, newEfid:I
    const/16 v3, 0x6f31

    if-ne p1, v3, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xd8

    if-ne v3, v4, :cond_0

    .line 2313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2314
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "7F25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2316
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2318
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2320
    .local v0, fileid:Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 2322
    .end local v0           #fileid:Ljava/lang/String;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_0
    return v1
.end method

.method private dropSimPbkEntries()V
    .locals 5

    .prologue
    .line 2533
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 2535
    .local v1, simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 2536
    const-string v2, "dropSimPbkEntries"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2537
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->dropSimPbkEntries()V

    .line 2538
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SIM_REFRESH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2547
    .end local v1           #simIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return-void

    .line 2543
    :catch_0
    move-exception v0

    .line 2544
    .local v0, ex:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2541
    .end local v0           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private fetchMWIfromUE()V
    .locals 3

    .prologue
    .line 2008
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2010
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "mwi_status_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 2013
    return-void
.end method

.method private fetchSimRecords()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2121
    iput-boolean v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 2122
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 2124
    .local v0, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    const-string v1, "HtcCdmaSIMRecords"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcCdmaSIMRecords:fetchSimRecords "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    const-string v1, "ro.kernel.qemu"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2127
    const-string v1, "SimRecords"

    const-string v2, "mSimulator = false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getSimTypes(Landroid/os/Message;)V

    .line 2132
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    .line 2133
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2135
    const/16 v1, 0x2fe2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2136
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2139
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2141
    :cond_1
    const/16 v1, 0x6f31

    const/16 v2, 0x26

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2142
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2148
    :cond_2
    const/16 v1, 0x6f7b

    const/16 v2, 0x6b

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2149
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2169
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    .line 2170
    iput-object v5, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 2171
    iput-object v5, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 2173
    const/16 v1, 0x6fc9

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2174
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2176
    const/16 v1, 0x6fad

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2177
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2180
    const/16 v1, 0x6fca

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2181
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2188
    const/16 v1, 0x6f11

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2191
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2195
    const/16 v1, 0x6fcb

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2196
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2197
    const/16 v1, 0x6f13

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2198
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2201
    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    .line 2203
    const/16 v1, 0x6fcd

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2204
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2206
    const/16 v1, 0x6fc5

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2207
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2209
    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2210
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2212
    const/16 v1, 0x6f16

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2213
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2216
    const/16 v1, 0x6f15

    const/16 v2, 0x25

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2217
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2228
    const/16 v1, 0x6f45

    const/16 v2, 0x23

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2229
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2252
    return-void
.end method

.method private getSavedNetworkSelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2502
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2503
    .local v0, sp:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "network_selection_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 5
    .parameter "start"
    .parameter "ar"

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 2350
    if-eqz p1, :cond_0

    .line 2351
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->INIT:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    .line 2354
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$1;->$SwitchMap$com$android$internal$telephony$cdma$HtcCdmaSIMRecords$Get_Spn_Fsm_State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2423
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    .line 2425
    :goto_0
    return-void

    .line 2356
    :pswitch_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 2358
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f46

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2360
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2362
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->READ_SPN_3GPP:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 2365
    :pswitch_1
    if-eqz p2, :cond_1

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 2366
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 2367
    .local v0, data:[B
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    .line 2368
    const/4 v1, 0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 2370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spnDisplayCondition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2375
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    goto :goto_0

    .line 2377
    .end local v0           #data:[B
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f14

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2379
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2381
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->READ_SPN_CPHS:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    .line 2385
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    goto :goto_0

    .line 2389
    :pswitch_2
    if-eqz p2, :cond_2

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 2390
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 2391
    .restart local v0       #data:[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 2394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2398
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 2400
    .end local v0           #data:[B
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f18

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2402
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2404
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 2408
    :pswitch_3
    if-eqz p2, :cond_3

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 2409
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 2410
    .restart local v0       #data:[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 2413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2420
    .end local v0           #data:[B
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;->IDLE:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnState:Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords$Get_Spn_Fsm_State;

    goto/16 :goto_0

    .line 2417
    :cond_3
    const-string v1, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2354
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleCB([B)V
    .locals 9
    .parameter "ba"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1919
    aget-byte v4, p1, v7

    if-eqz v4, :cond_0

    .line 1920
    const-string v4, "ENF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, p1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    :cond_0
    aget-byte v4, p1, v7

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 1925
    array-length v1, p1

    .line 1929
    .local v1, n:I
    add-int/lit8 v4, v1, -0x1

    new-array v2, v4, [B

    .line 1930
    .local v2, nba:[B
    add-int/lit8 v4, v1, -0x1

    invoke-static {p1, v8, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1932
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 1934
    .local v3, pdu:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v7

    aput-object v3, v4, v8

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->newFromCBM([Ljava/lang/String;)Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;

    move-result-object v0

    .line 1937
    .local v0, message:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;
    const-string v4, "ENF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message text "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    .end local v0           #message:Lcom/android/internal/telephony/cdma/HtcCdmaCBMessage;
    .end local v1           #n:I
    .end local v2           #nba:[B
    .end local v3           #pdu:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private handleFileUpdate(I)V
    .locals 5
    .parameter "efid"

    .prologue
    .line 1800
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update file efid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    sparse-switch p1, :sswitch_data_0

    .line 1828
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1829
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->fetchSimRecords()V

    .line 1832
    :goto_0
    return-void

    .line 1803
    :sswitch_0
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1804
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v1, 0x6fc7

    const/16 v2, 0x6fc8

    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 1808
    :sswitch_1
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1809
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v1, 0x6f17

    const/16 v2, 0x6f4a

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 1815
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSubscriberNumber(Landroid/os/Message;)V

    .line 1816
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto :goto_0

    .line 1820
    :sswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->dropSimPbkEntries()V

    .line 1821
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    goto :goto_0

    .line 1801
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f17 -> :sswitch_1
        0x6f3a -> :sswitch_3
        0x6f40 -> :sswitch_2
        0x6fc7 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleSimChanged()V
    .locals 6

    .prologue
    .line 1984
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1986
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v3, "sim_imsi_key"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1987
    .local v0, lastIMSI:Ljava/lang/String;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1989
    .local v2, spEditor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "sim_imsi_key"

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1990
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1992
    const-string v3, "mwi_status_key"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1994
    const-string v3, "HtcCdmaSIMRecords"

    const-string v4, "SIM change"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.change"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2003
    return-void

    .line 1998
    :cond_0
    const-string v3, "HtcCdmaSIMRecords"

    const-string v4, "SIM not change"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.change"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSimRefresh([I)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 1835
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 1836
    :cond_0
    const-string v1, "handleSimRefresh without input"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1871
    :goto_0
    return-void

    .line 1840
    :cond_1
    aget v1, p1, v3

    packed-switch v1, :pswitch_data_0

    .line 1868
    const-string v1, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1842
    :pswitch_0
    const-string v1, "handleSimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1844
    const/4 v1, 0x1

    aget v0, p1, v1

    .line 1845
    .local v0, efid:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleFileUpdate(I)V

    goto :goto_0

    .line 1848
    .end local v0           #efid:I
    :pswitch_1
    const-string v1, "handleSimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1850
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1851
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->fetchSimRecords()V

    .line 1852
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->dropSimPbkEntries()V

    goto :goto_0

    .line 1855
    :pswitch_2
    const-string v1, "handleSimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1856
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1864
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    goto :goto_0

    .line 1840
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleSms(I[B)V
    .locals 7
    .parameter "nRecordIndex"
    .parameter "ba"

    .prologue
    const/4 v6, 0x0

    .line 1874
    aget-byte v3, p2, v6

    if-eqz v3, :cond_0

    .line 1875
    const-string v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    :cond_0
    aget-byte v3, p2, v6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1880
    array-length v1, p2

    .line 1884
    .local v1, n:I
    add-int/lit8 v3, v1, -0x1

    new-array v2, v3, [B

    .line 1885
    .local v2, pdu:[B
    const/4 v3, 0x1

    add-int/lit8 v4, v1, -0x1

    invoke-static {p2, v3, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1886
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 1890
    .local v0, message:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->setIndexOnIcc(I)V

    .line 1893
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 1895
    .end local v0           #message:Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v1           #n:I
    .end local v2           #pdu:[B
    :cond_1
    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 11
    .parameter "messages"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1947
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1949
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1950
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    .line 1952
    .local v0, ba:[B
    aget-byte v6, v0, v9

    if-eqz v6, :cond_0

    .line 1953
    const-string v6, "ENF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :cond_0
    aget-byte v6, v0, v9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 1959
    array-length v4, v0

    .line 1963
    .local v4, n:I
    add-int/lit8 v6, v4, -0x1

    new-array v5, v6, [B

    .line 1964
    .local v5, pdu:[B
    add-int/lit8 v6, v4, -0x1

    invoke-static {v0, v10, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1965
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v3

    .line 1967
    .local v3, message:Lcom/android/internal/telephony/cdma/SmsMessage;
    iget-object v6, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v6, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 1972
    aput-byte v10, v0, v9

    .line 1949
    .end local v3           #message:Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v4           #n:I
    .end local v5           #pdu:[B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1980
    .end local v0           #ba:[B
    :cond_2
    return-void
.end method

.method private isCphsMailboxEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2486
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCphsInfo:[B

    if-nez v2, :cond_0

    .line 2487
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCphsInfo:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private isFfBeTreatedAsUnknownCount()Z
    .locals 2

    .prologue
    .line 2492
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 5
    .parameter "plmn"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2291
    if-nez p1, :cond_1

    .line 2304
    :cond_0
    :goto_0
    return v2

    .line 2293
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 2294
    goto :goto_0

    .line 2297
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 2298
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2299
    .local v1, spdiNet:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 2300
    goto :goto_0
.end method

.method private onSimReady()V
    .locals 3

    .prologue
    .line 2110
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->fetchSimRecords()V

    .line 2116
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->dropSimPbkEntries()V

    .line 2118
    return-void
.end method

.method private parseEfFplmn([B)V
    .locals 4
    .parameter "data"

    .prologue
    .line 2467
    if-eqz p1, :cond_0

    array-length v2, p1

    rem-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_0

    .line 2468
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    div-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 2470
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 2471
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2473
    .local v1, plmn:Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    invoke-static {p1, v0, v2}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2474
    add-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF_FPLMN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2476
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2470
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 2479
    .end local v0           #i:I
    .end local v1           #plmn:Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private parseEfSpdi([B)V
    .locals 6
    .parameter "data"

    .prologue
    .line 2434
    new-instance v3, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;

    const/4 v4, 0x0

    array-length v5, p1

    invoke-direct {v3, p1, v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;-><init>([BII)V

    .line 2436
    .local v3, tlv:Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;
    const/4 v2, 0x0

    .line 2439
    .local v2, plmnEntries:[B
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->isValidObject()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2440
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->getTag()I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_2

    .line 2441
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->getData()[B

    move-result-object v2

    .line 2446
    :cond_0
    if-nez v2, :cond_3

    .line 2462
    :cond_1
    return-void

    .line 2439
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->nextObject()Z

    goto :goto_0

    .line 2450
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v2

    div-int/lit8 v5, v5, 0x3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 2452
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    add-int/lit8 v4, v0, 0x2

    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 2454
    const/4 v4, 0x3

    invoke-static {v2, v0, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 2457
    .local v1, plmnCode:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_4

    .line 2458
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_SPDI network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 2459
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2452
    :cond_4
    add-int/lit8 v0, v0, 0x3

    goto :goto_1
.end method

.method private setLocaleFromMccIfNeeded(I)V
    .locals 4
    .parameter "mcc"

    .prologue
    .line 758
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v1

    .line 759
    .local v1, language:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, country:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemLocale(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 763
    return-void
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .locals 1
    .parameter "carrier"

    .prologue
    .line 2078
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSpnOverride:Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2079
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSpnOverride:Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 2081
    :cond_0
    return-void
.end method

.method private setTimezoneFromMccIfNeeded(I)V
    .locals 5
    .parameter "mcc"

    .prologue
    .line 740
    const-string v3, "persist.sys.timezone"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 741
    .local v1, timezone:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 742
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;

    move-result-object v2

    .line 744
    .local v2, zoneId:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 746
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 748
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 751
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v2           #zoneId:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 2
    .parameter "spn"

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2096
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "voiceMailNum is empty!! try to search default value from xml!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2098
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    .line 2099
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 2100
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 2104
    :cond_0
    return-void
.end method

.method private updateMWItoUE()V
    .locals 4

    .prologue
    .line 2016
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2018
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2019
    .local v1, spEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "mwi_status_key"

    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2020
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2021
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onRadioOffOrNotAvailable()V

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unsetOnIccRefresh(Landroid/os/Handler;)V

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterPBReadyNotify(Landroid/os/Handler;)V

    .line 266
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 267
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mVmConfig:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMailConstants;

    .line 268
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSpnOverride:Lcom/android/internal/telephony/cdma/HtcCdmaSpnOverride;

    .line 269
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 272
    const-string v0, "CDMA"

    const-string v1, "HtcCdmaSIMRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 3
    .parameter "plmn"

    .prologue
    .line 2267
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 2270
    :cond_0
    const/4 v0, 0x2

    .line 2284
    .local v0, rule:I
    :cond_1
    :goto_0
    return v0

    .line 2271
    .end local v0           #rule:I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2272
    const/4 v0, 0x1

    .line 2273
    .restart local v0       #rule:I
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2275
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2278
    .end local v0           #rule:I
    :cond_3
    const/4 v0, 0x2

    .line 2279
    .restart local v0       #rule:I
    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 2281
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method getSIMOperatorNumeric()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 715
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-nez v1, :cond_1

    .line 716
    :cond_0
    const/4 v1, 0x0

    .line 732
    :goto_0
    return-object v1

    .line 719
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v1, :cond_2

    .line 722
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 730
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 732
    .local v0, mcc:I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSubsidyLock(ILandroid/os/Message;)V
    .locals 2
    .parameter "querySetting"
    .parameter "response"

    .prologue
    .line 2515
    const/16 v1, 0x66

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2516
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSubsidyLock(ILandroid/os/Message;)V

    .line 2518
    return-void
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 533
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 535
    .local v0, enabled:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 536
    const-string v3, "getVoiceCallForwardingFlag return false due to airplanemode"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 537
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->disableCfuIcon:Z

    .line 540
    :goto_1
    return v1

    .end local v0           #enabled:Z
    :cond_0
    move v0, v1

    .line 533
    goto :goto_0

    .line 540
    .restart local v0       #enabled:Z
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    goto :goto_1
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 443
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, aplhaTag:Ljava/lang/String;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x71

    if-ne v1, v2, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 448
    .end local v0           #aplhaTag:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 47
    .parameter "msg"

    .prologue
    .line 768
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v2, :cond_1

    .line 769
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " HtcCdmaSIMRecords drop event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    const/16 v24, 0x0

    .line 780
    .local v24, isRecordLoadResponse:Z
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v2, :sswitch_data_0

    .line 1793
    :cond_2
    :goto_1
    if-eqz v24, :cond_0

    .line 1794
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onRecordLoaded()V

    goto :goto_0

    .line 782
    :sswitch_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onSimReady()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1788
    :catch_0
    move-exception v18

    .line 1790
    .local v18, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "Exception parsing SIM record"

    move-object/from16 v0, v18

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1793
    if-eqz v24, :cond_0

    goto :goto_2

    .line 786
    .end local v18           #exc:Ljava/lang/RuntimeException;
    :sswitch_1
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onRadioOffOrNotAvailable()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1793
    :catchall_0
    move-exception v2

    if-eqz v24, :cond_3

    .line 1794
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onRecordLoaded()V

    .line 1793
    :cond_3
    throw v2

    .line 793
    :sswitch_2
    const/16 v24, 0x1

    .line 795
    :try_start_4
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 797
    .local v10, ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 801
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    if-eqz v2, :cond_4

    .line 804
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CSP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const/16 v19, 0x0

    .local v19, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    array-length v2, v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_4

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    aget-byte v2, v2, v19

    and-int/lit16 v0, v2, 0xff

    move/from16 v36, v0

    .line 808
    .local v36, serviceGroupCode:I
    const/16 v2, 0xc0

    move/from16 v0, v36

    if-ne v0, v2, :cond_7

    .line 809
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CSP: mEfCsp[i+1] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    add-int/lit8 v6, v19, 0x1

    aget-byte v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCsp:[B

    add-int/lit8 v4, v19, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_6

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mNetworkSelectionEnabled:Z

    .line 835
    .end local v19           #i:I
    .end local v36           #serviceGroupCode:I
    :cond_4
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CSP: mNetworkSelectionEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mNetworkSelectionEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v32

    .line 841
    .local v32, networkSelection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mNetworkSelectionEnabled:Z

    if-nez v2, :cond_2

    .line 842
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v38

    .line 844
    .local v38, sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 845
    .local v17, editor:Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "network_selection_key"

    const-string v4, ""

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "network_selection_act_key"

    const-string v4, "-1"

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 851
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_5

    .line 852
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "failed to commit network selection preference"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/PhoneBase;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 822
    .end local v17           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v32           #networkSelection:Ljava/lang/String;
    .end local v38           #sp:Landroid/content/SharedPreferences;
    .restart local v19       #i:I
    .restart local v36       #serviceGroupCode:I
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 806
    :cond_7
    add-int/lit8 v19, v19, 0x2

    goto/16 :goto_3

    .line 865
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v19           #i:I
    .end local v36           #serviceGroupCode:I
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 866
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_8

    .line 867
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "automatic network selection: failed!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 869
    :cond_8
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "automatic network selection: succeeded!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 875
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    const/16 v24, 0x1

    .line 877
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 879
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    .line 880
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception querying IMSI, Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 884
    :cond_9
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    .line 888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xf

    if-le v2, v4, :cond_b

    .line 889
    :cond_a
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid IMSI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    .line 893
    :cond_b
    const-string v2, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HtcCdmaSIMRecords, IMSI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "xxxxxxxxx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "xxxxxxxxx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v2, :cond_c

    .line 900
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 901
    .local v29, mcc:I
    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 908
    .end local v29           #mcc:I
    :cond_c
    :goto_5
    :try_start_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_d

    .line 916
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 923
    .restart local v29       #mcc:I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleSimChanged()V

    goto/16 :goto_1

    .line 902
    .end local v29           #mcc:I
    :catch_1
    move-exception v16

    .line 903
    .local v16, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 904
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 929
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v16           #e:Ljava/lang/NumberFormatException;
    :sswitch_5
    const/16 v24, 0x1

    .line 931
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 932
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 934
    .local v13, data:[B
    const/16 v25, 0x0

    .line 935
    .local v25, isValidMbdn:Z
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_e

    .line 937
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_MBI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    .line 947
    const/16 v25, 0x1

    .line 958
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 961
    if-eqz v25, :cond_10

    .line 964
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    if-lez v2, :cond_f

    .line 966
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6fc7

    const/16 v5, 0x6fc8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/4 v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 971
    :cond_f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    .line 972
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6fc7

    const/16 v5, 0x6fc8

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 978
    :cond_10
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 986
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v25           #isValidMbdn:Z
    :sswitch_6
    const/16 v24, 0x1

    .line 988
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 990
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_12

    .line 992
    const-string v4, "HtcCdmaSIMRecords"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid or missing EF"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v6, 0xb

    if-ne v2, v6, :cond_11

    const-string v2, "[MAILBOX]"

    :goto_6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_2

    .line 1002
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    .line 1005
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1006
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 992
    :cond_11
    const-string v2, "[MBDN]"

    goto :goto_6

    .line 1013
    :cond_12
    iget-object v3, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    .line 1015
    .local v3, adn:Lcom/android/internal/telephony/AdnRecord;
    const-string v4, "HtcCdmaSIMRecords"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VM: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v6, 0xb

    if-ne v2, v6, :cond_13

    const-string v2, " EF[MAILBOX]"

    :goto_7
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_14

    .line 1022
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 1023
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 1028
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1029
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1015
    :cond_13
    const-string v2, " EF[MBDN]"

    goto :goto_7

    .line 1036
    :cond_14
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 1037
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    goto/16 :goto_1

    .line 1041
    .end local v3           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    const/16 v24, 0x1

    .line 1043
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1045
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_15

    .line 1046
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "Invalid or missing EF[MSISDN]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1051
    :cond_15
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1a

    .line 1053
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    .line 1055
    .local v35, results:[Ljava/lang/String;
    if-eqz v35, :cond_19

    move-object/from16 v0, v35

    array-length v2, v0

    const/4 v4, 0x5

    if-lt v2, v4, :cond_19

    .line 1057
    const/4 v2, 0x0

    aget-object v2, v35, v2

    if-eqz v2, :cond_16

    .line 1059
    const/4 v2, 0x0

    aget-object v2, v35, v2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v31

    .line 1060
    .local v31, name:[B
    const/4 v2, 0x0

    move-object/from16 v0, v31

    array-length v4, v0

    move-object/from16 v0, v31

    invoke-static {v0, v2, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 1063
    .end local v31           #name:[B
    :cond_16
    const/4 v2, 0x1

    aget-object v2, v35, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 1065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    if-eqz v2, :cond_17

    .line 1066
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msisdnTag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 1069
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msisdn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    .end local v35           #results:[Ljava/lang/String;
    :cond_18
    :goto_8
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSISDN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1073
    .restart local v35       #results:[Ljava/lang/String;
    :cond_19
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 1074
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    goto :goto_8

    .line 1079
    .end local v35           #results:[Ljava/lang/String;
    :cond_1a
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "Invalid or missing EF[MSISDN]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1094
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_8
    const/16 v24, 0x0

    .line 1095
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1097
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_1b

    .line 1098
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1100
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1103
    :cond_1b
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTemp:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 1105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTagTemp:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 1106
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTemp:Ljava/lang/String;

    .line 1107
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->msisdnTagTemp:Ljava/lang/String;

    goto/16 :goto_1

    .line 1114
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_9
    const/16 v24, 0x1

    .line 1116
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1117
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1119
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1123
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_MWIS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    .line 1128
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xff

    if-ne v2, v4, :cond_1c

    .line 1129
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: Uninitialized record MWIS"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1134
    :cond_1c
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1d

    const/16 v44, 0x1

    .line 1135
    .local v44, voiceMailWaiting:Z
    :goto_9
    const/4 v2, 0x1

    aget-byte v2, v13, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 1144
    if-eqz v44, :cond_2

    .line 1145
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isFfBeTreatedAsUnknownCount()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1146
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    const/16 v4, 0xff

    if-ne v2, v4, :cond_2

    .line 1147
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    goto/16 :goto_1

    .line 1134
    .end local v44           #voiceMailWaiting:Z
    :cond_1d
    const/16 v44, 0x0

    goto :goto_9

    .line 1150
    .restart local v44       #voiceMailWaiting:Z
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    if-nez v2, :cond_2

    .line 1151
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    goto/16 :goto_1

    .line 1160
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v44           #voiceMailWaiting:Z
    :sswitch_a
    const/16 v24, 0x1

    .line 1162
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1163
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1165
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1f

    .line 1167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    if-nez v2, :cond_2

    goto/16 :goto_1

    .line 1176
    :cond_1f
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    .line 1181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    if-nez v2, :cond_2

    .line 1182
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit8 v22, v2, 0xf

    .line 1185
    .local v22, indicator:I
    const/16 v2, 0xa

    move/from16 v0, v22

    if-ne v0, v2, :cond_20

    .line 1187
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    goto/16 :goto_1

    .line 1188
    :cond_20
    const/4 v2, 0x5

    move/from16 v0, v22

    if-ne v0, v2, :cond_2

    .line 1189
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    goto/16 :goto_1

    .line 1197
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v22           #indicator:I
    :sswitch_b
    const/16 v24, 0x1

    .line 1199
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1200
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1202
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1206
    const/4 v2, 0x0

    array-length v4, v13

    invoke-static {v13, v2, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    .line 1208
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iccid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1214
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :sswitch_c
    const/16 v24, 0x1

    .line 1216
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1217
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1219
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_21

    .line 1220
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "query UIM ID fail!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1224
    :cond_21
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    new-array v14, v2, [B

    .line 1225
    .local v14, dst:[B
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-byte v5, v13, v5

    invoke-static {v13, v2, v14, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1227
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    new-array v15, v2, [B

    .line 1229
    .local v15, dsttemp:[B
    const/4 v2, 0x0

    aget-byte v45, v13, v2

    .local v45, xx:I
    const/16 v46, 0x0

    .local v46, yy:I
    :goto_a
    if-lez v45, :cond_22

    .line 1230
    add-int/lit8 v2, v45, -0x1

    const/4 v4, 0x1

    move/from16 v0, v46

    invoke-static {v14, v2, v15, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1229
    add-int/lit8 v45, v45, -0x1

    add-int/lit8 v46, v46, 0x1

    goto :goto_a

    .line 1232
    :cond_22
    invoke-static {v15}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v42

    .line 1233
    .local v42, uimId:Ljava/lang/String;
    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v42

    .line 1234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.cdma.uim.id"

    move-object/from16 v0, v42

    invoke-virtual {v2, v4, v0}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uim id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1239
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v14           #dst:[B
    .end local v15           #dsttemp:[B
    .end local v42           #uimId:Ljava/lang/String;
    .end local v45           #xx:I
    .end local v46           #yy:I
    :sswitch_d
    const/16 v24, 0x1

    .line 1240
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1241
    .restart local v10       #ar:Landroid/os/AsyncResult;
    if-eqz v10, :cond_23

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_24

    .line 1243
    :cond_23
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "EVENT_GET_HTC_SIM_TYPES, exception happen !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1246
    :cond_24
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v23, v0

    .line 1247
    .local v23, ints:[I
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_GET_HTC_SIM_TYPES: simtype group= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v23, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,simtype= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v23, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    move-object/from16 v0, v23

    array-length v2, v0

    const/4 v4, 0x1

    if-le v2, v4, :cond_25

    .line 1250
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simtype= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v23, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "gsm.htc.sim.types.group"

    const/4 v5, 0x0

    aget v5, v23, v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1252
    :cond_25
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "get ruturning value 2 from WSD"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_b

    .line 1261
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v23           #ints:[I
    :sswitch_e
    const/16 v24, 0x1

    .line 1263
    :try_start_7
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1264
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1266
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_28

    .line 1294
    :try_start_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_27

    .line 1295
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v2, :cond_51

    .line 1297
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 1299
    .restart local v29       #mcc:I
    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 1311
    .end local v29           #mcc:I
    :cond_27
    :goto_c
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 1270
    :cond_28
    :try_start_b
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_AD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    array-length v2, v13

    const/4 v4, 0x3

    if-ge v2, v4, :cond_2b

    .line 1274
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: Corrupt AD data on SIM"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1294
    :try_start_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2a

    .line 1295
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    if-eqz v2, :cond_52

    .line 1297
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 1299
    .restart local v29       #mcc:I
    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    .line 1311
    .end local v29           #mcc:I
    :cond_2a
    :goto_d
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 1280
    :cond_2b
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    aget-byte v4, v13, v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_2e

    const/4 v4, 0x1

    :goto_e
    invoke-virtual {v2, v5, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setTestIcc(Ljava/lang/String;Z)V

    .line 1283
    array-length v2, v13

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2f

    .line 1284
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1294
    :try_start_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2d

    .line 1295
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    if-eqz v2, :cond_53

    .line 1297
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 1299
    .restart local v29       #mcc:I
    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    .line 1311
    .end local v29           #mcc:I
    :cond_2d
    :goto_f
    :try_start_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 1280
    :cond_2e
    const/4 v4, 0x0

    goto :goto_e

    .line 1288
    :cond_2f
    const/4 v2, 0x3

    :try_start_13
    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0xf

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1290
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/16 v4, 0xf

    if-ne v2, v4, :cond_30

    .line 1291
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1294
    :cond_30
    :try_start_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_31

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_32

    .line 1295
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    if-eqz v2, :cond_54

    .line 1297
    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 1299
    .restart local v29       #mcc:I
    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0

    .line 1311
    .end local v29           #mcc:I
    :cond_32
    :goto_10
    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 1294
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v4, :cond_33

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_34

    .line 1295
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0

    if-eqz v4, :cond_50

    .line 1297
    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 1299
    .restart local v29       #mcc:I
    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0

    .line 1311
    .end local v29           #mcc:I
    :cond_34
    :goto_11
    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v4, :cond_35

    .line 1294
    :cond_35
    throw v2

    .line 1320
    :sswitch_f
    const/16 v24, 0x1

    .line 1321
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1322
    .restart local v10       #ar:Landroid/os/AsyncResult;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1326
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_10
    const/16 v24, 0x1

    .line 1328
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1329
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1331
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1335
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CFF_CPHS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    .line 1339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    if-nez v2, :cond_2

    .line 1340
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0xf

    const/16 v4, 0xa

    if-ne v2, v4, :cond_36

    const/4 v2, 0x1

    :goto_12
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    .line 1343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    goto/16 :goto_1

    .line 1340
    :cond_36
    const/4 v2, 0x0

    goto :goto_12

    .line 1348
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :sswitch_11
    const/16 v24, 0x1

    .line 1350
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1351
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1353
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1357
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_1

    .line 1362
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :sswitch_12
    const/16 v24, 0x1

    .line 1364
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1365
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1367
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1370
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->parseEfFplmn([B)V

    goto/16 :goto_1

    .line 1375
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1376
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 1377
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords update failed"

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1382
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_14
    const/16 v24, 0x1

    .line 1384
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1385
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1387
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1391
    new-instance v41, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;

    const/4 v2, 0x0

    array-length v4, v13

    move-object/from16 v0, v41

    invoke-direct {v0, v13, v2, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;-><init>([BII)V

    .line 1393
    .local v41, tlv:Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;
    :goto_13
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->isValidObject()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1394
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->getTag()I

    move-result v2

    const/16 v4, 0x43

    if-ne v2, v4, :cond_37

    .line 1395
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->getData()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->getData()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->pnnHomeName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1393
    :cond_37
    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;->nextObject()Z

    goto :goto_13

    .line 1404
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v41           #tlv:Lcom/android/internal/telephony/cdma/HtcCdmaSimTlv;
    :sswitch_15
    const/16 v24, 0x1

    .line 1406
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1407
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1410
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 1414
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_16
    const-string v2, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "marked read: sms "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1419
    :sswitch_17
    const/16 v24, 0x0

    .line 1421
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1423
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v21, v0

    .line 1425
    .local v21, index:[I
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_38

    move-object/from16 v0, v21

    array-length v2, v0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_39

    .line 1426
    :cond_38
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcCdmaSIMRecords] Error on SMS_ON_SIM with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1431
    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    aget v5, v21, v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1434
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "READ EF_SMS RECORD index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v21, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v4, 0x6f3c

    const/4 v5, 0x0

    aget v5, v21, v5

    const/16 v6, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1441
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v21           #index:[I
    :sswitch_18
    const/16 v24, 0x0

    .line 1442
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1443
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3b

    .line 1445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_3a

    .line 1446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleSms(I[B)V

    goto/16 :goto_1

    .line 1448
    :cond_3a
    const/4 v4, -0x1

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleSms(I[B)V

    goto/16 :goto_1

    .line 1451
    :cond_3b
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcCdmaSIMRecords] Error on GET_SMS with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1457
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_19
    const/16 v24, 0x1

    .line 1459
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1460
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1462
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3c

    .line 1463
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcCdmaSIMRecords] Error on EF_CBMI with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1467
    :cond_3c
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CBMI length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v13

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CBMI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1470
    .local v12, channelslList:Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v40, v0

    .line 1473
    .local v40, temp:[B
    if-eqz v13, :cond_2

    .line 1474
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_14
    array-length v2, v13

    move/from16 v0, v19

    if-ge v0, v2, :cond_40

    .line 1476
    aget-byte v2, v13, v19

    const/4 v4, -0x1

    if-eq v2, v4, :cond_40

    add-int/lit8 v2, v19, 0x1

    aget-byte v2, v13, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_40

    .line 1478
    const/4 v2, 0x0

    aget-byte v4, v13, v19

    aput-byte v4, v40, v2

    .line 1479
    const/4 v2, 0x1

    add-int/lit8 v4, v19, 0x1

    aget-byte v4, v13, v4

    aput-byte v4, v40, v2

    .line 1480
    const/4 v2, 0x0

    aget-byte v2, v40, v2

    shl-int/lit8 v2, v2, 0x8

    if-gez v2, :cond_3e

    .line 1481
    const/4 v2, 0x0

    aget-byte v2, v40, v2

    shl-int/lit8 v2, v2, 0x8

    add-int/lit16 v9, v2, 0x100

    .line 1484
    .local v9, a:I
    :goto_15
    const/4 v2, 0x1

    aget-byte v2, v40, v2

    if-gez v2, :cond_3f

    .line 1485
    const/4 v2, 0x1

    aget-byte v2, v40, v2

    add-int/lit16 v11, v2, 0x100

    .line 1488
    .local v11, b:I
    :goto_16
    add-int v20, v9, v11

    .line 1489
    .local v20, id:I
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    array-length v2, v13

    add-int/lit8 v2, v2, -0x2

    move/from16 v0, v19

    if-eq v0, v2, :cond_3d

    add-int/lit8 v2, v19, 0x2

    aget-byte v2, v13, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3d

    add-int/lit8 v2, v19, 0x3

    aget-byte v2, v13, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3d

    .line 1491
    const-string v2, ","

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    :cond_3d
    add-int/lit8 v19, v19, 0x2

    goto :goto_14

    .line 1483
    .end local v9           #a:I
    .end local v11           #b:I
    .end local v20           #id:I
    :cond_3e
    const/4 v2, 0x0

    aget-byte v2, v40, v2

    shl-int/lit8 v9, v2, 0x8

    .restart local v9       #a:I
    goto :goto_15

    .line 1487
    :cond_3f
    const/4 v2, 0x1

    aget-byte v11, v40, v2

    .restart local v11       #b:I
    goto :goto_16

    .line 1495
    .end local v9           #a:I
    .end local v11           #b:I
    :cond_40
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 1499
    .local v30, mid:Ljava/lang/String;
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CBMI length (string): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v13

    div-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1519
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v12           #channelslList:Ljava/lang/StringBuilder;
    .end local v13           #data:[B
    .end local v19           #i:I
    .end local v30           #mid:Ljava/lang/String;
    .end local v40           #temp:[B
    :sswitch_1a
    const-string v2, "*********Set EF CDMI done"

    const-string v4, "completed!! "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    const/16 v24, 0x0

    .line 1521
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1523
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1524
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1526
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1533
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_1b
    const-string v2, "*********Set EF LP done"

    const-string v4, "completed!! "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    const/16 v24, 0x0

    .line 1535
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1537
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1538
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1540
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1544
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_1c
    const/16 v24, 0x1

    .line 1546
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1547
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1549
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_41

    .line 1550
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcCdmaSIMRecords] Error on EF_LP with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1554
    :cond_41
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 1555
    .local v28, mLpList:Ljava/lang/StringBuilder;
    const/16 v27, 0x0

    .line 1557
    .local v27, lp:Ljava/lang/String;
    if-eqz v13, :cond_45

    .line 1560
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_17
    array-length v2, v13

    move/from16 v0, v19

    if-ge v0, v2, :cond_44

    .line 1562
    aget-byte v2, v13, v19

    const/4 v4, -0x1

    if-eq v2, v4, :cond_44

    .line 1564
    aget-byte v2, v13, v19

    if-gez v2, :cond_43

    .line 1565
    aget-byte v2, v13, v19

    add-int/lit16 v0, v2, 0x100

    move/from16 v43, v0

    .line 1568
    .local v43, value:I
    :goto_18
    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    array-length v2, v13

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_42

    add-int/lit8 v2, v19, 0x1

    aget-byte v2, v13, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_42

    .line 1570
    const-string v2, ","

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    :cond_42
    add-int/lit8 v19, v19, 0x1

    goto :goto_17

    .line 1567
    .end local v43           #value:I
    :cond_43
    aget-byte v43, v13, v19

    .restart local v43       #value:I
    goto :goto_18

    .line 1574
    .end local v43           #value:I
    :cond_44
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1576
    .end local v19           #i:I
    :cond_45
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_LP length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v13

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_LP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_LP(string): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x39

    if-eq v2, v4, :cond_46

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x8

    if-ne v2, v4, :cond_2

    .line 1584
    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v38

    .line 1586
    .restart local v38       #sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v39

    .line 1587
    .local v39, spEditor:Landroid/content/SharedPreferences$Editor;
    if-eqz v27, :cond_48

    .line 1589
    const-string v2, ","

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    .line 1590
    .local v33, num:I
    const/4 v2, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 1591
    .local v26, langnum:I
    const/16 v2, 0xf

    move/from16 v0, v26

    if-le v0, v2, :cond_47

    .line 1592
    const-string v2, "lang_list"

    const-string v4, "15"

    move-object/from16 v0, v39

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1597
    .end local v26           #langnum:I
    .end local v33           #num:I
    :goto_19
    invoke-interface/range {v39 .. v39}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 1594
    .restart local v26       #langnum:I
    .restart local v33       #num:I
    :cond_47
    const-string v2, "lang_list"

    const/4 v4, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    .line 1596
    .end local v26           #langnum:I
    .end local v33           #num:I
    :cond_48
    const-string v2, "lang_list"

    const-string v4, "15"

    move-object/from16 v0, v39

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    .line 1602
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    .end local v27           #lp:Ljava/lang/String;
    .end local v28           #mLpList:Ljava/lang/StringBuilder;
    .end local v38           #sp:Landroid/content/SharedPreferences;
    .end local v39           #spEditor:Landroid/content/SharedPreferences$Editor;
    :sswitch_1d
    const/16 v24, 0x1

    .line 1604
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1605
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1607
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 1615
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :sswitch_1e
    const/16 v24, 0x1

    .line 1617
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1619
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1623
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCphsInfo:[B

    .line 1625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iCPHS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mCphsInfo:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1629
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_1f
    const/16 v24, 0x0

    .line 1630
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1632
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_49

    .line 1633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 1634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 1637
    :cond_49
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isCphsMailboxEnabled()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1638
    new-instance v3, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    .restart local v3       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/Message;

    .line 1648
    .local v34, onCphsCompleted:Landroid/os/Message;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4a

    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_4a

    .line 1649
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1651
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1653
    const-string v2, "Callback with MBDN successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1655
    const/16 v34, 0x0

    .line 1658
    :cond_4a
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x19

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1663
    .end local v3           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v34           #onCphsCompleted:Landroid/os/Message;
    :cond_4b
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1664
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1666
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1671
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_20
    const/16 v24, 0x0

    .line 1672
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1673
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4c

    .line 1674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 1675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 1680
    :goto_1a
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1681
    const-string v2, "Callback with CPHS MB successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1682
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1684
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1677
    :cond_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set CPHS MailBox with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1a

    .line 1688
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_21
    const/16 v24, 0x0

    .line 1689
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1690
    .restart local v10       #ar:Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sim REFRESH with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1691
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1692
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->handleSimRefresh([I)V

    goto/16 :goto_1

    .line 1696
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_22
    const/16 v24, 0x1

    .line 1698
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1699
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v13, v0

    .line 1701
    .restart local v13       #data:[B
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1705
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_CFIS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    .line 1711
    const/4 v2, 0x1

    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4d

    const/4 v2, 0x1

    :goto_1b
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    .line 1713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    goto/16 :goto_1

    .line 1711
    :cond_4d
    const/4 v2, 0x0

    goto :goto_1b

    .line 1717
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v13           #data:[B
    :sswitch_23
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "EVENT_PBK_READY"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    const-string v4, "LOADED_UNDER_NETWORK_LOCK"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "(EVENT_PBK_READY) Broadcast  INTENT_VALUE_ICC_LOADED_UNDER_NETWORK_LOCK to load sim pb done."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1743
    :sswitch_24
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1745
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1746
    const-string v2, "Callback with GET SUBSIDY LOCK successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1747
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1749
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4e

    .line 1750
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1753
    :cond_4e
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1757
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_25
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1759
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 1760
    const-string v2, "Callback with SET SUBSIDY LOCK successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 1761
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1763
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1767
    .end local v10           #ar:Landroid/os/AsyncResult;
    :sswitch_26
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1768
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 1770
    .local v37, simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4f

    if-eqz v37, :cond_4f

    .line 1772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "gsm.sim.types"

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1776
    :cond_4f
    const-string v2, "HtcCdmaSIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimTypes error - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1784
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v37           #simTypes:Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    :sswitch_27
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "Delay CFU Query..."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->getCallForwardingOption(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1306
    :cond_50
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1308
    const-string v4, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1300
    :catch_2
    move-exception v16

    .line 1301
    .restart local v16       #e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1302
    const-string v4, "HtcCdmaSIMRecords"

    const-string v5, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1306
    .end local v16           #e:Ljava/lang/NumberFormatException;
    .restart local v10       #ar:Landroid/os/AsyncResult;
    .restart local v13       #data:[B
    :cond_51
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1308
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1300
    :catch_3
    move-exception v16

    .line 1301
    .restart local v16       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1302
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1306
    .end local v16           #e:Ljava/lang/NumberFormatException;
    :cond_52
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1308
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1300
    :catch_4
    move-exception v16

    .line 1301
    .restart local v16       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1302
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1306
    .end local v16           #e:Ljava/lang/NumberFormatException;
    :cond_53
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1308
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1300
    :catch_5
    move-exception v16

    .line 1301
    .restart local v16       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1302
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1306
    .end local v16           #e:Ljava/lang/NumberFormatException;
    :cond_54
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1308
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: MNC length not present in EF_AD"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1300
    :catch_6
    move-exception v16

    .line 1301
    .restart local v16       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 1302
    const-string v2, "HtcCdmaSIMRecords"

    const-string v4, "HtcCdmaSIMRecords: Corrupt IMSI!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0

    goto/16 :goto_10

    .line 780
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_b
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_9
        0x8 -> :sswitch_a
        0x9 -> :sswitch_e
        0xa -> :sswitch_7
        0xb -> :sswitch_6
        0xc -> :sswitch_f
        0xd -> :sswitch_11
        0xe -> :sswitch_13
        0xf -> :sswitch_14
        0x11 -> :sswitch_1d
        0x12 -> :sswitch_15
        0x13 -> :sswitch_16
        0x14 -> :sswitch_1f
        0x15 -> :sswitch_17
        0x16 -> :sswitch_18
        0x18 -> :sswitch_10
        0x19 -> :sswitch_20
        0x1a -> :sswitch_1e
        0x1e -> :sswitch_8
        0x1f -> :sswitch_21
        0x20 -> :sswitch_22
        0x23 -> :sswitch_19
        0x24 -> :sswitch_1a
        0x25 -> :sswitch_2
        0x26 -> :sswitch_c
        0x27 -> :sswitch_d
        0x65 -> :sswitch_26
        0x66 -> :sswitch_24
        0x67 -> :sswitch_25
        0x68 -> :sswitch_1c
        0x69 -> :sswitch_1b
        0x6a -> :sswitch_3
        0x6b -> :sswitch_12
        0x6c -> :sswitch_27
        0x6d -> :sswitch_23
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2507
    const-string v0, "HtcCdmaSIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcCdmaSIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2510
    const-string v0, "HtcCdmaSIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HtcCdmaSIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    return-void
.end method

.method public notifyIMSIchange()V
    .locals 3

    .prologue
    .line 2551
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mPendingIccLoaded:Z

    if-eqz v0, :cond_0

    .line 2552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mPendingIccLoaded:Z

    .line 2553
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    const-string v1, "LOADED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2555
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "Notify ICC loaded "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    :goto_0
    return-void

    .line 2557
    :cond_0
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "Nothing notify "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onAllRecordsLoaded()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2037
    const-string v1, "HtcCdmaSIMRecords"

    const-string v2, "HtcCdmaSIMRecords: record load complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 2044
    .local v0, operator:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2046
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.numeric"

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2049
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.iso-country"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    const-string v1, "HtcCdmaSIMRecords"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==>HtcCdmaSIMRecords:operator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    .line 2054
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 2055
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-ne v1, v2, :cond_1

    .line 2057
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gsm.sim.operator.alpha"

    const-string v3, "China Telecom"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    .line 2065
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->setSpnFromConfig(Ljava/lang/String;)V

    .line 2069
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2071
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSimCard:Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;

    const-string v2, "LOADED"

    invoke-virtual {v1, v2, v6}, Lcom/android/internal/telephony/cdma/HtcCdmaSimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    return-void

    .line 2061
    :cond_3
    const-string v1, "SIM"

    const-string v2, "[HtcCdmaSIMRecords] onAllRecordsLoaded: imsi is NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->imsi:Ljava/lang/String;

    .line 277
    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 278
    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 279
    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 280
    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 281
    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    .line 283
    iput v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spnDisplayCondition:I

    .line 284
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    .line 285
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    .line 286
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->spdiNetworks:Ljava/util/ArrayList;

    .line 287
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->pnnHomeName:Ljava/lang/String;

    .line 289
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 306
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 308
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->resetVoiceCallForwardingFlag(IZ)V

    .line 311
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mPendingIccLoaded:Z

    .line 313
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 2026
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 2028
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2029
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->onAllRecordsLoaded()V

    .line 2034
    :cond_0
    :goto_0
    return-void

    .line 2030
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 2031
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "HtcCdmaSIMRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 701
    if-eqz p1, :cond_0

    .line 705
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->fetchSimRecords()V

    .line 707
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->dropSimPbkEntries()V

    .line 709
    :cond_0
    return-void
.end method

.method queryCFUIfNecessary()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 675
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    if-eqz v3, :cond_1

    .line 676
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->cfuQueried:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->checkTestIcc()Z

    move-result v3

    if-nez v3, :cond_0

    .line 678
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cfu_query_when_campon"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_2

    move v0, v1

    .line 680
    .local v0, cfuQuery:Z
    :goto_0
    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 683
    const/16 v1, 0x6c

    const-wide/16 v3, 0x7d0

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->sendEmptyMessageDelayed(IJ)Z

    .line 687
    .end local v0           #cfuQuery:Z
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->disableCfuIcon:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    if-eqz v1, :cond_1

    .line 688
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->disableCfuIcon:Z

    .line 689
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    .line 692
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 678
    goto :goto_0
.end method

.method resetVoiceCallForwardingFlag(IZ)V
    .locals 2
    .parameter "line"
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    .line 663
    if-eq p1, v1, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    if-eq v0, p2, :cond_0

    .line 667
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->disableCfuIcon:Z

    .line 668
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    goto :goto_0
.end method

.method public setCBLanguageEFlp([B)V
    .locals 3
    .parameter "lp"

    .prologue
    .line 1900
    const-string v0, "ENF"

    const-string v1, "setCBMsgIdEFcbmi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f05

    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 1904
    return-void
.end method

.method public setCBMsgIdEFcbmi([BLandroid/os/Message;)V
    .locals 3
    .parameter "msgId"
    .parameter "onComplete"

    .prologue
    .line 1911
    const-string v0, "ENF"

    const-string v1, "setCBMsgIdEFcbmi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f45

    const/16 v2, 0x24

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 1916
    return-void
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x6f40

    const/16 v6, 0x1e

    const/4 v4, 0x1

    .line 352
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTemp:Ljava/lang/String;

    .line 353
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTagTemp:Ljava/lang/String;

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set MSISDN: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTagTemp:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "xxxxxxx"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->log(Ljava/lang/String;)V

    .line 355
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTagTemp:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTemp:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    const-string v0, "gsm.sim.types"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 362
    .local v7, simType:Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->RIL_3G_SIM_CARD:Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v3, 0x6f4e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 371
    :goto_0
    return-void

    .line 367
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v3, 0x6f4a

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "subsidyType"
    .parameter "passWord"
    .parameter "response"

    .prologue
    .line 2522
    const/16 v1, 0x67

    invoke-virtual {p0, v1, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2523
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2525
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .locals 8
    .parameter "line"
    .parameter "enable"

    .prologue
    const/4 v0, 0x1

    .line 547
    if-eq p1, v0, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    .line 551
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->cfuQueried:Z

    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_2

    .line 559
    if-eqz p2, :cond_3

    .line 560
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 568
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fcb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    .line 574
    if-eqz p2, :cond_4

    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 582
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 586
    :catch_0
    move-exception v6

    .line 587
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 562
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    .line 578
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setVoiceCallForwardingFlag(IZILjava/lang/String;)V
    .locals 10
    .parameter "line"
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "dialNumber"

    .prologue
    const/16 v3, 0xe

    const/4 v0, 0x1

    .line 598
    if-eq p1, v0, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    iput-boolean p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->callForwardingEnabled:Z

    .line 602
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->cfuQueried:Z

    .line 605
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyCallForwardingIndicator()V

    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_3

    .line 610
    if-eqz p2, :cond_5

    .line 614
    if-nez p3, :cond_4

    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    .line 620
    :goto_1
    if-eqz p4, :cond_2

    .line 621
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v8

    .line 622
    .local v8, str:[B
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x2

    array-length v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 623
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v2, 0x3

    array-length v3, v8

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 634
    .end local v8           #str:[B
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v9, 0x6fcb

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v5, v9}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 639
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    .line 640
    if-eqz p2, :cond_6

    .line 641
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 648
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 652
    :catch_0
    move-exception v6

    .line 653
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "Error saving call fowarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 617
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    and-int/lit8 v2, p3, 0x7

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    .line 627
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 629
    const/4 v7, 0x2

    .local v7, i:I
    :goto_3
    if-ge v7, v3, :cond_2

    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCfis:[B

    aget-byte v1, v0, v7

    or-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 629
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 644
    .end local v7           #i:I
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    const/4 v5, 0x0

    .line 407
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    if-eqz v0, :cond_0

    .line 408
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmFixedException;

    const-string v3, "Voicemail number is fixed by operator"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 410
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 436
    :goto_0
    return-void

    .line 414
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 415
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 417
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_1

    .line 421
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    const/16 v6, 0x14

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 425
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/16 v6, 0x19

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 432
    :cond_2
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 434
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 8
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 461
    if-eq p1, v1, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    if-gez p2, :cond_4

    .line 468
    const/4 p2, -0x1

    .line 475
    :cond_2
    :goto_1
    iput p2, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 480
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    if-eqz v2, :cond_3

    .line 484
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xfe

    iget v5, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    if-nez v5, :cond_5

    :goto_2
    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 488
    if-gez p2, :cond_7

    .line 495
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->isFfBeTreatedAsUnknownCount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 506
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fca

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fca

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 511
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    if-eqz v0, :cond_0

    .line 513
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xf0

    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    if-nez v0, :cond_8

    const/4 v0, 0x5

    :goto_4
    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 516
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f11

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efCPHS_MWI:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 524
    :catch_0
    move-exception v6

    .line 525
    .local v6, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "HtcCdmaSIMRecords"

    const-string v1, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 469
    .end local v6           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    const/16 v2, 0xff

    if-le p2, v2, :cond_2

    .line 472
    const/16 p2, 0xff

    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 484
    goto :goto_2

    .line 499
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_3

    .line 503
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSIMRecords;->efMWIS:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 513
    :cond_8
    const/16 v0, 0xa

    goto :goto_4
.end method
