.class Lcom/android/server/WifiService$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 730
    const-string v2, "cw_reg_state"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 731
    .local v0, cwState:I
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[C+W] get cwState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/16 v2, 0x65

    if-ne v0, v2, :cond_1

    .line 735
    const-string v2, "WifiService"

    const-string v3, "[C+W] get C+W register success"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v2, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    const-string v3, "cw_reg_expire"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    int-to-long v3, v3

    #setter for: Lcom/android/server/WifiService;->mCwExpiredTime:J
    invoke-static {v2, v3, v4}, Lcom/android/server/WifiService;->access$2602(Lcom/android/server/WifiService;J)J

    .line 738
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[C+W] get C+W register expired time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mCwExpiredTime:J
    invoke-static {v4}, Lcom/android/server/WifiService;->access$2600(Lcom/android/server/WifiService;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v2, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->setCWExpiredReregisterAlarm()V
    invoke-static {v2}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)V

    .line 741
    iget-object v2, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$WifiHandler;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/server/WifiService$WifiHandler;->removeMessages(I)V

    .line 742
    iget-object v2, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->setCwRegisterState(Z)V

    .line 743
    iget-object v3, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    iget-object v2, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, v3, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    .line 744
    iget-object v2, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    iget-object v2, v2, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 745
    iget-object v2, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->cWsetDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    const/16 v2, 0x66

    if-ne v0, v2, :cond_3

    .line 747
    iget-object v2, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->increseCwRetryCounter()I

    move-result v1

    .line 748
    .local v1, retryCounter:I
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[C+W] retryCounter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 750
    iget-object v2, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->tryToTriggerCWReregister()V

    .line 751
    :cond_2
    iget-object v2, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiStateMachine;->setCwRegisterState(Z)V

    goto :goto_0

    .line 753
    .end local v1           #retryCounter:I
    :cond_3
    iget-object v2, p0, Lcom/android/server/WifiService$3;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiStateMachine;->setCwRegisterState(Z)V

    goto :goto_0
.end method
