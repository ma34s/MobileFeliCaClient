.class Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;
.super Ljava/lang/Object;
.source "PermitOptr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfw/i/fbl/PermitOptr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourceConnector"
.end annotation


# instance fields
.field private mUrlList:[Ljava/lang/String;

.field private resourceListener:Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;

.field private situationCode:I

.field final synthetic this$0:Lcom/felicanetworks/mfw/i/fbl/PermitOptr;


# direct methods
.method private constructor <init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;)V
    .locals 1

    .prologue
    .line 2396
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->this$0:Lcom/felicanetworks/mfw/i/fbl/PermitOptr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2402
    new-instance v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector$1;

    invoke-direct {v0, p0}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector$1;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;)V

    iput-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->resourceListener:Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;

    .line 2416
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->mUrlList:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;)V
    .locals 0

    .prologue
    .line 2396
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;)V

    return-void
.end method

.method static synthetic access$0(Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;I)V
    .locals 0

    .prologue
    .line 2399
    iput p1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->situationCode:I

    return-void
.end method

.method private checkFileSize(Ljava/io/File;J)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "expectedSize"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2671
    const-wide/16 v2, 0x0

    .line 2673
    .local v2, "fileLength":J
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 2680
    cmp-long v5, v2, p2

    if-nez v5, :cond_0

    .line 2683
    :goto_0
    return v1

    .line 2674
    :catch_0
    move-exception v0

    .line 2675
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v5, "800 throw SecurityException"

    invoke-static {v1, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    move v1, v4

    .line 2676
    goto :goto_0

    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    move v1, v4

    .line 2683
    goto :goto_0
.end method

.method private deleteFile(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfw/i/cmn/SysException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 2698
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2699
    const/4 v1, 0x1

    const-string v2, "800 failed to delete file"

    invoke-static {v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 2700
    new-instance v1, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v2, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;

    const-string v3, "deleteFile"

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2702
    :catch_0
    move-exception v0

    .line 2703
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "801 throw SecurityException"

    invoke-static {v5, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 2704
    new-instance v1, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v2, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;

    const-string v3, "deleteFile"

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 2706
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    return-void
.end method

.method private isUrlExist(ILjava/lang/String;)Z
    .locals 2
    .param p1, "checkNum"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 2719
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 2724
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 2720
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->mUrlList:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->mUrlList:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2721
    const/4 v1, 0x1

    goto :goto_1

    .line 2719
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readResource(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/fbl/ResData;
    .locals 6
    .param p1, "interfaceNumber"    # Ljava/lang/String;

    .prologue
    .line 2597
    invoke-static {}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->getInstance()Lcom/felicanetworks/mfw/i/fbl/BizResOptr;

    move-result-object v2

    .line 2598
    .local v2, "resourceOperator":Lcom/felicanetworks/mfw/i/fbl/BizResOptr;
    const/4 v0, 0x0

    .line 2599
    .local v0, "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    monitor-enter v2

    .line 2600
    :try_start_0
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->resourceListener:Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;

    invoke-virtual {v2, v3}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->setListener(Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;)V

    .line 2601
    const-wide/16 v4, 0x0

    invoke-virtual {v2, p1, v4, v5}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->setReadInfo(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2604
    :try_start_1
    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->startReadWrite()V

    .line 2605
    iget v3, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->situationCode:I

    if-nez v3, :cond_0

    .line 2607
    invoke-virtual {v2, p1}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->getReadData(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/fbl/ResData;
    :try_end_1
    .catch Lcom/felicanetworks/mfw/i/cmn/SysException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2599
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 2621
    return-object v0

    .line 2609
    :catch_0
    move-exception v1

    .line 2611
    .local v1, "e":Lcom/felicanetworks/mfw/i/cmn/SysException;
    invoke-virtual {v1}, Lcom/felicanetworks/mfw/i/cmn/SysException;->getCauseClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/felicanetworks/mfw/i/cmn/ResUtil;

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/felicanetworks/mfw/i/cmn/SysException;->getCauseMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "readArea"

    if-ne v3, v4, :cond_1

    .line 2612
    invoke-virtual {v1}, Lcom/felicanetworks/mfw/i/cmn/SysException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file creation failed."

    if-ne v3, v4, :cond_1

    .line 2615
    const/4 v0, 0x0

    .line 2616
    goto :goto_0

    .line 2617
    :cond_1
    throw v1

    .line 2599
    .end local v1    # "e":Lcom/felicanetworks/mfw/i/cmn/SysException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private writeResource(Ljava/lang/String;Lcom/felicanetworks/mfw/i/fbl/ResData;)V
    .locals 4
    .param p1, "interfaceNumber"    # Ljava/lang/String;
    .param p2, "resource"    # Lcom/felicanetworks/mfw/i/fbl/ResData;

    .prologue
    .line 2639
    invoke-static {}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->getInstance()Lcom/felicanetworks/mfw/i/fbl/BizResOptr;

    move-result-object v1

    .line 2640
    .local v1, "resourceOperator":Lcom/felicanetworks/mfw/i/fbl/BizResOptr;
    monitor-enter v1

    .line 2641
    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->resourceListener:Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;

    invoke-virtual {v1, v2}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->setListener(Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;)V

    .line 2642
    invoke-virtual {v1, p1, p2}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->setWriteInfo(Ljava/lang/String;Lcom/felicanetworks/mfw/i/fbl/ResData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2644
    :try_start_1
    invoke-virtual {v1}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->startReadWrite()V
    :try_end_1
    .catch Lcom/felicanetworks/mfw/i/cmn/SysException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2640
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 2656
    return-void

    .line 2645
    :catch_0
    move-exception v0

    .line 2646
    .local v0, "e":Lcom/felicanetworks/mfw/i/cmn/SysException;
    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/cmn/SysException;->getCauseClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/felicanetworks/mfw/i/cmn/ResUtil;

    if-ne v2, v3, :cond_1

    .line 2647
    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/cmn/SysException;->getCauseMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "writeToArea"

    if-ne v2, v3, :cond_1

    .line 2648
    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/cmn/SysException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file creation failed."

    if-eq v2, v3, :cond_0

    .line 2652
    :cond_1
    throw v0

    .line 2640
    .end local v0    # "e":Lcom/felicanetworks/mfw/i/cmn/SysException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public readRevocationResource(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;
    .locals 24
    .param p1, "rvctionPointUrl"    # Ljava/lang/String;

    .prologue
    .line 2436
    invoke-static {}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->getInstance()Lcom/felicanetworks/mfw/i/fbl/BizResOptr;

    move-result-object v14

    .line 2445
    .local v14, "resourceOperator":Lcom/felicanetworks/mfw/i/fbl/BizResOptr;
    const/4 v4, 0x0

    .line 2448
    .local v4, "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    const/16 v11, 0xa

    .line 2451
    .local v11, "readCacheNum":I
    :try_start_0
    # getter for: Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sfile:Ljava/io/File;
    invoke-static {}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->access$0()Ljava/io/File;

    move-result-object v17

    const-wide/16 v20, 0x69e6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->checkFileSize(Ljava/io/File;J)Z

    move-result v17

    if-nez v17, :cond_1

    .line 2452
    const/16 v17, 0x2

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "700 checkFileSize error. filesize = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sfile:Ljava/io/File;
    invoke-static {}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->access$0()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 2454
    # getter for: Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sfile:Ljava/io/File;
    invoke-static {}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->access$0()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2455
    # getter for: Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sfile:Ljava/io/File;
    invoke-static {}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->access$0()Ljava/io/File;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->deleteFile(Ljava/io/File;)V

    .line 2458
    :cond_0
    const/4 v11, 0x1

    .line 2461
    :cond_1
    const/4 v8, 0x0

    .line 2462
    .local v8, "index":I
    const/4 v9, -0x1

    .line 2463
    .local v9, "indexEmpty":I
    const/4 v10, -0x1

    .line 2464
    .local v10, "indexUsed":I
    const-wide v18, 0xe8d4a50fffL

    .line 2466
    .local v18, "usedDateOld":J
    monitor-enter v14
    :try_end_0
    .catch Lcom/felicanetworks/mfw/i/cmn/SysException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2468
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-lt v7, v11, :cond_2

    move-object v5, v4

    .line 2466
    .end local v4    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    .local v5, "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    :goto_1
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2524
    if-nez v5, :cond_a

    .line 2525
    :try_start_2
    new-instance v4, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;

    invoke-direct {v4}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;-><init>()V
    :try_end_2
    .catch Lcom/felicanetworks/mfw/i/cmn/SysException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2526
    .end local v5    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    .restart local v4    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    if-ltz v9, :cond_7

    .line 2528
    move v8, v9

    .line 2534
    :goto_2
    :try_start_3
    move-object v0, v4

    check-cast v0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;

    move-object/from16 v17, v0

    mul-int/lit16 v0, v8, 0xa97

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->setPosInFile(J)V
    :try_end_3
    .catch Lcom/felicanetworks/mfw/i/cmn/SysException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2551
    .end local v7    # "i":I
    .end local v8    # "index":I
    .end local v9    # "indexEmpty":I
    .end local v10    # "indexUsed":I
    .end local v18    # "usedDateOld":J
    :goto_3
    check-cast v4, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;

    .end local v4    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    return-object v4

    .line 2469
    .restart local v4    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    .restart local v7    # "i":I
    .restart local v8    # "index":I
    .restart local v9    # "indexEmpty":I
    .restart local v10    # "indexUsed":I
    .restart local v18    # "usedDateOld":J
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->resourceListener:Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->setListener(Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;)V

    .line 2470
    const-string v17, "R101"

    .line 2471
    mul-int/lit16 v0, v7, 0xa97

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 2470
    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v14, v0, v1, v2}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->setReadInfo(Ljava/lang/String;J)V

    .line 2472
    invoke-virtual {v14}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->startReadWrite()V

    .line 2474
    invoke-virtual {v14}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->getRvctionUrl()Ljava/lang/String;

    move-result-object v15

    .line 2476
    .local v15, "urlData":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->isUrlExist(ILjava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 2477
    const/16 v17, 0x2

    const-string v20, "701 isUrlExist"

    move/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 2480
    # getter for: Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->sfile:Ljava/io/File;
    invoke-static {}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr;->access$0()Ljava/io/File;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->deleteFile(Ljava/io/File;)V

    .line 2481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->resourceListener:Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->setListener(Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;)V

    .line 2482
    const-string v17, "R101"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v14, v0, v1, v2}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->setReadInfo(Ljava/lang/String;J)V

    .line 2483
    invoke-virtual {v14}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->startReadWrite()V

    .line 2484
    const/4 v4, 0x0

    .line 2485
    const/4 v9, 0x0

    move-object v5, v4

    .line 2486
    .end local v4    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    .restart local v5    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    goto/16 :goto_1

    .line 2488
    .end local v5    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    .restart local v4    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->mUrlList:[Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v15, v17, v7

    .line 2490
    move-object/from16 v0, p0

    iget v0, v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->situationCode:I

    move/from16 v17, v0

    if-nez v17, :cond_5

    if-eqz v15, :cond_5

    .line 2491
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 2493
    const-string v17, "R101"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->getReadData(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/fbl/ResData;

    move-result-object v4

    .line 2494
    move v8, v7

    .line 2468
    :cond_4
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 2497
    :cond_5
    if-nez v4, :cond_4

    .line 2501
    if-gez v9, :cond_6

    if-nez v15, :cond_6

    .line 2502
    move v9, v7

    .line 2503
    goto :goto_4

    .line 2505
    :cond_6
    invoke-virtual {v14}, Lcom/felicanetworks/mfw/i/fbl/BizResOptr;->getRvctionUsedDate()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v16

    .line 2507
    .local v16, "usedDate":Ljava/lang/String;
    :try_start_5
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v12

    .line 2510
    .local v12, "lusedDate":J
    cmp-long v17, v12, v18

    if-gez v17, :cond_4

    .line 2511
    move v10, v7

    .line 2512
    move-wide/from16 v18, v12

    goto :goto_4

    .line 2514
    .end local v12    # "lusedDate":J
    :catch_0
    move-exception v6

    .line 2516
    .local v6, "e":Ljava/lang/Exception;
    move v10, v7

    goto :goto_4

    .line 2466
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v15    # "urlData":Ljava/lang/String;
    .end local v16    # "usedDate":Ljava/lang/String;
    :catchall_0
    move-exception v17

    :goto_5
    :try_start_6
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v17
    :try_end_7
    .catch Lcom/felicanetworks/mfw/i/cmn/SysException; {:try_start_7 .. :try_end_7} :catch_1

    .line 2536
    .end local v7    # "i":I
    .end local v8    # "index":I
    .end local v9    # "indexEmpty":I
    .end local v10    # "indexUsed":I
    .end local v18    # "usedDateOld":J
    :catch_1
    move-exception v6

    .line 2537
    .local v6, "e":Lcom/felicanetworks/mfw/i/cmn/SysException;
    :goto_6
    const/16 v17, 0x2

    const-string v20, "702 SysException"

    move/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 2538
    invoke-virtual {v6}, Lcom/felicanetworks/mfw/i/cmn/SysException;->getCauseClass()Ljava/lang/Class;

    move-result-object v17

    const-class v20, Lcom/felicanetworks/mfw/i/cmn/ResUtil;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    invoke-virtual {v6}, Lcom/felicanetworks/mfw/i/cmn/SysException;->getCauseMethod()Ljava/lang/String;

    move-result-object v17

    const-string v20, "readArea"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 2539
    invoke-virtual {v6}, Lcom/felicanetworks/mfw/i/cmn/SysException;->getMessage()Ljava/lang/String;

    move-result-object v17

    const-string v20, "file creation failed."

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 2542
    new-instance v4, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;

    .end local v4    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    invoke-direct {v4}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;-><init>()V

    .line 2543
    .restart local v4    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    goto/16 :goto_3

    .line 2531
    .end local v6    # "e":Lcom/felicanetworks/mfw/i/cmn/SysException;
    .restart local v7    # "i":I
    .restart local v8    # "index":I
    .restart local v9    # "indexEmpty":I
    .restart local v10    # "indexUsed":I
    .restart local v18    # "usedDateOld":J
    :cond_7
    move v8, v10

    goto/16 :goto_2

    .line 2543
    .end local v7    # "i":I
    .end local v8    # "index":I
    .end local v9    # "indexEmpty":I
    .end local v10    # "indexUsed":I
    .end local v18    # "usedDateOld":J
    .restart local v6    # "e":Lcom/felicanetworks/mfw/i/cmn/SysException;
    :cond_8
    invoke-virtual {v6}, Lcom/felicanetworks/mfw/i/cmn/SysException;->getCauseClass()Ljava/lang/Class;

    move-result-object v17

    const-class v20, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 2544
    invoke-virtual {v6}, Lcom/felicanetworks/mfw/i/cmn/SysException;->getCauseMethod()Ljava/lang/String;

    move-result-object v17

    const-string v20, "deleteFile"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 2546
    new-instance v4, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;

    .end local v4    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    invoke-direct {v4}, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;-><init>()V

    .line 2547
    .restart local v4    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    goto/16 :goto_3

    .line 2548
    :cond_9
    throw v6

    .line 2536
    .end local v4    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    .end local v6    # "e":Lcom/felicanetworks/mfw/i/cmn/SysException;
    .restart local v5    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    .restart local v7    # "i":I
    .restart local v8    # "index":I
    .restart local v9    # "indexEmpty":I
    .restart local v10    # "indexUsed":I
    .restart local v18    # "usedDateOld":J
    :catch_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    .restart local v4    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    goto :goto_6

    .line 2466
    .end local v4    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    .restart local v5    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    :catchall_1
    move-exception v17

    move-object v4, v5

    .end local v5    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    .restart local v4    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    goto :goto_5

    .end local v4    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    .restart local v5    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    :cond_a
    move-object v4, v5

    .end local v5    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    .restart local v4    # "data":Lcom/felicanetworks/mfw/i/fbl/ResData;
    goto/16 :goto_2
.end method

.method public updateOfflineRevocationResource(Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;)V
    .locals 1
    .param p1, "updateResource"    # Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;

    .prologue
    .line 2575
    const-string v0, "R102"

    invoke-direct {p0, v0, p1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->writeResource(Ljava/lang/String;Lcom/felicanetworks/mfw/i/fbl/ResData;)V

    .line 2576
    return-void
.end method

.method public updateRevocationResource(Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;)V
    .locals 1
    .param p1, "updateResource"    # Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;

    .prologue
    .line 2564
    const-string v0, "R101"

    invoke-direct {p0, v0, p1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->writeResource(Ljava/lang/String;Lcom/felicanetworks/mfw/i/fbl/ResData;)V

    .line 2565
    return-void
.end method
