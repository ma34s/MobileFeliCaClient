.class Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;
.super Lcom/felicanetworks/felica/impl/tcap/Packet;
.source "UpdateEntityPacket25.java"


# static fields
.field static final MID_REQUEST_ID:I = 0x30

.field static final MID_SET_FELICA_TIMEOUT:I = 0x181

.field static final MID_SET_NETWORK_TIMEOUT:I = 0x81

.field static final MID_SET_RETRY_COUNT:I = 0x182

.field static final MID_WARNING:I = 0x1


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 63
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/felicanetworks/felica/impl/tcap/Packet;-><init>(IB)V

    .line 64
    return-void
.end method

.method constructor <init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V
    .locals 0
    .param p1, "packet"    # Lcom/felicanetworks/felica/impl/tcap/Packet;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/impl/tcap/Packet;-><init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 76
    return-void
.end method

.method private validateMessageOrder()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 253
    const/4 v1, 0x0

    .line 254
    .local v1, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    const/4 v0, 0x0

    .line 257
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 267
    if-lez v0, :cond_2

    :goto_1
    return v3

    .line 259
    :cond_0
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v1, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 261
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 263
    add-int/lit8 v0, v0, 0x1

    .line 257
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public parseMessages(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V
    .locals 12
    .param p1, "deviceList"    # Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    iget v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;->offset:I

    add-int/lit8 v4, v6, 0x5

    .line 91
    .local v4, "pos":I
    const/4 v5, 0x0

    .line 93
    .local v5, "unsupported":Z
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;->messages:Ljava/util/Vector;

    .line 95
    :goto_0
    iget v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;->offset:I

    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;->size:I

    add-int/2addr v6, v7

    if-lt v4, v6, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;->validateMessageOrder()Z

    move-result v6

    if-nez v6, :cond_9

    .line 224
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;->messages:Ljava/util/Vector;

    .line 226
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 227
    const/16 v7, 0x46

    .line 226
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 97
    :cond_0
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;->data:[B

    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;->size:I

    invoke-direct {v0, v6, v4, v7}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>([BII)V

    .line 100
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-eqz v6, :cond_1

    .line 102
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    if-nez v6, :cond_1

    .line 104
    new-array v3, v11, [B

    .line 106
    .local v3, "params":[B
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    const v7, 0xff00

    and-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v9

    .line 108
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v10

    .line 110
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;->messages:Ljava/util/Vector;

    .line 112
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 113
    const/16 v7, 0x43

    .line 112
    invoke-direct {v6, v7, v3}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 117
    .end local v3    # "params":[B
    :cond_1
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 180
    const/4 v5, 0x1

    .line 185
    :goto_1
    if-eqz v5, :cond_7

    .line 187
    const/4 v6, 0x5

    new-array v3, v6, [B

    .line 189
    .restart local v3    # "params":[B
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getExtension()B

    move-result v6

    aput-byte v6, v3, v9

    .line 191
    iget-byte v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;->subProtocolType:B

    aput-byte v6, v3, v10

    .line 193
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getType()B

    move-result v6

    aput-byte v6, v3, v11

    .line 195
    const/4 v6, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 197
    const/4 v6, 0x4

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    and-int/lit8 v7, v7, 0xf

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 199
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;->messages:Ljava/util/Vector;

    .line 201
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 202
    const/16 v7, 0x44

    .line 201
    invoke-direct {v6, v7, v3}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 120
    .end local v3    # "params":[B
    :sswitch_0
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-nez v6, :cond_2

    .line 122
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .local v1, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 124
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 126
    :cond_2
    const/4 v5, 0x1

    .line 128
    goto :goto_1

    .line 132
    :sswitch_1
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-nez v6, :cond_3

    .line 134
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/SetNetworkTimeoutMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/SetNetworkTimeoutMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 136
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 138
    :cond_3
    const/4 v5, 0x1

    .line 140
    goto :goto_1

    .line 144
    :sswitch_2
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-nez v6, :cond_4

    .line 146
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/v25/RequestIdMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/v25/RequestIdMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 148
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 150
    :cond_4
    const/4 v5, 0x1

    .line 152
    goto :goto_1

    .line 156
    :sswitch_3
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    instance-of v6, v6, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    if-eqz v6, :cond_5

    .line 158
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/SetFelicaTimeoutMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/SetFelicaTimeoutMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 160
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 162
    :cond_5
    const/4 v5, 0x1

    .line 164
    goto :goto_1

    .line 168
    :sswitch_4
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    instance-of v6, v6, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    if-eqz v6, :cond_6

    .line 170
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/SetRetryCountMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/SetRetryCountMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 172
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto/16 :goto_1

    .line 174
    :cond_6
    const/4 v5, 0x1

    .line 176
    goto/16 :goto_1

    .line 207
    :cond_7
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->validateFormat()Z

    move-result v6

    if-nez v6, :cond_8

    .line 209
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;->messages:Ljava/util/Vector;

    .line 211
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 212
    const/16 v7, 0x45

    .line 211
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 215
    :cond_8
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 217
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getSize()I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_0

    .line 231
    :cond_9
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_2
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_a

    .line 243
    return-void

    .line 233
    :cond_a
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 235
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->validateData()Z

    move-result v6

    if-nez v6, :cond_b

    .line 237
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;->messages:Ljava/util/Vector;

    .line 239
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 240
    const/16 v7, 0x47

    .line 239
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 231
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 117
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x30 -> :sswitch_2
        0x81 -> :sswitch_1
        0x181 -> :sswitch_3
        0x182 -> :sswitch_4
    .end sparse-switch
.end method
