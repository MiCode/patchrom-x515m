.class public final Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;
.super Landroid/os/Handler;
.source "HtcIccPbkEntryCache_QMI.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;
.implements Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;


# static fields
.field static final ANR_ENTRY_INDEX_1:I = 0x0

.field static final ANR_ENTRY_INDEX_2:I = 0x1

.field static final DBG:Z = true

.field static final ERROR_ANR1_FULL:I = 0x2

.field static final ERROR_ANR2_FULL:I = 0x4

.field static final ERROR_EMAIL_FULL:I = 0x1

.field static final ERROR_NONE:I = 0x0

.field static final ERROR_UNKNOWN:I = 0x8

.field private static final EVENT_ADD_PB_ENTRY_DONE:I = 0x4

.field private static final EVENT_DELETE_PB_ENTRY_DONE:I = 0x6

.field private static final EVENT_GET_PB_LENGTH_DONE:I = 0x1

.field private static final EVENT_GET_PB_USED_NUM_DONE:I = 0x2

.field private static final EVENT_LOAD_PB_ADN_DONE:I = 0x9

.field private static final EVENT_LOAD_PB_ANR_DONE:I = 0xd

.field private static final EVENT_LOAD_PB_CC_DONE:I = 0x16

.field private static final EVENT_LOAD_PB_EMAIL_DONE:I = 0xc

.field private static final EVENT_LOAD_PB_ENTRIES_DONE:I = 0x3

.field private static final EVENT_LOAD_PB_EXT1_DONE:I = 0x8

.field private static final EVENT_LOAD_PB_IAP_DONE:I = 0xb

.field private static final EVENT_LOAD_PB_PBR_DONE:I = 0x7

.field private static final EVENT_LOAD_PB_PSC_DONE:I = 0x14

.field private static final EVENT_LOAD_PB_PUID_DONE:I = 0x18

.field private static final EVENT_LOAD_PB_UID_DONE:I = 0xa

.field private static final EVENT_UPDATE_ANR_DONE:I = 0x12

.field private static final EVENT_UPDATE_ANR_EXT1_DONE:I = 0x13

.field private static final EVENT_UPDATE_EMAIL_DONE:I = 0x11

.field private static final EVENT_UPDATE_EXT1_DONE:I = 0xf

.field private static final EVENT_UPDATE_IAP_DONE:I = 0x10

.field private static final EVENT_UPDATE_PB_CC_DONE:I = 0x17

.field private static final EVENT_UPDATE_PB_ENTRY_DONE:I = 0x5

.field private static final EVENT_UPDATE_PB_PSC_DONE:I = 0x15

.field private static final EVENT_UPDATE_PB_PUID_DONE:I = 0x19

.field private static final EVENT_UPDATE_PB_UID_DONE:I = 0xe

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final IAP_ENTRY_ANR_1_INDEX:I = 0x0

.field static final IAP_ENTRY_ANR_2_INDEX:I = 0x1

.field static final IAP_ENTRY_EMAIL_INDEX:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "HtcIccPbkEntryCache_QMI"

.field static final MAX_INT_VALUE:J = 0xffffffffL

.field static final MAX_NUM_ANR_PER_PBK_ENTRY:I = 0x2

.field static final MAX_SHORT_VALUE:I = 0xffff

.field private static final QUERY_SIM_CONTACT_FILE_TIMESTAMP:Ljava/lang/String; = "query_sim_contact_file_timestamp"


# instance fields
.field m2GPhonebook:Z

.field mADNRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcAdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mANR_swap:Z

.field mAnrFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mAnrRecordLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AnrRecord;",
            ">;>;>;"
        }
    .end annotation
.end field

.field mChangeCounter:I

.field mDropSIMTimeStamp:J

.field mEmailFileList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mEmailRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/EmailRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mExt1RecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcExt1Record;",
            ">;"
        }
    .end annotation
.end field

.field mIAPRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IAPRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mIap_Updatedata:[B

.field mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

.field mMsgNumber:I

.field mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

.field mPSC:J

.field mPUID:I

.field mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mRecordNums:I

.field mSimPbkEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation
.end field

.field mSimPbkWaiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mSupportAnr:[Z

.field mSupportCC:Z

.field mSupportEmail:Z

.field mSupportPSC:Z

.field mSupportPUID:Z

.field private mTotal:I

.field mUIDRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/UIDRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUsed:I

.field mUserWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field misloading:Z

.field pollingContext:[I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .parameter "phone"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 207
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    .line 174
    iput v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    .line 176
    iput v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    .line 182
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 183
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->misloading:Z

    .line 185
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    .line 187
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    .line 188
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    .line 192
    iput v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 193
    iput-wide v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 194
    iput v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 196
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    .line 197
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    .line 198
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    .line 201
    iput-wide v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    .line 208
    iput-object p1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 209
    new-instance v0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    .line 210
    return-void
.end method

.method private addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V
    .locals 8
    .parameter "anrNumber"
    .parameter "entry"
    .parameter "anrEntryIndex"

    .prologue
    const/4 v4, 0x1

    .line 2285
    const-string v0, "addAnrRecord()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2286
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v0, :cond_1

    .line 2287
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 2288
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2290
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v7, v0, v1

    .line 2291
    .local v7, num:I
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, v7, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v3

    .line 2292
    .local v3, efid:I
    if-eqz v3, :cond_1

    .line 2294
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v1, v7

    sub-int v6, v0, v1

    .line 2296
    .local v6, adnRecordNumber:I
    const/4 v2, 0x0

    .line 2297
    .local v2, anrRecord:Lcom/android/internal/telephony/AnrRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v0

    if-ne v0, v4, :cond_2

    .line 2298
    invoke-virtual {p0, v7, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v2

    .line 2300
    if-eqz v2, :cond_0

    .line 2301
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget v1, v2, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, p3

    .line 2325
    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    .line 2326
    const/4 v0, 0x0

    iput v0, v2, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 2327
    iput v6, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 2328
    iput-object p1, v2, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 2329
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v1, 0xc0

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v0

    iput v0, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 2331
    iget v1, v2, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    const/16 v0, 0x12

    invoke-virtual {p0, v0, v7, p3, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V

    .line 2342
    .end local v2           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .end local v3           #efid:I
    .end local v6           #adnRecordNumber:I
    .end local v7           #num:I
    :cond_1
    :goto_1
    return-void

    .line 2305
    .restart local v2       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .restart local v3       #efid:I
    .restart local v6       #adnRecordNumber:I
    .restart local v7       #num:I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 2306
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_4

    .line 2308
    if-lez v6, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v6, v0, :cond_3

    .line 2311
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .restart local v2       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    goto :goto_0

    .line 2314
    :cond_3
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out of anr index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2318
    :cond_4
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "anrindex out of mAnrRecordLists.get(num).size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2321
    :cond_5
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "num out of mAnrRecordLists.size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2336
    :cond_6
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "Can not find empty ANR record"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I
    .locals 7
    .parameter "number1"
    .parameter "number2"
    .parameter "email"
    .parameter "num"
    .parameter "entry"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 1973
    const/4 v2, 0x0

    .line 1974
    .local v2, error:I
    iput-boolean v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    .line 1976
    iget-boolean v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v5, v5, v3

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v5, v5, v6

    if-nez v5, :cond_0

    .line 2039
    :goto_0
    return v3

    .line 1980
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-nez v5, :cond_1

    move v3, v4

    .line 1981
    goto :goto_0

    .line 1984
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 1985
    goto :goto_0

    .line 1989
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1990
    iget-boolean v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-ne v4, v6, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_3

    .line 1991
    iget v4, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-nez v4, :cond_3

    .line 1992
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyEmailRecord(I)Lcom/android/internal/telephony/EmailRecord;

    move-result-object v1

    .line 1993
    .local v1, emailRecord:Lcom/android/internal/telephony/EmailRecord;
    if-nez v1, :cond_3

    .line 1994
    add-int/lit8 v2, v2, 0x1

    .line 2001
    .end local v1           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2002
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v3

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v4

    if-ne v4, v6, :cond_4

    .line 2003
    iget-object v4, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v4, v4, v3

    if-nez v4, :cond_4

    .line 2004
    invoke-virtual {p0, p4, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v0

    .line 2005
    .local v0, anrRecord:Lcom/android/internal/telephony/AnrRecord;
    if-nez v0, :cond_4

    .line 2006
    add-int/lit8 v2, v2, 0x2

    .line 2012
    .end local v0           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2013
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v3, v3, v6

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v3

    if-ne v3, v6, :cond_5

    .line 2014
    iget-object v3, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v3, v3, v6

    if-nez v3, :cond_5

    .line 2015
    invoke-virtual {p0, p4, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v0

    .line 2016
    .restart local v0       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    if-nez v0, :cond_5

    .line 2017
    add-int/lit8 v2, v2, 0x4

    .end local v0           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_5
    :goto_1
    move v3, v2

    .line 2039
    goto :goto_0

    .line 2022
    :cond_6
    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 2023
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v3, v3, v6

    if-ne v3, v6, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v3

    if-ne v3, v6, :cond_8

    .line 2024
    iget-object v3, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v3, v3, v6

    if-nez v3, :cond_9

    .line 2025
    invoke-virtual {p0, p4, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v0

    .line 2026
    .restart local v0       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    if-eqz v0, :cond_8

    .line 2027
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    .line 2034
    .end local v0           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_8
    :goto_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    if-ne v3, v6, :cond_5

    .line 2035
    add-int/lit8 v2, v2, -0x2

    goto :goto_1

    .line 2030
    :cond_9
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    goto :goto_2
.end method

.method private checkNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "number"
    .parameter "number1"
    .parameter "number2"

    .prologue
    const/16 v6, 0x2b

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v1, 0x8

    const/4 v3, 0x1

    .line 1939
    const/4 v0, 0x0

    .line 1941
    .local v0, error:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1942
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 1969
    .end local v0           #error:I
    :cond_0
    :goto_0
    return v0

    .line 1947
    .restart local v0       #error:I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v5

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v3

    if-ne v2, v3, :cond_4

    .line 1948
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-nez v2, :cond_3

    move v0, v1

    .line 1949
    goto :goto_0

    .line 1952
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 1953
    goto :goto_0

    .line 1957
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v5

    if-ne v2, v3, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1958
    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_5

    move v0, v1

    .line 1959
    goto :goto_0

    .line 1963
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v5

    if-ne v2, v3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1964
    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 1965
    goto :goto_0
.end method

.method private getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 2

    .prologue
    .line 3028
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v0, :cond_0

    .line 3029
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 3031
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    goto :goto_0
.end method

.method private getPbkEntryListIfLoaded()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private handleExt1loaded(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 1336
    const-string v4, "handleExt1loaded"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1339
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1340
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    move-object v1, v4

    check-cast v1, Ljava/util/ArrayList;

    .line 1342
    .local v1, ext1Data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1343
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1344
    .local v2, ext1DataSize:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    .line 1345
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1346
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v6, v4}, Lcom/android/internal/telephony/HtcExt1Record;->parseFromEf(I[B)Lcom/android/internal/telephony/HtcExt1Record;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1351
    .end local v2           #ext1DataSize:I
    .end local v3           #i:I
    :cond_0
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "Failed to load EF_EXT1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :cond_1
    return-void
.end method

.method private handlePollPBResult(ILandroid/os/AsyncResult;)V
    .locals 5
    .parameter "what"
    .parameter "ar"

    .prologue
    .line 1357
    iget-object v3, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    if-eq v3, v4, :cond_1

    .line 1389
    :cond_0
    :goto_0
    return-void

    .line 1359
    :cond_1
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1362
    const-string v3, "handlePollPBResult()"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1364
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 1365
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1367
    :pswitch_0
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1369
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 1370
    .local v2, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    if-eqz v2, :cond_0

    .line 1372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollPBResult() temp.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1375
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1376
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1378
    .local v0, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollPBResult() entry.index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1380
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1381
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1375
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1365
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2643
    const-string v0, "HtcIccPbkEntryCache_QMI"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    return-void
.end method

.method private notifySimPbkWaiter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1324
    const-string v2, "notifySimPbkWaiter"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1326
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1327
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 1328
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1329
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SIM_CONTACTS_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1330
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v1, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1333
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 7
    .parameter
    .parameter "ar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    const/4 v6, 0x0

    .line 2546
    if-nez p1, :cond_0

    .line 2557
    :goto_0
    return-void

    .line 2550
    :cond_0
    const-string v3, "HtcIccPbkEntryCache_QMI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyWaiters"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 2552
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 2553
    .local v2, waiter:Landroid/os/Message;
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2554
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2551
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2556
    .end local v2           #waiter:Landroid/os/Message;
    :cond_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->misloading:Z

    goto :goto_0
.end method

.method private pollPBList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1464
    const/4 v3, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    .line 1465
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    aput v5, v3, v5

    .line 1467
    const/4 v2, 0x0

    .local v2, start:I
    const/4 v0, 0x0

    .line 1469
    .local v0, end:I
    const-string v3, "pollPBList()"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1471
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    if-ge v0, v3, :cond_2

    .line 1472
    add-int/lit8 v2, v0, 0x1

    .line 1473
    add-int/lit8 v0, v2, 0xa

    .line 1475
    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    if-le v0, v3, :cond_0

    .line 1476
    iget v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 1478
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    aget v4, v3, v5

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v5

    .line 1479
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1482
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v3, :cond_1

    .line 1483
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v2, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntries(IILandroid/os/Message;)V

    .line 1488
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1485
    :cond_1
    const-string v3, "mPhone is null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1490
    .end local v1           #response:Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .parameter "response"
    .parameter "errString"

    .prologue
    .line 2560
    if-eqz p1, :cond_0

    .line 2561
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2562
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2563
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2565
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    .line 2568
    if-nez p1, :cond_0

    .line 2574
    :goto_0
    return-void

    .line 2572
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2573
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private setLocalMemberToDefault()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3036
    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    .line 3037
    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 3038
    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUsed:I

    .line 3039
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    .line 3040
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 3041
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aput-boolean v2, v0, v2

    .line 3042
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aput-boolean v2, v0, v1

    .line 3043
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->misloading:Z

    .line 3044
    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 3045
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 3046
    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 3047
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    .line 3048
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    .line 3049
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    .line 3050
    return-void
.end method

.method private static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    .line 1923
    if-nez p0, :cond_0

    .line 1924
    const/4 v4, 0x0

    .line 1935
    :goto_0
    return-object v4

    .line 1926
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1927
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1929
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1930
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1931
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator_FDN(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1932
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1929
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1935
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V
    .locals 7
    .parameter "name"
    .parameter "number"
    .parameter "entry"
    .parameter "response"

    .prologue
    .line 2446
    const/4 v2, 0x0

    .line 2447
    .local v2, efid:I
    iget v5, p3, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v3, v5, v6

    .line 2448
    .local v3, num:I
    iget v5, p3, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v6, v3

    sub-int v1, v5, v6

    .line 2450
    .local v1, adnRecordNumber:I
    iget-boolean v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    if-nez v5, :cond_1

    .line 2451
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v5, :cond_0

    .line 2452
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2453
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v6, 0xc0

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2460
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 2461
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 2462
    if-lez v1, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v1, v5, :cond_2

    .line 2463
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HtcAdnRecord;

    .line 2464
    .local v0, adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    iput-object p1, v0, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    .line 2465
    iput-object p2, v0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    .line 2468
    iget v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    rem-int/lit16 v5, v5, 0xff

    iput v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    .line 2469
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    iget v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    invoke-virtual {v5, v6, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2471
    const/4 v5, 0x5

    iget v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    invoke-virtual {p0, v5, v6, v3, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2473
    .local v4, res:Landroid/os/Message;
    iget v5, v0, Lcom/android/internal/telephony/HtcAdnRecord;->recordNumber:I

    invoke-virtual {p0, v5, v0, v2, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateADNByIndex(ILcom/android/internal/telephony/HtcAdnRecord;ILandroid/os/Message;)V

    .line 2486
    .end local v0           #adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    .end local v4           #res:Landroid/os/Message;
    :goto_1
    return-void

    .line 2457
    :cond_1
    const/16 v2, 0x6f3a

    goto :goto_0

    .line 2475
    :cond_2
    const-string v5, "HtcIccPbkEntryCache_QMI"

    const-string v6, "adnRecordNumber out of mADNRecordList.get(num).size()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    const-string v5, "error"

    invoke-direct {p0, p4, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1

    .line 2479
    :cond_3
    const-string v5, "HtcIccPbkEntryCache_QMI"

    const-string v6, "num out of mADNRecordList.size()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    const-string v5, "error"

    invoke-direct {p0, p4, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1

    .line 2483
    :cond_4
    const-string v5, "HtcIccPbkEntryCache_QMI"

    const-string v6, "The efid of ADN is 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    const-string v5, "error"

    invoke-direct {p0, p4, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V
    .locals 11
    .parameter "anrNumber"
    .parameter "entry"
    .parameter "anrEntryIndex"

    .prologue
    const/16 v5, 0xff

    const/16 v4, 0x12

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAnrRecord()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2348
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v0, :cond_0

    .line 2349
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    if-ne v0, v9, :cond_0

    .line 2350
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v8, v0, v1

    .line 2351
    .local v8, num:I
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, v8, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v3

    .line 2352
    .local v3, efid:I
    if-eqz v3, :cond_0

    .line 2354
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v1, v8

    sub-int v6, v0, v1

    .line 2356
    .local v6, adnRecordNumber:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v9, :cond_4

    .line 2358
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 2359
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 2360
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eq v0, v5, :cond_0

    .line 2362
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-lez v0, :cond_1

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v1, v0, :cond_1

    .line 2365
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v1, p3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .line 2368
    .local v2, anrRecord:Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/AnrRecord;->clear()V

    .line 2369
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    invoke-virtual {p0, v4, v8, p3, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V

    .line 2373
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aput v10, v0, p3

    .line 2374
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p3

    .line 2376
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v0

    if-ne v0, v9, :cond_0

    .line 2377
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v7

    .line 2378
    .local v7, index:I
    if-ltz v7, :cond_0

    .line 2379
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v1, -0x1

    aput-byte v1, v0, v7

    .line 2443
    .end local v2           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .end local v3           #efid:I
    .end local v6           #adnRecordNumber:I
    .end local v7           #index:I
    .end local v8           #num:I
    :cond_0
    :goto_0
    return-void

    .line 2383
    .restart local v3       #efid:I
    .restart local v6       #adnRecordNumber:I
    .restart local v8       #num:I
    :cond_1
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out of anr index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v4, v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2388
    :cond_2
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "anrEntryIndex out of mAnrRecordLists.get(num).size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2391
    :cond_3
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "num out of mAnrRecordLists.size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2397
    :cond_4
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eqz v0, :cond_9

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eq v0, v5, :cond_9

    .line 2400
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v0

    if-ne v0, v9, :cond_5

    .line 2401
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v7

    .line 2402
    .restart local v7       #index:I
    if-ltz v7, :cond_5

    .line 2403
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v1, p3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 2407
    .end local v7           #index:I
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_8

    .line 2408
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_7

    .line 2409
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-lez v0, :cond_6

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v1, v0, :cond_6

    .line 2412
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v1, p3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .line 2415
    .restart local v2       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    iput v10, v2, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 2416
    iput v6, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 2417
    iput-object p1, v2, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 2418
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v1, 0xc0

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v0

    iput v0, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 2420
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    invoke-virtual {p0, v4, v8, p3, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2425
    .end local v2           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_6
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out of anr index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v4, v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2429
    :cond_7
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "anrEntryIndex out of mAnrRecordLists.get(num).size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2432
    :cond_8
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "num out of mAnrRecordLists.size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2437
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    goto/16 :goto_0
.end method

.method private updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V
    .locals 11
    .parameter "email"
    .parameter "entry"

    .prologue
    const/16 v10, 0xc0

    const/16 v9, 0x11

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2044
    const-string v4, "updateEmailRecord()"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2045
    iget-boolean v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-ne v4, v6, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v4, :cond_0

    .line 2047
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 2048
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v3, v4, v5

    .line 2049
    .local v3, num:I
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v5, 0xca

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v1

    .line 2051
    .local v1, efid:I
    if-eqz v1, :cond_0

    .line 2052
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v5, v3

    sub-int v0, v4, v5

    .line 2054
    .local v0, adnRecordNumber:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2056
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2057
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-eqz v4, :cond_0

    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    const/16 v5, 0xff

    if-eq v4, v5, :cond_0

    .line 2059
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-lez v4, :cond_1

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v5, v4, :cond_1

    .line 2062
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    .line 2065
    .local v2, emailRecord:Lcom/android/internal/telephony/EmailRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/EmailRecord;->clear()V

    .line 2066
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {p0, v9, v3, v7, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V

    .line 2073
    iput v7, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 2074
    const-string v4, ""

    iput-object v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 2076
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 2078
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v5, -0x1

    aput-byte v5, v4, v8

    .line 2172
    .end local v0           #adnRecordNumber:I
    .end local v1           #efid:I
    .end local v2           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    .end local v3           #num:I
    :cond_0
    :goto_0
    return-void

    .line 2081
    .restart local v0       #adnRecordNumber:I
    .restart local v1       #efid:I
    .restart local v3       #num:I
    :cond_1
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out of e-mail index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2087
    :cond_2
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "num out of mEmailRecordList.size()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2090
    :cond_3
    const/4 v2, 0x0

    .line 2093
    .restart local v2       #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-eqz v4, :cond_7

    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    const/16 v5, 0xff

    if-eq v4, v5, :cond_7

    .line 2095
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_4

    .line 2096
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v8

    .line 2098
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 2099
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-lez v4, :cond_5

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v5, v4, :cond_5

    .line 2102
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    .line 2104
    .restart local v2       #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    iput v0, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 2105
    iput-object p1, v2, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 2106
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4, v3, v10}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 2111
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {p0, v9, v3, v7, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2119
    :cond_5
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out of e-mail index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2124
    :cond_6
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "num out of mEmailRecordList.size()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2129
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_9

    .line 2130
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyEmailRecord(I)Lcom/android/internal/telephony/EmailRecord;

    move-result-object v2

    .line 2131
    if-eqz v2, :cond_8

    .line 2132
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget v5, v2, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v8

    .line 2150
    :cond_8
    :goto_1
    if-eqz v2, :cond_c

    .line 2151
    iput v0, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 2152
    iput-object p1, v2, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 2153
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4, v3, v10}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 2157
    iget v4, v2, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    invoke-virtual {p0, v9, v3, v7, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2135
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 2136
    if-lez v0, :cond_a

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v0, v4, :cond_a

    .line 2139
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    .restart local v2       #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    goto :goto_1

    .line 2143
    :cond_a
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out of e-mail index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2146
    :cond_b
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "num out of mEmailRecordList.size()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2165
    :cond_c
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "Can not find empty email record"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateIAP(IZ)V
    .locals 15
    .parameter "index"
    .parameter "clear"

    .prologue
    .line 2175
    const-string v11, "updateIAP()"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2176
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 2180
    :cond_0
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v11, :cond_3

    iget v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v11, :cond_3

    .line 2181
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 2182
    add-int/lit8 v11, p1, -0x1

    iget v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v7, v11, v12

    .line 2184
    .local v7, num:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v12, 0xc1

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v3

    .line 2187
    .local v3, efid_iap:I
    if-eqz v3, :cond_9

    .line 2188
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_8

    .line 2189
    iget v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v11, v7

    sub-int v9, p1, v11

    .line 2191
    .local v9, recordNumber:I
    if-lez v9, :cond_7

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gt v9, v11, :cond_7

    .line 2194
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IAPRecord;

    .line 2197
    .local v5, iapRecord:Lcom/android/internal/telephony/IAPRecord;
    iget-object v11, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v11, v11

    new-array v10, v11, [B

    .line 2199
    .local v10, recordString:[B
    const/4 v1, 0x0

    .line 2200
    .local v1, doUpdate:Z
    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_4

    .line 2201
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v11, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v11, v11

    if-ge v4, v11, :cond_1

    .line 2202
    const/4 v11, -0x1

    aput-byte v11, v10, v4

    .line 2201
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2204
    :cond_1
    const/4 v1, 0x1

    .line 2255
    .end local v4           #i:I
    :cond_2
    :goto_1
    const/4 v11, 0x1

    if-ne v1, v11, :cond_3

    .line 2256
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "num ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " doUpdate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " iapRecord.mRecordNumber = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2259
    const/4 v11, 0x0

    iget-object v12, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    const/4 v13, 0x0

    iget-object v14, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v14, v14

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2263
    const/16 v11, 0x10

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v7, v12, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {p0, v9, v5, v3, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateIAPByIndex(ILcom/android/internal/telephony/IAPRecord;ILandroid/os/Message;)V

    .line 2280
    .end local v1           #doUpdate:Z
    .end local v3           #efid_iap:I
    .end local v5           #iapRecord:Lcom/android/internal/telephony/IAPRecord;
    .end local v7           #num:I
    .end local v9           #recordNumber:I
    .end local v10           #recordString:[B
    :cond_3
    :goto_2
    return-void

    .line 2206
    .restart local v1       #doUpdate:Z
    .restart local v3       #efid_iap:I
    .restart local v5       #iapRecord:Lcom/android/internal/telephony/IAPRecord;
    .restart local v7       #num:I
    .restart local v9       #recordNumber:I
    .restart local v10       #recordString:[B
    :cond_4
    iget-object v11, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v14, v14

    invoke-static {v11, v12, v10, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2209
    iget-boolean v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 2211
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v12, 0xca

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2213
    .local v2, efid:I
    if-eqz v2, :cond_5

    .line 2214
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11, v7, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v8

    .line 2216
    .local v8, position:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v12, 0x2

    aget-byte v11, v11, v12

    if-eqz v11, :cond_5

    if-lez v8, :cond_5

    .line 2217
    add-int/lit8 v11, v8, -0x1

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v13, 0x2

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 2218
    const/4 v1, 0x1

    .line 2223
    .end local v2           #efid:I
    .end local v8           #position:I
    :cond_5
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v12, 0x0

    aget-boolean v11, v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 2226
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x0

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2228
    .restart local v2       #efid:I
    if-eqz v2, :cond_6

    .line 2229
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11, v7, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v8

    .line 2231
    .restart local v8       #position:I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v6

    .line 2232
    .local v6, index_iap:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v11, v11, v6

    if-eqz v11, :cond_6

    if-lez v8, :cond_6

    .line 2233
    add-int/lit8 v11, v8, -0x1

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v12, v12, v6

    aput-byte v12, v10, v11

    .line 2234
    const/4 v1, 0x1

    .line 2239
    .end local v2           #efid:I
    .end local v6           #index_iap:I
    .end local v8           #position:I
    :cond_6
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v12, 0x1

    aget-boolean v11, v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 2242
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x1

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2244
    .restart local v2       #efid:I
    if-eqz v2, :cond_2

    .line 2245
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11, v7, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v8

    .line 2247
    .restart local v8       #position:I
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v6

    .line 2248
    .restart local v6       #index_iap:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v11, v11, v6

    if-eqz v11, :cond_2

    if-lez v8, :cond_2

    .line 2249
    add-int/lit8 v11, v8, -0x1

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v12, v12, v6

    aput-byte v12, v10, v11

    .line 2250
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 2268
    .end local v1           #doUpdate:Z
    .end local v2           #efid:I
    .end local v5           #iapRecord:Lcom/android/internal/telephony/IAPRecord;
    .end local v6           #index_iap:I
    .end local v8           #position:I
    .end local v10           #recordString:[B
    :cond_7
    const-string v11, "HtcIccPbkEntryCache_QMI"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "out of mIAPRecordList.get(num).size()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2271
    .end local v9           #recordNumber:I
    :cond_8
    const-string v11, "HtcIccPbkEntryCache_QMI"

    const-string v12, "num out of mIAPRecordList.size()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2274
    :cond_9
    const-string v11, "HtcIccPbkEntryCache_QMI"

    const-string v12, "no EF-IAP"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private updatePSCRecord(ZII)V
    .locals 12
    .parameter "addpbk"
    .parameter "num"
    .parameter "index"

    .prologue
    .line 1815
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    .line 1817
    .local v3, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    const/4 v7, 0x0

    .line 1818
    .local v7, updatePSC:Z
    const/4 v5, 0x0

    .line 1819
    .local v5, resetAllUID:Z
    iget-boolean v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 1820
    iget v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 1822
    iget v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    const v9, 0xffff

    if-le v8, v9, :cond_0

    .line 1823
    const/4 v7, 0x1

    .line 1824
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 1827
    :cond_0
    const/4 v8, 0x2

    new-array v0, v8, [B

    .line 1828
    .local v0, data:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v8, 0x2

    if-ge v2, v8, :cond_1

    .line 1829
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v2

    mul-int/lit8 v4, v8, 0x8

    .line 1830
    .local v4, offset:I
    iget v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    ushr-int/2addr v8, v4

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 1828
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1832
    .end local v4           #offset:I
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update Change Counter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1834
    if-eqz v3, :cond_2

    .line 1835
    const/16 v8, 0x4f23

    const/16 v9, 0x17

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v3, v8, v0, v9}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 1839
    .end local v0           #data:[B
    .end local v2           #i:I
    :cond_2
    const/4 v8, 0x1

    if-ne p1, v8, :cond_7

    iget-boolean v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 1840
    iget v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 1842
    iget v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    const v9, 0xffff

    if-le v8, v9, :cond_3

    .line 1844
    const/4 v7, 0x1

    .line 1845
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 1848
    :cond_3
    const/4 v8, 0x2

    new-array v0, v8, [B

    .line 1849
    .restart local v0       #data:[B
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    const/4 v8, 0x2

    if-ge v2, v8, :cond_4

    .line 1850
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v2

    mul-int/lit8 v4, v8, 0x8

    .line 1851
    .restart local v4       #offset:I
    iget v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    ushr-int/2addr v8, v4

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 1849
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1853
    .end local v4           #offset:I
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update mPUID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1855
    if-eqz v3, :cond_5

    .line 1856
    const/16 v8, 0x4f24

    const/16 v9, 0x19

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v3, v8, v0, v9}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 1860
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v8

    if-ge p2, v8, :cond_c

    .line 1861
    iget-object v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v9, 0xc9

    invoke-virtual {v8, p2, v9}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v1

    .line 1862
    .local v1, efid:I
    if-eqz v1, :cond_b

    .line 1863
    iget-object v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge p2, v8, :cond_a

    .line 1864
    iget-object v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge p3, v8, :cond_9

    .line 1865
    iget-object v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    add-int/lit8 v9, p3, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/UIDRecord;

    .line 1866
    .local v6, uidRecord:Lcom/android/internal/telephony/UIDRecord;
    array-length v8, v0

    iget-object v9, v6, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    array-length v9, v9

    if-ne v8, v9, :cond_7

    .line 1867
    const/4 v2, 0x0

    :goto_2
    iget-object v8, v6, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    array-length v8, v8

    if-ge v2, v8, :cond_6

    .line 1868
    iget-object v8, v6, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    aget-byte v9, v0, v2

    aput-byte v9, v8, v2

    .line 1867
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1870
    :cond_6
    new-instance v8, Lcom/android/internal/telephony/UIDRecordLoader;

    iget-object v9, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v8, v9, v10}, Lcom/android/internal/telephony/UIDRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    iget v9, v6, Lcom/android/internal/telephony/UIDRecord;->mRecordNumber:I

    const/16 v10, 0xe

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v8, v1, v9, v6, v10}, Lcom/android/internal/telephony/UIDRecordLoader;->updateEF(IILcom/android/internal/telephony/UIDRecord;Landroid/os/Message;)V

    .line 1902
    .end local v0           #data:[B
    .end local v1           #efid:I
    .end local v2           #i:I
    .end local v6           #uidRecord:Lcom/android/internal/telephony/UIDRecord;
    :cond_7
    :goto_3
    iget-boolean v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    const/4 v8, 0x1

    if-ne v7, v8, :cond_e

    .line 1903
    iget-wide v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 1904
    iget-wide v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    const-wide v10, 0xffffffffL

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 1905
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 1907
    :cond_8
    const/4 v8, 0x4

    new-array v0, v8, [B

    .line 1908
    .restart local v0       #data:[B
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    const/4 v8, 0x4

    if-ge v2, v8, :cond_d

    .line 1909
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v2

    mul-int/lit8 v4, v8, 0x8

    .line 1910
    .restart local v4       #offset:I
    iget-wide v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    ushr-long/2addr v8, v4

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 1908
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1874
    .end local v4           #offset:I
    .restart local v1       #efid:I
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "out of EFUID index = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1877
    :cond_a
    const-string v8, "num out of mUIDRecordList().size()"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1880
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not find EFUID id num:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1883
    .end local v1           #efid:I
    :cond_c
    const-string v8, "num out of mPBRParser size()"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1913
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update PSC: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1915
    if-eqz v3, :cond_e

    .line 1916
    const/16 v8, 0x4f22

    const/16 v9, 0x15

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v3, v8, v0, v9}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 1919
    .end local v0           #data:[B
    .end local v2           #i:I
    :cond_e
    return-void
.end method


# virtual methods
.method public addPBKEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)J
    .locals 18
    .parameter "name"
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "emailAddress"
    .parameter "response"

    .prologue
    .line 1502
    const-string v4, "addPBKEntry()"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1503
    const-wide/16 v13, 0x0

    .line 1504
    .local v13, index:J
    const/4 v10, 0x0

    .line 1507
    .local v10, error:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v4, :cond_0

    .line 1508
    const-string v4, "mPhone null"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move-wide v15, v13

    .line 1616
    .end local v13           #index:J
    .local v15, index:J
    :goto_0
    return-wide v15

    .line 1514
    .end local v15           #index:J
    .restart local v13       #index:J
    :cond_0
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    array-length v4, v4

    if-ge v11, v4, :cond_1

    .line 1515
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v5, 0x0

    aput-byte v5, v4, v11

    .line 1514
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1518
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1520
    .local v17, phonenumber:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1521
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move-wide v15, v13

    .line 1522
    .end local v13           #index:J
    .restart local v15       #index:J
    goto :goto_0

    .line 1525
    .end local v15           #index:J
    .restart local v13       #index:J
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->checkNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 1527
    if-eqz v10, :cond_3

    .line 1528
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move-wide v15, v13

    .line 1529
    .end local v13           #index:J
    .restart local v15       #index:J
    goto :goto_0

    .line 1533
    .end local v15           #index:J
    .restart local v13       #index:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v12

    .line 1535
    .local v12, iccCardInterface:Lcom/android/internal/telephony/IccCard;
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_4

    sget-boolean v4, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-nez v4, :cond_4

    .line 1537
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    :goto_2
    move-wide v15, v13

    .line 1616
    .end local v13           #index:J
    .restart local v15       #index:J
    goto :goto_0

    .line 1541
    .end local v15           #index:J
    .restart local v13       #index:J
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyPbkRecord()Lcom/android/internal/telephony/PhoneBookEntry;

    move-result-object v9

    .line 1543
    .local v9, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-nez v9, :cond_5

    .line 1544
    const-string v4, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_2

    .line 1546
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-gtz v4, :cond_6

    .line 1547
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_2

    .line 1549
    :cond_6
    iget v4, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v8, v4, v5

    .line 1551
    .local v8, num:I
    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 1552
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I

    move-result v10

    .line 1554
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 1555
    move-object/from16 p4, p3

    .line 1556
    const-string p3, ""

    .line 1559
    :cond_7
    if-eqz v10, :cond_8

    .line 1560
    packed-switch v10, :pswitch_data_0

    .line 1571
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_2

    .line 1568
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MemoryFull:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_2

    .line 1577
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 1578
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V

    .line 1584
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 1585
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v9, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1588
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v5, 0x1

    aget-boolean v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 1589
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v9, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1595
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1596
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v5, 0x1

    aget-boolean v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    .line 1599
    :cond_c
    iget v4, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateIAP(IZ)V

    .line 1606
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    .line 1608
    const/4 v4, 0x1

    iget v5, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updatePSCRecord(ZII)V

    .line 1610
    iget v4, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    int-to-long v13, v4

    goto/16 :goto_2

    .line 1560
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method checkSupportANR(I)Z
    .locals 1
    .parameter "anrEntryIndex"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method checkSupportEmail()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    return v0
.end method

.method convertEventToTag(II)I
    .locals 1
    .parameter "event"
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    .line 2927
    packed-switch p1, :pswitch_data_0

    .line 2947
    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2930
    :pswitch_0
    const/16 v0, 0xc9

    goto :goto_0

    .line 2933
    :pswitch_1
    const/16 v0, 0xc0

    goto :goto_0

    .line 2935
    :pswitch_2
    const/16 v0, 0xc1

    goto :goto_0

    .line 2937
    :pswitch_3
    const/16 v0, 0xca

    goto :goto_0

    .line 2939
    :pswitch_4
    const/16 v0, 0xc2

    goto :goto_0

    .line 2941
    :pswitch_5
    if-nez p2, :cond_1

    .line 2942
    const/4 v0, 0x0

    goto :goto_0

    .line 2943
    :cond_1
    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 2927
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public deletePBKEntry(ILandroid/os/Message;)V
    .locals 9
    .parameter "recordNumber"
    .parameter "response"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1624
    const-string v4, "deletePBKEntry()"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1626
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v4, :cond_0

    .line 1627
    const-string v4, "mPhone null"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1631
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 1633
    .local v1, iccCardInterface:Lcom/android/internal/telephony/IccCard;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_1

    sget-boolean v4, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-nez v4, :cond_1

    .line 1635
    const-string v4, "error"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1690
    :goto_0
    return-void

    .line 1639
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    .line 1640
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1642
    .local v0, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v0, :cond_2

    iget v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-gtz v4, :cond_3

    .line 1643
    :cond_2
    const-string v4, "error"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1648
    :cond_3
    iget-boolean v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-ne v4, v6, :cond_4

    .line 1649
    invoke-direct {p0, v8, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V

    .line 1655
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v7

    if-ne v4, v6, :cond_5

    .line 1656
    invoke-direct {p0, v8, v0, v7}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1659
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v6

    if-ne v4, v6, :cond_6

    .line 1660
    invoke-direct {p0, v8, v0, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1666
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1668
    iget-boolean v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-eq v4, v6, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v7

    if-eq v4, v6, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v6

    if-ne v4, v6, :cond_8

    .line 1671
    :cond_7
    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-direct {p0, v4, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateIAP(IZ)V

    .line 1678
    :cond_8
    const/4 v2, 0x0

    .line 1679
    .local v2, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1680
    .local v3, number:Ljava/lang/String;
    invoke-direct {p0, v2, v3, v0, p2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    .line 1682
    invoke-direct {p0, v7, v7, v7}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updatePSCRecord(ZII)V

    goto :goto_0

    .line 1686
    .end local v0           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    :cond_9
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "mSimPbkEntryList = null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    const-string v4, "error"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2967
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 2968
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v7, :cond_0

    .line 2969
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispose()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    new-instance v1, Ljava/lang/Exception;

    const-string v4, "SIM Phonebook Entries have been droped."

    invoke-direct {v1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2973
    .local v1, ex:Ljava/lang/Exception;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v8, v8, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2974
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 2978
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    if-eqz v4, :cond_3

    .line 2979
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lt v4, v7, :cond_3

    .line 2980
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispose()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    const/4 v2, 0x0

    .local v2, msgNum:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gt v2, v4, :cond_3

    .line 2982
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 2983
    .local v3, response:Landroid/os/Message;
    if-eqz v3, :cond_2

    .line 2984
    iget v4, v3, Landroid/os/Message;->what:I

    if-eqz v4, :cond_1

    .line 2985
    const-string v4, "error"

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 2987
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 2981
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2992
    .end local v2           #msgNum:I
    .end local v3           #response:Landroid/os/Message;
    :cond_3
    return-void
.end method

.method public dropSimPbkEntries()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2657
    const-string v1, "HtcIccPbkEntryCache_QMI"

    const-string v2, "dropSimPbkEntries()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    .line 2661
    const-string v1, "HtcIccPbkEntryCache_QMI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDropSIMTimeStamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    invoke-virtual {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->dispose()V

    .line 2665
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->setLocalMemberToDefault()V

    .line 2667
    const-string v1, "gsm.usim.number.length"

    const-string v2, "20"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    const-string v1, "gsm.adn.records.capacity"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    const-string v1, "gsm.usim.email.max-no"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    const-string v1, "gsm.usim.anr.max-no"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2673
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_0

    .line 2674
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_CONTACTS_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2675
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 2679
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 2680
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2681
    iput-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 2683
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 2684
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2687
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 2688
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2692
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 2693
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2694
    iput-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    .line 2698
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 2699
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2703
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v1, :cond_6

    .line 2704
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->reset()V

    .line 2709
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    if-eqz v1, :cond_7

    .line 2710
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2713
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 2714
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2717
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    .line 2718
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2722
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    .line 2723
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2726
    :cond_a
    return-void
.end method

.method getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;
    .locals 4
    .parameter "num"
    .parameter "anrEntryIndex"

    .prologue
    const/4 v3, 0x0

    .line 2525
    const/4 v0, 0x0

    .line 2527
    .local v0, entry:Lcom/android/internal/telephony/AnrRecord;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p1, :cond_1

    :cond_0
    move-object v2, v3

    .line 2541
    :goto_0
    return-object v2

    .line 2529
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p2, :cond_2

    move-object v2, v3

    .line 2530
    goto :goto_0

    .line 2532
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2533
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lcom/android/internal/telephony/AnrRecord;
    check-cast v0, Lcom/android/internal/telephony/AnrRecord;

    .line 2535
    .restart local v0       #entry:Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 2536
    goto :goto_0

    .line 2532
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v2, v3

    .line 2541
    goto :goto_0
.end method

.method getFirstEmptyEmailRecord(I)Lcom/android/internal/telephony/EmailRecord;
    .locals 4
    .parameter "num"

    .prologue
    const/4 v3, 0x0

    .line 2507
    const/4 v0, 0x0

    .line 2509
    .local v0, entry:Lcom/android/internal/telephony/EmailRecord;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p1, :cond_1

    :cond_0
    move-object v2, v3

    .line 2521
    :goto_0
    return-object v2

    .line 2512
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2513
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lcom/android/internal/telephony/EmailRecord;
    check-cast v0, Lcom/android/internal/telephony/EmailRecord;

    .line 2515
    .restart local v0       #entry:Lcom/android/internal/telephony/EmailRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 2516
    goto :goto_0

    .line 2512
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 2521
    goto :goto_0
.end method

.method getFirstEmptyPbkRecord()Lcom/android/internal/telephony/PhoneBookEntry;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2489
    const/4 v0, 0x0

    .line 2491
    .local v0, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 2503
    :cond_0
    :goto_0
    return-object v2

    .line 2494
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2495
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    check-cast v0, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 2497
    .restart local v0       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v0

    .line 2498
    goto :goto_0

    .line 2494
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method getIAPIndex(I)I
    .locals 1
    .parameter "anrEntryIndex"

    .prologue
    .line 2952
    packed-switch p1, :pswitch_data_0

    .line 2958
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2954
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2956
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2952
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getNextEvent(III)I
    .locals 5
    .parameter "event"
    .parameter "num"
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    .line 2889
    const/4 v0, 0x0

    .line 2890
    .local v0, nextEvent:I
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->convertEventToTag(II)I

    move-result v1

    .line 2891
    .local v1, tag:I
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v2, :cond_0

    .line 2892
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 2893
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    move p1, v0

    .line 2923
    .end local p1
    :cond_1
    :goto_1
    return p1

    .line 2897
    .restart local p1
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2900
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, p2, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    if-eqz v2, :cond_3

    .line 2901
    const/16 p1, 0xb

    goto :goto_1

    .line 2904
    :cond_3
    const/16 v2, 0xc

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v0

    .line 2907
    goto :goto_0

    .line 2915
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, p2, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    if-nez v2, :cond_1

    .line 2918
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v0

    goto :goto_0

    .line 2893
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 46
    .parameter "msg"

    .prologue
    .line 229
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v41, v0

    packed-switch v41, :pswitch_data_0

    .line 1321
    :cond_0
    :goto_0
    return-void

    .line 231
    :pswitch_0
    const-string v41, "EVENT_LOAD_PB_PBR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    if-eqz v41, :cond_3

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_2

    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v26

    .line 236
    .local v26, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v26, :cond_1

    .line 237
    const/16 v41, 0x4f22

    const/16 v42, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v42

    move-object/from16 v0, v26

    move/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 250
    .end local v26           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v41, v0

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_0

    .line 251
    new-instance v34, Landroid/os/Bundle;

    invoke-direct/range {v34 .. v34}, Landroid/os/Bundle;-><init>()V

    .line 252
    .local v34, queryTimeStamp:Landroid/os/Bundle;
    const-string v41, "query_sim_contact_file_timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v42

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 253
    new-instance v41, Lcom/android/internal/telephony/HtcExt1RecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v43, v0

    invoke-direct/range {v41 .. v43}, Lcom/android/internal/telephony/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v42, 0x6f4a

    const/16 v43, 0x8

    const/16 v44, 0x0

    const/16 v45, 0x6f4a

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    move-object/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v43

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/telephony/HtcExt1RecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 242
    .end local v34           #queryTimeStamp:Landroid/os/Bundle;
    :cond_2
    const-string v41, "Support Global phonebook"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 243
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    goto :goto_1

    .line 247
    :cond_3
    const-string v41, "Support Global phonebook"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 248
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    goto :goto_1

    .line 260
    :pswitch_1
    const-string v41, "EVENT_LOAD_PB_PSC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 261
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 262
    .local v13, ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_5

    .line 263
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, [B

    move-object/from16 v14, v41

    check-cast v14, [B

    .line 264
    .local v14, data:[B
    if-eqz v14, :cond_4

    array-length v0, v14

    move/from16 v41, v0

    if-lez v41, :cond_4

    .line 265
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Phonebook Synchronisation Counter: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 266
    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x10

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v41

    move-wide/from16 v0, v41

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 267
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    .line 274
    .end local v14           #data:[B
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    if-eqz v41, :cond_0

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_0

    .line 276
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v26

    .line 277
    .restart local v26       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v26, :cond_0

    .line 278
    const/16 v41, 0x4f23

    const/16 v42, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v42

    move-object/from16 v0, v26

    move/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 269
    .end local v26           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    .restart local v14       #data:[B
    :cond_4
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    goto :goto_2

    .line 272
    .end local v14           #data:[B
    :cond_5
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    goto :goto_2

    .line 286
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v41, "EVENT_UPDATE_PB_PSC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 287
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 288
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-eqz v41, :cond_0

    .line 289
    const-string v41, "Update PB_PCS failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 294
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    const-string v41, "EVENT_LOAD_PB_CC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 296
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_7

    .line 297
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, [B

    move-object/from16 v14, v41

    check-cast v14, [B

    .line 298
    .restart local v14       #data:[B
    if-eqz v14, :cond_6

    array-length v0, v14

    move/from16 v41, v0

    if-lez v41, :cond_6

    .line 299
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Change Counter: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 300
    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x10

    invoke-static/range {v41 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 301
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    .line 308
    .end local v14           #data:[B
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    if-eqz v41, :cond_0

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_0

    .line 310
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v26

    .line 311
    .restart local v26       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v26, :cond_0

    .line 312
    const/16 v41, 0x4f24

    const/16 v42, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v42

    move-object/from16 v0, v26

    move/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 303
    .end local v26           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    .restart local v14       #data:[B
    :cond_6
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    goto :goto_3

    .line 306
    .end local v14           #data:[B
    :cond_7
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    goto :goto_3

    .line 320
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    const-string v41, "EVENT_UPDATE_PB_CC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 323
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-eqz v41, :cond_0

    .line 324
    const-string v41, "Update PB_CC failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 330
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    const-string v41, "EVENT_LOAD_PB_PUID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 332
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_9

    .line 333
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, [B

    move-object/from16 v14, v41

    check-cast v14, [B

    .line 334
    .restart local v14       #data:[B
    if-eqz v14, :cond_8

    array-length v0, v14

    move/from16 v41, v0

    if-lez v41, :cond_8

    .line 335
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Previous Unique Identifier: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 336
    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x10

    invoke-static/range {v41 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 337
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    .line 345
    .end local v14           #data:[B
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    if-eqz v41, :cond_0

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_0

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0xc2

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v16

    .line 349
    .local v16, efid:I
    if-eqz v16, :cond_a

    .line 350
    const/16 v41, 0x8

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 339
    .end local v16           #efid:I
    .restart local v14       #data:[B
    :cond_8
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    goto :goto_4

    .line 342
    .end local v14           #data:[B
    :cond_9
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    goto :goto_4

    .line 352
    .restart local v16       #efid:I
    :cond_a
    const-string v41, "gsm.usim.number.length"

    const-string v42, "20"

    invoke-static/range {v41 .. v42}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const/16 v41, 0x9

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 362
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v16           #efid:I
    :pswitch_6
    const-string v41, "EVENT_UPDATE_PB_PUID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 364
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 365
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-eqz v41, :cond_0

    .line 366
    const-string v41, "Update PB_PUID failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 372
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    const-string v41, "EVENT_LOAD_PB_UID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 373
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 374
    .restart local v13       #ar:Landroid/os/AsyncResult;
    const/16 v20, 0x0

    .line 375
    .local v20, event:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 376
    .local v31, num:I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Bundle;

    .line 378
    .local v33, queryTimeBundle:Landroid/os/Bundle;
    const-string v41, "query_sim_contact_file_timestamp"

    const-wide/16 v42, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 380
    .local v34, queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v41, v0

    cmp-long v41, v34, v41

    if-ltz v41, :cond_0

    .line 384
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_c

    .line 385
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v40, v41

    check-cast v40, Ljava/util/ArrayList;

    .line 386
    .local v40, uidRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 388
    add-int/lit8 v31, v31, 0x1

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v41

    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_b

    .line 390
    const/16 v41, 0xa

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v31

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 400
    .end local v40           #uidRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    :goto_5
    if-eqz v20, :cond_0

    .line 401
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v30

    .line 402
    .local v30, next_event:I
    if-eqz v30, :cond_d

    .line 403
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "next_event = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 392
    .end local v30           #next_event:I
    .restart local v40       #uidRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    :cond_b
    const/16 v20, 0xb

    goto :goto_5

    .line 395
    .end local v40           #uidRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    :cond_c
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "EVENT_LOAD_PB_UID_DONE Failed: num = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " ar.exception = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/16 v20, 0xb

    goto :goto_5

    .line 406
    .restart local v30       #next_event:I
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 413
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v20           #event:I
    .end local v30           #next_event:I
    .end local v31           #num:I
    .end local v33           #queryTimeBundle:Landroid/os/Bundle;
    .end local v34           #queryTimeStamp:J
    :pswitch_8
    const-string v41, "EVENT_UPDATE_PB_UID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 415
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 416
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-eqz v41, :cond_0

    .line 417
    const-string v41, "Update PB_UID failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 424
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    const-string v41, "EVENT_LOAD_PB_EXT1_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 426
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Bundle;

    .line 428
    .restart local v33       #queryTimeBundle:Landroid/os/Bundle;
    const-string v41, "query_sim_contact_file_timestamp"

    const-wide/16 v42, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 430
    .restart local v34       #queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v41, v0

    cmp-long v41, v34, v41

    if-ltz v41, :cond_0

    .line 433
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_e

    .line 434
    const-string v41, "gsm.usim.number.length"

    const-string v42, "40"

    invoke-static/range {v41 .. v42}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v22, v41

    check-cast v22, Ljava/util/ArrayList;

    .line 437
    .local v22, ext1RecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcExt1Record;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    .line 443
    .end local v22           #ext1RecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcExt1Record;>;"
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v41, v0

    if-nez v41, :cond_10

    .line 444
    const/16 v41, 0x9

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v20

    .line 445
    .restart local v20       #event:I
    if-eqz v20, :cond_f

    .line 446
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 439
    .end local v20           #event:I
    :cond_e
    const-string v41, "gsm.usim.number.length"

    const-string v42, "20"

    invoke-static/range {v41 .. v42}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 448
    .restart local v20       #event:I
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 451
    .end local v20           #event:I
    :cond_10
    const-string v41, "query_sim_contact_file_timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v42

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 452
    new-instance v41, Lcom/android/internal/telephony/ADNRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v44, v0

    invoke-direct/range {v41 .. v44}, Lcom/android/internal/telephony/ADNRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v42, 0x6f3a

    const/16 v43, 0x9

    const/16 v44, 0x0

    const/16 v45, 0x6f3a

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v43

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/telephony/ADNRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 459
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v33           #queryTimeBundle:Landroid/os/Bundle;
    .end local v34           #queryTimeStamp:J
    :pswitch_a
    const-string v41, "EVENT_LOAD_PB_ADN_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 461
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 462
    .restart local v13       #ar:Landroid/os/AsyncResult;
    const/16 v20, 0x0

    .line 463
    .restart local v20       #event:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 465
    .restart local v31       #num:I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Bundle;

    .line 467
    .restart local v33       #queryTimeBundle:Landroid/os/Bundle;
    const-string v41, "query_sim_contact_file_timestamp"

    const-wide/16 v42, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 469
    .restart local v34       #queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v41, v0

    cmp-long v41, v34, v41

    if-ltz v41, :cond_0

    .line 473
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_1b

    .line 474
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v6, v41

    check-cast v6, Ljava/util/ArrayList;

    .line 475
    .local v6, adnRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcAdnRecord;>;"
    if-nez v31, :cond_13

    .line 476
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    .line 478
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v41, v0

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_12

    .line 479
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 486
    :cond_11
    :goto_7
    const-string v41, "gsm.adn.records.capacity"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v41, v0

    if-lez v41, :cond_13

    .line 489
    new-instance v41, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v42, v0

    invoke-direct/range {v41 .. v42}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    if-eqz v41, :cond_13

    .line 491
    const/16 v24, 0x0

    .local v24, i:I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v41, v0

    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_13

    .line 492
    new-instance v18, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 493
    .local v18, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    add-int/lit8 v41, v24, 0x1

    move/from16 v0, v41

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    .line 481
    .end local v18           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v24           #i:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    if-eqz v41, :cond_11

    .line 482
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v42

    mul-int v41, v41, v42

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    goto :goto_7

    .line 500
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    if-eqz v41, :cond_1a

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 507
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_16

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v0, v41

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/HtcAdnRecord;

    .line 509
    .local v5, adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    invoke-virtual {v5}, Lcom/android/internal/telephony/HtcAdnRecord;->isEmpty()Z

    move-result v41

    if-nez v41, :cond_14

    .line 510
    const/4 v7, 0x0

    .line 511
    .local v7, adnRecordNumber:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v41, v0

    mul-int v41, v41, v31

    iget v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->recordNumber:I

    move/from16 v42, v0

    add-int v7, v41, v42

    .line 514
    if-lez v7, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    if-gt v7, v0, :cond_15

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    add-int/lit8 v42, v7, -0x1

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 518
    .local v32, pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    invoke-virtual {v5}, Lcom/android/internal/telephony/HtcAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 519
    invoke-virtual {v5}, Lcom/android/internal/telephony/HtcAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 520
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 522
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "pbkEntry.index = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 525
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "pbkEntry.indexEmail = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 528
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "pbkEntry.email = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 507
    .end local v7           #adnRecordNumber:I
    .end local v32           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_14
    :goto_a
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_9

    .line 530
    .restart local v7       #adnRecordNumber:I
    :cond_15
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 536
    .end local v5           #adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    .end local v7           #adnRecordNumber:I
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v41, v0

    if-nez v41, :cond_19

    .line 537
    add-int/lit8 v31, v31, 0x1

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v41

    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_17

    .line 539
    const/16 v41, 0x9

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v31

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 546
    :goto_b
    if-eqz v20, :cond_0

    .line 547
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v30

    .line 548
    .restart local v30       #next_event:I
    if-eqz v30, :cond_18

    .line 549
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "next_event = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 542
    .end local v30           #next_event:I
    :cond_17
    const/16 v20, 0xa

    goto :goto_b

    .line 552
    .restart local v30       #next_event:I
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 556
    .end local v30           #next_event:I
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 559
    .end local v24           #i:I
    :cond_1a
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "mSimPbkEntryList is null"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 563
    .end local v6           #adnRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcAdnRecord;>;"
    :cond_1b
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "EVENT_LOAD_PB_ADN_DONE Failed: num = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " ar.exception = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0xc0

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    if-eqz v41, :cond_1c

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->clear()V

    .line 569
    const/16 v41, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 571
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 576
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v20           #event:I
    .end local v31           #num:I
    .end local v33           #queryTimeBundle:Landroid/os/Bundle;
    .end local v34           #queryTimeStamp:J
    :pswitch_b
    const-string v41, "EVENT_LOAD_PB_IAP_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 578
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 579
    .restart local v13       #ar:Landroid/os/AsyncResult;
    const/16 v20, 0x0

    .line 580
    .restart local v20       #event:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 581
    .restart local v31       #num:I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Bundle;

    .line 583
    .restart local v33       #queryTimeBundle:Landroid/os/Bundle;
    const-string v41, "query_sim_contact_file_timestamp"

    const-wide/16 v42, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 585
    .restart local v34       #queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v41, v0

    cmp-long v41, v34, v41

    if-ltz v41, :cond_0

    .line 589
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_1f

    .line 590
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v25, v41

    check-cast v25, Ljava/util/ArrayList;

    .line 591
    .local v25, iapRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IAPRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 593
    add-int/lit8 v31, v31, 0x1

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v41

    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_1d

    .line 595
    const/16 v41, 0xb

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v31

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 600
    :goto_c
    if-eqz v20, :cond_0

    .line 601
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v30

    .line 602
    .restart local v30       #next_event:I
    if-eqz v30, :cond_1e

    .line 603
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "next_event = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 597
    .end local v30           #next_event:I
    :cond_1d
    const/16 v20, 0xc

    goto :goto_c

    .line 606
    .restart local v30       #next_event:I
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 610
    .end local v25           #iapRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IAPRecord;>;"
    .end local v30           #next_event:I
    :cond_1f
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "EVENT_LOAD_PB_IAP_DONE Failed: num = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " ar.exception = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->clear()V

    .line 614
    const/16 v20, 0xc

    .line 616
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "remove IAP file from mPbrFile.mFileIds catch"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0xc1

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v41

    if-eqz v41, :cond_20

    .line 620
    const/16 v20, 0x8

    .line 621
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "remove E-mail file from mPbrFile.mFileIds catch"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0xca

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 625
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v41

    if-nez v41, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v41

    if-eqz v41, :cond_22

    .line 626
    :cond_21
    const/16 v20, 0x0

    .line 627
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "remove ANR1 file from mPbrFile.mFileIds catch"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 630
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "remove ANR2 file from mPbrFile.mFileIds catch"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0x1

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 634
    :cond_22
    if-eqz v20, :cond_24

    .line 635
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v30

    .line 636
    .restart local v30       #next_event:I
    if-eqz v30, :cond_23

    .line 637
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "next_event = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 640
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 643
    .end local v30           #next_event:I
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 650
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v20           #event:I
    .end local v31           #num:I
    .end local v33           #queryTimeBundle:Landroid/os/Bundle;
    .end local v34           #queryTimeStamp:J
    :pswitch_c
    const-string v41, "EVENT_LOAD_PB_EMAIL_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 652
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 654
    .restart local v13       #ar:Landroid/os/AsyncResult;
    const/16 v20, 0x0

    .line 655
    .restart local v20       #event:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 656
    .restart local v31       #num:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    .line 657
    .restart local v16       #efid:I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Bundle;

    .line 659
    .restart local v33       #queryTimeBundle:Landroid/os/Bundle;
    const-string v41, "query_sim_contact_file_timestamp"

    const-wide/16 v42, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 661
    .restart local v34       #queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v41, v0

    cmp-long v41, v34, v41

    if-ltz v41, :cond_0

    .line 664
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    if-eqz v41, :cond_2b

    .line 665
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v28, v41

    check-cast v28, Ljava/util/ArrayList;

    .line 667
    .local v28, mailRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    move-object/from16 v41, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    invoke-virtual/range {v41 .. v43}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v41

    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_29

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 673
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_29

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v0, v41

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/EmailRecord;

    .line 676
    .local v17, emailRecord:Lcom/android/internal/telephony/EmailRecord;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v41

    if-nez v41, :cond_26

    .line 677
    const/4 v7, 0x0

    .line 678
    .restart local v7       #adnRecordNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_27

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFADNrecNum(I)I

    move-result v36

    .line 681
    .local v36, recNum:I
    if-lez v36, :cond_25

    .line 682
    add-int/lit8 v41, v36, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v42, v0

    mul-int v41, v41, v42

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v42, v0

    add-int v7, v41, v42

    .line 690
    .end local v36           #recNum:I
    :cond_25
    :goto_e
    if-lez v7, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    if-gt v7, v0, :cond_28

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    add-int/lit8 v42, v7, -0x1

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 693
    .restart local v32       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 694
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 696
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "pbkEntry.index = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 699
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "pbkEntry.indexEmail = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 702
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "pbkEntry.email = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 673
    .end local v7           #adnRecordNumber:I
    .end local v32           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_26
    :goto_f
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_d

    .line 686
    .restart local v7       #adnRecordNumber:I
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v41, v0

    mul-int v41, v41, v31

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v42, v0

    add-int v7, v41, v42

    goto/16 :goto_e

    .line 704
    :cond_28
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 711
    .end local v7           #adnRecordNumber:I
    .end local v17           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    .end local v24           #i:I
    :cond_29
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 712
    const-string v41, "gsm.usim.email.max-no"

    const-string v42, "1"

    invoke-static/range {v41 .. v42}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "mEmailRecordList num = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 717
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "mEmailRecordList size = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 720
    add-int/lit8 v31, v31, 0x1

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v41

    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_2a

    .line 722
    const/16 v41, 0xc

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v31

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 741
    .end local v28           #mailRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    :goto_10
    if-eqz v20, :cond_0

    .line 742
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v30

    .line 743
    .restart local v30       #next_event:I
    if-eqz v30, :cond_2c

    .line 744
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 724
    .end local v30           #next_event:I
    .restart local v28       #mailRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    :cond_2a
    const/16 v20, 0xd

    goto :goto_10

    .line 727
    .end local v28           #mailRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    :cond_2b
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "EVENT_LOAD_PB_EMAIL_DONE Failed: num = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " ar.exception = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/HashMap;->clear()V

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->clear()V

    .line 732
    const/16 v20, 0xd

    .line 733
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 734
    const-string v41, "gsm.usim.email.max-no"

    const-string v42, "0"

    invoke-static/range {v41 .. v42}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "remove E-mail file from mPbrFile.mFileIds catch"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0xca

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    goto/16 :goto_10

    .line 746
    .restart local v30       #next_event:I
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 753
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v16           #efid:I
    .end local v20           #event:I
    .end local v30           #next_event:I
    .end local v31           #num:I
    .end local v33           #queryTimeBundle:Landroid/os/Bundle;
    .end local v34           #queryTimeStamp:J
    :pswitch_d
    const-string v41, "EVENT_LOAD_PB_ANR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 755
    :try_start_0
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 756
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 757
    .restart local v31       #num:I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    .line 758
    .local v8, anrEntryIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v16

    .line 760
    .restart local v16       #efid:I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Bundle;

    .line 762
    .restart local v33       #queryTimeBundle:Landroid/os/Bundle;
    const-string v41, "query_sim_contact_file_timestamp"

    const-wide/16 v42, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 764
    .restart local v34       #queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v41, v0

    cmp-long v41, v34, v41

    if-ltz v41, :cond_0

    .line 767
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    if-eqz v41, :cond_3b

    .line 768
    if-eqz v16, :cond_2d

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    if-ge v8, v0, :cond_30

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 776
    .local v9, anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_11
    if-eqz v9, :cond_2d

    .line 777
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    if-ge v8, v0, :cond_31

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 786
    .end local v9           #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2d
    :goto_12
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v0, v41

    check-cast v0, Ljava/util/ArrayList;

    move-object v12, v0

    .line 789
    .local v12, anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    if-nez v8, :cond_32

    .line 790
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v10, anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    :goto_13
    if-eqz v10, :cond_3a

    .line 795
    invoke-virtual {v10, v8, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 796
    if-nez v8, :cond_33

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 805
    :goto_14
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_15
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_36

    .line 806
    move/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/AnrRecord;

    .line 808
    .local v11, anrRecord:Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v11}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v41

    if-nez v41, :cond_2f

    .line 809
    const/4 v7, 0x0

    .line 810
    .restart local v7       #adnRecordNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_34

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFADNrecNum(I)I

    move-result v36

    .line 813
    .restart local v36       #recNum:I
    if-lez v36, :cond_2e

    .line 814
    add-int/lit8 v41, v36, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v42, v0

    mul-int v41, v41, v42

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v42, v0

    add-int v7, v41, v42

    .line 824
    .end local v36           #recNum:I
    :cond_2e
    :goto_16
    if-lez v7, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    if-gt v7, v0, :cond_35

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    add-int/lit8 v42, v7, -0x1

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 827
    .restart local v32       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    move-object/from16 v41, v0

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v42, v0

    aput v42, v41, v8

    .line 828
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    move-object/from16 v41, v0

    iget-object v0, v11, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v42, v0

    aput-object v42, v41, v8

    .line 830
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "pbkEntry.index = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 833
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "pbkEntry.indexAnr = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    move-object/from16 v42, v0

    aget v42, v42, v8

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 837
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "pbkEntry.adnumber = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    move-object/from16 v42, v0

    aget-object v42, v42, v8

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 805
    .end local v7           #adnRecordNumber:I
    .end local v32           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_2f
    :goto_17
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_15

    .line 774
    .end local v10           #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v11           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .end local v12           #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .end local v24           #i:I
    :cond_30
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .restart local v9       #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto/16 :goto_11

    .line 781
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    invoke-virtual {v0, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_12

    .line 898
    .end local v8           #anrEntryIndex:I
    .end local v9           #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v16           #efid:I
    .end local v31           #num:I
    .end local v33           #queryTimeBundle:Landroid/os/Bundle;
    .end local v34           #queryTimeStamp:J
    :catch_0
    move-exception v15

    .line 899
    .local v15, e:Ljava/lang/Exception;
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "ANR arraylist problem"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v0, v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 900
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 792
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v8       #anrEntryIndex:I
    .restart local v12       #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .restart local v13       #ar:Landroid/os/AsyncResult;
    .restart local v16       #efid:I
    .restart local v31       #num:I
    .restart local v33       #queryTimeBundle:Landroid/os/Bundle;
    .restart local v34       #queryTimeStamp:J
    :cond_32
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .restart local v10       #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    goto/16 :goto_13

    .line 799
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    .line 819
    .restart local v7       #adnRecordNumber:I
    .restart local v11       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .restart local v24       #i:I
    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v41, v0

    mul-int v41, v41, v31

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v42, v0

    add-int v7, v41, v42

    goto/16 :goto_16

    .line 840
    :cond_35
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 846
    .end local v7           #adnRecordNumber:I
    .end local v11           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_36
    const/16 v41, 0x2

    move/from16 v0, v41

    if-ge v8, v0, :cond_37

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v41, v0

    const/16 v42, 0x1

    aput-boolean v42, v41, v8

    .line 848
    const-string v41, "gsm.usim.anr.max-no"

    add-int/lit8 v42, v8, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :cond_37
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "mAnrRecordList num = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 855
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "mAnrRecordList anrEntryIndex = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 858
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "mAnrRecordList size = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 861
    add-int/lit8 v8, v8, 0x1

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getANRnums()I

    move-result v41

    move/from16 v0, v41

    if-ge v8, v0, :cond_38

    const/16 v41, 0x2

    move/from16 v0, v41

    if-ge v8, v0, :cond_38

    .line 864
    const/16 v41, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 867
    :cond_38
    add-int/lit8 v31, v31, 0x1

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v41

    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_39

    .line 869
    const/4 v8, 0x0

    .line 870
    const/16 v41, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 874
    :cond_39
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 878
    .end local v24           #i:I
    :cond_3a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 881
    .end local v10           #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v12           #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    :cond_3b
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "EVENT_LOAD_PB_ANR_DONE Failed, num = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " anrEntryIndex = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " ar.exception = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->clear()V

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->clear()V

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0x1

    invoke-virtual/range {v41 .. v43}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 890
    const-string v41, "gsm.usim.anr.max-no"

    const-string v42, "0"

    invoke-static/range {v41 .. v42}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0x0

    aput-boolean v43, v41, v42

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v41, v0

    const/16 v42, 0x1

    const/16 v43, 0x0

    aput-boolean v43, v41, v42

    .line 896
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 906
    .end local v8           #anrEntryIndex:I
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v16           #efid:I
    .end local v31           #num:I
    .end local v33           #queryTimeBundle:Landroid/os/Bundle;
    .end local v34           #queryTimeStamp:J
    :pswitch_e
    const-string v41, "EVENT_GET_PB_USED_NUM_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 907
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 910
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_3e

    .line 911
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/internal/telephony/PhoneBookMemory;

    .line 913
    .local v27, mPBMemory:Lcom/android/internal/telephony/PhoneBookMemory;
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "get PB length:total="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->total:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " used="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->used:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 914
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->total:I

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 915
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->used:I

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUsed:I

    .line 916
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "get PB length:total="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " used="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUsed:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 919
    new-instance v41, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v42, v0

    invoke-direct/range {v41 .. v42}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 921
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v41, v0

    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_3c

    .line 922
    new-instance v18, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 923
    .restart local v18       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    add-int/lit8 v41, v24, 0x1

    move/from16 v0, v41

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    add-int/lit8 v24, v24, 0x1

    goto :goto_18

    .line 927
    .end local v18           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_3c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v41, v0

    if-lez v41, :cond_3d

    .line 928
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollPBList()V

    goto/16 :goto_0

    .line 930
    :cond_3d
    const-string v41, "load PB complete!! mTotal = 0"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 931
    const/16 v41, 0x0

    move-object/from16 v0, v41

    iput-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 935
    .end local v24           #i:I
    .end local v27           #mPBMemory:Lcom/android/internal/telephony/PhoneBookMemory;
    :cond_3e
    const-string v41, "Cannot get PB memory"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 938
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 940
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v41, v0

    if-lez v41, :cond_40

    .line 941
    new-instance v41, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v42, v0

    invoke-direct/range {v41 .. v42}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 943
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v41, v0

    move/from16 v0, v24

    move/from16 v1, v41

    if-ge v0, v1, :cond_3f

    .line 944
    new-instance v18, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 945
    .restart local v18       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    add-int/lit8 v41, v24, 0x1

    move/from16 v0, v41

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    add-int/lit8 v24, v24, 0x1

    goto :goto_19

    .line 949
    .end local v18           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_3f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollPBList()V

    goto/16 :goto_0

    .line 951
    .end local v24           #i:I
    :cond_40
    const-string v41, "load PB complete!! mTotal = 0"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 952
    const/16 v41, 0x0

    move-object/from16 v0, v41

    iput-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 961
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_f
    const-string v41, "EVENT_LOAD_PB_ENTRIES_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 962
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 963
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_41

    .line 964
    const-string v41, "EVENT_LOAD_PB_ENTRIES_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 965
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handlePollPBResult(ILandroid/os/AsyncResult;)V

    .line 970
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aget v43, v41, v42

    add-int/lit8 v43, v43, -0x1

    aput v43, v41, v42

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aget v41, v41, v42

    if-nez v41, :cond_0

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iput-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 975
    const-string v41, "load Phonebook Entries Complete!! "

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 977
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v41

    if-nez v41, :cond_0

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 967
    :cond_41
    const-string v41, "Error on loading PB"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto :goto_1a

    .line 989
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_10
    const-string v41, "EVENT_ADD_PB_ENTRY_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 990
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 991
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    .line 992
    .local v29, msgNum:I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 993
    .restart local v18       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/Message;

    .line 995
    .local v39, response:Landroid/os/Message;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_42

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 997
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1000
    :cond_42
    const-string v41, "Cannot add PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1002
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBookEntry;->clear()V

    .line 1004
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v41, v0

    if-eqz v41, :cond_43

    .line 1005
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/CommandException;

    check-cast v41, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v19

    .line 1008
    .local v19, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v41, Lcom/android/internal/telephony/CommandException$Error;->PB_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_43

    .line 1009
    const-string v41, "Cannot add PB entry PB_MEM_FULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1010
    const-string v41, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1015
    .end local v19           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_43
    const-string v41, "add falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1022
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v18           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v29           #msgNum:I
    .end local v39           #response:Landroid/os/Message;
    :pswitch_11
    const-string v41, "EVENT_UPDATE_PB_ENTRY_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1023
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1024
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    .line 1025
    .restart local v29       #msgNum:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    .line 1026
    .restart local v31       #num:I
    iget-object v5, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/HtcAdnRecord;

    .line 1027
    .restart local v5       #adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/Message;

    .line 1029
    .restart local v39       #response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1031
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    if-eqz v41, :cond_4d

    .line 1032
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v41, v0

    mul-int v41, v41, v31

    iget v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->recordNumber:I

    move/from16 v42, v0

    add-int v7, v41, v42

    .line 1034
    .restart local v7       #adnRecordNumber:I
    if-lez v7, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    if-gt v7, v0, :cond_4c

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    add-int/lit8 v42, v7, -0x1

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1036
    .restart local v32       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v32, :cond_44

    .line 1037
    iget-object v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 1038
    iget-object v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 1039
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v41, v0

    if-eqz v41, :cond_47

    .line 1040
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 1049
    :cond_44
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    iget v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->recordNumber:I

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1052
    invoke-virtual {v5}, Lcom/android/internal/telephony/HtcAdnRecord;->hasExtendedRecord()Z

    move-result v41

    if-eqz v41, :cond_4b

    .line 1054
    const/16 v16, 0x0

    .line 1055
    .restart local v16       #efid:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v41, v0

    if-nez v41, :cond_48

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    if-eqz v41, :cond_45

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_45

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0xc2

    move-object/from16 v0, v41

    move/from16 v1, v31

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v16

    .line 1065
    :cond_45
    :goto_1c
    if-eqz v16, :cond_4a

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    if-eqz v41, :cond_49

    .line 1068
    iget v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    move/from16 v23, v0

    .line 1069
    .local v23, ext1index:I
    if-lez v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v23

    move/from16 v1, v41

    if-gt v0, v1, :cond_0

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    add-int/lit8 v42, v23, -0x1

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/HtcExt1Record;

    .line 1071
    .local v21, ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v29

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1072
    const/16 v41, 0xf

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    move/from16 v42, v0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v38

    .line 1075
    .local v38, res:Landroid/os/Message;
    iget-boolean v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->mClearExt1Record:Z

    move/from16 v41, v0

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_46

    .line 1076
    const/16 v41, 0xff

    move/from16 v0, v41

    iput v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    .line 1077
    const/16 v41, 0x0

    move/from16 v0, v41

    iput-boolean v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->mClearExt1Record:Z

    .line 1079
    :cond_46
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/HtcExt1Record;->mRecId:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move-object/from16 v2, v21

    move/from16 v3, v16

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateExt1ByIndex(ILcom/android/internal/telephony/HtcExt1Record;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1042
    .end local v16           #efid:I
    .end local v21           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    .end local v23           #ext1index:I
    .end local v38           #res:Landroid/os/Message;
    :cond_47
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    move-object/from16 v41, v0

    if-nez v41, :cond_44

    .line 1043
    const/16 v41, -0x1

    move/from16 v0, v41

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 1044
    const/16 v41, -0x1

    move/from16 v0, v41

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->hidden:I

    .line 1045
    const/16 v41, -0x1

    move/from16 v0, v41

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->adtype:I

    goto/16 :goto_1b

    .line 1063
    .restart local v16       #efid:I
    :cond_48
    const/16 v16, 0x6f4a

    goto/16 :goto_1c

    .line 1082
    :cond_49
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "mExt1RecordList is null, but it shall not"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1085
    :cond_4a
    const-string v41, "update falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1088
    .end local v16           #efid:I
    :cond_4b
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1091
    .end local v32           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_4c
    const-string v41, "update falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1094
    .end local v7           #adnRecordNumber:I
    :cond_4d
    const-string v41, "Cannot update PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1096
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v41, v0

    if-eqz v41, :cond_4e

    .line 1097
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/internal/telephony/CommandException;

    check-cast v41, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v19

    .line 1100
    .restart local v19       #err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v41, Lcom/android/internal/telephony/CommandException$Error;->PB_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_4e

    .line 1101
    const-string v41, "Cannot update PB entry PB_MEM_FULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1102
    const-string v41, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1107
    .end local v19           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_4e
    const-string v41, "update falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1113
    .end local v5           #adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v29           #msgNum:I
    .end local v31           #num:I
    .end local v39           #response:Landroid/os/Message;
    :pswitch_12
    const-string v41, "EVENT_UPDATE_EXT1_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1114
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1115
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    .line 1116
    .restart local v29       #msgNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/Message;

    .line 1117
    .restart local v39       #response:Landroid/os/Message;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_4f

    .line 1118
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1120
    :cond_4f
    const-string v41, "Cannot update EXT1 entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1121
    const-string v41, "update failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1127
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v29           #msgNum:I
    .end local v39           #response:Landroid/os/Message;
    :pswitch_13
    const-string v41, "EVENT_UPDATE_ANR_EXT1_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1128
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1130
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_50

    .line 1131
    const-string v41, "Update EXT1 entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1133
    :cond_50
    const-string v41, "Cannot update EXT1 entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1139
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_14
    const-string v41, "EVENT_DELETE_PB_ENTRY_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1140
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1141
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    .line 1142
    .restart local v29       #msgNum:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v37, v0

    .line 1143
    .local v37, recordNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/Message;

    .line 1145
    .restart local v39       #response:Landroid/os/Message;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_51

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    add-int/lit8 v42, v37, -0x1

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1148
    .restart local v18       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBookEntry;->clear()V

    .line 1149
    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1151
    .end local v18           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_51
    const-string v41, "Cannot delete PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1152
    const-string v41, "delete falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1158
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v29           #msgNum:I
    .end local v37           #recordNumber:I
    .end local v39           #response:Landroid/os/Message;
    :pswitch_15
    const-string v41, "EVENT_UPDATE_IAP_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1159
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1160
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 1161
    .restart local v31       #num:I
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_54

    .line 1162
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/IAPRecord;

    .line 1164
    .local v18, entry:Lcom/android/internal/telephony/IAPRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_53

    .line 1165
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v41, v0

    if-lez v41, :cond_52

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v42

    move/from16 v1, v41

    if-gt v0, v1, :cond_52

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1169
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "num = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "IAPRecord.mRecordNumber = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1173
    :cond_52
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "out of IAP index = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1176
    :cond_53
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "out of mIAPRecordList.size() = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1179
    .end local v18           #entry:Lcom/android/internal/telephony/IAPRecord;
    :cond_54
    const-string v41, "Update IAP entry failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1185
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v31           #num:I
    :pswitch_16
    const-string v41, "EVENT_UPDATE_EMAIL_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1187
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1188
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 1190
    .restart local v31       #num:I
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_59

    .line 1191
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/EmailRecord;

    .line 1192
    .local v18, entry:Lcom/android/internal/telephony/EmailRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_58

    .line 1193
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v41

    if-nez v41, :cond_55

    .line 1194
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v41, v0

    if-lez v41, :cond_57

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v42

    move/from16 v1, v41

    if-gt v0, v1, :cond_57

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1199
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v41, v0

    mul-int v41, v41, v31

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v42, v0

    add-int v7, v41, v42

    .line 1201
    .restart local v7       #adnRecordNumber:I
    if-lez v7, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    if-gt v7, v0, :cond_56

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    add-int/lit8 v42, v7, -0x1

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1204
    .restart local v32       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v32, :cond_55

    .line 1205
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 1206
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 1216
    .end local v7           #adnRecordNumber:I
    .end local v32           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_55
    :goto_1d
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "num = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "EmailRecord.mRecordNumber = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "EmailRecord.mAdnRecordNumber ="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v41, v0

    if-eqz v41, :cond_0

    .line 1223
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "EmailRecord.mEmailAddress ="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1209
    .restart local v7       #adnRecordNumber:I
    :cond_56
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 1212
    .end local v7           #adnRecordNumber:I
    :cond_57
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "out of E-mail index = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 1227
    :cond_58
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "out of mEmailRecordList.size() = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1230
    .end local v18           #entry:Lcom/android/internal/telephony/EmailRecord;
    :cond_59
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "updateEmailRecord failed"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1236
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v31           #num:I
    :pswitch_17
    const-string v41, "EVENT_UPDATE_ANR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1238
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 1239
    .restart local v31       #num:I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    .line 1241
    .restart local v8       #anrEntryIndex:I
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1243
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v41, v0

    if-nez v41, :cond_62

    const/16 v41, 0x2

    move/from16 v0, v41

    if-ge v8, v0, :cond_62

    .line 1245
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/AnrRecord;

    .line 1247
    .local v18, entry:Lcom/android/internal/telephony/AnrRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_61

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    if-ge v8, v0, :cond_60

    .line 1249
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v41

    if-nez v41, :cond_5a

    .line 1251
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v41, v0

    if-lez v41, :cond_5e

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v42

    move/from16 v1, v41

    if-gt v0, v1, :cond_5e

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1256
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v41, v0

    mul-int v41, v41, v31

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v42, v0

    add-int v7, v41, v42

    .line 1258
    .restart local v7       #adnRecordNumber:I
    if-lez v7, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v41

    if-gt v7, v0, :cond_5d

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    add-int/lit8 v42, v7, -0x1

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1262
    .restart local v32       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v32, :cond_5a

    .line 1263
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    move-object/from16 v41, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v42, v0

    aput v42, v41, v8

    .line 1264
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v42, v0

    aput-object v42, v41, v8

    .line 1275
    .end local v7           #adnRecordNumber:I
    .end local v32           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_5a
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    if-eqz v41, :cond_5c

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_5c

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    const/16 v42, 0xc2

    move-object/from16 v0, v41

    move/from16 v1, v31

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v16

    .line 1279
    .restart local v16       #efid:I
    if-eqz v16, :cond_5c

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    if-eqz v41, :cond_5f

    .line 1281
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    move/from16 v23, v0

    .line 1282
    .restart local v23       #ext1index:I
    if-lez v23, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v41

    move/from16 v0, v23

    move/from16 v1, v41

    if-gt v0, v1, :cond_5c

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    add-int/lit8 v42, v23, -0x1

    invoke-virtual/range {v41 .. v42}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/HtcExt1Record;

    .line 1284
    .restart local v21       #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    const/16 v41, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v41

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v38

    .line 1285
    .restart local v38       #res:Landroid/os/Message;
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    move/from16 v41, v0

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_5b

    .line 1286
    const/16 v41, 0xff

    move/from16 v0, v41

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 1287
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 1289
    :cond_5b
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/HtcExt1Record;->mRecId:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move-object/from16 v2, v21

    move/from16 v3, v16

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateExt1ByIndex(ILcom/android/internal/telephony/HtcExt1Record;ILandroid/os/Message;)V

    .line 1298
    .end local v16           #efid:I
    .end local v21           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    .end local v23           #ext1index:I
    .end local v38           #res:Landroid/os/Message;
    :cond_5c
    :goto_1f
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "num = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "anrEntryIndex = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "AnrRecord.mRecordNumber = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "AnrRecord.mAdnRecordNumber ="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v41, v0

    if-eqz v41, :cond_0

    .line 1306
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "AnrRecord.mNumber ="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1267
    .restart local v7       #adnRecordNumber:I
    :cond_5d
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 1270
    .end local v7           #adnRecordNumber:I
    :cond_5e
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "out of Anr index = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 1292
    .restart local v16       #efid:I
    :cond_5f
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "mExt1RecordList is null, but it shall not"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1309
    .end local v16           #efid:I
    :cond_60
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "anrEntryIndex out of mAnrRecordLists.get(num).size = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1312
    :cond_61
    const-string v41, "HtcIccPbkEntryCache_QMI"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "num out of mAnrRecordLists.size() = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1315
    .end local v18           #entry:Lcom/android/internal/telephony/AnrRecord;
    :cond_62
    const-string v41, "HtcIccPbkEntryCache_QMI"

    const-string v42, "updateAnrRecord failed"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_8
        :pswitch_12
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_13
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method handleNextSequence(III)V
    .locals 17
    .parameter "event"
    .parameter "num"
    .parameter "index"

    .prologue
    .line 2731
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v13, :cond_1

    .line 2884
    :cond_0
    :goto_0
    return-void

    .line 2735
    :cond_1
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 2736
    .local v11, queryTimeBundle:Landroid/os/Bundle;
    const-string v13, "query_sim_contact_file_timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-virtual {v11, v13, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2738
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v13, :cond_0

    .line 2739
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 2740
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->convertEventToTag(II)I

    move-result v12

    .line 2741
    .local v12, tag:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move/from16 v0, p2

    invoke-virtual {v13, v0, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v6

    .line 2742
    .local v6, efid:I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2805
    :pswitch_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read EF-EXT1 num:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2808
    new-instance v13, Lcom/android/internal/telephony/HtcExt1RecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v13, v14, v15}, Lcom/android/internal/telephony/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v14, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v6, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Lcom/android/internal/telephony/HtcExt1RecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto :goto_0

    .line 2746
    :pswitch_1
    new-instance v13, Lcom/android/internal/telephony/UIDRecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v13, v14, v15}, Lcom/android/internal/telephony/UIDRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v14, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v6, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Lcom/android/internal/telephony/UIDRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2755
    :pswitch_2
    new-instance v13, Lcom/android/internal/telephony/ADNRecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v16, v0

    invoke-direct/range {v13 .. v16}, Lcom/android/internal/telephony/ADNRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v14, 0x9

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v6, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Lcom/android/internal/telephony/ADNRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2761
    :pswitch_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read EF-IAP num:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2764
    new-instance v13, Lcom/android/internal/telephony/IAPRecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v13, v14, v15}, Lcom/android/internal/telephony/IAPRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v14, 0xb

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v6, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Lcom/android/internal/telephony/IAPRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2770
    :pswitch_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read EF-EMAIL num:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2771
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2772
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2773
    .local v7, fileindex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_4

    .line 2774
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2777
    add-int/lit8 p2, p2, 0x1

    .line 2778
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v13

    move/from16 v0, p2

    if-ge v0, v13, :cond_2

    .line 2779
    const/16 v13, 0xc

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v13, v1, v14}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 2782
    :cond_2
    const/16 v13, 0xd

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v10

    .line 2784
    .local v10, next_event:I
    if-eqz v10, :cond_3

    .line 2785
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13, v14}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 2787
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 2791
    .end local v10           #next_event:I
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fileindex:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ">"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "EmailRecordList.size():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2794
    .end local v7           #fileindex:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v9

    .line 2797
    .local v9, inIAP:Z
    new-instance v13, Lcom/android/internal/telephony/EmailRecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v13, v14, v15}, Lcom/android/internal/telephony/EmailRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v14, 0xc

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v6, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v9, v14}, Lcom/android/internal/telephony/EmailRecordLoader;->loadAllFromEF(IZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 2814
    .end local v9           #inIAP:Z
    :pswitch_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read EF-ANR num"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "index:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 2815
    const/4 v8, 0x1

    .line 2816
    .local v8, flag:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v0, p3

    if-ge v0, v13, :cond_8

    .line 2817
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 2818
    .local v3, anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2819
    const/4 v8, 0x0

    .line 2820
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2822
    .restart local v7       #fileindex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v0, p3

    if-ge v0, v13, :cond_d

    .line 2823
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2827
    .local v5, anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    if-nez p3, :cond_9

    .line 2828
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2833
    .local v4, anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    :goto_1
    if-eqz v4, :cond_6

    .line 2834
    move/from16 v0, p3

    invoke-virtual {v4, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2835
    if-nez p3, :cond_a

    .line 2836
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v13, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2842
    :cond_6
    :goto_2
    const/4 v13, 0x2

    move/from16 v0, p3

    if-ge v0, v13, :cond_7

    .line 2843
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v14, 0x1

    aput-boolean v14, v13, p3

    .line 2844
    const-string v13, "gsm.usim.anr.max-no"

    add-int/lit8 v14, p3, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2848
    :cond_7
    add-int/lit8 p3, p3, 0x1

    .line 2849
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getANRnums()I

    move-result v13

    move/from16 v0, p3

    if-ge v0, v13, :cond_b

    const/4 v13, 0x2

    move/from16 v0, p3

    if-ge v0, v13, :cond_b

    .line 2851
    const/16 v13, 0xd

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v13, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 2870
    .end local v3           #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4           #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v5           #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .end local v7           #fileindex:I
    :cond_8
    :goto_3
    if-eqz v8, :cond_0

    .line 2871
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v9

    .line 2874
    .restart local v9       #inIAP:Z
    new-instance v13, Lcom/android/internal/telephony/AnrRecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v16, v0

    invoke-direct/range {v13 .. v16}, Lcom/android/internal/telephony/AnrRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v14, 0xd

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v14, v1, v2, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v9, v14}, Lcom/android/internal/telephony/AnrRecordLoader;->loadAllFromEF(IZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 2830
    .end local v9           #inIAP:Z
    .restart local v3       #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v5       #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .restart local v7       #fileindex:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .restart local v4       #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    goto/16 :goto_1

    .line 2838
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v13, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2854
    :cond_b
    add-int/lit8 p2, p2, 0x1

    .line 2855
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v13

    move/from16 v0, p2

    if-ge v0, v13, :cond_c

    .line 2856
    const/16 v13, 0xd

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v13, v1, v14}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto :goto_3

    .line 2860
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto :goto_3

    .line 2864
    .end local v4           #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v5           #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    :cond_d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fileindex:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " > "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "mAnrRecordLists.size():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "or index: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " > "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "mAnrRecordLists.get(fileindex).size():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2742
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isSIMPhonebookFileId(I)Z
    .locals 2
    .parameter "efid"

    .prologue
    .line 3002
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    .line 3003
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3004
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isSIMPhonebookFileId(I)Z

    move-result v0

    .line 3007
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestLoadAllPBEntry(Landroid/os/Message;)V
    .locals 9
    .parameter "response"

    .prologue
    const/16 v8, 0x6f4a

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1406
    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->misloading:Z

    if-nez v3, :cond_2

    .line 1407
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getPbkEntryListIfLoaded()Ljava/util/ArrayList;

    move-result-object v2

    .line 1411
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    if-eqz v2, :cond_2

    .line 1412
    if-eqz p1, :cond_0

    .line 1413
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iput-object v2, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1414
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1416
    :cond_0
    const-string v3, "PB has already loaded"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1458
    .end local v2           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    :cond_1
    :goto_0
    return-void

    .line 1420
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1422
    const-string v3, "HtcIccPbkEntryCache_QMI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestLoadAllPBEntry()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v6, :cond_1

    .line 1438
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 1439
    .local v0, card:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_4

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1440
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v3, :cond_3

    .line 1441
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->loadEfPBRFromUsim(Landroid/os/Message;)V

    .line 1457
    :cond_3
    :goto_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->misloading:Z

    goto :goto_0

    .line 1444
    :cond_4
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    .line 1445
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v3, :cond_5

    .line 1446
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->setPbrPresent(Z)V

    .line 1449
    :cond_5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1450
    .local v1, queryTimeStamp:Landroid/os/Bundle;
    const-string v3, "query_sim_contact_file_timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1451
    new-instance v3, Lcom/android/internal/telephony/HtcExt1RecordLoader;

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v4, 0x8

    invoke-virtual {p0, v4, v7, v8, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lcom/android/internal/telephony/HtcExt1RecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method public setupIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 1
    .parameter "iccFileHandler"

    .prologue
    .line 3014
    iput-object p1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 3015
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    .line 3016
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->setupIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)V

    .line 3019
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-nez v0, :cond_1

    .line 3020
    const-string v0, "setupIccFileHandler: set mIccFileHandler to null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 3023
    :cond_1
    return-void
.end method

.method updateADNByIndex(ILcom/android/internal/telephony/HtcAdnRecord;ILandroid/os/Message;)V
    .locals 4
    .parameter "recordIndex"
    .parameter "adnRecord"
    .parameter "efid"
    .parameter "response"

    .prologue
    .line 2618
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateADNByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2622
    new-instance v0, Lcom/android/internal/telephony/ADNRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ADNRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/android/internal/telephony/ADNRecordLoader;->updateEF(IILcom/android/internal/telephony/HtcAdnRecord;Landroid/os/Message;)V

    .line 2627
    :cond_0
    return-void
.end method

.method updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V
    .locals 6
    .parameter "recordIndex"
    .parameter "anrRecord"
    .parameter "efid"
    .parameter "anrEntryIndex"
    .parameter "response"

    .prologue
    .line 2592
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAnrByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v4

    .line 2595
    .local v4, inIAP:Z
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2598
    new-instance v0, Lcom/android/internal/telephony/AnrRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/AnrRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    move v1, p3

    move v2, p1

    move-object v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/AnrRecordLoader;->updateEF(IILcom/android/internal/telephony/AnrRecord;ZLandroid/os/Message;)V

    .line 2602
    :cond_0
    return-void
.end method

.method updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V
    .locals 6
    .parameter "efid"
    .parameter "recordIndex"
    .parameter "emailRecord"
    .parameter "response"

    .prologue
    .line 2578
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEmailByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    .line 2581
    .local v4, inIAP:Z
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2584
    new-instance v0, Lcom/android/internal/telephony/EmailRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/EmailRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/EmailRecordLoader;->updateEF(IILcom/android/internal/telephony/EmailRecord;ZLandroid/os/Message;)V

    .line 2588
    :cond_0
    return-void
.end method

.method updateExt1ByIndex(ILcom/android/internal/telephony/HtcExt1Record;ILandroid/os/Message;)V
    .locals 3
    .parameter "recordIndex"
    .parameter "ext1Record"
    .parameter "efid"
    .parameter "response"

    .prologue
    .line 2631
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateExt1ByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2635
    new-instance v0, Lcom/android/internal/telephony/HtcExt1RecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/android/internal/telephony/HtcExt1RecordLoader;->updateEF(IILcom/android/internal/telephony/HtcExt1Record;Landroid/os/Message;)V

    .line 2639
    :cond_0
    return-void
.end method

.method updateIAPByIndex(ILcom/android/internal/telephony/IAPRecord;ILandroid/os/Message;)V
    .locals 3
    .parameter "recordIndex"
    .parameter "iapRecord"
    .parameter "efid"
    .parameter "response"

    .prologue
    .line 2606
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIAPByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2610
    new-instance v0, Lcom/android/internal/telephony/IAPRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IAPRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/android/internal/telephony/IAPRecordLoader;->updateEF(IILcom/android/internal/telephony/IAPRecord;Landroid/os/Message;)V

    .line 2614
    :cond_0
    return-void
.end method

.method public updatePBKEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "recordNumber"
    .parameter "name"
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "newEmail"
    .parameter "response"

    .prologue
    .line 1698
    const-string v1, "updatePBKEntry()"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->log(Ljava/lang/String;)V

    .line 1700
    const/4 v7, 0x0

    .line 1703
    .local v7, error:I
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v1, :cond_0

    .line 1704
    const-string v1, "mPhone null"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1810
    :goto_0
    return-void

    .line 1708
    :cond_0
    invoke-static {p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1710
    .local v10, phonenumber:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1711
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1715
    :cond_1
    move-object/from16 v0, p5

    invoke-direct {p0, v10, p4, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->checkNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1717
    if-eqz v7, :cond_2

    .line 1718
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1723
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v9

    .line 1726
    .local v9, iccCardInterface:Lcom/android/internal/telephony/IccCard;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    array-length v1, v1

    if-ge v8, v1, :cond_3

    .line 1727
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v8

    .line 1726
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1731
    :cond_3
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_4

    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-nez v1, :cond_4

    .line 1733
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1737
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v1, :cond_e

    .line 1738
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1740
    .local v6, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v6, :cond_5

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-gtz v1, :cond_6

    .line 1741
    :cond_5
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1743
    :cond_6
    iget v1, v6, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v5, v1, v2

    .line 1744
    .local v5, num:I
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 1745
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I

    move-result v7

    .line 1746
    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 1747
    move-object/from16 p5, p4

    .line 1748
    const-string p4, ""

    .line 1751
    :cond_7
    if-eqz v7, :cond_8

    .line 1752
    packed-switch v7, :pswitch_data_0

    .line 1763
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1760
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MemoryFull:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1769
    :cond_8
    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 1770
    move-object/from16 v0, p6

    invoke-direct {p0, v0, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V

    .line 1776
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 1777
    const/4 v1, 0x0

    invoke-direct {p0, p4, v6, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1780
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 1781
    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v6, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1787
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1788
    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 1791
    :cond_c
    iget v1, v6, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateIAP(IZ)V

    .line 1798
    :cond_d
    move-object/from16 v0, p7

    invoke-direct {p0, p2, v10, v6, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    .line 1801
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updatePSCRecord(ZII)V

    goto/16 :goto_0

    .line 1806
    .end local v5           #num:I
    .end local v6           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_e
    const-string v1, "HtcIccPbkEntryCache_QMI"

    const-string v2, "mSimPbkEntryList = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1752
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
