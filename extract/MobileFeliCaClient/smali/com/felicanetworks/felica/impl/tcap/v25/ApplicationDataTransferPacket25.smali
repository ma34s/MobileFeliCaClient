.class Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;
.super Lcom/felicanetworks/felica/impl/tcap/Packet;
.source "ApplicationDataTransferPacket25.java"


# static fields
.field static final MID_FELICA_COMMAND:I = 0x101

.field static final MID_FELICA_COMMAND_THRURW:I = 0x106

.field static final MID_FELICA_ERROR:I = 0x103

.field static final MID_FELICA_ERROR_THRURW:I = 0x108

.field static final MID_FELICA_EXCOMMAND:I = 0x105

.field static final MID_FELICA_EXCOMMAND_THRURW:I = 0x10a

.field static final MID_FELICA_PRECOMMAND:I = 0x104

.field static final MID_FELICA_PRECOMMAND_THRURW:I = 0x109

.field static final MID_FELICA_RESPONSE:I = 0x102

.field static final MID_FELICA_RESPONSE_THRURW:I = 0x107

.field static final MID_WARNING:I = 0x1


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 91
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/felicanetworks/felica/impl/tcap/Packet;-><init>(IB)V

    .line 92
    return-void
.end method

.method constructor <init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V
    .locals 0
    .param p1, "packet"    # Lcom/felicanetworks/felica/impl/tcap/Packet;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/impl/tcap/Packet;-><init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 104
    return-void
.end method

.method private validateMessageOrder()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 305
    const/4 v1, 0x0

    .line 306
    .local v1, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    const/4 v0, 0x0

    .line 309
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 319
    if-lez v0, :cond_2

    :goto_1
    return v3

    .line 311
    :cond_0
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v1, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 313
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 315
    add-int/lit8 v0, v0, 0x1

    .line 309
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public parseMessages(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V
    .locals 13
    .param p1, "deviceList"    # Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;
        }
    .end annotation

    .prologue
    const v12, 0xff00

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    iget v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;->offset:I

    add-int/lit8 v4, v6, 0x5

    .line 119
    .local v4, "pos":I
    const/4 v5, 0x0

    .line 121
    .local v5, "unsupported":Z
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;->messages:Ljava/util/Vector;

    .line 123
    :goto_0
    iget v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;->offset:I

    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;->size:I

    add-int/2addr v6, v7

    if-lt v4, v6, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;->validateMessageOrder()Z

    move-result v6

    if-nez v6, :cond_b

    .line 276
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;->messages:Ljava/util/Vector;

    .line 278
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 279
    const/16 v7, 0x46

    .line 278
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 125
    :cond_0
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;->data:[B

    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;->size:I

    invoke-direct {v0, v6, v4, v7}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>([BII)V

    .line 128
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-eqz v6, :cond_1

    .line 130
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    if-nez v6, :cond_1

    .line 132
    new-array v3, v11, [B

    .line 134
    .local v3, "params":[B
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    and-int/2addr v6, v12

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v9

    .line 136
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v10

    .line 138
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;->messages:Ljava/util/Vector;

    .line 140
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 141
    const/16 v7, 0x43

    .line 140
    invoke-direct {v6, v7, v3}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 145
    .end local v3    # "params":[B
    :cond_1
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 232
    const/4 v5, 0x1

    .line 237
    :goto_1
    if-eqz v5, :cond_9

    .line 239
    const/4 v6, 0x5

    new-array v3, v6, [B

    .line 241
    .restart local v3    # "params":[B
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getExtension()B

    move-result v6

    aput-byte v6, v3, v9

    .line 243
    iget-byte v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;->subProtocolType:B

    aput-byte v6, v3, v10

    .line 245
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getType()B

    move-result v6

    aput-byte v6, v3, v11

    .line 247
    const/4 v6, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    and-int/2addr v7, v12

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 249
    const/4 v6, 0x4

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 251
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;->messages:Ljava/util/Vector;

    .line 253
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 254
    const/16 v7, 0x44

    .line 253
    invoke-direct {v6, v7, v3}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 148
    .end local v3    # "params":[B
    :sswitch_0
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-nez v6, :cond_2

    .line 150
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .local v1, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 152
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 154
    :cond_2
    const/4 v5, 0x1

    .line 156
    goto :goto_1

    .line 160
    :sswitch_1
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    instance-of v6, v6, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    if-eqz v6, :cond_3

    .line 162
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/FeliCaCommandMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/FeliCaCommandMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 164
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 166
    :cond_3
    const/4 v5, 0x1

    .line 168
    goto :goto_1

    .line 172
    :sswitch_2
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    instance-of v6, v6, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    if-eqz v6, :cond_4

    .line 174
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaCommandThruRwMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaCommandThruRwMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 176
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 178
    :cond_4
    const/4 v5, 0x1

    .line 180
    goto :goto_1

    .line 184
    :sswitch_3
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    instance-of v6, v6, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    if-eqz v6, :cond_5

    .line 186
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 188
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 190
    :cond_5
    const/4 v5, 0x1

    .line 192
    goto/16 :goto_1

    .line 196
    :sswitch_4
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    instance-of v6, v6, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    if-eqz v6, :cond_6

    .line 198
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandThruRwMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandThruRwMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 200
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto/16 :goto_1

    .line 202
    :cond_6
    const/4 v5, 0x1

    .line 204
    goto/16 :goto_1

    .line 208
    :sswitch_5
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    instance-of v6, v6, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    if-eqz v6, :cond_7

    .line 210
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 212
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto/16 :goto_1

    .line 214
    :cond_7
    const/4 v5, 0x1

    .line 216
    goto/16 :goto_1

    .line 220
    :sswitch_6
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    instance-of v6, v6, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    if-eqz v6, :cond_8

    .line 222
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandThruRwMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandThruRwMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 224
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto/16 :goto_1

    .line 226
    :cond_8
    const/4 v5, 0x1

    .line 228
    goto/16 :goto_1

    .line 259
    :cond_9
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->validateFormat()Z

    move-result v6

    if-nez v6, :cond_a

    .line 261
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;->messages:Ljava/util/Vector;

    .line 263
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 264
    const/16 v7, 0x45

    .line 263
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 267
    :cond_a
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 269
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getSize()I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_0

    .line 283
    :cond_b
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_2
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_c

    .line 295
    return-void

    .line 285
    :cond_c
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 287
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->validateData()Z

    move-result v6

    if-nez v6, :cond_d

    .line 289
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;->messages:Ljava/util/Vector;

    .line 291
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 292
    const/16 v7, 0x47

    .line 291
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 283
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 145
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x101 -> :sswitch_1
        0x104 -> :sswitch_3
        0x105 -> :sswitch_5
        0x106 -> :sswitch_2
        0x109 -> :sswitch_4
        0x10a -> :sswitch_6
    .end sparse-switch
.end method
