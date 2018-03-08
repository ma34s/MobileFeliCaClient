.class Lcom/felicanetworks/felica/impl/tcap/v25/NeutralState25;
.super Lcom/felicanetworks/felica/impl/tcap/TCAPState;
.source "NeutralState25.java"


# static fields
.field private static instance:Lcom/felicanetworks/felica/impl/tcap/v25/NeutralState25;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/TCAPState;-><init>()V

    .line 74
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/impl/tcap/v25/NeutralState25;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/felicanetworks/felica/impl/tcap/v25/NeutralState25;->instance:Lcom/felicanetworks/felica/impl/tcap/v25/NeutralState25;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/v25/NeutralState25;

    invoke-direct {v0}, Lcom/felicanetworks/felica/impl/tcap/v25/NeutralState25;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/impl/tcap/v25/NeutralState25;->instance:Lcom/felicanetworks/felica/impl/tcap/v25/NeutralState25;

    .line 63
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/impl/tcap/v25/NeutralState25;->instance:Lcom/felicanetworks/felica/impl/tcap/v25/NeutralState25;

    return-object v0
.end method

.method private handleError(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)Z
    .locals 5
    .param p1, "context"    # Lcom/felicanetworks/felica/impl/tcap/TCAPContext;
    .param p2, "packet"    # Lcom/felicanetworks/felica/impl/tcap/Packet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/TCAPException;,
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    .line 292
    const/4 v0, 0x0

    .line 295
    .local v0, "emsg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/impl/tcap/Packet;->parseMessages(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V

    .line 298
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    invoke-virtual {p2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessageNum()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 317
    invoke-static {}, Lcom/felicanetworks/felica/impl/tcap/ErrorState;->getInstance()Lcom/felicanetworks/felica/impl/tcap/ErrorState;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setState(Lcom/felicanetworks/felica/impl/tcap/TCAPState;)V

    .line 319
    new-instance v3, Lcom/felicanetworks/felica/impl/tcap/TCAPException;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/felicanetworks/felica/impl/tcap/TCAPException;-><init>(BLjava/lang/String;)V

    throw v3

    .line 300
    :cond_0
    invoke-virtual {p2, v2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessage(I)Lcom/felicanetworks/felica/impl/tcap/Message;

    move-result-object v1

    .line 302
    .local v1, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 298
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :pswitch_0
    check-cast v1, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;

    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 309
    goto :goto_1

    .line 302
    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleFarewell(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)V
    .locals 3
    .param p1, "context"    # Lcom/felicanetworks/felica/impl/tcap/TCAPContext;
    .param p2, "packet"    # Lcom/felicanetworks/felica/impl/tcap/Packet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/TCAPException;,
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->parseMessages(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V

    .line 250
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    invoke-virtual {p2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessageNum()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 266
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setState(Lcom/felicanetworks/felica/impl/tcap/TCAPState;)V

    .line 267
    return-void

    .line 252
    :cond_0
    invoke-virtual {p2, v1}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessage(I)Lcom/felicanetworks/felica/impl/tcap/Message;

    move-result-object v0

    .line 254
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 250
    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :pswitch_0
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/ReturnCodeMessage;

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/ReturnCodeMessage;->getReturnCode()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setReturnCode(I)V

    goto :goto_1

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public doExecution(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;)V
    .locals 12
    .param p1, "context"    # Lcom/felicanetworks/felica/impl/tcap/TCAPContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/TCAPException;,
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x1

    const/16 v10, -0x80

    const/4 v7, 0x0

    .line 87
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentRequest()Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;

    move-result-object v5

    .line 90
    .local v5, "request":Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;
    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->parse()V

    .line 93
    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->getCookie()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setCookie(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentResponse()Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    move-result-object v6

    .line 99
    .local v6, "response":Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;
    invoke-virtual {v6}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->reset()V

    .line 102
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCookie()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->setCookie(Ljava/lang/String;)V

    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, "failed":Z
    const/4 v2, 0x0

    .line 108
    .local v2, "farewellDone":Z
    const/4 v3, 0x0

    .local v3, "nth":I
    :goto_0
    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->getPacketNum()I

    move-result v9

    if-lt v3, v9, :cond_0

    .line 206
    if-nez v2, :cond_b

    .line 209
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getStopFlag()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 211
    new-instance v7, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    .line 213
    const-string v9, "Interrupted."

    .line 211
    invoke-direct {v7, v8, v9}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v7

    .line 110
    :cond_0
    invoke-virtual {v5, v3}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->getPacket(I)Lcom/felicanetworks/felica/impl/tcap/Packet;

    move-result-object v4

    .line 113
    .local v4, "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getSubProtocolType()B

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 202
    new-instance v7, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;

    invoke-direct {v7, v10}, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;-><init>(B)V

    throw v7

    .line 116
    :pswitch_0
    if-nez v3, :cond_2

    .line 119
    invoke-direct {p0, p1, v4}, Lcom/felicanetworks/felica/impl/tcap/v25/NeutralState25;->handleError(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)Z

    .line 108
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    :cond_2
    new-instance v8, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    invoke-direct {v8, v7, v11}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v8

    .line 131
    :pswitch_1
    if-nez v2, :cond_3

    .line 134
    invoke-direct {p0, p1, v4}, Lcom/felicanetworks/felica/impl/tcap/v25/NeutralState25;->handleFarewell(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 136
    const/4 v2, 0x1

    .line 138
    goto :goto_1

    .line 141
    :cond_3
    new-instance v8, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    invoke-direct {v8, v7, v11}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v8

    .line 148
    :pswitch_2
    if-nez v2, :cond_5

    .line 150
    if-nez v1, :cond_1

    .line 152
    invoke-virtual {p0, p1, v4}, Lcom/felicanetworks/felica/impl/tcap/v25/NeutralState25;->handleApplicationDataTransfer(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v1, v7

    .line 155
    :goto_2
    goto :goto_1

    :cond_4
    move v1, v8

    .line 152
    goto :goto_2

    .line 158
    :cond_5
    new-instance v7, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;

    invoke-direct {v7, v10}, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;-><init>(B)V

    throw v7

    .line 166
    :pswitch_3
    if-nez v2, :cond_7

    .line 168
    if-nez v1, :cond_1

    .line 170
    invoke-virtual {p0, p1, v4}, Lcom/felicanetworks/felica/impl/tcap/v25/NeutralState25;->handleUpdateEntity(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v1, v7

    .line 173
    :goto_3
    goto :goto_1

    :cond_6
    move v1, v8

    .line 170
    goto :goto_3

    .line 176
    :cond_7
    new-instance v7, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;

    invoke-direct {v7, v10}, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;-><init>(B)V

    throw v7

    .line 183
    :pswitch_4
    if-nez v2, :cond_9

    .line 185
    if-nez v1, :cond_1

    .line 187
    invoke-virtual {p0, p1, v4}, Lcom/felicanetworks/felica/impl/tcap/v25/NeutralState25;->handleOperateEntity(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)Z

    move-result v9

    if-eqz v9, :cond_8

    move v1, v7

    .line 190
    :goto_4
    goto :goto_1

    :cond_8
    move v1, v8

    .line 187
    goto :goto_4

    .line 193
    :cond_9
    new-instance v7, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;

    invoke-direct {v7, v10}, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;-><init>(B)V

    throw v7

    .line 216
    .end local v4    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    :cond_a
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getSession()Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    move-result-object v7

    invoke-virtual {v7}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->getAgent()Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    move-result-object v0

    .line 219
    .local v0, "agent":Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6, v5}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->doTCAPTransaction(Ljava/lang/String;Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;)V

    .line 221
    .end local v0    # "agent":Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;
    :cond_b
    return-void

    .line 113
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method handleApplicationDataTransfer(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)Z
    .locals 16
    .param p1, "context"    # Lcom/felicanetworks/felica/impl/tcap/TCAPContext;
    .param p2, "packet"    # Lcom/felicanetworks/felica/impl/tcap/Packet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/TCAPException;,
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    .line 346
    new-instance v10, Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;

    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getVersion()I

    move-result v12

    invoke-direct {v10, v12}, Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;-><init>(I)V

    .line 348
    .local v10, "resPacket":Lcom/felicanetworks/felica/impl/tcap/Packet;
    const/4 v11, 0x1

    .line 350
    .local v11, "result":Z
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentRequest()Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;

    move-result-object v12

    check-cast v12, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPRequest25;

    invoke-virtual {v12}, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPRequest25;->getFeliCaParamPool()Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaParamPool;

    move-result-object v7

    .line 353
    .local v7, "paramPool":Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaParamPool;
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->parseMessages(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V

    .line 356
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessageNum()I

    move-result v12

    if-lt v5, v12, :cond_0

    .line 648
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentResponse()Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->addPacket(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 650
    return v11

    .line 359
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessage(I)Lcom/felicanetworks/felica/impl/tcap/Message;

    move-result-object v4

    .line 362
    .local v4, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getStopFlag()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 364
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    .line 365
    const/4 v13, 0x1

    .line 366
    const-string v14, "Interrupted."

    .line 364
    invoke-direct {v12, v13, v14}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v12

    .line 369
    :cond_1
    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 356
    :goto_2
    :pswitch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 374
    :pswitch_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v12

    .line 375
    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    .line 374
    invoke-virtual {v12, v13}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v1

    check-cast v1, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    .line 376
    .local v1, "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    const/4 v8, 0x0

    .line 377
    .local v8, "req":[B
    const/4 v9, 0x0

    .line 380
    .local v9, "res":[B
    move-object v0, v4

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/FeliCaCommandMessage;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/felicanetworks/felica/impl/tcap/FeliCaCommandMessage;->getCommand()[B

    move-result-object v8

    .line 383
    invoke-virtual {v1, v8}, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->execute([B)[B

    move-result-object v9

    .line 386
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/FeliCaResponseMessage;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    invoke-direct {v12, v13, v9}, Lcom/felicanetworks/felica/impl/tcap/FeliCaResponseMessage;-><init>(I[B)V

    invoke-virtual {v10, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 388
    .end local v1    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    .end local v8    # "req":[B
    .end local v9    # "res":[B
    :catch_0
    move-exception v3

    .line 391
    .local v3, "fe":Lcom/felicanetworks/felica/FeliCaChipException;
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/Message;

    const/4 v13, 0x1

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v14

    .line 392
    const/4 v15, 0x3

    invoke-direct {v12, v13, v14, v15}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 391
    invoke-virtual {v10, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 394
    const/4 v11, 0x0

    .line 397
    goto :goto_1

    .line 405
    .end local v3    # "fe":Lcom/felicanetworks/felica/FeliCaChipException;
    :pswitch_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v12

    .line 406
    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    .line 405
    invoke-virtual {v12, v13}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v1

    check-cast v1, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    .line 407
    .restart local v1    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    const/4 v8, 0x0

    .line 408
    .restart local v8    # "req":[B
    const/4 v9, 0x0

    .line 411
    .restart local v9    # "res":[B
    move-object v0, v4

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;->getCommand()[B

    move-result-object v8

    .line 414
    invoke-virtual {v1, v8}, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->execute([B)[B
    :try_end_1
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 419
    :try_start_2
    move-object v0, v4

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;->getParamID()I

    move-result v13

    .line 420
    move-object v0, v4

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;->getParamPos()I

    move-result v14

    .line 421
    move-object v0, v4

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;->getParamLen()I

    move-result v12

    .line 419
    invoke-virtual {v7, v13, v9, v14, v12}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaParamPool;->saveParam(I[BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_2 .. :try_end_2} :catch_1

    .line 430
    :try_start_3
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/FeliCaResponseMessage;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    invoke-direct {v12, v13, v9}, Lcom/felicanetworks/felica/impl/tcap/FeliCaResponseMessage;-><init>(I[B)V

    invoke-virtual {v10, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    :try_end_3
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 432
    .end local v1    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    .end local v8    # "req":[B
    .end local v9    # "res":[B
    :catch_1
    move-exception v3

    .line 435
    .restart local v3    # "fe":Lcom/felicanetworks/felica/FeliCaChipException;
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/Message;

    const/4 v13, 0x1

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v14

    .line 436
    const/4 v15, 0x3

    invoke-direct {v12, v13, v14, v15}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 435
    invoke-virtual {v10, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 438
    const/4 v11, 0x0

    .line 441
    goto/16 :goto_1

    .line 423
    .end local v3    # "fe":Lcom/felicanetworks/felica/FeliCaChipException;
    .restart local v1    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    .restart local v8    # "req":[B
    .restart local v9    # "res":[B
    :catch_2
    move-exception v2

    .line 425
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    .line 426
    const/4 v13, 0x4

    const/4 v14, 0x0

    .line 425
    invoke-direct {v12, v13, v14}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v12
    :try_end_4
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_4 .. :try_end_4} :catch_1

    .line 449
    .end local v1    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "req":[B
    .end local v9    # "res":[B
    :pswitch_3
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v12

    .line 450
    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    .line 449
    invoke-virtual {v12, v13}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v1

    check-cast v1, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    :try_end_5
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_5 .. :try_end_5} :catch_3

    .line 451
    .restart local v1    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    const/4 v8, 0x0

    .line 452
    .restart local v8    # "req":[B
    const/4 v9, 0x0

    .line 453
    .restart local v9    # "res":[B
    const/4 v6, 0x0

    .line 458
    .local v6, "param":[B
    :try_start_6
    move-object v0, v4

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandMessage;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandMessage;->getParamID()I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaParamPool;->callParam(I)[B

    move-result-object v6

    .line 461
    move-object v0, v4

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandMessage;

    move-object v12, v0

    invoke-virtual {v12, v6}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandMessage;->getCommand([B)[B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v8

    .line 470
    :try_start_7
    invoke-virtual {v1, v8}, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->execute([B)[B

    move-result-object v9

    .line 473
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/FeliCaResponseMessage;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    invoke-direct {v12, v13, v9}, Lcom/felicanetworks/felica/impl/tcap/FeliCaResponseMessage;-><init>(I[B)V

    invoke-virtual {v10, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    :try_end_7
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    .line 475
    .end local v1    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    .end local v6    # "param":[B
    .end local v8    # "req":[B
    .end local v9    # "res":[B
    :catch_3
    move-exception v3

    .line 478
    .restart local v3    # "fe":Lcom/felicanetworks/felica/FeliCaChipException;
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/Message;

    const/4 v13, 0x1

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v14

    .line 479
    const/4 v15, 0x3

    invoke-direct {v12, v13, v14, v15}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 478
    invoke-virtual {v10, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 481
    const/4 v11, 0x0

    .line 484
    goto/16 :goto_1

    .line 463
    .end local v3    # "fe":Lcom/felicanetworks/felica/FeliCaChipException;
    .restart local v1    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    .restart local v6    # "param":[B
    .restart local v8    # "req":[B
    .restart local v9    # "res":[B
    :catch_4
    move-exception v2

    .line 465
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_8
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    .line 466
    const/4 v13, 0x4

    const/4 v14, 0x0

    .line 465
    invoke-direct {v12, v13, v14}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v12
    :try_end_8
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_8 .. :try_end_8} :catch_3

    .line 492
    .end local v1    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "param":[B
    .end local v8    # "req":[B
    .end local v9    # "res":[B
    :pswitch_4
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v12

    .line 493
    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    .line 492
    invoke-virtual {v12, v13}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v1

    check-cast v1, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    .line 494
    .restart local v1    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    const/4 v8, 0x0

    .line 495
    .restart local v8    # "req":[B
    const/4 v9, 0x0

    .line 498
    .restart local v9    # "res":[B
    move-object v0, v4

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaCommandThruRwMessage;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaCommandThruRwMessage;->getCommand()[B

    move-result-object v8

    .line 501
    invoke-virtual {v1, v8}, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->executeThru([B)[B

    move-result-object v9

    .line 503
    array-length v12, v9

    const/4 v13, 0x1

    if-ge v12, v13, :cond_2

    .line 506
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/Message;

    const/4 v13, 0x1

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v14

    .line 507
    const/16 v15, 0x8

    invoke-direct {v12, v13, v14, v15}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 506
    invoke-virtual {v10, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 509
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 516
    :cond_2
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaResponseThruRwMessage;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    invoke-direct {v12, v13, v9}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaResponseThruRwMessage;-><init>(I[B)V

    invoke-virtual {v10, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    :try_end_9
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_2

    .line 518
    .end local v1    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    .end local v8    # "req":[B
    .end local v9    # "res":[B
    :catch_5
    move-exception v3

    .line 521
    .restart local v3    # "fe":Lcom/felicanetworks/felica/FeliCaChipException;
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/Message;

    const/4 v13, 0x1

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v14

    .line 522
    const/16 v15, 0x8

    invoke-direct {v12, v13, v14, v15}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 521
    invoke-virtual {v10, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 524
    const/4 v11, 0x0

    .line 527
    goto/16 :goto_1

    .line 535
    .end local v3    # "fe":Lcom/felicanetworks/felica/FeliCaChipException;
    :pswitch_5
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v12

    .line 536
    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    .line 535
    invoke-virtual {v12, v13}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v1

    check-cast v1, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    .line 537
    .restart local v1    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    const/4 v8, 0x0

    .line 538
    .restart local v8    # "req":[B
    const/4 v9, 0x0

    .line 541
    .restart local v9    # "res":[B
    move-object v0, v4

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandThruRwMessage;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandThruRwMessage;->getCommand()[B

    move-result-object v8

    .line 544
    invoke-virtual {v1, v8}, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->executeThru([B)[B

    move-result-object v9

    .line 546
    array-length v12, v9

    const/4 v13, 0x1

    if-ge v12, v13, :cond_3

    .line 549
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/Message;

    const/4 v13, 0x1

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v14

    .line 550
    const/16 v15, 0x8

    invoke-direct {v12, v13, v14, v15}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 549
    invoke-virtual {v10, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    :try_end_a
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_a .. :try_end_a} :catch_6

    .line 552
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 561
    :cond_3
    :try_start_b
    move-object v0, v4

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandThruRwMessage;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandThruRwMessage;->getParamID()I

    move-result v13

    .line 562
    move-object v0, v4

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandThruRwMessage;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandThruRwMessage;->getParamPos()I

    move-result v14

    .line 563
    move-object v0, v4

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandThruRwMessage;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandThruRwMessage;->getParamLen()I

    move-result v12

    .line 561
    invoke-virtual {v7, v13, v9, v14, v12}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaParamPool;->saveParam(I[BII)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_b .. :try_end_b} :catch_6

    .line 572
    :try_start_c
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaResponseThruRwMessage;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    invoke-direct {v12, v13, v9}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaResponseThruRwMessage;-><init>(I[B)V

    invoke-virtual {v10, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    :try_end_c
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_2

    .line 574
    .end local v1    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    .end local v8    # "req":[B
    .end local v9    # "res":[B
    :catch_6
    move-exception v3

    .line 577
    .restart local v3    # "fe":Lcom/felicanetworks/felica/FeliCaChipException;
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/Message;

    const/4 v13, 0x1

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v14

    .line 578
    const/16 v15, 0x8

    invoke-direct {v12, v13, v14, v15}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 577
    invoke-virtual {v10, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 580
    const/4 v11, 0x0

    .line 583
    goto/16 :goto_1

    .line 565
    .end local v3    # "fe":Lcom/felicanetworks/felica/FeliCaChipException;
    .restart local v1    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    .restart local v8    # "req":[B
    .restart local v9    # "res":[B
    :catch_7
    move-exception v2

    .line 567
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_d
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    .line 568
    const/4 v13, 0x4

    const/4 v14, 0x0

    .line 567
    invoke-direct {v12, v13, v14}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v12
    :try_end_d
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_d .. :try_end_d} :catch_6

    .line 591
    .end local v1    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "req":[B
    .end local v9    # "res":[B
    :pswitch_6
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v12

    .line 592
    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    .line 591
    invoke-virtual {v12, v13}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v1

    check-cast v1, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    :try_end_e
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_e .. :try_end_e} :catch_9

    .line 593
    .restart local v1    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    const/4 v8, 0x0

    .line 594
    .restart local v8    # "req":[B
    const/4 v9, 0x0

    .line 595
    .restart local v9    # "res":[B
    const/4 v6, 0x0

    .line 600
    .restart local v6    # "param":[B
    :try_start_f
    move-object v0, v4

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandThruRwMessage;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandThruRwMessage;->getParamID()I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaParamPool;->callParam(I)[B

    move-result-object v6

    .line 603
    move-object v0, v4

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandThruRwMessage;

    move-object v12, v0

    invoke-virtual {v12, v6}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandThruRwMessage;->getCommand([B)[B
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_f .. :try_end_f} :catch_9

    move-result-object v8

    .line 612
    :try_start_10
    invoke-virtual {v1, v8}, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->executeThru([B)[B

    move-result-object v9

    .line 614
    array-length v12, v9

    const/4 v13, 0x1

    if-ge v12, v13, :cond_4

    .line 617
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/Message;

    const/4 v13, 0x1

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v14

    .line 618
    const/16 v15, 0x8

    invoke-direct {v12, v13, v14, v15}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 617
    invoke-virtual {v10, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 620
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 605
    :catch_8
    move-exception v2

    .line 607
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    .line 608
    const/4 v13, 0x4

    const/4 v14, 0x0

    .line 607
    invoke-direct {v12, v13, v14}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v12
    :try_end_10
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_10 .. :try_end_10} :catch_9

    .line 629
    .end local v1    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "param":[B
    .end local v8    # "req":[B
    .end local v9    # "res":[B
    :catch_9
    move-exception v3

    .line 632
    .restart local v3    # "fe":Lcom/felicanetworks/felica/FeliCaChipException;
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/Message;

    const/4 v13, 0x1

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v14

    .line 633
    const/16 v15, 0x8

    invoke-direct {v12, v13, v14, v15}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 632
    invoke-virtual {v10, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 635
    const/4 v11, 0x0

    .line 638
    goto/16 :goto_1

    .line 627
    .end local v3    # "fe":Lcom/felicanetworks/felica/FeliCaChipException;
    .restart local v1    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    .restart local v6    # "param":[B
    .restart local v8    # "req":[B
    .restart local v9    # "res":[B
    :cond_4
    :try_start_11
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaResponseThruRwMessage;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    invoke-direct {v12, v13, v9}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaResponseThruRwMessage;-><init>(I[B)V

    invoke-virtual {v10, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    :try_end_11
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_11 .. :try_end_11} :catch_9

    goto/16 :goto_2

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method handleOperateEntity(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)Z
    .locals 15
    .param p1, "context"    # Lcom/felicanetworks/felica/impl/tcap/TCAPContext;
    .param p2, "packet"    # Lcom/felicanetworks/felica/impl/tcap/Packet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/TCAPException;,
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    .line 783
    new-instance v9, Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;

    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getVersion()I

    move-result v12

    invoke-direct {v9, v12}, Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;-><init>(I)V

    .line 785
    .local v9, "resPacket":Lcom/felicanetworks/felica/impl/tcap/Packet;
    const/4 v11, 0x1

    .line 788
    .local v11, "result":Z
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->parseMessages(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V

    .line 791
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessageNum()I

    move-result v12

    if-lt v6, v12, :cond_0

    .line 872
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentResponse()Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->addPacket(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 874
    return v11

    .line 794
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessage(I)Lcom/felicanetworks/felica/impl/tcap/Message;

    move-result-object v5

    .line 797
    .local v5, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getStopFlag()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 799
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    .line 800
    const/4 v13, 0x1

    .line 801
    const-string v14, "Interrupted."

    .line 799
    invoke-direct {v12, v13, v14}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v12

    .line 804
    :cond_1
    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    .line 791
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 807
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v12

    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v2

    .local v2, "device":Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    move-object v12, v5

    .line 808
    check-cast v12, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;

    invoke-virtual {v12}, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->getParamName()Ljava/lang/String;

    move-result-object v8

    .local v8, "paramName":Ljava/lang/String;
    move-object v12, v5

    .line 809
    check-cast v12, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;

    invoke-virtual {v12}, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->getParam()[B

    move-result-object v7

    .line 810
    .local v7, "param":[B
    const/4 v10, 0x0

    .line 815
    .local v10, "response":[B
    :try_start_0
    invoke-virtual {v2, v8, v7}, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->operate(Ljava/lang/String;[B)[B

    move-result-object v10

    .line 818
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/DeviceResponseMessage;

    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    invoke-direct {v12, v13, v10}, Lcom/felicanetworks/felica/impl/tcap/DeviceResponseMessage;-><init>(I[B)V

    invoke-virtual {v9, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 820
    :catch_0
    move-exception v3

    .line 822
    .local v3, "e":Ljava/lang/Exception;
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    .line 823
    const/4 v13, 0x2

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 822
    invoke-direct {v12, v13, v14}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v12

    .line 834
    .end local v2    # "device":Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "param":[B
    .end local v8    # "paramName":Ljava/lang/String;
    .end local v10    # "response":[B
    :sswitch_1
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/OpenRWStatusMessage;

    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    .line 835
    const/4 v14, 0x1

    invoke-direct {v12, v13, v14}, Lcom/felicanetworks/felica/impl/tcap/OpenRWStatusMessage;-><init>(IB)V

    .line 834
    invoke-virtual {v9, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    goto :goto_2

    .line 843
    :sswitch_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v12

    .line 844
    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    .line 843
    invoke-virtual {v12, v13}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v1

    check-cast v1, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    .line 847
    .local v1, "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->close()V

    .line 850
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/CloseRWStatusMessage;

    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    .line 851
    const/4 v14, 0x1

    invoke-direct {v12, v13, v14}, Lcom/felicanetworks/felica/impl/tcap/CloseRWStatusMessage;-><init>(IB)V

    .line 850
    invoke-virtual {v9, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    :try_end_1
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 853
    .end local v1    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    :catch_1
    move-exception v4

    .line 856
    .local v4, "fe":Lcom/felicanetworks/felica/FeliCaChipException;
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/CloseRWStatusMessage;

    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    .line 857
    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/felicanetworks/felica/impl/tcap/CloseRWStatusMessage;-><init>(IB)V

    .line 856
    invoke-virtual {v9, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 859
    const/4 v11, 0x0

    .line 862
    goto/16 :goto_1

    .line 804
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_0
        0x101 -> :sswitch_1
        0x105 -> :sswitch_2
    .end sparse-switch
.end method

.method handleUpdateEntity(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)Z
    .locals 12
    .param p1, "context"    # Lcom/felicanetworks/felica/impl/tcap/TCAPContext;
    .param p2, "packet"    # Lcom/felicanetworks/felica/impl/tcap/Packet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/TCAPException;,
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 677
    new-instance v4, Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;

    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getVersion()I

    move-result v6

    invoke-direct {v4, v6}, Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;-><init>(I)V

    .line 679
    .local v4, "resPacket":Lcom/felicanetworks/felica/impl/tcap/Packet;
    const/4 v5, 0x1

    .line 682
    .local v5, "result":Z
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/felicanetworks/felica/impl/tcap/Packet;->parseMessages(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V

    .line 685
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    invoke-virtual {p2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessageNum()I

    move-result v6

    if-lt v3, v6, :cond_0

    .line 754
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentResponse()Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->addPacket(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 756
    return v5

    .line 688
    :cond_0
    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessage(I)Lcom/felicanetworks/felica/impl/tcap/Message;

    move-result-object v2

    .line 691
    .local v2, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getStopFlag()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 693
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    .line 694
    const/4 v7, 0x1

    .line 695
    const-string v8, "Interrupted."

    .line 693
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v6

    .line 698
    :cond_1
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 685
    .end local v2    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 702
    .restart local v2    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :sswitch_0
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getSession()Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->getAgent()Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    move-result-object v6

    .line 703
    check-cast v2, Lcom/felicanetworks/felica/impl/tcap/SetNetworkTimeoutMessage;

    .end local v2    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/SetNetworkTimeoutMessage;->getTimeout()J

    move-result-wide v8

    .line 702
    invoke-virtual {v6, v8, v9}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->setTimeout(J)V

    goto :goto_1

    .line 710
    .restart local v2    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :sswitch_1
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/v25/RequestIdMessage;

    .line 711
    check-cast v2, Lcom/felicanetworks/felica/impl/tcap/v25/RequestIdMessage;

    .end local v2    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/v25/RequestIdMessage;->getRequestId()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/felicanetworks/felica/impl/tcap/v25/RequestIdMessage;-><init>(I)V

    .line 710
    invoke-virtual {v4, v6}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    goto :goto_1

    .line 718
    .restart local v2    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :sswitch_2
    :try_start_0
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v6

    .line 719
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    .line 718
    invoke-virtual {v6, v7}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    .line 722
    .local v0, "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    check-cast v2, Lcom/felicanetworks/felica/impl/tcap/SetFelicaTimeoutMessage;

    .end local v2    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/SetFelicaTimeoutMessage;->getTimeout()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->setTimeout(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 724
    .end local v0    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    :catch_0
    move-exception v1

    .line 726
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    invoke-direct {v6, v10, v11}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v6

    .line 735
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :sswitch_3
    :try_start_1
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v6

    .line 736
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    .line 735
    invoke-virtual {v6, v7}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    .line 739
    .restart local v0    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    check-cast v2, Lcom/felicanetworks/felica/impl/tcap/SetRetryCountMessage;

    .end local v2    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/SetRetryCountMessage;->getRetryCount()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->setRetryCount(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 741
    .end local v0    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    :catch_1
    move-exception v1

    .line 743
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    invoke-direct {v6, v10, v11}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v6

    .line 698
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x81 -> :sswitch_0
        0x181 -> :sswitch_2
        0x182 -> :sswitch_3
    .end sparse-switch
.end method
