.class Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverUnloadingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 4700
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 4704
    const v1, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4706
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4707
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$4000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 4708
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;

    invoke-direct {v2, p0, v0}, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState$1;-><init>(Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;Landroid/os/Message;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 4744
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 4749
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 4775
    const/4 v0, 0x0

    .line 4778
    :goto_0
    return v0

    .line 4751
    :sswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$4100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 4777
    :goto_1
    const v0, 0xc366

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 4778
    const/4 v0, 0x1

    goto :goto_0

    .line 4754
    :sswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverFailedState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$2800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 4772
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/net/wifi/WifiStateMachine;->access$4300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 4749
    :sswitch_data_0
    .sparse-switch
        0x20001 -> :sswitch_2
        0x20002 -> :sswitch_2
        0x20005 -> :sswitch_0
        0x20006 -> :sswitch_1
        0x2000b -> :sswitch_2
        0x2000c -> :sswitch_2
        0x2000d -> :sswitch_2
        0x2000e -> :sswitch_2
        0x20015 -> :sswitch_2
        0x20018 -> :sswitch_2
        0x20048 -> :sswitch_2
        0x20049 -> :sswitch_2
        0x2004d -> :sswitch_2
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_2
        0x20055 -> :sswitch_2
        0x2005a -> :sswitch_2
        0x20065 -> :sswitch_2
    .end sparse-switch
.end method
