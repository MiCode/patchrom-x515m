.class Landroid/net/wifi/WifiStateMachine$CwHandler;
.super Landroid/os/Handler;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CwHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 3893
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    .line 3894
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3896
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 3899
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 3984
    :goto_0
    return-void

    .line 3901
    :pswitch_0
    const-string v6, "WifiStateMachine"

    const-string v7, "[C+W] EVENT_CW_REGISTER_START"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3902
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterCapability()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3903
    const-string v6, "WifiStateMachine"

    const-string v7, "[C+W] no register capability"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3906
    :cond_0
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_1

    .line 3907
    const-string v6, "WifiStateMachine"

    const-string v7, "[C+W] mCWService does not bind!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3908
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->bindCWService()Z
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Z

    goto :goto_0

    .line 3912
    :cond_1
    :try_start_0
    const-string v6, "com.htc.cw.ICWService$Stub"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 3913
    .local v4, stubrefClass:Ljava/lang/Class;
    const-string v6, "asInterface"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3914
    .local v0, asInterface:Ljava/lang/reflect/Method;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_2

    .line 3915
    const-string v6, "Get the ICWService"

    const-string/jumbo v7, "mCWService is null..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 3926
    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v4           #stubrefClass:Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 3928
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 3918
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #asInterface:Ljava/lang/reflect/Method;
    .restart local v4       #stubrefClass:Ljava/lang/Class;
    :cond_2
    const/4 v6, 0x1

    :try_start_1
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3919
    .local v1, cWrefClass:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "register"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3920
    .local v3, register:Ljava/lang/reflect/Method;
    if-nez v3, :cond_3

    .line 3921
    const-string v6, "WifiStateMachine"

    const-string v7, "[C+W] can not get the CWService method register"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 3929
    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v1           #cWrefClass:Ljava/lang/Object;
    .end local v3           #register:Ljava/lang/reflect/Method;
    .end local v4           #stubrefClass:Ljava/lang/Class;
    :catch_1
    move-exception v2

    .line 3931
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    .line 3924
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #asInterface:Ljava/lang/reflect/Method;
    .restart local v1       #cWrefClass:Ljava/lang/Object;
    .restart local v3       #register:Ljava/lang/reflect/Method;
    .restart local v4       #stubrefClass:Ljava/lang/Class;
    :cond_3
    const/4 v6, 0x0

    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3925
    const-string v6, "WifiStateMachine"

    const-string v7, "[C+W] call CW Register success"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 3932
    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v1           #cWrefClass:Ljava/lang/Object;
    .end local v3           #register:Ljava/lang/reflect/Method;
    .end local v4           #stubrefClass:Ljava/lang/Class;
    :catch_2
    move-exception v2

    .line 3934
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    .line 3935
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v2

    .line 3937
    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_0

    .line 3938
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v2

    .line 3940
    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 3945
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :pswitch_1
    const-string v6, "WifiStateMachine"

    const-string v7, "[C+W] EVENT_CW_DEREGISTER_START"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_4

    .line 3947
    const-string v6, "WifiStateMachine"

    const-string v7, "[C+W] mCWService does not bind!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3948
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->bindCWService()Z
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$900(Landroid/net/wifi/WifiStateMachine;)Z

    goto/16 :goto_0

    .line 3951
    :cond_4
    :try_start_3
    const-string v6, "com.htc.cw.ICWService$Stub"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 3952
    .restart local v4       #stubrefClass:Ljava/lang/Class;
    const-string v6, "asInterface"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3953
    .restart local v0       #asInterface:Ljava/lang/reflect/Method;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_5

    .line 3954
    const-string v6, "Get the ICWService"

    const-string/jumbo v7, "mCWService is null..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_9

    goto/16 :goto_0

    .line 3965
    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v4           #stubrefClass:Ljava/lang/Class;
    :catch_5
    move-exception v2

    .line 3967
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 3957
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #asInterface:Ljava/lang/reflect/Method;
    .restart local v4       #stubrefClass:Ljava/lang/Class;
    :cond_5
    const/4 v6, 0x1

    :try_start_4
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$CwHandler;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;
    invoke-static {v8}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3958
    .restart local v1       #cWrefClass:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "unRegister"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 3959
    .local v5, unRegister:Ljava/lang/reflect/Method;
    if-nez v5, :cond_6

    .line 3960
    const-string v6, "WifiStateMachine"

    const-string v7, "[C+W] can not get the CWService method unRegister"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_9

    goto/16 :goto_0

    .line 3968
    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v1           #cWrefClass:Ljava/lang/Object;
    .end local v4           #stubrefClass:Ljava/lang/Class;
    .end local v5           #unRegister:Ljava/lang/reflect/Method;
    :catch_6
    move-exception v2

    .line 3970
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    .line 3963
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #asInterface:Ljava/lang/reflect/Method;
    .restart local v1       #cWrefClass:Ljava/lang/Object;
    .restart local v4       #stubrefClass:Ljava/lang/Class;
    .restart local v5       #unRegister:Ljava/lang/reflect/Method;
    :cond_6
    const/4 v6, 0x0

    :try_start_5
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3964
    const-string v6, "WifiStateMachine"

    const-string v7, "[C+W] call CW unRegister success"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_9

    goto/16 :goto_0

    .line 3971
    .end local v0           #asInterface:Ljava/lang/reflect/Method;
    .end local v1           #cWrefClass:Ljava/lang/Object;
    .end local v4           #stubrefClass:Ljava/lang/Class;
    .end local v5           #unRegister:Ljava/lang/reflect/Method;
    :catch_7
    move-exception v2

    .line 3973
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    .line 3974
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_8
    move-exception v2

    .line 3976
    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_0

    .line 3977
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_9
    move-exception v2

    .line 3979
    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 3899
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
