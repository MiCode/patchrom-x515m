.class Lcom/android/server/LocationManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2291
    iput-object p1, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2294
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 2295
    .local v3, action:Ljava/lang/String;
    const-string v22, "android.intent.action.QUERY_PACKAGE_RESTART"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 2296
    .local v15, queryRestart:Z
    if-nez v15, :cond_0

    const-string v22, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    const-string v22, "android.intent.action.PACKAGE_RESTARTED"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    const-string v22, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 2300
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static/range {v22 .. v22}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23

    .line 2301
    const/16 v19, 0x0

    .line 2302
    .local v19, uidList:[I
    :try_start_0
    const-string v22, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 2303
    const-string v22, "android.intent.extra.changed_uid_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v19

    .line 2307
    :goto_0
    if-eqz v19, :cond_1

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    if-nez v22, :cond_4

    .line 2308
    :cond_1
    monitor-exit v23

    .line 2397
    .end local v19           #uidList:[I
    :cond_2
    :goto_1
    return-void

    .line 2305
    .restart local v19       #uidList:[I
    :cond_3
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const-string v24, "android.intent.extra.UID"

    const/16 v25, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    aput v24, v20, v22

    .end local v19           #uidList:[I
    .local v20, uidList:[I
    move-object/from16 v19, v20

    .end local v20           #uidList:[I
    .restart local v19       #uidList:[I
    goto :goto_0

    .line 2310
    :cond_4
    move-object/from16 v4, v19

    .local v4, arr$:[I
    array-length v12, v4

    .local v12, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v8           #i$:I
    .local v9, i$:I
    :goto_2
    if-ge v9, v12, :cond_10

    aget v18, v4, v9

    .line 2311
    .local v18, uid:I
    if-ltz v18, :cond_f

    .line 2312
    const/16 v17, 0x0

    .line 2313
    .local v17, removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;
    invoke-static/range {v22 .. v22}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v9           #i$:I
    .local v8, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 2314
    .local v7, i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v11, v22, -0x1

    .local v11, j:I
    :goto_3
    if-ltz v11, :cond_5

    .line 2315
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2316
    .local v21, ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/LocationManagerService$Receiver;->isPendingIntent()Z

    move-result v22

    if-eqz v22, :cond_8

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mUid:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 2317
    if-eqz v15, :cond_6

    .line 2318
    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$1;->setResultCode(I)V

    .line 2319
    monitor-exit v23

    goto :goto_1

    .line 2357
    .end local v4           #arr$:[I
    .end local v7           #i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #j:I
    .end local v12           #len$:I
    .end local v17           #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v18           #uid:I
    .end local v21           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v22

    .line 2321
    .restart local v4       #arr$:[I
    .restart local v7       #i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v11       #j:I
    .restart local v12       #len$:I
    .restart local v17       #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v18       #uid:I
    .restart local v21       #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_6
    if-nez v17, :cond_7

    .line 2322
    :try_start_1
    new-instance v17, Ljava/util/ArrayList;

    .end local v17           #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2324
    .restart local v17       #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_7
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 2325
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2314
    :cond_8
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 2330
    .end local v7           #i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v11           #j:I
    .end local v21           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_9
    const/16 v16, 0x0

    .line 2331
    .local v16, removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;
    invoke-static/range {v22 .. v22}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 2332
    .local v6, i:Lcom/android/server/LocationManagerService$ProximityAlert;
    iget v0, v6, Lcom/android/server/LocationManagerService$ProximityAlert;->mUid:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 2333
    if-eqz v15, :cond_b

    .line 2334
    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$1;->setResultCode(I)V

    .line 2335
    monitor-exit v23

    goto/16 :goto_1

    .line 2337
    :cond_b
    if-nez v16, :cond_c

    .line 2338
    new-instance v16, Ljava/util/ArrayList;

    .end local v16           #removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2340
    .restart local v16       #removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    :cond_c
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 2341
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2345
    .end local v6           #i:Lcom/android/server/LocationManagerService$ProximityAlert;
    :cond_d
    if-eqz v17, :cond_e

    .line 2346
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v6, v22, -0x1

    .local v6, i:I
    :goto_5
    if-ltz v6, :cond_e

    .line 2347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    #calls: Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2346
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 2350
    .end local v6           #i:I
    :cond_e
    if-eqz v16, :cond_f

    .line 2351
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v6, v22, -0x1

    .restart local v6       #i:I
    :goto_6
    if-ltz v6, :cond_f

    .line 2352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/LocationManagerService$ProximityAlert;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityAlert;->mIntent:Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    #calls: Lcom/android/server/LocationManagerService;->removeProximityAlertLocked(Landroid/app/PendingIntent;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$2600(Lcom/android/server/LocationManagerService;Landroid/app/PendingIntent;)V

    .line 2351
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 2310
    .end local v6           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v16           #removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    .end local v17           #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_f
    add-int/lit8 v8, v9, 0x1

    .local v8, i$:I
    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto/16 :goto_2

    .line 2357
    .end local v18           #uid:I
    :cond_10
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 2358
    .end local v4           #arr$:[I
    .end local v9           #i$:I
    .end local v12           #len$:I
    .end local v19           #uidList:[I
    :cond_11
    const-string v22, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 2359
    const-string v22, "noConnectivity"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 2361
    .local v13, noConnectivity:Z
    if-nez v13, :cond_13

    .line 2362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    #setter for: Lcom/android/server/LocationManagerService;->mNetworkState:I
    invoke-static/range {v22 .. v23}, Lcom/android/server/LocationManagerService;->access$1602(Lcom/android/server/LocationManagerService;I)I

    .line 2367
    :goto_7
    const-string v22, "LocationManagerService"

    const-string v23, "CONNECTIVITY_ACTION: synchronized+"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static/range {v22 .. v22}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23

    .line 2370
    :try_start_2
    const-string v22, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkInfo;

    .line 2372
    .local v10, info:Landroid/net/NetworkInfo;
    const-string v24, "LocationManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "updateNetworkState "

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/LocationManagerService;->mNetworkState:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;)I

    move-result v22

    const/16 v26, 0x2

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    const-string v22, "available"

    :goto_8
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v25, " info: "

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    const-string v22, "LocationManagerService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "CONNECTIVITY_ACTION: synchronized+ provider size: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/android/server/LocationManagerService;->access$2700(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/android/server/LocationManagerService;->access$2700(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v6, v22, -0x1

    .restart local v6       #i:I
    :goto_9
    if-ltz v6, :cond_15

    .line 2378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/android/server/LocationManagerService;->access$2700(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/location/LocationProviderInterface;

    .line 2379
    .local v14, provider:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v14}, Lcom/android/server/location/LocationProviderInterface;->requiresNetwork()Z

    move-result v22

    if-eqz v22, :cond_12

    .line 2380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/LocationManagerService;->mNetworkState:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v14, v0, v10}, Lcom/android/server/location/LocationProviderInterface;->updateNetworkState(ILandroid/net/NetworkInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2377
    :cond_12
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    .line 2364
    .end local v6           #i:I
    .end local v10           #info:Landroid/net/NetworkInfo;
    .end local v14           #provider:Lcom/android/server/location/LocationProviderInterface;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Lcom/android/server/LocationManagerService;->mNetworkState:I
    invoke-static/range {v22 .. v23}, Lcom/android/server/LocationManagerService;->access$1602(Lcom/android/server/LocationManagerService;I)I

    goto/16 :goto_7

    .line 2372
    .restart local v10       #info:Landroid/net/NetworkInfo;
    :cond_14
    :try_start_3
    const-string v22, "unavailable"

    goto/16 :goto_8

    .line 2383
    .restart local v6       #i:I
    :cond_15
    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2385
    const-string v22, "LocationManagerService"

    const-string v23, "CONNECTIVITY_ACTION: synchronized-"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2383
    .end local v6           #i:I
    .end local v10           #info:Landroid/net/NetworkInfo;
    :catchall_1
    move-exception v22

    :try_start_4
    monitor-exit v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v22

    .line 2387
    .end local v13           #noConnectivity:Z
    :cond_16
    const-string v22, "android.location.GPS_FIX_CHANGE"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 2388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static/range {v22 .. v22}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23

    .line 2389
    :try_start_5
    const-string v14, "gps"

    .line 2390
    .local v14, provider:Ljava/lang/String;
    const-string v22, "enabled"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 2391
    .local v5, enabled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z
    invoke-static {v0, v14}, Lcom/android/server/LocationManagerService;->access$2800(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_17

    .line 2392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    #calls: Lcom/android/server/LocationManagerService;->handleStatusChangedLocked(Ljava/lang/String;Z)V
    invoke-static {v0, v14, v5}, Lcom/android/server/LocationManagerService;->access$3000(Lcom/android/server/LocationManagerService;Ljava/lang/String;Z)V

    .line 2394
    :cond_17
    monitor-exit v23

    goto/16 :goto_1

    .end local v5           #enabled:Z
    .end local v14           #provider:Ljava/lang/String;
    :catchall_2
    move-exception v22

    monitor-exit v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v22
.end method
