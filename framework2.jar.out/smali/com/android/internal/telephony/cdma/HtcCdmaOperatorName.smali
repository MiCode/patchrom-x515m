.class public Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;
.super Landroid/os/Handler;
.source "HtcCdmaOperatorName.java"


# static fields
.field private static final DBG_DETAIL:Z = false

.field private static final EVENT_FIND_DUAL_MODE_INTENT:I = 0x3

.field private static final EVENT_FIND_REGISTER_MMDCT:I = 0x1

.field private static final EVENT_FIND_UNREGISTER_MMDCT:I = 0x2

.field private static final EVENT_UPDATE_DATA_SS:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field private banner_Eri:Ljava/lang/String;

.field private banner_Plmn:Ljava/lang/String;

.field private banner_Spn:Ljava/lang/String;

.field private banner_lastTime:Ljava/lang/String;

.field private date_Eri:Ljava/util/Date;

.field private display_Eri:Ljava/lang/Integer;

.field private display_lastTime:Ljava/lang/Integer;

.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mDetectMmDct:Ljava/lang/Boolean;

.field private mDualPhoneIntentExtra:Ljava/lang/String;

.field private mRegisterForDataServiceStateChanged:Ljava/lang/reflect/Method;

.field private mRegisterStatus:Ljava/lang/Boolean;

.field private mUnregisterForDataServiceStateChanged:Ljava/lang/reflect/Method;

.field private service_lastTime:Ljava/lang/Integer;

.field private show_Plmn:Ljava/lang/Boolean;

.field private show_Spn:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->sendEmptyMessage(I)Z

    .line 44
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->sendEmptyMessage(I)Z

    .line 45
    return-void
.end method

.method private fakeOperatorName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "originalOperatorName"

    .prologue
    .line 173
    return-object p1
.end method

.method private notifyOperatorNameUpdate(ZLjava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "forceUpdate"
    .parameter "logTag"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x0

    .line 231
    move v1, p1

    .line 233
    .local v1, displayChanged:Z
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    .line 234
    .local v6, ss:Landroid/telephony/ServiceState;
    if-nez v6, :cond_9

    move v5, v7

    .line 235
    .local v5, serviceStatus:I
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->service_lastTime:Ljava/lang/Integer;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->service_lastTime:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v5, :cond_1

    .line 236
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->service_lastTime:Ljava/lang/Integer;

    .line 237
    const/4 v1, 0x1

    .line 240
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_Eri:Ljava/lang/Integer;

    if-eqz v9, :cond_3

    .line 241
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_lastTime:Ljava/lang/Integer;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_lastTime:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_Eri:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 243
    :cond_2
    const/4 v1, 0x1

    .line 247
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->getOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, opName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_lastTime:Ljava/lang/String;

    invoke-static {v4, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 249
    const/4 v1, 0x1

    .line 257
    :cond_4
    if-eqz v1, :cond_8

    .line 258
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v2, intent:Landroid/content/Intent;
    const-string v9, "networkState"

    invoke-virtual {v2, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mDualPhoneIntentExtra:Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 261
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mDualPhoneIntentExtra:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneType()I

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    :cond_5
    if-nez p1, :cond_6

    if-nez v5, :cond_c

    .line 265
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->getOperatorInfo()Lcom/android/internal/telephony/gsm/OperatorInfo;

    move-result-object v3

    .line 266
    .local v3, opInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;
    const-string v8, "showSpn"

    iget-boolean v9, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 267
    iget-boolean v8, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    if-eqz v8, :cond_a

    .line 268
    const-string v8, "spn"

    iget-object v9, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    :goto_1
    const-string v8, "showPlmn"

    iget-boolean v9, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    iget-boolean v8, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    if-eqz v8, :cond_b

    .line 275
    const-string v8, "plmn"

    iget-object v9, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->fakeOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    :goto_2
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_Eri:Ljava/lang/Integer;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_Eri:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v7, :cond_7

    .line 281
    const-string v8, "flashPlmn"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    :cond_7
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " N-update - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Eri:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_Eri:Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->date_Eri:Ljava/util/Date;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Plmn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Plmn:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Spn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Spn:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "REAL"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->fakeOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_lastTime:Ljava/lang/String;

    .line 289
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_Eri:Ljava/lang/Integer;

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_lastTime:Ljava/lang/Integer;

    .line 290
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 310
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #opInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;
    :cond_8
    :goto_3
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_lastTime:Ljava/lang/String;

    return-object v7

    .line 234
    .end local v4           #opName:Ljava/lang/String;
    .end local v5           #serviceStatus:I
    :cond_9
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    goto/16 :goto_0

    .line 271
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #opInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;
    .restart local v4       #opName:Ljava/lang/String;
    .restart local v5       #serviceStatus:I
    :cond_a
    const-string v8, "spn"

    iget-object v9, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->fakeOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 278
    :cond_b
    const-string v8, "plmn"

    iget-object v9, v3, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 294
    .end local v3           #opInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;
    :cond_c
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "airplane_mode_on"

    invoke-static {v7, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 298
    .local v0, airplaneMode:I
    const/4 v7, 0x3

    if-ne v5, v7, :cond_d

    if-eqz v0, :cond_8

    .line 300
    :cond_d
    const-string v7, "showSpn"

    invoke-virtual {v2, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 301
    const-string v9, "spn"

    move-object v7, v8

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v7, "showPlmn"

    invoke-virtual {v2, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    const-string v9, "plmn"

    move-object v7, v8

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string v7, "CDMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " N-update - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iput-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_lastTime:Ljava/lang/String;

    .line 306
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_3
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .prologue
    .line 51
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mRegisterStatus:Ljava/lang/Boolean;

    .line 52
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mDetectMmDct:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mDetectMmDct:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mUnregisterForDataServiceStateChanged:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v1, :cond_0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mUnregisterForDataServiceStateChanged:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, ei:Ljava/lang/Exception;
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unreg fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getOperatorInfo()Lcom/android/internal/telephony/gsm/OperatorInfo;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 202
    new-instance v0, Lcom/android/internal/telephony/gsm/OperatorInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/OperatorInfo;-><init>()V

    .line 203
    .local v0, operatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 204
    .local v1, ss:Landroid/telephony/ServiceState;
    if-nez v1, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->inService:Z

    .line 205
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_Eri:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Eri:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 206
    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    .line 207
    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    .line 208
    const-string v2, ""

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    .line 209
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Eri:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->fakeOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    .line 223
    :goto_1
    return-object v0

    .line 204
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0

    .line 212
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Spn:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Spn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    :goto_2
    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    .line 213
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Plmn:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Plmn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_3
    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    .line 214
    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    if-eqz v2, :cond_5

    .line 215
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Spn:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    .line 216
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Plmn:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->fakeOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move v2, v3

    .line 212
    goto :goto_2

    :cond_4
    move v4, v3

    .line 213
    goto :goto_3

    .line 219
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Spn:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->fakeOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    .line 220
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Plmn:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    goto :goto_1
.end method

.method public getOperatorName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    const-string v0, ""

    .line 181
    .local v0, opName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_Eri:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Eri:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Eri:Ljava/lang/String;

    .line 195
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->fakeOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Plmn:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Plmn:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Spn:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Spn:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Plmn:Ljava/lang/String;

    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Plmn:Ljava/lang/String;

    goto :goto_0

    .line 192
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Spn:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Spn:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Spn:Ljava/lang/String;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    const/4 v13, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 322
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 324
    :sswitch_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mDetectMmDct:Ljava/lang/Boolean;

    if-nez v9, :cond_0

    .line 325
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mDetectMmDct:Ljava/lang/Boolean;

    .line 326
    const-string v9, "CDMA"

    const-string v10, "Start to find reg"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v0, 0x0

    .line 329
    .local v0, cls:Ljava/lang/Class;
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 333
    :goto_1
    if-eqz v0, :cond_1

    .line 335
    :try_start_1
    const-string v9, "registerForDataServiceStateChanged"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/os/Handler;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Ljava/lang/Object;

    aput-object v12, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mRegisterForDataServiceStateChanged:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 340
    :goto_2
    invoke-virtual {p0, v13, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->sendMessage(Landroid/os/Message;)Z

    .line 342
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mRegisterStatus:Ljava/lang/Boolean;

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mRegisterForDataServiceStateChanged:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_3

    .line 343
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mDetectMmDct:Ljava/lang/Boolean;

    .line 345
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mRegisterForDataServiceStateChanged:Ljava/lang/reflect/Method;

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p0, v11, v12

    const/4 v12, 0x1

    const/16 v13, 0xa

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x0

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mRegisterStatus:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 351
    :goto_3
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "End of setup reg : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mRegisterForDataServiceStateChanged:Ljava/lang/reflect/Method;

    if-eqz v11, :cond_2

    :goto_4
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mRegisterStatus:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, ef:Ljava/lang/Exception;
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FndCls fail:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 337
    .end local v1           #ef:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 338
    .local v3, es:Ljava/lang/Exception;
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RegCls fail:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 348
    .end local v3           #es:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 349
    .local v2, ei:Ljava/lang/Exception;
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Reg fail:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v2           #ei:Ljava/lang/Exception;
    :cond_2
    move v7, v8

    .line 351
    goto :goto_4

    .line 355
    :cond_3
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "End of find reg : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mRegisterForDataServiceStateChanged:Ljava/lang/reflect/Method;

    if-eqz v11, :cond_4

    :goto_5
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mRegisterStatus:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    move v7, v8

    goto :goto_5

    .line 361
    .end local v0           #cls:Ljava/lang/Class;
    :sswitch_1
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mDetectMmDct:Ljava/lang/Boolean;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mDetectMmDct:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 362
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    .line 363
    .restart local v0       #cls:Ljava/lang/Class;
    const-string v9, "CDMA"

    const-string v10, "Start to find unreg"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :try_start_3
    const-string v9, "unregisterForDataServiceStateChanged"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/os/Handler;

    aput-object v12, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mUnregisterForDataServiceStateChanged:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 370
    :goto_6
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "End of find unreg : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mUnregisterForDataServiceStateChanged:Ljava/lang/reflect/Method;

    if-eqz v11, :cond_5

    :goto_7
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 367
    :catch_3
    move-exception v4

    .line 368
    .local v4, eu:Ljava/lang/Exception;
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UnRegCls fail:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v4           #eu:Ljava/lang/Exception;
    :cond_5
    move v7, v8

    .line 370
    goto :goto_7

    .line 374
    .end local v0           #cls:Ljava/lang/Class;
    :sswitch_2
    const/high16 v7, 0x4000

    sget v8, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v7, v8}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 378
    :try_start_4
    const-string v7, "android.provider.Telephony$Intents"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 379
    .restart local v0       #cls:Ljava/lang/Class;
    const-string v7, "EXTRA_PHONE_TYPE"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 380
    .local v6, fld:Ljava/lang/reflect/Field;
    if-eqz v6, :cond_0

    .line 381
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mDualPhoneIntentExtra:Ljava/lang/String;

    .line 382
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dual extra : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mDualPhoneIntentExtra:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 384
    .end local v0           #cls:Ljava/lang/Class;
    .end local v6           #fld:Ljava/lang/reflect/Field;
    :catch_4
    move-exception v5

    .line 385
    .local v5, ex:Ljava/lang/Exception;
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dual extra ex:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iput-object v10, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mDualPhoneIntentExtra:Ljava/lang/String;

    goto/16 :goto_0

    .line 391
    .end local v5           #ex:Ljava/lang/Exception;
    :sswitch_3
    const-string v7, "DataDirect"

    invoke-virtual {p0, v8, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->updateFromDataServiceState(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 322
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method public updateFromDataServiceState(ZLjava/lang/String;)V
    .locals 1
    .parameter "forceUpdate"
    .parameter "logTag"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->notifyOperatorNameUpdate(ZLjava/lang/String;)Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mDetectMmDct:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->sendEmptyMessage(I)Z

    .line 155
    :cond_0
    return-void
.end method

.method public updateFromEri(Ljava/util/Date;Ljava/lang/String;I)V
    .locals 3
    .parameter "timeStamp"
    .parameter "banner"
    .parameter "displayType"

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, updated:Z
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->date_Eri:Ljava/util/Date;

    .line 77
    if-eqz p2, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Eri:Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Eri:Ljava/lang/String;

    .line 80
    const/4 v0, 0x1

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_Eri:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_Eri:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p3, :cond_2

    .line 84
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->display_Eri:Ljava/lang/Integer;

    .line 85
    const/4 v0, 0x1

    .line 87
    :cond_2
    if-eqz v0, :cond_3

    .line 88
    const/4 v1, 0x0

    const-string v2, "ERI"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->notifyOperatorNameUpdate(ZLjava/lang/String;)Ljava/lang/String;

    .line 90
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mDetectMmDct:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    .line 91
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->sendEmptyMessage(I)Z

    .line 93
    :cond_4
    return-void
.end method

.method public updateFromRuim(Ljava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "plmn"
    .parameter "showPlmn"
    .parameter "spn"
    .parameter "showSpn"

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, currOpName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mDetectMmDct:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 142
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->sendEmptyMessage(I)Z

    .line 144
    :cond_0
    return-object v0
.end method

.method public updateFromServiceState(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "plmn"
    .parameter "showPlmn"
    .parameter "spn"
    .parameter "showSpn"
    .parameter "forceUpdate"
    .parameter "logTag"

    .prologue
    .line 105
    move v1, p5

    .line 107
    .local v1, updated:Z
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Plmn:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Plmn:Ljava/lang/String;

    .line 109
    const/4 v1, 0x1

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Plmn:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Plmn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v2, p2, :cond_2

    .line 112
    :cond_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Plmn:Ljava/lang/Boolean;

    .line 113
    const/4 v1, 0x1

    .line 115
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Spn:Ljava/lang/String;

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 116
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->banner_Spn:Ljava/lang/String;

    .line 117
    const/4 v1, 0x1

    .line 119
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Spn:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Spn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v2, p4, :cond_5

    .line 120
    :cond_4
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->show_Spn:Ljava/lang/Boolean;

    .line 121
    const/4 v1, 0x1

    .line 123
    :cond_5
    const/4 v0, 0x0

    .line 124
    .local v0, currOpName:Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 125
    invoke-direct {p0, p5, p6}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->notifyOperatorNameUpdate(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->mDetectMmDct:Ljava/lang/Boolean;

    if-nez v2, :cond_6

    .line 131
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->sendEmptyMessage(I)Z

    .line 133
    :cond_6
    return-object v0

    .line 128
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
