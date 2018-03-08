.class public Lcom/felicanetworks/felica/impl/tcap/Client;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/felicanetworks/felica/FeliCaClient;


# static fields
.field private static final ACCESS_ALLOWED:Ljava/lang/String; = "1"

.field private static final EXC_ACCESS_DENIED:Ljava/lang/String; = "Access denied."


# instance fields
.field private TLAMStopped:Z

.field protected agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

.field private deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

.field private listener:Lcom/felicanetworks/felica/FeliCaClientEventListener;

.field private postdata:[B

.field private session:Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

.field private thread:Ljava/lang/Thread;

.field private url:Ljava/lang/String;

.field private useParam:Z

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    invoke-direct {v0}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    .line 100
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    invoke-direct {v0}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    .line 101
    return-void
.end method

.method private getTLAMMetadata()Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;,
            Lcom/felicanetworks/felica/impl/tcap/TLAMFormatErrorException;
        }
    .end annotation

    .prologue
    .line 527
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/TLAMRequest;

    invoke-direct {v0}, Lcom/felicanetworks/felica/impl/tcap/TLAMRequest;-><init>()V

    .line 529
    .local v0, "request":Lcom/felicanetworks/felica/impl/tcap/TLAMRequest;
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;

    invoke-direct {v1}, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;-><init>()V

    .line 532
    .local v1, "response":Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->postdata:[B

    invoke-virtual {v0, v2}, Lcom/felicanetworks/felica/impl/tcap/TLAMRequest;->setPostData([B)V

    .line 535
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->doTLAMTransaction(Ljava/lang/String;Lcom/felicanetworks/felica/impl/tcap/TLAMRequest;Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;)V

    .line 538
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->parse()V

    .line 540
    return-object v1
.end method

.method private initFeliCaDevices()V
    .locals 4

    .prologue
    .line 550
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 561
    return-void

    .line 552
    :cond_0
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    invoke-virtual {v2, v0}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->get(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v2

    instance-of v2, v2, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    if-eqz v2, :cond_1

    .line 554
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    invoke-virtual {v2, v0}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->get(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v1

    check-cast v1, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    .line 556
    .local v1, "wrapper":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    const-wide/16 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->setRetryCount(J)V

    .line 558
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->setTimeout(J)V

    .line 550
    .end local v1    # "wrapper":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addDevice(Lcom/felicanetworks/felica/InternalDevice;I)V
    .locals 3
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
    .line 172
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/tcap/Client;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    new-instance v1, Lcom/felicanetworks/felica/FeliCaClientException;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/FeliCaClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_0
    if-nez p1, :cond_1

    .line 180
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    invoke-virtual {v1, p1, p2}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->add(Lcom/felicanetworks/felica/InternalDevice;I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v0

    .line 185
    .local v0, "wrapper":Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    if-nez v0, :cond_2

    .line 187
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 189
    :cond_2
    return-void
.end method

.method public getDevice(Ljava/lang/String;Ljava/lang/String;)Lcom/felicanetworks/felica/InternalDevice;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    invoke-virtual {v1, p1, p2}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v0

    .line 201
    .local v0, "wrapper":Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    if-nez v0, :cond_0

    .line 203
    const/4 v1, 0x0

    .line 206
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->getDevice()Lcom/felicanetworks/felica/InternalDevice;

    move-result-object v1

    goto :goto_0
.end method

.method public getEventListener()Lcom/felicanetworks/felica/FeliCaClientEventListener;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->listener:Lcom/felicanetworks/felica/FeliCaClientEventListener;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllDevices()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/tcap/Client;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Lcom/felicanetworks/felica/FeliCaClientException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/FeliCaClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->clear()V

    .line 248
    return-void
.end method

.method public removeDevice(Ljava/lang/String;Ljava/lang/String;)Lcom/felicanetworks/felica/InternalDevice;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/tcap/Client;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    new-instance v1, Lcom/felicanetworks/felica/FeliCaClientException;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/FeliCaClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    invoke-virtual {v1, p1, p2}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->remove(Ljava/lang/String;Ljava/lang/String;)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v0

    .line 226
    .local v0, "wrapper":Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    if-nez v0, :cond_1

    .line 228
    const/4 v1, 0x0

    .line 231
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->getDevice()Lcom/felicanetworks/felica/InternalDevice;

    move-result-object v1

    goto :goto_0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 337
    const/4 v9, 0x0

    .line 338
    .local v9, "status":I
    const/4 v3, 0x0

    .line 339
    .local v3, "errType":I
    const/4 v2, 0x0

    .line 340
    .local v2, "errMsg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 344
    .local v4, "errorOccured":Z
    const/4 v10, 0x0

    .line 347
    .local v10, "tcapURL":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/felicanetworks/felica/impl/tcap/Client;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    invoke-virtual {v15}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->init()V

    .line 348
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/felicanetworks/felica/impl/tcap/Client;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/felicanetworks/felica/impl/tcap/Client;->userAgent:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->setUserAgent(Ljava/lang/String;)V

    .line 351
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/felica/impl/tcap/Client;->initFeliCaDevices()V

    .line 359
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/felicanetworks/felica/impl/tcap/Client;->session:Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    .line 360
    const/4 v13, 0x0

    .line 363
    .local v13, "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/felicanetworks/felica/impl/tcap/Client;->TLAMStopped:Z

    if-eqz v15, :cond_0

    .line 365
    new-instance v15, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    .line 366
    const/16 v16, 0x1

    .line 367
    const-string v17, "Interrupted."

    .line 365
    invoke-direct/range {v15 .. v17}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v15
    :try_end_0
    .catch Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/felicanetworks/felica/impl/tcap/TCAPException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/felicanetworks/felica/impl/tcap/TLAMFormatErrorException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/felicanetworks/felica/impl/tcap/HTTPException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 422
    .end local v13    # "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    :catch_0
    move-exception v8

    .line 424
    .local v8, "pe":Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;
    const/4 v4, 0x1

    .line 426
    const/4 v3, 0x3

    .line 428
    invoke-virtual {v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 494
    .end local v8    # "pe":Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;
    :goto_0
    const/4 v15, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/felicanetworks/felica/impl/tcap/Client;->thread:Ljava/lang/Thread;

    .line 496
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/felicanetworks/felica/impl/tcap/Client;->session:Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    .line 498
    if-nez v4, :cond_8

    .line 501
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/felicanetworks/felica/impl/tcap/Client;->listener:Lcom/felicanetworks/felica/FeliCaClientEventListener;

    invoke-interface {v15, v9}, Lcom/felicanetworks/felica/FeliCaClientEventListener;->finished(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 513
    :goto_1
    return-void

    .line 371
    .restart local v13    # "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    :cond_0
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/felicanetworks/felica/impl/tcap/Client;->useParam:Z

    if-eqz v15, :cond_3

    .line 373
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/felica/impl/tcap/Client;->getTLAMMetadata()Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;

    move-result-object v7

    .line 375
    .local v7, "metadata":Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;
    const-string v15, "SERV"

    invoke-virtual {v7, v15}, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 377
    if-nez v10, :cond_2

    .line 379
    const-string v15, "COMM"

    invoke-virtual {v7, v15}, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 381
    if-eqz v10, :cond_1

    .line 384
    new-instance v13, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPSession21;

    .end local v13    # "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/felicanetworks/felica/impl/tcap/Client;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    invoke-direct {v13, v15}, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPSession21;-><init>(Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;)V

    .line 401
    .end local v7    # "metadata":Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;
    .restart local v13    # "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    :cond_1
    :goto_2
    if-nez v13, :cond_4

    .line 403
    new-instance v15, Lcom/felicanetworks/felica/impl/tcap/TLAMFormatErrorException;

    invoke-direct {v15}, Lcom/felicanetworks/felica/impl/tcap/TLAMFormatErrorException;-><init>()V

    throw v15
    :try_end_2
    .catch Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/felicanetworks/felica/impl/tcap/TCAPException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/felicanetworks/felica/impl/tcap/TLAMFormatErrorException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/felicanetworks/felica/impl/tcap/HTTPException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 430
    .end local v13    # "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    :catch_1
    move-exception v6

    .line 432
    .local v6, "ie":Ljava/lang/IllegalStateException;
    const/4 v4, 0x1

    .line 434
    const/4 v3, 0x3

    .line 436
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 390
    .end local v6    # "ie":Ljava/lang/IllegalStateException;
    .restart local v7    # "metadata":Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;
    .restart local v13    # "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    :cond_2
    :try_start_3
    new-instance v13, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;

    .end local v13    # "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/felicanetworks/felica/impl/tcap/Client;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    invoke-direct {v13, v15}, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;-><init>(Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;)V

    .line 393
    .restart local v13    # "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    goto :goto_2

    .line 395
    .end local v7    # "metadata":Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/felicanetworks/felica/impl/tcap/Client;->url:Ljava/lang/String;

    .line 398
    new-instance v13, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;

    .end local v13    # "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/felicanetworks/felica/impl/tcap/Client;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    invoke-direct {v13, v15}, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;-><init>(Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;)V

    .restart local v13    # "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    goto :goto_2

    .line 406
    :cond_4
    invoke-virtual {v13, v10}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->setURL(Ljava/lang/String;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/felicanetworks/felica/impl/tcap/Client;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    invoke-virtual {v13, v15}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->setDeviceList(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V

    .line 411
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/felicanetworks/felica/impl/tcap/Client;->session:Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    .line 415
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/felicanetworks/felica/impl/tcap/Client;->TLAMStopped:Z

    if-eqz v15, :cond_5

    .line 416
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/felicanetworks/felica/impl/tcap/Client;->session:Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    invoke-virtual {v15}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->stop()V

    .line 420
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/felicanetworks/felica/impl/tcap/Client;->session:Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    invoke-virtual {v15}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->start()I
    :try_end_3
    .catch Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/felicanetworks/felica/impl/tcap/TCAPException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/felicanetworks/felica/impl/tcap/TLAMFormatErrorException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/felicanetworks/felica/impl/tcap/HTTPException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-result v9

    goto/16 :goto_0

    .line 438
    .end local v13    # "tmpSession":Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
    :catch_2
    move-exception v14

    .line 440
    .local v14, "ue":Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;
    const/4 v4, 0x1

    .line 442
    invoke-virtual {v14}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;->getType()B

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 444
    const/4 v3, 0x1

    .line 451
    :goto_3
    invoke-virtual {v14}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 448
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 453
    .end local v14    # "ue":Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;
    :catch_3
    move-exception v11

    .line 455
    .local v11, "te":Lcom/felicanetworks/felica/impl/tcap/TCAPException;
    const/4 v4, 0x1

    .line 457
    const/4 v3, 0x3

    .line 459
    invoke-virtual {v11}, Lcom/felicanetworks/felica/impl/tcap/TCAPException;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 461
    .end local v11    # "te":Lcom/felicanetworks/felica/impl/tcap/TCAPException;
    :catch_4
    move-exception v12

    .line 463
    .local v12, "tfe":Lcom/felicanetworks/felica/impl/tcap/TLAMFormatErrorException;
    const/4 v4, 0x1

    .line 465
    const/4 v3, 0x3

    .line 467
    invoke-virtual {v12}, Lcom/felicanetworks/felica/impl/tcap/TLAMFormatErrorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 469
    .end local v12    # "tfe":Lcom/felicanetworks/felica/impl/tcap/TLAMFormatErrorException;
    :catch_5
    move-exception v5

    .line 471
    .local v5, "he":Lcom/felicanetworks/felica/impl/tcap/HTTPException;
    const/4 v4, 0x1

    .line 473
    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;->isCanceled()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 474
    const/4 v3, 0x1

    .line 479
    :goto_4
    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 476
    :cond_7
    const/4 v3, 0x2

    goto :goto_4

    .line 481
    .end local v5    # "he":Lcom/felicanetworks/felica/impl/tcap/HTTPException;
    :catch_6
    move-exception v1

    .line 483
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    .line 485
    const/4 v3, 0x0

    .line 487
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 506
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/felicanetworks/felica/impl/tcap/Client;->listener:Lcom/felicanetworks/felica/FeliCaClientEventListener;

    invoke-interface {v15, v3, v2}, Lcom/felicanetworks/felica/FeliCaClientEventListener;->errorOccurred(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_1

    .line 509
    :catch_7
    move-exception v15

    goto/16 :goto_1
.end method

.method public setEventListener(Lcom/felicanetworks/felica/FeliCaClientEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/felicanetworks/felica/FeliCaClientEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/tcap/Client;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Lcom/felicanetworks/felica/FeliCaClientException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/FeliCaClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iput-object p1, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->listener:Lcom/felicanetworks/felica/FeliCaClientEventListener;

    .line 150
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/tcap/Client;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Lcom/felicanetworks/felica/FeliCaClientException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/FeliCaClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    if-nez p1, :cond_1

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 121
    :cond_1
    iput-object p1, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->url:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 572
    if-nez p1, :cond_0

    .line 573
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 575
    :cond_0
    iput-object p1, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->userAgent:Ljava/lang/String;

    .line 576
    return-void
.end method

.method public declared-synchronized start(Z[B)V
    .locals 2
    .param p1, "useParam"    # Z
    .param p2, "postdata"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;
        }
    .end annotation

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Lcom/felicanetworks/felica/FeliCaClientException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/FeliCaClientException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 263
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->url:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 266
    new-instance v0, Lcom/felicanetworks/felica/FeliCaClientException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/FeliCaClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->listener:Lcom/felicanetworks/felica/FeliCaClientEventListener;

    if-nez v0, :cond_2

    .line 272
    new-instance v0, Lcom/felicanetworks/felica/FeliCaClientException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/FeliCaClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->deviceList:Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    if-nez v0, :cond_3

    .line 278
    new-instance v0, Lcom/felicanetworks/felica/FeliCaClientException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/FeliCaClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_3
    iput-boolean p1, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->useParam:Z

    .line 285
    iput-object p2, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->postdata:[B

    .line 288
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->thread:Ljava/lang/Thread;

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->TLAMStopped:Z

    .line 294
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    monitor-exit p0

    return-void
.end method

.method public stop(Z)V
    .locals 1
    .param p1, "forced"    # Z

    .prologue
    .line 304
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->TLAMStopped:Z

    .line 308
    if-eqz p1, :cond_0

    .line 310
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->abort()V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->session:Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Client;->session:Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->stop()V

    .line 318
    :cond_1
    return-void
.end method
