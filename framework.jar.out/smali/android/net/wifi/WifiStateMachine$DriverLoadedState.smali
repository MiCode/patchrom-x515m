.class Landroid/net/wifi/WifiStateMachine$DriverLoadedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverLoadedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 4582
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 4586
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4587
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .parameter "message"

    .prologue
    const v11, 0x20002

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4591
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    move v5, v6

    .line 4696
    :goto_0
    return v5

    .line 4593
    :sswitch_0
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverUnloadingState:Lcom/android/internal/util/State;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$3200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 4695
    :goto_1
    const v5, 0xc366

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(II)I

    move v5, v7

    .line 4696
    goto :goto_0

    .line 4597
    :sswitch_1
    :try_start_0
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "STA"

    invoke-interface {v5, v8, v9}, Landroid/os/INetworkManagementService;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4606
    :goto_2
    :try_start_1
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V

    .line 4608
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v5, v8, v9}, Landroid/os/INetworkManagementService;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4615
    :goto_3
    invoke-static {}, Landroid/net/wifi/WifiNative;->startSupplicant()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4617
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiMonitor;->startMonitoring()V

    .line 4618
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 4598
    :catch_0
    move-exception v0

    .line 4599
    .local v0, e:Ljava/lang/Exception;
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to reload STA firmware "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v8}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_2

    .line 4609
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 4610
    .local v3, re:Landroid/os/RemoteException;
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to change interface settings: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v8}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_3

    .line 4611
    .end local v3           #re:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 4612
    .local v2, ie:Ljava/lang/IllegalStateException;
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to change interface settings: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v8}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_3

    .line 4620
    .end local v2           #ie:Ljava/lang/IllegalStateException;
    :cond_0
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v8, "Failed to start supplicant!"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v8}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4621
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v9, 0x4

    invoke-virtual {v8, v11, v9, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 4626
    :sswitch_2
    const-string v5, "WifiStateMachine"

    const-string v8, "[DriverLoadedState] CMD_START_AP"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4628
    :try_start_2
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v8, 0x1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z
    invoke-static {v5, v8}, Landroid/net/wifi/WifiStateMachine;->access$3602(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4629
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 4630
    .local v4, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 4631
    const-string v5, "WifiStateMachine"

    const-string v8, "[DriverLoadedState] wifiConfig != null"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4632
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->persistApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v5, v4}, Landroid/net/wifi/WifiStateMachine;->access$1600(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    .line 4639
    :cond_1
    :goto_4
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string/jumbo v8, "start wifi hotspot"

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/net/wifi/WifiStateMachine;->printProfile(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 4653
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v8

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v5

    iget v5, v5, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    if-ne v5, v7, :cond_b

    move v5, v7

    :goto_5
    invoke-interface {v8, v5}, Landroid/os/INetworkManagementService;->setTetheringDhcpEnabled(Z)V

    .line 4655
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->checkWifiApPassword()V

    .line 4656
    :cond_3
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->checkWifiApSsid()V

    .line 4658
    :cond_4
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "wlan0"

    invoke-interface {v5, v8, v9, v10}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 4685
    .end local v4           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :goto_6
    const-string v5, "WifiStateMachine"

    const-string v6, "Soft AP start successful"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4686
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v6, 0xd

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$2600(Landroid/net/wifi/WifiStateMachine;I)V

    .line 4687
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$3700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$3800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 4688
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->checkSleepPolicy()V
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$3900(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_1

    .line 4633
    .restart local v4       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_5
    if-nez v4, :cond_1

    .line 4634
    :try_start_3
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v5

    if-nez v5, :cond_1

    .line 4635
    :cond_6
    const-string v5, "WifiStateMachine"

    const-string v8, "[DriverLoadedState] mConfig == null"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4636
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->updateProfile()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_4

    .line 4661
    .end local v4           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :catch_3
    move-exception v0

    .line 4662
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v5, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in softap start "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4665
    :try_start_4
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v8, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mUser:I
    invoke-static {v5, v8}, Landroid/net/wifi/WifiStateMachine;->access$702(Landroid/net/wifi/WifiStateMachine;I)I

    .line 4666
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4667
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v5

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4670
    :cond_7
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V

    .line 4672
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$100(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->checkWifiApPassword()V

    .line 4673
    :cond_9
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->checkWifiApSsid()V

    .line 4675
    :cond_a
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v8

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "wlan0"

    invoke-interface {v8, v5, v9, v10}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 4678
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    invoke-interface {v5, v8}, Landroid/os/INetworkManagementService;->setMACList(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_6

    .line 4679
    :catch_4
    move-exception v1

    .line 4680
    .local v1, ee:Ljava/lang/Exception;
    const-string v5, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception during softap restart : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4681
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v9, 0xe

    invoke-virtual {v8, v11, v9, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ee:Ljava/lang/Exception;
    .restart local v4       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_b
    move v5, v6

    .line 4653
    goto/16 :goto_5

    .line 4591
    :sswitch_data_0
    .sparse-switch
        0x20002 -> :sswitch_0
        0x2000b -> :sswitch_1
        0x20015 -> :sswitch_2
    .end sparse-switch
.end method
