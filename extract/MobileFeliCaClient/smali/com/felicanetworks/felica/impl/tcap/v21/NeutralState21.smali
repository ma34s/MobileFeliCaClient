.class Lcom/felicanetworks/felica/impl/tcap/v21/NeutralState21;
.super Lcom/felicanetworks/felica/impl/tcap/TCAPState;
.source "NeutralState21.java"


# static fields
.field private static instance:Lcom/felicanetworks/felica/impl/tcap/v21/NeutralState21;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/TCAPState;-><init>()V

    .line 74
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/impl/tcap/v21/NeutralState21;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/felicanetworks/felica/impl/tcap/v21/NeutralState21;->instance:Lcom/felicanetworks/felica/impl/tcap/v21/NeutralState21;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/v21/NeutralState21;

    invoke-direct {v0}, Lcom/felicanetworks/felica/impl/tcap/v21/NeutralState21;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/impl/tcap/v21/NeutralState21;->instance:Lcom/felicanetworks/felica/impl/tcap/v21/NeutralState21;

    .line 63
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/impl/tcap/v21/NeutralState21;->instance:Lcom/felicanetworks/felica/impl/tcap/v21/NeutralState21;

    return-object v0
.end method

.method private handleApplicationDataTransfer(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)Z
    .locals 14
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
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 212
    new-instance v7, Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;

    invoke-direct {v7}, Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;-><init>()V

    .line 214
    .local v7, "resPacket":Lcom/felicanetworks/felica/impl/tcap/Packet;
    const/4 v8, 0x1

    .line 217
    .local v8, "result":Z
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/felicanetworks/felica/impl/tcap/Packet;->parseMessages(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V

    .line 220
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessageNum()I

    move-result v9

    if-lt v4, v9, :cond_0

    .line 271
    :goto_1
    new-instance v9, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 272
    invoke-direct {v9, v12, v12, v12}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 271
    invoke-virtual {v7, v9}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 275
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentResponse()Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->addPacket(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 277
    return v8

    .line 223
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessage(I)Lcom/felicanetworks/felica/impl/tcap/Message;

    move-result-object v3

    .line 226
    .local v3, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getStopFlag()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 228
    new-instance v9, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    .line 230
    const-string v10, "Interrupted."

    .line 228
    invoke-direct {v9, v13, v10}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v9

    .line 233
    :cond_1
    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 220
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 238
    :pswitch_0
    :try_start_0
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v9

    .line 239
    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v10

    .line 238
    invoke-virtual {v9, v10}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v1

    check-cast v1, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    .line 240
    .local v1, "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    const/4 v5, 0x0

    .line 241
    .local v5, "req":[B
    const/4 v6, 0x0

    .line 244
    .local v6, "res":[B
    move-object v0, v3

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/FeliCaCommandMessage;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/felicanetworks/felica/impl/tcap/FeliCaCommandMessage;->getCommand()[B

    move-result-object v5

    .line 247
    invoke-virtual {v1, v5}, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->execute([B)[B

    move-result-object v6

    .line 250
    new-instance v9, Lcom/felicanetworks/felica/impl/tcap/FeliCaResponseMessage;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v10

    invoke-direct {v9, v10, v6}, Lcom/felicanetworks/felica/impl/tcap/FeliCaResponseMessage;-><init>(I[B)V

    invoke-virtual {v7, v9}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 252
    .end local v1    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    .end local v5    # "req":[B
    .end local v6    # "res":[B
    :catch_0
    move-exception v2

    .line 255
    .local v2, "fe":Lcom/felicanetworks/felica/FeliCaChipException;
    new-instance v9, Lcom/felicanetworks/felica/impl/tcap/Message;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v10

    .line 256
    const/4 v11, 0x3

    invoke-direct {v9, v13, v10, v11}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 255
    invoke-virtual {v7, v9}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 258
    const/4 v8, 0x0

    .line 261
    goto :goto_1

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
    .end packed-switch
.end method

.method private handleError(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)V
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
    .line 617
    const/4 v0, 0x0

    .line 620
    .local v0, "emsg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/impl/tcap/Packet;->parseMessages(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V

    .line 623
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    invoke-virtual {p2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessageNum()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 642
    invoke-static {}, Lcom/felicanetworks/felica/impl/tcap/ErrorState;->getInstance()Lcom/felicanetworks/felica/impl/tcap/ErrorState;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setState(Lcom/felicanetworks/felica/impl/tcap/TCAPState;)V

    .line 645
    new-instance v3, Lcom/felicanetworks/felica/impl/tcap/TCAPException;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/felicanetworks/felica/impl/tcap/TCAPException;-><init>(BLjava/lang/String;)V

    throw v3

    .line 625
    :cond_0
    invoke-virtual {p2, v2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessage(I)Lcom/felicanetworks/felica/impl/tcap/Message;

    move-result-object v1

    .line 627
    .local v1, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 623
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 633
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :pswitch_0
    check-cast v1, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;

    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 634
    goto :goto_1

    .line 627
    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleFarewell(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)V
    .locals 6
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
    const/4 v5, 0x0

    .line 542
    new-instance v2, Lcom/felicanetworks/felica/impl/tcap/v21/FarewellPacket21;

    invoke-direct {v2}, Lcom/felicanetworks/felica/impl/tcap/v21/FarewellPacket21;-><init>()V

    .line 545
    .local v2, "resPacket":Lcom/felicanetworks/felica/impl/tcap/Packet;
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/impl/tcap/Packet;->parseMessages(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V

    .line 548
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    invoke-virtual {p2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessageNum()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 577
    new-instance v3, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 578
    const/16 v4, 0x21

    invoke-direct {v3, v5, v5, v4}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 577
    invoke-virtual {v2, v3}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 581
    new-instance v3, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 582
    const/16 v4, 0x22

    invoke-direct {v3, v5, v5, v4}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 581
    invoke-virtual {v2, v3}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 585
    new-instance v3, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 586
    invoke-direct {v3, v5, v5, v5}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 585
    invoke-virtual {v2, v3}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 589
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentResponse()Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->addPacket(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 592
    invoke-static {}, Lcom/felicanetworks/felica/impl/tcap/v21/FarewellState21;->getInstance()Lcom/felicanetworks/felica/impl/tcap/v21/FarewellState21;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setState(Lcom/felicanetworks/felica/impl/tcap/TCAPState;)V

    .line 593
    return-void

    .line 550
    :cond_0
    invoke-virtual {p2, v1}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessage(I)Lcom/felicanetworks/felica/impl/tcap/Message;

    move-result-object v0

    .line 553
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getStopFlag()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 555
    new-instance v3, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    .line 556
    const/4 v4, 0x1

    .line 557
    const-string v5, "Interrupted."

    .line 555
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v3

    .line 560
    :cond_1
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 548
    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 563
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :sswitch_0
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/ReturnCodeMessage;

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/ReturnCodeMessage;->getReturnCode()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setReturnCode(I)V

    goto :goto_1

    .line 569
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :sswitch_1
    new-instance v3, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;

    const/16 v4, -0x80

    invoke-direct {v3, v4}, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;-><init>(B)V

    throw v3

    .line 560
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x25 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleOperateEntity(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)Z
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
    .line 414
    new-instance v9, Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;

    invoke-direct {v9}, Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;-><init>()V

    .line 416
    .local v9, "resPacket":Lcom/felicanetworks/felica/impl/tcap/Packet;
    const/4 v11, 0x1

    .line 419
    .local v11, "result":Z
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->parseMessages(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V

    .line 422
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessageNum()I

    move-result v12

    if-lt v6, v12, :cond_0

    .line 509
    :goto_1
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/Message;

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 510
    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 509
    invoke-virtual {v9, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 513
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentResponse()Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->addPacket(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 515
    return v11

    .line 425
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessage(I)Lcom/felicanetworks/felica/impl/tcap/Message;

    move-result-object v5

    .line 428
    .local v5, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getStopFlag()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 430
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    .line 431
    const/4 v13, 0x1

    .line 432
    const-string v14, "Interrupted."

    .line 430
    invoke-direct {v12, v13, v14}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v12

    .line 435
    :cond_1
    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    .line 422
    :goto_2
    :sswitch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 438
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v12

    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v2

    .local v2, "device":Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    move-object v12, v5

    .line 439
    check-cast v12, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;

    invoke-virtual {v12}, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->getParamName()Ljava/lang/String;

    move-result-object v8

    .local v8, "paramName":Ljava/lang/String;
    move-object v12, v5

    .line 440
    check-cast v12, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;

    invoke-virtual {v12}, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;->getParam()[B

    move-result-object v7

    .line 441
    .local v7, "param":[B
    const/4 v10, 0x0

    .line 446
    .local v10, "response":[B
    :try_start_0
    invoke-virtual {v2, v8, v7}, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->operate(Ljava/lang/String;[B)[B

    move-result-object v10

    .line 449
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/DeviceResponseMessage;

    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    invoke-direct {v12, v13, v10}, Lcom/felicanetworks/felica/impl/tcap/DeviceResponseMessage;-><init>(I[B)V

    invoke-virtual {v9, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 451
    :catch_0
    move-exception v3

    .line 453
    .local v3, "e":Ljava/lang/Exception;
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    .line 454
    const/4 v13, 0x2

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 453
    invoke-direct {v12, v13, v14}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v12

    .line 471
    .end local v2    # "device":Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "param":[B
    .end local v8    # "paramName":Ljava/lang/String;
    .end local v10    # "response":[B
    :sswitch_2
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/OpenRWStatusMessage;

    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    .line 472
    const/4 v14, 0x1

    invoke-direct {v12, v13, v14}, Lcom/felicanetworks/felica/impl/tcap/OpenRWStatusMessage;-><init>(IB)V

    .line 471
    invoke-virtual {v9, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    goto :goto_2

    .line 480
    :sswitch_3
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v12

    .line 481
    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    .line 480
    invoke-virtual {v12, v13}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v1

    check-cast v1, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    .line 484
    .local v1, "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->close()V

    .line 487
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/CloseRWStatusMessage;

    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    .line 488
    const/4 v14, 0x1

    invoke-direct {v12, v13, v14}, Lcom/felicanetworks/felica/impl/tcap/CloseRWStatusMessage;-><init>(IB)V

    .line 487
    invoke-virtual {v9, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    :try_end_1
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 490
    .end local v1    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    :catch_1
    move-exception v4

    .line 493
    .local v4, "fe":Lcom/felicanetworks/felica/FeliCaChipException;
    new-instance v12, Lcom/felicanetworks/felica/impl/tcap/CloseRWStatusMessage;

    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v13

    .line 494
    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/felicanetworks/felica/impl/tcap/CloseRWStatusMessage;-><init>(IB)V

    .line 493
    invoke-virtual {v9, v12}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 496
    const/4 v11, 0x0

    .line 499
    goto/16 :goto_1

    .line 435
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x81 -> :sswitch_0
        0x101 -> :sswitch_2
        0x105 -> :sswitch_3
    .end sparse-switch
.end method

.method private handleUpdateEntity(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)Z
    .locals 13
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
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 304
    new-instance v4, Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;

    invoke-direct {v4}, Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;-><init>()V

    .line 306
    .local v4, "resPacket":Lcom/felicanetworks/felica/impl/tcap/Packet;
    const/4 v5, 0x1

    .line 309
    .local v5, "result":Z
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/felicanetworks/felica/impl/tcap/Packet;->parseMessages(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V

    .line 312
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_0
    invoke-virtual {p2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessageNum()I

    move-result v6

    if-lt v3, v6, :cond_0

    .line 381
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 382
    invoke-direct {v6, v10, v10, v10}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 381
    invoke-virtual {v4, v6}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 385
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentResponse()Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->addPacket(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 387
    return v5

    .line 315
    :cond_0
    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessage(I)Lcom/felicanetworks/felica/impl/tcap/Message;

    move-result-object v2

    .line 318
    .local v2, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getStopFlag()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 320
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    .line 322
    const-string v7, "Interrupted."

    .line 320
    invoke-direct {v6, v11, v7}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v6

    .line 325
    :cond_1
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 312
    .end local v2    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    .restart local v2    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :sswitch_0
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getSession()Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->getAgent()Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    move-result-object v6

    .line 330
    check-cast v2, Lcom/felicanetworks/felica/impl/tcap/SetNetworkTimeoutMessage;

    .end local v2    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/SetNetworkTimeoutMessage;->getTimeout()J

    move-result-wide v8

    .line 329
    invoke-virtual {v6, v8, v9}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->setTimeout(J)V

    goto :goto_1

    .line 338
    .restart local v2    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :sswitch_1
    :try_start_0
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v6

    .line 339
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    .line 338
    invoke-virtual {v6, v7}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    .line 342
    .local v0, "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    check-cast v2, Lcom/felicanetworks/felica/impl/tcap/SetFelicaTimeoutMessage;

    .end local v2    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/SetFelicaTimeoutMessage;->getTimeout()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->setTimeout(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 344
    .end local v0    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    :catch_0
    move-exception v1

    .line 346
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    invoke-direct {v6, v10, v12}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v6

    .line 355
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :sswitch_2
    :try_start_1
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v6

    .line 356
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    .line 355
    invoke-virtual {v6, v7}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    .line 359
    .restart local v0    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    check-cast v2, Lcom/felicanetworks/felica/impl/tcap/SetRetryCountMessage;

    .end local v2    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/SetRetryCountMessage;->getRetryCount()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->setRetryCount(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 361
    .end local v0    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    :catch_1
    move-exception v1

    .line 363
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    invoke-direct {v6, v10, v12}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v6

    .line 371
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :sswitch_3
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/v21/SelectedFelicaDeviceMessage;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    .line 372
    invoke-direct {v6, v7, v11}, Lcom/felicanetworks/felica/impl/tcap/v21/SelectedFelicaDeviceMessage;-><init>(IB)V

    .line 371
    invoke-virtual {v4, v6}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    goto :goto_1

    .line 325
    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_0
        0x101 -> :sswitch_3
        0x181 -> :sswitch_1
        0x182 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public doExecution(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;)V
    .locals 10
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
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 87
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentRequest()Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;

    move-result-object v4

    .line 90
    .local v4, "request":Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;
    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->parse()V

    .line 93
    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->getCookie()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setCookie(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentResponse()Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    move-result-object v5

    .line 99
    .local v5, "response":Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;
    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->reset()V

    .line 102
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCookie()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->setCookie(Ljava/lang/String;)V

    .line 104
    const/4 v1, 0x0

    .line 107
    .local v1, "failed":Z
    const/4 v2, 0x0

    .local v2, "nth":I
    :goto_0
    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->getPacketNum()I

    move-result v8

    if-lt v2, v8, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getStopFlag()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 178
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    .line 179
    const-string v8, "Interrupted."

    .line 178
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v6

    .line 109
    :cond_0
    invoke-virtual {v4, v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->getPacket(I)Lcom/felicanetworks/felica/impl/tcap/Packet;

    move-result-object v3

    .line 112
    .local v3, "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getSubProtocolType()B

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 171
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;

    const/16 v7, -0x80

    invoke-direct {v6, v7}, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;-><init>(B)V

    throw v6

    .line 115
    :pswitch_0
    if-nez v2, :cond_2

    .line 118
    invoke-direct {p0, p1, v3}, Lcom/felicanetworks/felica/impl/tcap/v21/NeutralState21;->handleError(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 107
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_2
    new-instance v7, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    invoke-direct {v7, v6, v9}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v7

    .line 130
    :pswitch_1
    if-nez v2, :cond_3

    .line 133
    invoke-direct {p0, p1, v3}, Lcom/felicanetworks/felica/impl/tcap/v21/NeutralState21;->handleFarewell(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    goto :goto_1

    .line 138
    :cond_3
    new-instance v7, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    invoke-direct {v7, v6, v9}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v7

    .line 145
    :pswitch_2
    if-nez v1, :cond_1

    .line 147
    invoke-direct {p0, p1, v3}, Lcom/felicanetworks/felica/impl/tcap/v21/NeutralState21;->handleApplicationDataTransfer(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v1, v6

    .line 149
    :goto_2
    goto :goto_1

    :cond_4
    move v1, v7

    .line 147
    goto :goto_2

    .line 153
    :pswitch_3
    if-nez v1, :cond_1

    .line 155
    invoke-direct {p0, p1, v3}, Lcom/felicanetworks/felica/impl/tcap/v21/NeutralState21;->handleUpdateEntity(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v1, v6

    .line 157
    :goto_3
    goto :goto_1

    :cond_5
    move v1, v7

    .line 155
    goto :goto_3

    .line 161
    :pswitch_4
    if-nez v1, :cond_1

    .line 163
    invoke-direct {p0, p1, v3}, Lcom/felicanetworks/felica/impl/tcap/v21/NeutralState21;->handleOperateEntity(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v1, v6

    .line 165
    :goto_4
    goto :goto_1

    :cond_6
    move v1, v7

    .line 163
    goto :goto_4

    .line 182
    .end local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    :cond_7
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getSession()Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->getAgent()Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    move-result-object v0

    .line 185
    .local v0, "agent":Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5, v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->doTCAPTransaction(Ljava/lang/String;Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;)V

    .line 186
    return-void

    .line 112
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
