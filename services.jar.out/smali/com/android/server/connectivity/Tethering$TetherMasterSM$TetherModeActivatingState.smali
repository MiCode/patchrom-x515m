.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;
.super Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherModeActivatingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0
    .parameter

    .prologue
    .line 3155
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 3158
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v2, 0x1

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->changeIpForwardSetting(Z)Z
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3159
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->activeAllUpstreamTypes()I

    move-result v0

    .line 3160
    .local v0, upstreamState:I
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->DOWN_STREAM_ON__WHEN_NO_UP_STREAM:Z
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 3162
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 3168
    .end local v0           #upstreamState:I
    :cond_1
    :goto_0
    return-void

    .line 3166
    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .parameter "message"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x3

    const/4 v11, -0x1

    .line 3171
    const-string v8, "Tethering"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TetherModeActivatingState.processMessage what="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    const/4 v6, 0x1

    .line 3173
    .local v6, retValue:Z
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 3240
    :pswitch_0
    const/4 v6, 0x0

    .line 3243
    :cond_0
    :goto_0
    return v6

    .line 3175
    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 3176
    .local v7, who:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3178
    sget-boolean v8, Lcom/android/server/connectivity/Tethering;->TETHERING_GUARD_support:Z

    if-eqz v8, :cond_0

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v9, 0x94

    if-ne v8, v9, :cond_0

    .line 3180
    const-string v8, "connectivity"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3181
    .local v0, bconn:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 3182
    .local v1, cm:Landroid/net/IConnectivityManager;
    const/4 v4, 0x0

    .line 3184
    .local v4, info:Landroid/net/NetworkInfo;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$5200(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 3188
    :goto_1
    if-eqz v4, :cond_0

    .line 3189
    const-string v8, "Tethering"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Check tethering request for :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getInterface()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-static {v8}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3191
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v9, v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    #calls: Lcom/android/server/connectivity/Tethering;->htcPermittedTetherLanIf(Ljava/lang/String;)I
    invoke-static {v8, v9}, Lcom/android/server/connectivity/Tethering;->access$8400(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)I

    move-result v5

    .line 3192
    .local v5, lanIf:I
    if-ltz v5, :cond_0

    if-ge v5, v12, :cond_0

    .line 3193
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPermittedTetherLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 3194
    :try_start_1
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPermittedTetherStatus:[I
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)[I

    move-result-object v8

    const/4 v10, 0x3

    aput v10, v8, v5

    .line 3195
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3196
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Integer;

    add-int/lit8 v11, v5, 0x10

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v13, v9, v10}, Lcom/android/server/connectivity/Tethering;->htcRequestPermittedTether(Ljava/lang/Boolean;ZLjava/lang/Object;)I

    goto/16 :goto_0

    .line 3185
    .end local v5           #lanIf:I
    :catch_0
    move-exception v2

    .line 3186
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "Tethering"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error getting active network for request :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3195
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v5       #lanIf:I
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 3204
    .end local v0           #bconn:Landroid/os/IBinder;
    .end local v1           #cm:Landroid/net/IConnectivityManager;
    .end local v4           #info:Landroid/net/NetworkInfo;
    .end local v5           #lanIf:I
    .end local v7           #who:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :pswitch_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 3205
    .restart local v7       #who:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 3206
    .local v3, index:I
    if-eq v3, v11, :cond_0

    .line 3207
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3208
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3209
    const-string v8, "Tethering"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tether Mode unrequested by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$6600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v9

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 3216
    .end local v3           #index:I
    .end local v7           #who:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->activeAllUpstreamTypes()I

    move-result v8

    if-nez v8, :cond_0

    .line 3217
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v9

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 3221
    :pswitch_4
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mCurrentConnectionSequence:I
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v9

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mMobileApnReserved:I
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v8

    if-eq v8, v11, :cond_0

    .line 3222
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #setter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mPrviousDunRequestResponse:Ljava/lang/Integer;
    invoke-static {v8, v13}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$5102(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 3223
    const-string v8, "Tethering"

    const-string v9, "renewing mobile connection - keep for another 40000ms"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$2400(Lcom/android/server/connectivity/Tethering;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->turnOnUpstreamMobileConnection(I)I

    move-result v8

    if-nez v8, :cond_0

    .line 3226
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v9

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$9000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 3231
    :pswitch_5
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v8, v8, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v8}, Lcom/android/server/connectivity/Tethering;->access$2400(Lcom/android/server/connectivity/Tethering;)I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    .line 3232
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->turnOffUpstreamMobileConnection()Z

    .line 3235
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->activeAllUpstreamTypes()I

    move-result v8

    if-nez v8, :cond_0

    .line 3236
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeActivatingState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;
    invoke-static {v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$8500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v9

    #calls: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v8, v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$9100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 3173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
