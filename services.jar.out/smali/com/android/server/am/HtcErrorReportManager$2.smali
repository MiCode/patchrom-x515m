.class Lcom/android/server/am/HtcErrorReportManager$2;
.super Ljava/lang/Thread;
.source "HtcErrorReportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/HtcErrorReportManager;->addErrorToDropBoxForHTC(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/HtcErrorReportManager;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$eventType:Ljava/lang/String;

.field final synthetic val$logFile:Ljava/io/File;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/os/DropBoxManager;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    iput-object p3, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$report:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$logFile:Ljava/io/File;

    iput-object p7, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p9, p0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dbox:Landroid/os/DropBoxManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 228
    new-instance v4, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/misc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dbox_tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v4, temp_file:Ljava/io/File;
    const/4 v12, 0x0

    .line 230
    .local v12, fileWriter:Ljava/io/OutputStreamWriter;
    const/4 v14, 0x0

    .line 232
    .local v14, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 233
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .local v15, fos:Ljava/io/FileOutputStream;
    const/16 v18, 0x0

    .line 234
    .local v18, os:Ljava/io/OutputStream;
    const/4 v2, 0x1

    :try_start_1
    sget-object v3, Lcom/android/server/am/HtcErrorReportManager;->SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter;

    invoke-static {v15, v2, v3}, Lcom/htc/utils/ulog/io/LogStream;->concatenateOutputStream(Ljava/io/OutputStream;ZLcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/OutputStream;

    move-result-object v18

    .line 235
    new-instance v13, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 237
    .end local v12           #fileWriter:Ljava/io/OutputStreamWriter;
    .local v13, fileWriter:Ljava/io/OutputStreamWriter;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 238
    const-string v2, "\n----- KERNEL -----\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/io/File;

    const-string v5, "/proc/version"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v13, v5}, Lcom/android/server/am/HtcErrorReportManager;->access$000(Lcom/android/server/am/HtcErrorReportManager;Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 241
    const-string v2, "\n----- CMDLINE -----\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/io/File;

    const-string v5, "/proc/cmdline"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v13, v5}, Lcom/android/server/am/HtcErrorReportManager;->access$000(Lcom/android/server/am/HtcErrorReportManager;Ljava/io/File;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$report:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 245
    const-string v2, "\n----- REPORT -----\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$report:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->flush()V

    .line 249
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$logFile:Ljava/io/File;

    if-eqz v2, :cond_2

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "native_crash"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 251
    const-string v2, "\n----- LOG FILE -----\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 253
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$logFile:Ljava/io/File;

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logTextFile(Ljava/io/File;Ljava/io/OutputStreamWriter;)V
    invoke-static {v2, v3, v13}, Lcom/android/server/am/HtcErrorReportManager;->access$100(Lcom/android/server/am/HtcErrorReportManager;Ljava/io/File;Ljava/io/OutputStreamWriter;)V

    .line 255
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 256
    const-string v2, "\n----- STACK TRACE -----\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->flush()V

    .line 261
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logcat_for_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 262
    .local v19, setting:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    iget-object v2, v2, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 264
    .local v16, lines:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "crash"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "anr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "watchdog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 265
    :cond_4
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "userdebug"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v16, 0x1000

    .line 266
    :cond_5
    :goto_0
    if-lez v16, :cond_6

    .line 267
    const-string v2, "\n----- SYSTEM LOG -----\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/lang/ProcessBuilder;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v21, "/system/bin/logcat"

    aput-object v21, v5, v20

    const/16 v20, 0x1

    const-string v21, "-v"

    aput-object v21, v5, v20

    const/16 v20, 0x2

    const-string v21, "time"

    aput-object v21, v5, v20

    const/16 v20, 0x3

    const-string v21, "-t"

    aput-object v21, v5, v20

    const/16 v20, 0x4

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v5, v20

    invoke-direct {v3, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v3

    const/4 v5, 0x0

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v13, v5}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 270
    const-string v2, "\n----- EVENT LOG -----\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/lang/ProcessBuilder;

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v21, "/system/bin/logcat"

    aput-object v21, v5, v20

    const/16 v20, 0x1

    const-string v21, "-v"

    aput-object v21, v5, v20

    const/16 v20, 0x2

    const-string v21, "time"

    aput-object v21, v5, v20

    const/16 v20, 0x3

    const-string v21, "-b"

    aput-object v21, v5, v20

    const/16 v20, 0x4

    const-string v21, "events"

    aput-object v21, v5, v20

    const/16 v20, 0x5

    const-string v21, "-t"

    aput-object v21, v5, v20

    const/16 v20, 0x6

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v5, v20

    invoke-direct {v3, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v3

    const/4 v5, 0x0

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v13, v5}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 273
    const-string v2, "\n----- RADIO LOG -----\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/lang/ProcessBuilder;

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v21, "/system/bin/logcat"

    aput-object v21, v5, v20

    const/16 v20, 0x1

    const-string v21, "-v"

    aput-object v21, v5, v20

    const/16 v20, 0x2

    const-string v21, "time"

    aput-object v21, v5, v20

    const/16 v20, 0x3

    const-string v21, "-b"

    aput-object v21, v5, v20

    const/16 v20, 0x4

    const-string v21, "radio"

    aput-object v21, v5, v20

    const/16 v20, 0x5

    const-string v21, "-t"

    aput-object v21, v5, v20

    const/16 v20, 0x6

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v5, v20

    invoke-direct {v3, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v3

    const/4 v5, 0x0

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v13, v5}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 276
    const-string v2, "\n----- KERNEL MSG -----\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/lang/ProcessBuilder;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v21, "/system/bin/dmesg"

    aput-object v21, v5, v20

    invoke-direct {v3, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v13, v5}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 278
    const-string v2, "\n----- PROCRANK (procrank) -----\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    new-instance v3, Ljava/lang/ProcessBuilder;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v21, "/system/xbin/procrank"

    aput-object v21, v5, v20

    invoke-direct {v3, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x0

    #calls: Lcom/android/server/am/HtcErrorReportManager;->logProcessResult(Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V
    invoke-static {v2, v3, v13, v5}, Lcom/android/server/am/HtcErrorReportManager;->access$200(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/ProcessBuilder;Ljava/io/OutputStreamWriter;Ljava/lang/Integer;)V

    .line 282
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    iget-object v2, v2, Lcom/android/server/am/HtcErrorReportManager;->mContext:Landroid/content/Context;

    const-string v3, "com.htc.feedback"

    const-string v5, "com.htc.feedback.DeviceStatus"

    #calls: Lcom/android/server/am/HtcErrorReportManager;->getClassFromHtcFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    invoke-static {v2, v3, v5}, Lcom/android/server/am/HtcErrorReportManager;->access$300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 283
    .local v10, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v10, :cond_7

    .line 284
    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/Class;

    .line 285
    .local v9, arguTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/Object;

    .line 286
    .local v8, arguList:[Ljava/lang/Object;
    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v9, v2

    .line 287
    const/4 v2, 0x0

    const-string v3, "/data"

    aput-object v3, v8, v2

    .line 288
    const/4 v2, 0x1

    const-class v3, Ljava/io/OutputStreamWriter;

    aput-object v3, v9, v2

    .line 289
    const/4 v2, 0x1

    aput-object v13, v8, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 291
    :try_start_3
    const-string v2, "dump"

    invoke-virtual {v10, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 292
    .local v17, method:Ljava/lang/reflect/Method;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 300
    .end local v8           #arguList:[Ljava/lang/Object;
    .end local v9           #arguTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v17           #method:Ljava/lang/reflect/Method;
    :cond_7
    :goto_1
    if-eqz v13, :cond_16

    .line 301
    :try_start_4
    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 302
    const/4 v12, 0x0

    .line 305
    .end local v13           #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v12       #fileWriter:Ljava/io/OutputStreamWriter;
    :goto_2
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 306
    .local v6, entryStartTime:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dbox:Landroid/os/DropBoxManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    const/16 v5, 0x8

    invoke-virtual/range {v2 .. v7}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;IJ)V

    .line 307
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    const-string v3, "SYSTEM_CRASH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "watchdog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Landroid/os/Process;->isDumpStateExist()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v2

    if-eqz v2, :cond_c

    .line 329
    if-eqz v12, :cond_8

    .line 330
    :try_start_6
    invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->close()V

    .line 331
    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 332
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_9
    :goto_3
    move-object v14, v15

    .line 336
    .end local v6           #entryStartTime:J
    .end local v10           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v15           #fos:Ljava/io/FileOutputStream;
    .end local v16           #lines:I
    .end local v18           #os:Ljava/io/OutputStream;
    .end local v19           #setting:Ljava/lang/String;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    :cond_a
    :goto_4
    return-void

    .line 265
    .end local v12           #fileWriter:Ljava/io/OutputStreamWriter;
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    .restart local v16       #lines:I
    .restart local v18       #os:Ljava/io/OutputStream;
    .restart local v19       #setting:Ljava/lang/String;
    :cond_b
    const/16 v16, 0x400

    goto/16 :goto_0

    .line 314
    .end local v13           #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v6       #entryStartTime:J
    .restart local v10       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v12       #fileWriter:Ljava/io/OutputStreamWriter;
    :cond_c
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$eventType:Ljava/lang/String;

    const-string v3, "watchdog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v2

    if-nez v2, :cond_e

    .line 315
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v2, :cond_13

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->hprofFileName:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    const-string v3, "/data/system/last_crash_msg"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v20, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v20, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->hprofFileName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v20, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/server/am/HtcErrorReportManager;->createLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v5}, Lcom/android/server/am/HtcErrorReportManager;->access$400(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 329
    :cond_e
    :goto_5
    if-eqz v12, :cond_f

    .line 330
    :try_start_8
    invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->close()V

    .line 331
    :cond_f
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 332
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :cond_10
    move-object v14, v15

    .line 334
    .end local v15           #fos:Ljava/io/FileOutputStream;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 319
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    :cond_11
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    const-string v3, "/data/system/last_crash_msg"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v20, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v20, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/server/am/HtcErrorReportManager;->createLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v5}, Lcom/android/server/am/HtcErrorReportManager;->access$400(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_5

    .line 325
    .end local v6           #entryStartTime:J
    .end local v10           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v16           #lines:I
    .end local v19           #setting:Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v14, v15

    .line 326
    .end local v15           #fos:Ljava/io/FileOutputStream;
    .end local v18           #os:Ljava/io/OutputStream;
    .local v11, e:Ljava/lang/Exception;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    :goto_6
    :try_start_a
    const-string v2, "ActivityManager"

    const-string v3, "Error in dumping error information"

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 329
    if-eqz v12, :cond_12

    .line 330
    :try_start_b
    invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->close()V

    .line 331
    :cond_12
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 332
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_4

    .line 333
    :catch_1
    move-exception v2

    goto/16 :goto_4

    .line 322
    .end local v11           #e:Ljava/lang/Exception;
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #entryStartTime:J
    .restart local v10       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    .restart local v16       #lines:I
    .restart local v18       #os:Ljava/io/OutputStream;
    .restart local v19       #setting:Ljava/lang/String;
    :cond_13
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/HtcErrorReportManager$2;->this$0:Lcom/android/server/am/HtcErrorReportManager;

    const-string v3, "/data/system/last_crash_msg"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/HtcErrorReportManager$2;->val$dropboxTag:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v20, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v20, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/server/am/HtcErrorReportManager;->createLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v5}, Lcom/android/server/am/HtcErrorReportManager;->access$400(Lcom/android/server/am/HtcErrorReportManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_5

    .line 328
    .end local v6           #entryStartTime:J
    .end local v10           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v16           #lines:I
    .end local v19           #setting:Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object v14, v15

    .line 329
    .end local v15           #fos:Ljava/io/FileOutputStream;
    .end local v18           #os:Ljava/io/OutputStream;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    :goto_7
    if-eqz v12, :cond_14

    .line 330
    :try_start_d
    invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->close()V

    .line 331
    :cond_14
    if-eqz v4, :cond_15

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 332
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 334
    :cond_15
    :goto_8
    throw v2

    .line 333
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #entryStartTime:J
    .restart local v10       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    .restart local v16       #lines:I
    .restart local v18       #os:Ljava/io/OutputStream;
    .restart local v19       #setting:Ljava/lang/String;
    :catch_2
    move-exception v2

    move-object v14, v15

    .line 335
    .end local v15           #fos:Ljava/io/FileOutputStream;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 333
    .end local v6           #entryStartTime:J
    .end local v10           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v16           #lines:I
    .end local v18           #os:Ljava/io/OutputStream;
    .end local v19           #setting:Ljava/lang/String;
    :catch_3
    move-exception v3

    goto :goto_8

    .line 328
    :catchall_1
    move-exception v2

    goto :goto_7

    .end local v12           #fileWriter:Ljava/io/OutputStreamWriter;
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #os:Ljava/io/OutputStream;
    :catchall_2
    move-exception v2

    move-object v14, v15

    .end local v15           #fos:Ljava/io/FileOutputStream;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13           #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v12       #fileWriter:Ljava/io/OutputStreamWriter;
    goto :goto_7

    .line 325
    .end local v18           #os:Ljava/io/OutputStream;
    :catch_4
    move-exception v11

    goto :goto_6

    .end local v12           #fileWriter:Ljava/io/OutputStreamWriter;
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #os:Ljava/io/OutputStream;
    :catch_5
    move-exception v11

    move-object v14, v15

    .end local v15           #fos:Ljava/io/FileOutputStream;
    .restart local v14       #fos:Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13           #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v12       #fileWriter:Ljava/io/OutputStreamWriter;
    goto :goto_6

    .line 333
    .end local v14           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #entryStartTime:J
    .restart local v10       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    .restart local v16       #lines:I
    .restart local v19       #setting:Ljava/lang/String;
    :catch_6
    move-exception v2

    goto/16 :goto_3

    .line 294
    .end local v6           #entryStartTime:J
    .end local v12           #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v8       #arguList:[Ljava/lang/Object;
    .restart local v9       #arguTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .restart local v13       #fileWriter:Ljava/io/OutputStreamWriter;
    :catch_7
    move-exception v2

    goto/16 :goto_1

    .end local v8           #arguList:[Ljava/lang/Object;
    .end local v9           #arguTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_16
    move-object v12, v13

    .end local v13           #fileWriter:Ljava/io/OutputStreamWriter;
    .restart local v12       #fileWriter:Ljava/io/OutputStreamWriter;
    goto/16 :goto_2
.end method
