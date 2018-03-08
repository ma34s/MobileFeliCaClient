.class public Lcom/felicanetworks/mfc/FSC;
.super Ljava/lang/Object;
.source "FSC.java"


# static fields
.field private static final EXC_INVALID_URL:Ljava/lang/String; = "The specified URL is null."

.field private static final EXC_RUNTIME:Ljava/lang/String; = "java.lang.RuntimeException: A runtime exception was thrown within FSC."

.field private static final KILLED_BY_USER:Ljava/lang/String; = "java.lang.Exception: killed by user in FSC."

.field private static instance:Lcom/felicanetworks/mfc/FSC;


# instance fields
.field private aborted:Z

.field private deviceList:Lcom/felicanetworks/mfc/DeviceList;

.field private felica:Lcom/felicanetworks/mfc/Felica;

.field private felicaClient:Lcom/felicanetworks/felica/FeliCaClient;

.field private felicaClientEventHooker:Lcom/felicanetworks/felica/FeliCaClientEventListener;

.field private fscClientHooker:Lcom/felicanetworks/mfc/FSCEventListener;

.field private fscEventListener:Lcom/felicanetworks/mfc/IFSCEventListener;

.field private killed:Z

.field private online:Z

.field private operationRequestErrMsg:Ljava/lang/String;

.field private operationRequestLock:Ljava/lang/Object;

.field private operationRequestResult:[B

.field private operationRequestSuccessed:Z


# direct methods
.method private constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfc/FSC;->operationRequestLock:Ljava/lang/Object;

    .line 111
    new-instance v0, Lcom/felicanetworks/mfc/FSC$1;

    invoke-direct {v0, p0}, Lcom/felicanetworks/mfc/FSC$1;-><init>(Lcom/felicanetworks/mfc/FSC;)V

    iput-object v0, p0, Lcom/felicanetworks/mfc/FSC;->felicaClientEventHooker:Lcom/felicanetworks/felica/FeliCaClientEventListener;

    .line 221
    new-instance v0, Lcom/felicanetworks/mfc/FSC$2;

    invoke-direct {v0, p0}, Lcom/felicanetworks/mfc/FSC$2;-><init>(Lcom/felicanetworks/mfc/FSC;)V

    iput-object v0, p0, Lcom/felicanetworks/mfc/FSC;->fscClientHooker:Lcom/felicanetworks/mfc/FSCEventListener;

    .line 323
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 325
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/StopAbleTcapClient;

    invoke-direct {v0}, Lcom/felicanetworks/felica/impl/tcap/StopAbleTcapClient;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfc/FSC;->felicaClient:Lcom/felicanetworks/felica/FeliCaClient;

    .line 327
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 328
    return-void
.end method

.method static synthetic access$0(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/Felica;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSC;->felica:Lcom/felicanetworks/mfc/Felica;

    return-object v0
.end method

.method static synthetic access$1(Lcom/felicanetworks/mfc/FSC;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 718
    invoke-direct {p0}, Lcom/felicanetworks/mfc/FSC;->terminate()V

    return-void
.end method

.method static synthetic access$10(Lcom/felicanetworks/mfc/FSC;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSC;->operationRequestErrMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/FSCEventListener;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSC;->fscClientHooker:Lcom/felicanetworks/mfc/FSCEventListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/IFSCEventListener;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSC;->fscEventListener:Lcom/felicanetworks/mfc/IFSCEventListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/felicanetworks/mfc/FSC;Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/felicanetworks/mfc/FSC;->online:Z

    return-void
.end method

.method static synthetic access$5(Lcom/felicanetworks/mfc/FSC;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSC;->operationRequestLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6(Lcom/felicanetworks/mfc/FSC;)Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/FSC;->killed:Z

    return v0
.end method

.method static synthetic access$7(Lcom/felicanetworks/mfc/FSC;Z)V
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/felicanetworks/mfc/FSC;->killed:Z

    return-void
.end method

.method static synthetic access$8(Lcom/felicanetworks/mfc/FSC;)Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/FSC;->operationRequestSuccessed:Z

    return v0
.end method

.method static synthetic access$9(Lcom/felicanetworks/mfc/FSC;)[B
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSC;->operationRequestResult:[B

    return-object v0
.end method

.method private checkNotOnline()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    const/4 v3, 0x2

    .line 761
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 763
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/FSC;->online:Z

    if-eqz v0, :cond_0

    .line 764
    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "800"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 765
    new-instance v0, Lcom/felicanetworks/mfc/FelicaException;

    invoke-direct {v0, v3, v3}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v0

    .line 769
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 770
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/felicanetworks/mfc/FSC;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 340
    const-class v1, Lcom/felicanetworks/mfc/FSC;

    monitor-enter v1

    const/4 v0, 0x6

    :try_start_0
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 342
    sget-object v0, Lcom/felicanetworks/mfc/FSC;->instance:Lcom/felicanetworks/mfc/FSC;

    if-nez v0, :cond_0

    .line 343
    const/4 v0, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 344
    new-instance v0, Lcom/felicanetworks/mfc/FSC;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FSC;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/FSC;->instance:Lcom/felicanetworks/mfc/FSC;

    .line 347
    :cond_0
    const/4 v0, 0x6

    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 349
    sget-object v0, Lcom/felicanetworks/mfc/FSC;->instance:Lcom/felicanetworks/mfc/FSC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setDevices()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;
        }
    .end annotation

    .prologue
    .line 778
    const/4 v12, 0x6

    const-string v13, "%s"

    const-string v14, "000"

    invoke-static {v12, v13, v14}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 782
    iget-object v12, p0, Lcom/felicanetworks/mfc/FSC;->deviceList:Lcom/felicanetworks/mfc/DeviceList;

    invoke-virtual {v12}, Lcom/felicanetworks/mfc/DeviceList;->getDevices()Ljava/util/Hashtable;

    move-result-object v1

    .line 785
    .local v1, "devices":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/felicanetworks/mfc/Device;>;"
    const/4 v2, 0x0

    .line 786
    .local v2, "devidList":[I
    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v12

    new-array v2, v12, [I

    .line 789
    const/4 v9, 0x0

    .line 790
    .local v9, "num":I
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-nez v12, :cond_0

    .line 796
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    add-int/lit8 v12, v9, -0x1

    if-lt v4, v12, :cond_1

    .line 809
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_2
    array-length v12, v2

    if-lt v7, v12, :cond_4

    .line 833
    const/4 v12, 0x6

    const-string v13, "%s"

    const-string v14, "999"

    invoke-static {v12, v13, v14}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 834
    return-void

    .line 791
    .end local v4    # "i":I
    .end local v7    # "n":I
    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v2, v9

    .line 792
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 797
    .restart local v4    # "i":I
    :cond_1
    add-int/lit8 v6, v4, 0x1

    .local v6, "j":I
    :goto_3
    if-lt v6, v9, :cond_2

    .line 796
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 798
    :cond_2
    aget v12, v2, v4

    aget v13, v2, v6

    if-le v12, v13, :cond_3

    .line 800
    aget v5, v2, v4

    .line 801
    .local v5, "id":I
    aget v12, v2, v6

    aput v12, v2, v4

    .line 802
    aput v5, v2, v6

    .line 797
    .end local v5    # "id":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 811
    .end local v6    # "j":I
    .restart local v7    # "n":I
    :cond_4
    new-instance v12, Ljava/lang/Integer;

    aget v13, v2, v7

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/Device;

    .line 812
    .local v0, "device":Lcom/felicanetworks/mfc/Device;
    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Device;->getType()Ljava/lang/String;

    move-result-object v11

    .line 813
    .local v11, "type":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Device;->getName()Ljava/lang/String;

    move-result-object v8

    .line 816
    .local v8, "name":Ljava/lang/String;
    aget v12, v2, v7

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 818
    iget-object v12, p0, Lcom/felicanetworks/mfc/FSC;->felicaClient:Lcom/felicanetworks/felica/FeliCaClient;

    iget-object v13, p0, Lcom/felicanetworks/mfc/FSC;->felica:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v13}, Lcom/felicanetworks/mfc/Felica;->getFeliCaChip()Lcom/felicanetworks/felica/FeliCaChip;

    move-result-object v13

    aget v14, v2, v7

    invoke-interface {v12, v13, v14}, Lcom/felicanetworks/felica/FeliCaClient;->addDevice(Lcom/felicanetworks/felica/InternalDevice;I)V

    .line 809
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 821
    :cond_5
    aget v12, v2, v7

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6

    .line 823
    new-instance v10, Lcom/felicanetworks/felica/impl/tcap/TCAPDevice;

    iget-object v12, p0, Lcom/felicanetworks/mfc/FSC;->fscClientHooker:Lcom/felicanetworks/mfc/FSCEventListener;

    const/4 v13, 0x1

    invoke-direct {v10, v11, v8, v12, v13}, Lcom/felicanetworks/felica/impl/tcap/TCAPDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/felicanetworks/mfc/FSCEventListener;Z)V

    .line 824
    .local v10, "tcapDevice":Lcom/felicanetworks/felica/impl/tcap/TCAPDevice;
    iget-object v12, p0, Lcom/felicanetworks/mfc/FSC;->felicaClient:Lcom/felicanetworks/felica/FeliCaClient;

    aget v13, v2, v7

    invoke-interface {v12, v10, v13}, Lcom/felicanetworks/felica/FeliCaClient;->addDevice(Lcom/felicanetworks/felica/InternalDevice;I)V

    goto :goto_4

    .line 828
    .end local v10    # "tcapDevice":Lcom/felicanetworks/felica/impl/tcap/TCAPDevice;
    :cond_6
    new-instance v10, Lcom/felicanetworks/felica/impl/tcap/TCAPDevice;

    iget-object v12, p0, Lcom/felicanetworks/mfc/FSC;->fscClientHooker:Lcom/felicanetworks/mfc/FSCEventListener;

    const/4 v13, 0x0

    invoke-direct {v10, v11, v8, v12, v13}, Lcom/felicanetworks/felica/impl/tcap/TCAPDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/felicanetworks/mfc/FSCEventListener;Z)V

    .line 829
    .restart local v10    # "tcapDevice":Lcom/felicanetworks/felica/impl/tcap/TCAPDevice;
    iget-object v12, p0, Lcom/felicanetworks/mfc/FSC;->felicaClient:Lcom/felicanetworks/felica/FeliCaClient;

    aget v13, v2, v7

    invoke-interface {v12, v10, v13}, Lcom/felicanetworks/felica/FeliCaClient;->addDevice(Lcom/felicanetworks/felica/InternalDevice;I)V

    goto :goto_4
.end method

.method private declared-synchronized terminate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 720
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 723
    :try_start_1
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/FSC;->aborted:Z

    if-nez v0, :cond_0

    .line 724
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 725
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC;->felica:Lcom/felicanetworks/mfc/Felica;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 726
    :try_start_2
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSC;->felica:Lcom/felicanetworks/mfc/Felica;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/felicanetworks/mfc/Felica;->setFSC(Lcom/felicanetworks/mfc/FSC;)V

    .line 727
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSC;->felica:Lcom/felicanetworks/mfc/Felica;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/felicanetworks/mfc/Felica;->doReset(Z)V

    .line 725
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 731
    :cond_0
    const/4 v0, 0x7

    :try_start_3
    const-string v1, "%s"

    const-string v2, "002"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 732
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfc/FSC;->aborted:Z

    .line 733
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfc/FSC;->online:Z

    .line 736
    const/4 v0, 0x6

    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 737
    monitor-exit p0

    return-void

    .line 725
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 730
    :catchall_1
    move-exception v0

    .line 731
    const/4 v1, 0x7

    :try_start_6
    const-string v2, "%s"

    const-string v3, "002"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 732
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/felicanetworks/mfc/FSC;->aborted:Z

    .line 733
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/felicanetworks/mfc/FSC;->online:Z

    .line 734
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 720
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized doStop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 563
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 566
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/FSC;->online:Z

    if-nez v0, :cond_0

    .line 567
    const/4 v0, 0x4

    const-string v1, "%s"

    const-string v2, "998"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    :goto_0
    monitor-exit p0

    return-void

    .line 572
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSC;->felicaClient:Lcom/felicanetworks/felica/FeliCaClient;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/felicanetworks/felica/FeliCaClient;->stop(Z)V

    .line 574
    const/4 v0, 0x4

    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized kill()V
    .locals 3

    .prologue
    .line 684
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 686
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/FSC;->online:Z

    if-nez v0, :cond_0

    .line 687
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    :goto_0
    monitor-exit p0

    return-void

    .line 691
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC;->operationRequestLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/felicanetworks/mfc/FSC;->operationRequestSuccessed:Z

    .line 693
    const-string v0, "java.lang.Exception: killed by user in FSC."

    iput-object v0, p0, Lcom/felicanetworks/mfc/FSC;->operationRequestErrMsg:Ljava/lang/String;

    .line 694
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/mfc/FSC;->killed:Z

    .line 695
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSC;->operationRequestLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 691
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 698
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/felicanetworks/mfc/FSC;->aborted:Z

    .line 699
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/mfc/FSC;->online:Z

    .line 701
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSC;->felicaClient:Lcom/felicanetworks/felica/FeliCaClient;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/felicanetworks/felica/FeliCaClient;->stop(Z)V

    .line 703
    const/4 v0, 0x4

    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 684
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 691
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized notifyError(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 624
    monitor-enter p0

    const/4 v1, 0x6

    :try_start_0
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    :try_start_1
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC;->felica:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Felica;->checkPidUid()V
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    :try_start_2
    iget-object v2, p0, Lcom/felicanetworks/mfc/FSC;->operationRequestLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 642
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lcom/felicanetworks/mfc/FSC;->operationRequestSuccessed:Z

    .line 643
    iput-object p1, p0, Lcom/felicanetworks/mfc/FSC;->operationRequestErrMsg:Ljava/lang/String;

    .line 644
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/felicanetworks/mfc/FSC;->killed:Z

    .line 645
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC;->operationRequestLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 641
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 648
    const/4 v1, 0x6

    :try_start_4
    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 649
    monitor-exit p0

    return-void

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v1, 0x1

    :try_start_5
    const-string v2, "%s"

    const-string v3, "800"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 638
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 624
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 641
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized notifyResult([B)V
    .locals 4
    .param p1, "result"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 587
    monitor-enter p0

    const/4 v1, 0x6

    :try_start_0
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    :try_start_1
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC;->felica:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Felica;->checkPidUid()V
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    :try_start_2
    iget-object v2, p0, Lcom/felicanetworks/mfc/FSC;->operationRequestLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 605
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/felicanetworks/mfc/FSC;->operationRequestSuccessed:Z

    .line 606
    iput-object p1, p0, Lcom/felicanetworks/mfc/FSC;->operationRequestResult:[B

    .line 607
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/felicanetworks/mfc/FSC;->killed:Z

    .line 608
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC;->operationRequestLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 604
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 611
    const/4 v1, 0x6

    :try_start_4
    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 612
    monitor-exit p0

    return-void

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v1, 0x1

    :try_start_5
    const-string v2, "%s"

    const-string v3, "800"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 601
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 587
    .end local v0    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 604
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized start(Ljava/lang/String;Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/IFSCEventListener;Lcom/felicanetworks/mfc/DeviceList;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "felica"    # Lcom/felicanetworks/mfc/Felica;
    .param p3, "fscEventListener"    # Lcom/felicanetworks/mfc/IFSCEventListener;
    .param p4, "deviceList"    # Lcom/felicanetworks/mfc/DeviceList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 414
    monitor-enter p0

    const/4 v3, 0x4

    :try_start_0
    const-string v4, "%s"

    const-string v5, "000"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 417
    if-nez p1, :cond_0

    .line 418
    const/4 v3, 0x1

    const-string v4, "%s"

    const-string v5, "800"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 419
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The specified URL is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 423
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/felicanetworks/mfc/FSC;->checkNotOnline()V

    .line 426
    if-nez p2, :cond_1

    .line 427
    const/4 v3, 0x1

    const-string v4, "%s"

    const-string v5, "801"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 428
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x2

    .line 429
    const/16 v5, 0x18

    .line 428
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3

    .line 431
    :cond_1
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 434
    if-nez p4, :cond_2

    .line 435
    const/4 v3, 0x1

    const-string v4, "%s"

    const-string v5, "802"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 436
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x2

    .line 437
    const/16 v5, 0x19

    .line 436
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    :cond_2
    :try_start_2
    invoke-virtual {p4}, Lcom/felicanetworks/mfc/DeviceList;->checkFormat()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 450
    if-nez p3, :cond_3

    .line 451
    const/4 v3, 0x1

    :try_start_3
    const-string v4, "%s"

    const-string v5, "804"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 452
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x2

    .line 453
    const/16 v5, 0x1a

    .line 452
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "%s"

    const-string v5, "803"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 445
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    .line 446
    const/16 v5, 0x1b

    .line 445
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3

    .line 456
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    monitor-enter p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 458
    :try_start_4
    iput-object p2, p0, Lcom/felicanetworks/mfc/FSC;->felica:Lcom/felicanetworks/mfc/Felica;

    .line 459
    iput-object p3, p0, Lcom/felicanetworks/mfc/FSC;->fscEventListener:Lcom/felicanetworks/mfc/IFSCEventListener;

    .line 460
    iput-object p4, p0, Lcom/felicanetworks/mfc/FSC;->deviceList:Lcom/felicanetworks/mfc/DeviceList;

    .line 463
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/Felica;->checkPidUid()V

    .line 466
    iput-object p3, p0, Lcom/felicanetworks/mfc/FSC;->fscEventListener:Lcom/felicanetworks/mfc/IFSCEventListener;

    .line 469
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 472
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/Felica;->checkClosedinStarting()V

    .line 475
    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Lcom/felicanetworks/mfc/Felica;->checkAccessRight(I)V

    .line 478
    iget-object v3, p0, Lcom/felicanetworks/mfc/FSC;->felicaClient:Lcom/felicanetworks/felica/FeliCaClient;

    invoke-interface {v3}, Lcom/felicanetworks/felica/FeliCaClient;->removeAllDevices()V

    .line 481
    invoke-direct {p0}, Lcom/felicanetworks/mfc/FSC;->setDevices()V

    .line 484
    invoke-virtual {p2, p0}, Lcom/felicanetworks/mfc/Felica;->setFSC(Lcom/felicanetworks/mfc/FSC;)V

    .line 487
    iget-object v3, p0, Lcom/felicanetworks/mfc/FSC;->felicaClient:Lcom/felicanetworks/felica/FeliCaClient;

    invoke-interface {v3, p1}, Lcom/felicanetworks/felica/FeliCaClient;->setURL(Ljava/lang/String;)V

    .line 490
    iget-object v3, p0, Lcom/felicanetworks/mfc/FSC;->felicaClient:Lcom/felicanetworks/felica/FeliCaClient;

    invoke-virtual {p2}, Lcom/felicanetworks/mfc/Felica;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/felicanetworks/felica/FeliCaClient;->setUserAgent(Ljava/lang/String;)V

    .line 493
    iget-object v3, p0, Lcom/felicanetworks/mfc/FSC;->felicaClient:Lcom/felicanetworks/felica/FeliCaClient;

    iget-object v4, p0, Lcom/felicanetworks/mfc/FSC;->felicaClientEventHooker:Lcom/felicanetworks/felica/FeliCaClientEventListener;

    invoke-interface {v3, v4}, Lcom/felicanetworks/felica/FeliCaClient;->setEventListener(Lcom/felicanetworks/felica/FeliCaClientEventListener;)V

    .line 496
    iget-object v3, p0, Lcom/felicanetworks/mfc/FSC;->felicaClient:Lcom/felicanetworks/felica/FeliCaClient;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/felicanetworks/felica/FeliCaClient;->start(Z[B)V

    .line 499
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/felicanetworks/mfc/FSC;->online:Z

    .line 500
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/felicanetworks/mfc/FSC;->aborted:Z

    .line 502
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/felicanetworks/mfc/FSC;->killed:Z
    :try_end_4
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 516
    const/4 v3, 0x7

    :try_start_5
    const-string v4, "%s"

    const-string v5, "001"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 517
    iget-boolean v3, p0, Lcom/felicanetworks/mfc/FSC;->online:Z

    if-nez v3, :cond_4

    .line 518
    const/4 v3, 0x7

    const-string v4, "%s"

    const-string v5, "002"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 519
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lcom/felicanetworks/mfc/Felica;->setFSC(Lcom/felicanetworks/mfc/FSC;)V

    .line 456
    :cond_4
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 523
    const/4 v3, 0x4

    :try_start_6
    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 524
    monitor-exit p0

    return-void

    .line 504
    :catch_1
    move-exception v1

    .line 505
    .local v1, "fe":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v3, 0x1

    :try_start_7
    const-string v4, "%s"

    const-string v5, "805"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 506
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 515
    .end local v1    # "fe":Lcom/felicanetworks/mfc/FelicaException;
    :catchall_1
    move-exception v3

    .line 516
    const/4 v4, 0x7

    :try_start_8
    const-string v5, "%s"

    const-string v6, "001"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 517
    iget-boolean v4, p0, Lcom/felicanetworks/mfc/FSC;->online:Z

    if-nez v4, :cond_5

    .line 518
    const/4 v4, 0x7

    const-string v5, "%s"

    const-string v6, "002"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 519
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lcom/felicanetworks/mfc/Felica;->setFSC(Lcom/felicanetworks/mfc/FSC;)V

    .line 521
    :cond_5
    throw v3

    .line 456
    :catchall_2
    move-exception v3

    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 507
    :catch_2
    move-exception v2

    .line 508
    .local v2, "ne":Ljava/lang/NumberFormatException;
    const/4 v3, 0x1

    :try_start_a
    const-string v4, "%s"

    const-string v5, "806"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 509
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    .line 510
    const/16 v5, 0x1b

    .line 509
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3

    .line 511
    .end local v2    # "ne":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v0

    .line 512
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    const-string v4, "%s"

    const-string v5, "807"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 513
    new-instance v3, Lcom/felicanetworks/mfc/FelicaException;

    const/4 v4, 0x1

    .line 514
    const/16 v5, 0x1b

    .line 513
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/mfc/FelicaException;-><init>(II)V

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
.end method

.method public declared-synchronized stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/mfc/FelicaException;
        }
    .end annotation

    .prologue
    .line 536
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 539
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/FSC;->online:Z

    if-nez v0, :cond_0

    .line 540
    const/4 v0, 0x4

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    :goto_0
    monitor-exit p0

    return-void

    .line 545
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSC;->felica:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Felica;->checkPidUid()V

    .line 548
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSC;->felicaClient:Lcom/felicanetworks/felica/FeliCaClient;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/felicanetworks/felica/FeliCaClient;->stop(Z)V

    .line 550
    const/4 v0, 0x4

    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
