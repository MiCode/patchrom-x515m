.class Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler$1;
.super Ljava/lang/Thread;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;->logStatusbarInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;


# direct methods
.method constructor <init>(Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler$1;->this$1:Lcom/htc/server/HtcDeviceInfoManager$DeviceInfoManagerHandler;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 1083
    new-instance v8, Ljava/lang/ProcessBuilder;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "/system/bin/dumpsys"

    aput-object v11, v9, v10

    const-string v10, "statusbar"

    aput-object v10, v9, v12

    invoke-direct {v8, v9}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v7

    .line 1084
    .local v7, processBuilder:Ljava/lang/ProcessBuilder;
    const/4 v2, 0x0

    .line 1085
    .local v2, input:Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1086
    .local v5, plainText:Ljava/lang/StringBuilder;
    const-string v0, ""

    .line 1087
    .local v0, cipherText:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1089
    .local v4, line:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v6

    .line 1090
    .local v6, process:Ljava/lang/Process;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 1091
    :goto_0
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 1093
    :goto_1
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1094
    .end local v2           #input:Ljava/io/BufferedReader;
    .local v3, input:Ljava/io/BufferedReader;
    :try_start_4
    invoke-static {}, Lcom/htc/utils/ulog/Util;->getCurrentDeviceTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1096
    const-string v8, "StatusBarNotification"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "visible=true"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1097
    :cond_1
    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 1108
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 1109
    .end local v3           #input:Ljava/io/BufferedReader;
    .end local v6           #process:Ljava/lang/Process;
    .local v1, e:Ljava/lang/Exception;
    .restart local v2       #input:Ljava/io/BufferedReader;
    :goto_3
    :try_start_5
    const-string v8, "HtcDeviceInfoManager"

    const-string v9, "Error encrypt running process"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1111
    const/4 v5, 0x0

    .line 1112
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1114
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :goto_4
    return-void

    .line 1101
    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    .restart local v6       #process:Ljava/lang/Process;
    :cond_3
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/utils/ulog/StringHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1102
    if-eqz v0, :cond_4

    .line 1103
    sget-object v8, Lcom/htc/utils/ulog/ULogTags;->FRAMEWORK_STATUSBAR_INFO:Lcom/htc/utils/ulog/ULogTags;

    invoke-static {v8, v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogTags;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1111
    :cond_4
    :goto_5
    const/4 v5, 0x0

    .line 1112
    if-eqz v3, :cond_6

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    move-object v2, v3

    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v2       #input:Ljava/io/BufferedReader;
    goto :goto_4

    .line 1105
    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 1106
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_9
    const-string v8, "HtcDeviceInfoManager"

    const-string v9, "encrypt exception"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_5

    .line 1111
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    move-object v2, v3

    .end local v3           #input:Ljava/io/BufferedReader;
    .end local v6           #process:Ljava/lang/Process;
    .restart local v2       #input:Ljava/io/BufferedReader;
    :goto_6
    const/4 v5, 0x0

    .line 1112
    if-eqz v2, :cond_5

    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_5
    :goto_7
    throw v8

    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    .restart local v6       #process:Ljava/lang/Process;
    :catch_2
    move-exception v8

    move-object v2, v3

    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v2       #input:Ljava/io/BufferedReader;
    goto :goto_4

    .end local v6           #process:Ljava/lang/Process;
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_4

    .end local v1           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v9

    goto :goto_7

    .line 1111
    :catchall_1
    move-exception v8

    goto :goto_6

    .line 1108
    :catch_5
    move-exception v1

    goto :goto_3

    .line 1091
    .restart local v6       #process:Ljava/lang/Process;
    :catch_6
    move-exception v8

    goto :goto_1

    .line 1090
    :catch_7
    move-exception v8

    goto/16 :goto_0

    .end local v2           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    :cond_6
    move-object v2, v3

    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v2       #input:Ljava/io/BufferedReader;
    goto :goto_4
.end method
