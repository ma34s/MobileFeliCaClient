.class Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;
.super Ljava/lang/Object;
.source "StopAbleTcapClient.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/felicanetworks/felica/FeliCaClient;


# static fields
.field private static final EXC_ACCESS_DENIED:Ljava/lang/String; = "Access denied."

.field private static final EXC_TCAP_STOPED:Ljava/lang/String; = "TCAP stoped."


# instance fields
.field private TLAMStopped:Z

.field protected agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

.field protected canceled:Z

.field private deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

.field private listener:Lcom/felicanetworks/felica/FeliCaClientEventListener;

.field protected listenerLockObject:Ljava/lang/Object;

.field private postdata:[B

.field private session:Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

.field private thread:Ljava/lang/Thread;

.field private url:Ljava/lang/String;

.field private useParam:Z

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->listenerLockObject:Ljava/lang/Object;

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->canceled:Z

    .line 221
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 223
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    invoke-direct {v0}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    .line 225
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    invoke-direct {v0}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    .line 227
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 228
    return-void
.end method

.method private cutOffInstance(Z)V
    .locals 4
    .param p1, "forced"    # Z

    .prologue
    const/4 v3, 0x4

    .line 850
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 853
    if-eqz p1, :cond_2

    .line 854
    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 857
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->session:Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    if-eqz v1, :cond_0

    .line 858
    const-string v1, "%s"

    const-string v2, "002"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 860
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->clear()V

    .line 863
    :cond_0
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->listenerLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 864
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->listener:Lcom/felicanetworks/felica/FeliCaClientEventListener;

    .line 867
    .local v0, "tmpListener":Lcom/felicanetworks/felica/FeliCaClientEventListener;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->listener:Lcom/felicanetworks/felica/FeliCaClientEventListener;

    .line 863
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    if-eqz v0, :cond_1

    .line 873
    const/16 v1, 0x64

    .line 874
    :try_start_1
    const-string v2, "TCAP stoped."

    .line 873
    invoke-interface {v0, v1, v2}, Lcom/felicanetworks/felica/FeliCaClientEventListener;->errorOccurred(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 879
    :cond_1
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->canceled:Z

    .line 881
    .end local v0    # "tmpListener":Lcom/felicanetworks/felica/FeliCaClientEventListener;
    :cond_2
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 882
    return-void

    .line 863
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 875
    .restart local v0    # "tmpListener":Lcom/felicanetworks/felica/FeliCaClientEventListener;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getTLAMMetadata()Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;,
            Lcom/felicanetworks/felica/impl/tcap/TLAMFormatErrorException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 800
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 802
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/TLAMRequest;

    invoke-direct {v0}, Lcom/felicanetworks/felica/impl/tcap/TLAMRequest;-><init>()V

    .line 804
    .local v0, "request":Lcom/felicanetworks/felica/impl/tcap/TLAMRequest;
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;

    invoke-direct {v1}, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;-><init>()V

    .line 807
    .local v1, "response":Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->postdata:[B

    invoke-virtual {v0, v2}, Lcom/felicanetworks/felica/impl/tcap/TLAMRequest;->setPostData([B)V

    .line 810
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->doTLAMTransaction(Ljava/lang/String;Lcom/felicanetworks/felica/impl/tcap/TLAMRequest;Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;)V

    .line 813
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->parse()V

    .line 815
    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 816
    return-object v1
.end method

.method private initFeliCaDevices()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 826
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 828
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 840
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 841
    return-void

    .line 830
    :cond_0
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    invoke-virtual {v2, v0}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->get(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v2

    instance-of v2, v2, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    if-eqz v2, :cond_1

    .line 832
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    invoke-virtual {v2, v0}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->get(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v1

    check-cast v1, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    .line 834
    .local v1, "wrapper":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    const-wide/16 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->setRetryCount(J)V

    .line 836
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->setTimeout(J)V

    .line 828
    .end local v1    # "wrapper":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addDevice(Lcom/felicanetworks/felica/InternalDevice;I)V
    .locals 5
    .param p1, "device"    # Lcom/felicanetworks/felica/InternalDevice;
    .param p2, "deviceID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 316
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 318
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 322
    new-instance v1, Lcom/felicanetworks/felica/FeliCaClientException;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/FeliCaClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_0
    if-nez p1, :cond_1

    .line 326
    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 328
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    invoke-virtual {v1, p1, p2}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->add(Lcom/felicanetworks/felica/InternalDevice;I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v0

    .line 333
    .local v0, "wrapper":Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    if-nez v0, :cond_2

    .line 334
    const-string v1, "%s"

    const-string v2, "703"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 336
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 339
    :cond_2
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 340
    return-void
.end method

.method public getDevice(Ljava/lang/String;Ljava/lang/String;)Lcom/felicanetworks/felica/InternalDevice;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    .line 350
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 352
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    invoke-virtual {v1, p1, p2}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v0

    .line 354
    .local v0, "wrapper":Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    if-nez v0, :cond_0

    .line 355
    const-string v1, "%s"

    const-string v2, "998"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 356
    const/4 v1, 0x0

    .line 360
    :goto_0
    return-object v1

    .line 359
    :cond_0
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 360
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->getDevice()Lcom/felicanetworks/felica/InternalDevice;

    move-result-object v1

    goto :goto_0
.end method

.method public getEventListener()Lcom/felicanetworks/felica/FeliCaClientEventListener;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 301
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 302
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->listener:Lcom/felicanetworks/felica/FeliCaClientEventListener;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 264
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 265
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 912
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 913
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 915
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isStarted()Z
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 556
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 557
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 559
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllDevices()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 400
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 402
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 406
    new-instance v0, Lcom/felicanetworks/felica/FeliCaClientException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/FeliCaClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->clear()V

    .line 410
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 411
    return-void
.end method

.method public removeDevice(Ljava/lang/String;Ljava/lang/String;)Lcom/felicanetworks/felica/InternalDevice;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 372
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 374
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    const/4 v1, 0x1

    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 378
    new-instance v1, Lcom/felicanetworks/felica/FeliCaClientException;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/FeliCaClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    invoke-virtual {v1, p1, p2}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->remove(Ljava/lang/String;Ljava/lang/String;)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v0

    .line 383
    .local v0, "wrapper":Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    if-nez v0, :cond_1

    .line 384
    const-string v1, "%s"

    const-string v2, "998"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 386
    const/4 v1, 0x0

    .line 390
    :goto_0
    return-object v1

    .line 389
    :cond_1
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 390
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->getDevice()Lcom/felicanetworks/felica/InternalDevice;

    move-result-object v1

    goto :goto_0
.end method

.method public run()V
    .locals 21

    .prologue
    .line 569
    const/16 v18, 0x4

    const-string v19, "%s"

    const-string v20, "000"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 571
    const/4 v11, 0x0

    .line 572
    .local v11, "status":I
    const/4 v5, 0x0

    .line 573
    .local v5, "errType":I
    const/4 v4, 0x0

    .line 574
    .local v4, "errMsg":Ljava/lang/String;
    const/4 v6, 0x0

    .line 579
    .local v6, "errorOccured":Z
    const/4 v12, 0x0

    .line 582
    .local v12, "tcapURL":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->init()V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->userAgent:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->setUserAgent(Ljava/lang/String;)V

    .line 586
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->initFeliCaDevices()V

    .line 594
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->session:Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    .line 595
    const/16 v16, 0x0

    .line 598
    .local v16, "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->TLAMStopped:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 599
    const/16 v18, 0x1

    const-string v19, "%s"

    const-string v20, "700"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 601
    new-instance v18, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    .line 602
    const/16 v19, 0x1

    .line 603
    const-string v20, "Interrupted."

    .line 601
    invoke-direct/range {v18 .. v20}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v18
    :try_end_0
    .catch Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/felicanetworks/felica/impl/tcap/TCAPException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/felicanetworks/felica/impl/tcap/TLAMFormatErrorException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/felicanetworks/felica/impl/tcap/HTTPException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 665
    .end local v16    # "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    :catch_0
    move-exception v10

    .line 666
    .local v10, "pe":Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;
    const/16 v18, 0x1

    const-string v19, "%s PacketFormatErrorException"

    const-string v20, "701"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 668
    const/4 v6, 0x1

    .line 670
    const/4 v5, 0x3

    .line 672
    invoke-virtual {v10}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 750
    .end local v10    # "pe":Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;
    :goto_0
    const/16 v18, 0x0

    :try_start_1
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->thread:Ljava/lang/Thread;

    .line 752
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->session:Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->listenerLockObject:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 755
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->listener:Lcom/felicanetworks/felica/FeliCaClientEventListener;

    .line 754
    .local v15, "tmpListener":Lcom/felicanetworks/felica/FeliCaClientEventListener;
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 758
    if-nez v6, :cond_9

    .line 759
    const/16 v18, 0x4

    :try_start_3
    const-string v19, "%s"

    const-string v20, "012"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 762
    if-eqz v15, :cond_0

    .line 763
    const/16 v18, 0x4

    const-string v19, "%s"

    const-string v20, "013"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 765
    invoke-interface {v15, v11}, Lcom/felicanetworks/felica/FeliCaClientEventListener;->finished(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 785
    .end local v15    # "tmpListener":Lcom/felicanetworks/felica/FeliCaClientEventListener;
    :cond_0
    :goto_1
    const/16 v18, 0x4

    const-string v19, "%s"

    const-string v20, "999"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 786
    return-void

    .line 607
    .restart local v16    # "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->useParam:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 608
    const/16 v18, 0x4

    const-string v19, "%s"

    const-string v20, "001"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 610
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->getTLAMMetadata()Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;

    move-result-object v9

    .line 612
    .local v9, "metadata":Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;
    const-string v18, "SERV"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 614
    if-nez v12, :cond_3

    .line 615
    const/16 v18, 0x4

    const-string v19, "%s"

    const-string v20, "002"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 617
    const-string v18, "COMM"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 619
    if-eqz v12, :cond_2

    .line 620
    const/16 v18, 0x4

    const-string v19, "%s"

    const-string v20, "003"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 623
    new-instance v16, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPSession21;

    .end local v16    # "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPSession21;-><init>(Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;)V

    .line 642
    .end local v9    # "metadata":Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;
    .restart local v16    # "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    :cond_2
    :goto_2
    if-nez v16, :cond_5

    .line 643
    const/16 v18, 0x4

    const-string v19, "%s"

    const-string v20, "006"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 645
    new-instance v18, Lcom/felicanetworks/felica/impl/tcap/TLAMFormatErrorException;

    invoke-direct/range {v18 .. v18}, Lcom/felicanetworks/felica/impl/tcap/TLAMFormatErrorException;-><init>()V

    throw v18
    :try_end_4
    .catch Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/felicanetworks/felica/impl/tcap/TCAPException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/felicanetworks/felica/impl/tcap/TLAMFormatErrorException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/felicanetworks/felica/impl/tcap/HTTPException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 674
    .end local v16    # "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    :catch_1
    move-exception v8

    .line 675
    .local v8, "ie":Ljava/lang/IllegalStateException;
    const/16 v18, 0x1

    const-string v19, "%s IllegalStateException"

    const-string v20, "702"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 677
    const/4 v6, 0x1

    .line 679
    const/4 v5, 0x3

    .line 681
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 627
    .end local v8    # "ie":Ljava/lang/IllegalStateException;
    .restart local v9    # "metadata":Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;
    .restart local v16    # "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    :cond_3
    const/16 v18, 0x4

    :try_start_5
    const-string v19, "%s"

    const-string v20, "004"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 630
    new-instance v16, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;

    .end local v16    # "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;-><init>(Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;)V

    .line 633
    .restart local v16    # "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    goto :goto_2

    .line 634
    .end local v9    # "metadata":Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;
    :cond_4
    const/16 v18, 0x4

    const-string v19, "%s"

    const-string v20, "005"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->url:Ljava/lang/String;

    .line 639
    new-instance v16, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;

    .end local v16    # "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;-><init>(Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;)V

    .restart local v16    # "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    goto :goto_2

    .line 648
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->setURL(Ljava/lang/String;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->setDeviceList(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V

    .line 653
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->session:Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    .line 657
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->TLAMStopped:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 658
    const/16 v18, 0x4

    const-string v19, "%s"

    const-string v20, "007"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->session:Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->stop()V

    .line 663
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->session:Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->start()I
    :try_end_5
    .catch Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/felicanetworks/felica/impl/tcap/TCAPException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/felicanetworks/felica/impl/tcap/TLAMFormatErrorException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/felicanetworks/felica/impl/tcap/HTTPException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result v11

    goto/16 :goto_0

    .line 683
    .end local v16    # "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    :catch_2
    move-exception v17

    .line 684
    .local v17, "ue":Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;
    const/16 v18, 0x1

    const-string v19, "%s UnexpectedErrorException"

    const-string v20, "703"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 686
    const/4 v6, 0x1

    .line 688
    invoke-virtual/range {v17 .. v17}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;->getType()B

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 689
    const/16 v18, 0x4

    const-string v19, "%s"

    const-string v20, "008"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 691
    const/4 v5, 0x1

    .line 699
    :goto_3
    invoke-virtual/range {v17 .. v17}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 694
    :cond_7
    const/16 v18, 0x4

    const-string v19, "%s"

    const-string v20, "009"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 696
    const/4 v5, 0x0

    goto :goto_3

    .line 701
    .end local v17    # "ue":Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;
    :catch_3
    move-exception v13

    .line 702
    .local v13, "te":Lcom/felicanetworks/felica/impl/tcap/TCAPException;
    const/16 v18, 0x1

    const-string v19, "%s TCAPException"

    const-string v20, "704"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 704
    const/4 v6, 0x1

    .line 706
    const/4 v5, 0x3

    .line 708
    invoke-virtual {v13}, Lcom/felicanetworks/felica/impl/tcap/TCAPException;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 710
    .end local v13    # "te":Lcom/felicanetworks/felica/impl/tcap/TCAPException;
    :catch_4
    move-exception v14

    .line 711
    .local v14, "tfe":Lcom/felicanetworks/felica/impl/tcap/TLAMFormatErrorException;
    const/16 v18, 0x1

    const-string v19, "%s TLAMFormatErrorException"

    const-string v20, "705"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 713
    const/4 v6, 0x1

    .line 715
    const/4 v5, 0x3

    .line 717
    invoke-virtual {v14}, Lcom/felicanetworks/felica/impl/tcap/TLAMFormatErrorException;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 719
    .end local v14    # "tfe":Lcom/felicanetworks/felica/impl/tcap/TLAMFormatErrorException;
    :catch_5
    move-exception v7

    .line 720
    .local v7, "he":Lcom/felicanetworks/felica/impl/tcap/HTTPException;
    const/16 v18, 0x1

    const-string v19, "%s HTTPException"

    const-string v20, "706"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 722
    const/4 v6, 0x1

    .line 724
    invoke-virtual {v7}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;->isCanceled()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 725
    const/16 v18, 0x4

    const-string v19, "%s"

    const-string v20, "010"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 727
    const/4 v5, 0x1

    .line 734
    :goto_4
    invoke-virtual {v7}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 729
    :cond_8
    const/16 v18, 0x4

    const-string v19, "%s"

    const-string v20, "011"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 731
    const/4 v5, 0x2

    goto :goto_4

    .line 736
    .end local v7    # "he":Lcom/felicanetworks/felica/impl/tcap/HTTPException;
    :catch_6
    move-exception v3

    .line 737
    .local v3, "e":Ljava/lang/Exception;
    const/16 v18, 0x1

    const-string v19, "%s Exception"

    const-string v20, "707"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 739
    const/4 v6, 0x1

    .line 741
    const/4 v5, 0x0

    .line 743
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 754
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    :try_start_6
    monitor-exit v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v18
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 779
    :catch_7
    move-exception v2

    .line 781
    .local v2, "any":Ljava/lang/Exception;
    const/16 v18, 0x1

    const-string v19, "%s"

    const-string v20, "708"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 769
    .end local v2    # "any":Ljava/lang/Exception;
    .restart local v15    # "tmpListener":Lcom/felicanetworks/felica/FeliCaClientEventListener;
    :cond_9
    const/16 v18, 0x4

    :try_start_8
    const-string v19, "%s"

    const-string v20, "014"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 772
    if-eqz v15, :cond_0

    .line 773
    const/16 v18, 0x4

    const-string v19, "%s"

    const-string v20, "015"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 775
    invoke-interface {v15, v5, v4}, Lcom/felicanetworks/felica/FeliCaClientEventListener;->errorOccurred(ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_1
.end method

.method public setEventListener(Lcom/felicanetworks/felica/FeliCaClientEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/felicanetworks/felica/FeliCaClientEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 278
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 280
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 284
    new-instance v0, Lcom/felicanetworks/felica/FeliCaClientException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/FeliCaClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->listenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_0
    iput-object p1, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->listener:Lcom/felicanetworks/felica/FeliCaClientEventListener;

    .line 287
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 292
    return-void

    .line 287
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 237
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 239
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "%s"

    const-string v1, "700"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 243
    new-instance v0, Lcom/felicanetworks/felica/FeliCaClientException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/FeliCaClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    if-nez p1, :cond_1

    .line 247
    const-string v0, "%s"

    const-string v1, "701"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 249
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 252
    :cond_1
    iput-object p1, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->url:Ljava/lang/String;

    .line 254
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 255
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 3
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 893
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 895
    if-nez p1, :cond_0

    .line 896
    const-string v0, "%s"

    const-string v1, "001"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 897
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 899
    :cond_0
    iput-object p1, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->userAgent:Ljava/lang/String;

    .line 901
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 902
    return-void
.end method

.method public declared-synchronized start(Z[B)V
    .locals 3
    .param p1, "useParam"    # Z
    .param p2, "postdata"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;
        }
    .end annotation

    .prologue
    .line 420
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 422
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 423
    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 426
    new-instance v0, Lcom/felicanetworks/felica/FeliCaClientException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/FeliCaClientException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 429
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->url:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 430
    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 433
    new-instance v0, Lcom/felicanetworks/felica/FeliCaClientException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/FeliCaClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->listener:Lcom/felicanetworks/felica/FeliCaClientEventListener;

    if-nez v0, :cond_2

    .line 437
    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "702"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 440
    new-instance v0, Lcom/felicanetworks/felica/FeliCaClientException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/FeliCaClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_2
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    if-nez v0, :cond_3

    .line 444
    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "703"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 447
    new-instance v0, Lcom/felicanetworks/felica/FeliCaClientException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/FeliCaClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_3
    iput-boolean p1, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->useParam:Z

    .line 454
    iput-object p2, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->postdata:[B

    .line 457
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->thread:Ljava/lang/Thread;

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->TLAMStopped:Z

    .line 463
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 465
    const/4 v0, 0x4

    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    monitor-exit p0

    return-void
.end method

.method public stop(Z)V
    .locals 3
    .param p1, "forced"    # Z

    .prologue
    const/4 v2, 0x4

    .line 475
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 477
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 478
    const-string v0, "%s"

    const-string v1, "001"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->TLAMStopped:Z

    .line 482
    if-eqz p1, :cond_0

    .line 483
    const-string v0, "%s"

    const-string v1, "002"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 485
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->abort()V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->session:Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    if-eqz v0, :cond_1

    .line 488
    const-string v0, "%s"

    const-string v1, "003"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 490
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->session:Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->stop()V

    .line 494
    :cond_1
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 495
    return-void
.end method

.method public stopCutOff(Z)Z
    .locals 7
    .param p1, "forced"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x4

    .line 504
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 507
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->thread:Ljava/lang/Thread;

    if-eqz v2, :cond_3

    .line 508
    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 510
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->cutOffInstance(Z)V

    .line 512
    iput-boolean v6, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->TLAMStopped:Z

    .line 514
    if-eqz p1, :cond_0

    .line 515
    const-string v2, "%s"

    const-string v3, "002"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 517
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->abort()V

    .line 519
    :cond_0
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->session:Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    if-eqz v2, :cond_1

    .line 520
    const-string v2, "%s"

    const-string v3, "003"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 523
    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->session:Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 530
    const-string v2, "%s"

    const-string v3, "004"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 531
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->thread:Ljava/lang/Thread;

    .line 533
    const/4 v1, 0x1

    .line 545
    .local v1, "ret":Z
    :goto_1
    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 546
    return v1

    .line 524
    .end local v1    # "ret":Z
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "%s %s"

    const-string v3, "700"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 535
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v2, "%s"

    const-string v3, "005"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 537
    const/4 v1, 0x0

    .line 539
    .restart local v1    # "ret":Z
    goto :goto_1

    .line 540
    .end local v1    # "ret":Z
    :cond_3
    const-string v2, "%s"

    const-string v3, "006"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 542
    const/4 v1, 0x0

    .restart local v1    # "ret":Z
    goto :goto_1
.end method
