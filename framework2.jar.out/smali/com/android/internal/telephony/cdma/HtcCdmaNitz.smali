.class public Lcom/android/internal/telephony/cdma/HtcCdmaNitz;
.super Ljava/lang/Object;
.source "HtcCdmaNitz.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;,
        Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;
    }
.end annotation


# static fields
.field private static final HTC_HISTORY_ENTRIES:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field public static final SETUP_NITZ_FROM_ISO_UPDATE:I = 0x1

.field public static final SETUP_NITZ_FROM_NITZ_EVENT:I = 0x0

.field public static final SETUP_NITZ_FROM_USER_SETUP:I = 0x2


# instance fields
.field private currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

.field private mNitzLog:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    .line 25
    return-void
.end method

.method private addNitzHistory(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;)V
    .locals 2
    .parameter "history"

    .prologue
    .line 207
    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 212
    :cond_0
    monitor-exit p0

    .line 214
    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateBaseStation(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)V
    .locals 4
    .parameter "infoBS"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 98
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 99
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;

    .line 100
    .local v0, hist:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    if-eqz v0, :cond_0

    .line 101
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->nextBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    if-nez v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->nextBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    .line 98
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v0           #hist:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    :cond_1
    monitor-exit p0

    .line 108
    return-void

    .line 106
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public displayNitzHistory(Z)V
    .locals 4
    .parameter "longFormat"

    .prologue
    .line 223
    monitor-enter p0

    .line 224
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 225
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 226
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;

    .line 227
    .local v0, hist:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    if-eqz v0, :cond_0

    .line 228
    #calls: Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->toLog(Z)V
    invoke-static {v0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->access$000(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;Z)V

    .line 225
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v0           #hist:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    :cond_1
    monitor-exit p0

    .line 233
    return-void

    .line 231
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public receiveNitz(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;)V
    .locals 1
    .parameter "nitz"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->currentBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->previousBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->nextBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    .line 118
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->addNitzHistory(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;)V

    .line 119
    return-void
.end method

.method public setupNitz(IJJ)V
    .locals 4
    .parameter "type"
    .parameter "setupCompleteTime"
    .parameter "newTime"

    .prologue
    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 149
    .local v1, size:I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->mNitzLog:Ljava/util/LinkedList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;

    .line 150
    .local v0, hist:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    if-eqz v0, :cond_0

    .line 151
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupType:Ljava/lang/Integer;

    .line 152
    iput-wide p2, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupTime:J

    .line 153
    iput-wide p4, v0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupSysMsec:J

    .line 155
    :cond_0
    monitor-exit p0

    .line 157
    return-void

    .line 155
    .end local v0           #hist:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateLocation(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)V
    .locals 1
    .parameter "infoBS"

    .prologue
    .line 89
    const/4 v0, 0x1

    iput v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->updateFrom:I

    .line 90
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->updateBaseStation(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)V

    .line 91
    return-void
.end method

.method public updateRegState(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)V
    .locals 1
    .parameter "infoBS"

    .prologue
    .line 79
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->updateFrom:I

    .line 80
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->updateBaseStation(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)V

    .line 81
    return-void
.end method
