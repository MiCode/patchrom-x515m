.class Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V
    .locals 0
    .parameter

    .prologue
    .line 1939
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private cleanupUpstream()V
    .locals 4

    .prologue
    .line 1989
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1996
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$4300(Lcom/android/server/connectivity/Tethering;)Landroid/net/INetworkStatsService;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2001
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$4000(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->disableNat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2010
    :goto_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    .line 2012
    :cond_0
    return-void

    .line 1997
    :catch_0
    move-exception v0

    .line 1998
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in forceUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2002
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2007
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in disableNat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "if "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unNat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1943
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$4000(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->tetherInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1957
    sget-boolean v1, Lcom/android/server/connectivity/Tethering;->DISABLE_MULTI_RAB_TRAFFIC_support:Z

    if-eqz v1, :cond_0

    .line 1958
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    #calls: Lcom/android/server/connectivity/Tethering;->setMultiRABTrafficThrottling(Ljava/lang/String;I)V
    invoke-static {v1, v2, v4}, Lcom/android/server/connectivity/Tethering;->access$4200(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;I)V

    .line 1968
    :cond_0
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tethered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v2, 0x0

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setAvailable(Z)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$2600(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V

    .line 1970
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setTethered(Z)V
    invoke-static {v1, v4}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$2700(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V

    .line 1971
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$2800(Lcom/android/server/connectivity/Tethering;)V

    .line 1972
    :goto_0
    return-void

    .line 1944
    :catch_0
    move-exception v0

    .line 1945
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Tethering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v2, 0x6

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$2900(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 1949
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "if "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tether fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$3400(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4100(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-boolean v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    if-eqz v0, :cond_1

    .line 1978
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->m3GDunOnlyWhenUsbOn:Z
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$2300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1979
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v1, -0x1

    #setter for: Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$2402(Lcom/android/server/connectivity/Tethering;I)I

    .line 1980
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$2500(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1983
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v1, 0x0

    #calls: Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$2200(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1985
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .parameter "message"

    .prologue
    .line 2017
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TetheredState.processMessage what="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    const/4 v9, 0x1

    .line 2019
    .local v9, retValue:Z
    const/4 v3, 0x0

    .line 2020
    .local v3, error:Z
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 2243
    :pswitch_0
    const/4 v9, 0x0

    .line 2246
    :cond_0
    :goto_0
    return v9

    .line 2023
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->cleanupUpstream()V

    .line 2025
    :try_start_0
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$4000(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v10, v11}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2031
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$2500(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v10

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2033
    iget v10, p1, Landroid/os/Message;->what:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_4

    .line 2034
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-boolean v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    if-eqz v10, :cond_1

    .line 2035
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v11, 0x0

    #calls: Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z
    invoke-static {v10, v11}, Lcom/android/server/connectivity/Tethering;->access$2200(Lcom/android/server/connectivity/Tethering;Z)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2036
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/16 v11, 0xa

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v10, v11}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$2900(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2040
    :cond_1
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$3400(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v11

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v10, v11}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4400(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    .line 2050
    :cond_2
    :goto_1
    sget-boolean v10, Lcom/android/server/connectivity/Tethering;->DISABLE_MULTI_RAB_TRAFFIC_support:Z

    if-eqz v10, :cond_3

    .line 2051
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    const/4 v12, 0x0

    #calls: Lcom/android/server/connectivity/Tethering;->setMultiRABTrafficThrottling(Ljava/lang/String;I)V
    invoke-static {v10, v11, v12}, Lcom/android/server/connectivity/Tethering;->access$4200(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;I)V

    .line 2061
    :cond_3
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Untethered "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v12, v12, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2026
    :catch_0
    move-exception v2

    .line 2027
    .local v2, e:Ljava/lang/Exception;
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto :goto_0

    .line 2041
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    iget v10, p1, Landroid/os/Message;->what:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_2

    .line 2043
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-boolean v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v11, 0x0

    #calls: Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z
    invoke-static {v10, v11}, Lcom/android/server/connectivity/Tethering;->access$2200(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 2045
    :cond_5
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUnavailableState:Lcom/android/internal/util/State;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$3200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v11

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v10, v11}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4500(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 2064
    :pswitch_2
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    move-object v7, v10

    check-cast v7, Ljava/lang/String;

    .line 2079
    .local v7, newUpstreamIfaceName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2080
    .local v4, fakeTetherinfChange:Z
    if-eqz v7, :cond_6

    const-string v10, "htc_fake_tether_up_if"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2081
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v7, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    .line 2082
    const/4 v4, 0x1

    .line 2089
    :cond_6
    if-eqz v7, :cond_8

    .line 2092
    const/4 v8, 0x0

    .line 2093
    .local v8, regexDownStreamIfaceName:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    #calls: Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z
    invoke-static {v10, v11}, Lcom/android/server/connectivity/Tethering;->access$4600(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 2100
    :cond_7
    :goto_2
    if-eqz v8, :cond_8

    .line 2101
    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2103
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "if "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v12, v12, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", up="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v12, v12, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "->"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    const/4 v7, 0x0

    .line 2118
    .end local v8           #regexDownStreamIfaceName:Ljava/lang/String;
    :cond_8
    move-object v1, v7

    .line 2119
    .local v1, currentUpstreamIfaceName:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v11, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v12, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    const/4 v10, 0x1

    :goto_3
    #calls: Lcom/android/server/connectivity/Tethering;->htcPermittedTetherAllow(Ljava/lang/String;Ljava/lang/String;Z)Z
    invoke-static {v11, v12, v7, v10}, Lcom/android/server/connectivity/Tethering;->access$4700(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 2122
    .local v0, allowPermittedTether:Z
    if-nez v0, :cond_14

    .line 2126
    const/4 v7, 0x0

    .line 2134
    :cond_9
    :goto_4
    const/4 v5, 0x1

    .line 2135
    .local v5, isUpstreamIfaceChange:Z
    if-eqz v7, :cond_a

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2138
    const/4 v5, 0x0

    .line 2144
    :cond_a
    const/4 v6, 0x0

    .line 2145
    .local v6, mPrevUpstreamIfaceName:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    if-eqz v10, :cond_d

    .line 2146
    new-instance v6, Ljava/lang/String;

    .end local v6           #mPrevUpstreamIfaceName:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2147
    .restart local v6       #mPrevUpstreamIfaceName:Ljava/lang/String;
    if-eqz v0, :cond_b

    if-eqz v5, :cond_c

    .line 2149
    :cond_b
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->cleanupUpstream()V

    .line 2152
    :cond_c
    if-nez v0, :cond_d

    .line 2153
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iput-object v6, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    .line 2161
    :cond_d
    if-eqz v5, :cond_e

    if-eqz v7, :cond_e

    .line 2164
    :try_start_1
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$4000(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v10, v11, v7}, Landroid/os/INetworkManagementService;->enableNat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2195
    :cond_e
    if-eqz v5, :cond_f

    if-eqz v7, :cond_10

    .line 2196
    :cond_f
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$2500(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v10

    const/4 v11, 0x7

    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2199
    :cond_10
    if-eqz v4, :cond_11

    if-eqz v0, :cond_0

    .line 2200
    :cond_11
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iput-object v1, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    goto/16 :goto_0

    .line 2096
    .end local v0           #allowPermittedTether:Z
    .end local v1           #currentUpstreamIfaceName:Ljava/lang/String;
    .end local v5           #isUpstreamIfaceChange:Z
    .end local v6           #mPrevUpstreamIfaceName:Ljava/lang/String;
    .restart local v8       #regexDownStreamIfaceName:Ljava/lang/String;
    :cond_12
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2097
    const-string v8, "wlan0"

    goto/16 :goto_2

    .line 2119
    .end local v8           #regexDownStreamIfaceName:Ljava/lang/String;
    .restart local v1       #currentUpstreamIfaceName:Ljava/lang/String;
    :cond_13
    const/4 v10, 0x0

    goto :goto_3

    .line 2129
    .restart local v0       #allowPermittedTether:Z
    :cond_14
    if-eqz v4, :cond_9

    .line 2130
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    goto :goto_4

    .line 2165
    .restart local v5       #isUpstreamIfaceChange:Z
    .restart local v6       #mPrevUpstreamIfaceName:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 2166
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception enabling Nat: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "if "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v12, v12, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Nat "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " fail:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    if-nez v4, :cond_e

    .line 2172
    :try_start_2
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$4000(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v10, v11}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 2182
    :goto_5
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto/16 :goto_0

    .line 2210
    .end local v0           #allowPermittedTether:Z
    .end local v1           #currentUpstreamIfaceName:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #fakeTetherinfChange:Z
    .end local v5           #isUpstreamIfaceChange:Z
    .end local v6           #mPrevUpstreamIfaceName:Ljava/lang/String;
    .end local v7           #newUpstreamIfaceName:Ljava/lang/String;
    :pswitch_3
    const/4 v3, 0x1

    .line 2213
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->cleanupUpstream()V

    .line 2215
    :try_start_3
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$4000(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v10, v11}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2224
    if-eqz v3, :cond_15

    .line 2225
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto/16 :goto_0

    .line 2216
    :catch_2
    move-exception v2

    .line 2218
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "if "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v12, v12, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " unTether fail:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto/16 :goto_0

    .line 2229
    .end local v2           #e:Ljava/lang/Exception;
    :cond_15
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Tether lost upstream connection "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v12, v12, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #calls: Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$2800(Lcom/android/server/connectivity/Tethering;)V

    .line 2231
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-boolean v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    if-eqz v10, :cond_16

    .line 2232
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v11, 0x0

    #calls: Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z
    invoke-static {v10, v11}, Lcom/android/server/connectivity/Tethering;->access$2200(Lcom/android/server/connectivity/Tethering;Z)Z

    move-result v10

    if-nez v10, :cond_16

    .line 2233
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/16 v11, 0xa

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V
    invoke-static {v10, v11}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$2900(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2237
    :cond_16
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v10, v10, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$2500(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v10

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2240
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    #getter for: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$3400(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v11

    #calls: Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v10, v11}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->access$4800(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 2173
    .restart local v0       #allowPermittedTether:Z
    .restart local v1       #currentUpstreamIfaceName:Ljava/lang/String;
    .restart local v2       #e:Ljava/lang/Exception;
    .restart local v4       #fakeTetherinfChange:Z
    .restart local v5       #isUpstreamIfaceChange:Z
    .restart local v6       #mPrevUpstreamIfaceName:Ljava/lang/String;
    .restart local v7       #newUpstreamIfaceName:Ljava/lang/String;
    :catch_3
    move-exception v10

    goto/16 :goto_5

    .line 2020
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
