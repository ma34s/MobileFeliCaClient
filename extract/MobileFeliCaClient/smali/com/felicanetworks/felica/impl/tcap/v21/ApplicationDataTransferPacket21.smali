.class Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;
.super Lcom/felicanetworks/felica/impl/tcap/Packet;
.source "ApplicationDataTransferPacket21.java"


# static fields
.field static final MID_FELICA_COMMAND:I = 0x101

.field static final MID_FINISHED:I = 0x0

.field static final MID_WARNING:I = 0x1

.field private static final ORDER_COMPLETE:I = 0x2

.field private static final ORDER_ERROR:I = 0x3

.field private static final ORDER_FINISHED_WAIT:I = 0x1

.field private static final ORDER_FIRST:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 69
    const/16 v0, 0x201

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/felicanetworks/felica/impl/tcap/Packet;-><init>(IB)V

    .line 70
    return-void
.end method

.method constructor <init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V
    .locals 0
    .param p1, "packet"    # Lcom/felicanetworks/felica/impl/tcap/Packet;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/impl/tcap/Packet;-><init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 82
    return-void
.end method

.method private validateMessageOrder()Z
    .locals 4

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    const/4 v2, 0x0

    .line 235
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 290
    :goto_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    return v3

    .line 237
    :cond_0
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 239
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 243
    :pswitch_0
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 258
    const/4 v2, 0x1

    .line 235
    :cond_1
    :goto_3
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    :pswitch_2
    const/4 v2, 0x3

    .line 248
    goto :goto_3

    .line 267
    :pswitch_3
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v3

    if-nez v3, :cond_1

    .line 270
    const/4 v2, 0x2

    .line 272
    goto :goto_3

    .line 278
    :pswitch_4
    const/4 v2, 0x3

    .line 279
    goto :goto_3

    .line 290
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 243
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
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

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    iget v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;->offset:I

    add-int/lit8 v4, v6, 0x5

    .line 97
    .local v4, "pos":I
    const/4 v5, 0x0

    .line 99
    .local v5, "unsupported":Z
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;->messages:Ljava/util/Vector;

    .line 101
    :goto_0
    iget v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;->offset:I

    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;->size:I

    add-int/2addr v6, v7

    if-lt v4, v6, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;->validateMessageOrder()Z

    move-result v6

    if-nez v6, :cond_7

    .line 202
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;->messages:Ljava/util/Vector;

    .line 204
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 205
    const/16 v7, 0x46

    .line 204
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 103
    :cond_0
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;->data:[B

    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;->size:I

    invoke-direct {v0, v6, v4, v7}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>([BII)V

    .line 106
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-eqz v6, :cond_1

    .line 108
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    if-nez v6, :cond_1

    .line 110
    new-array v3, v11, [B

    .line 112
    .local v3, "params":[B
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    and-int/2addr v6, v12

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v9

    .line 114
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v10

    .line 116
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;->messages:Ljava/util/Vector;

    .line 118
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 119
    const/16 v7, 0x43

    .line 118
    invoke-direct {v6, v7, v3}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 123
    .end local v3    # "params":[B
    :cond_1
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 157
    const/4 v5, 0x1

    .line 163
    :cond_2
    :goto_1
    if-eqz v5, :cond_5

    .line 165
    const/4 v6, 0x5

    new-array v3, v6, [B

    .line 167
    .restart local v3    # "params":[B
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getExtension()B

    move-result v6

    aput-byte v6, v3, v9

    .line 169
    iget-byte v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;->subProtocolType:B

    aput-byte v6, v3, v10

    .line 171
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getType()B

    move-result v6

    aput-byte v6, v3, v11

    .line 173
    const/4 v6, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    and-int/2addr v7, v12

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 175
    const/4 v6, 0x4

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 177
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;->messages:Ljava/util/Vector;

    .line 179
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 180
    const/16 v7, 0x44

    .line 179
    invoke-direct {v6, v7, v3}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 126
    .end local v3    # "params":[B
    :sswitch_0
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-eqz v6, :cond_2

    .line 128
    const/4 v5, 0x1

    .line 130
    goto :goto_1

    .line 134
    :sswitch_1
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-nez v6, :cond_3

    .line 136
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .local v1, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 137
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 139
    :cond_3
    const/4 v5, 0x1

    .line 141
    goto :goto_1

    .line 145
    :sswitch_2
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    instance-of v6, v6, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    if-eqz v6, :cond_4

    .line 147
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/FeliCaCommandMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/FeliCaCommandMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 149
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 151
    :cond_4
    const/4 v5, 0x1

    .line 153
    goto :goto_1

    .line 185
    :cond_5
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->validateFormat()Z

    move-result v6

    if-nez v6, :cond_6

    .line 187
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;->messages:Ljava/util/Vector;

    .line 189
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 190
    const/16 v7, 0x45

    .line 189
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 193
    :cond_6
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 195
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getSize()I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_0

    .line 209
    :cond_7
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_2
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_8

    .line 221
    return-void

    .line 211
    :cond_8
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 213
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->validateData()Z

    move-result v6

    if-nez v6, :cond_9

    .line 215
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;->messages:Ljava/util/Vector;

    .line 217
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 218
    const/16 v7, 0x47

    .line 217
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 209
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 123
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x101 -> :sswitch_2
    .end sparse-switch
.end method
