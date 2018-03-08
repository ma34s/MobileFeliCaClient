.class Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;
.super Lcom/felicanetworks/felica/impl/tcap/Packet;
.source "OperateEntityPacket25.java"


# static fields
.field static final MID_CLOSE_RW_REQUEST:I = 0x105

.field static final MID_DEVICE_RESPONSE:I = 0x26

.field static final MID_OPEN_RW_REQUEST:I = 0x101

.field static final MID_OPERATE_DEVICE:I = 0x25

.field static final MID_WARNING:I = 0x1

.field static final MT_CLOSE_RW_STATUS:I = 0x106

.field static final MT_OPEN_RW_STATUS:I = 0x102


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 71
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/felicanetworks/felica/impl/tcap/Packet;-><init>(IB)V

    .line 72
    return-void
.end method

.method constructor <init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V
    .locals 0
    .param p1, "packet"    # Lcom/felicanetworks/felica/impl/tcap/Packet;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/impl/tcap/Packet;-><init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 84
    return-void
.end method

.method private validateMessageOrder()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    const/4 v0, 0x0

    .line 238
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 248
    if-lez v0, :cond_2

    :goto_1
    return v3

    .line 240
    :cond_0
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v1, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 242
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 244
    add-int/lit8 v0, v0, 0x1

    .line 238
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
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
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    iget v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;->offset:I

    add-int/lit8 v4, v6, 0x5

    .line 99
    .local v4, "pos":I
    const/4 v5, 0x0

    .line 101
    .local v5, "unsupported":Z
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;->messages:Ljava/util/Vector;

    .line 103
    :goto_0
    iget v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;->offset:I

    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;->size:I

    add-int/2addr v6, v7

    if-lt v4, v6, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;->validateMessageOrder()Z

    move-result v6

    if-nez v6, :cond_7

    .line 205
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;->messages:Ljava/util/Vector;

    .line 207
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 208
    const/16 v7, 0x46

    .line 207
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 105
    :cond_0
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;->data:[B

    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;->size:I

    invoke-direct {v0, v6, v4, v7}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>([BII)V

    .line 108
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-eqz v6, :cond_1

    .line 110
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    if-nez v6, :cond_1

    .line 112
    new-array v3, v9, [B

    .line 114
    .local v3, "params":[B
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    const v7, 0xff00

    and-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v10

    .line 116
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v11

    .line 118
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;->messages:Ljava/util/Vector;

    .line 120
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 121
    const/16 v7, 0x43

    .line 120
    invoke-direct {v6, v7, v3}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 125
    .end local v3    # "params":[B
    :cond_1
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 161
    const/4 v5, 0x1

    .line 166
    :cond_2
    :goto_1
    if-eqz v5, :cond_5

    .line 168
    const/4 v6, 0x5

    new-array v3, v6, [B

    .line 170
    .restart local v3    # "params":[B
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getExtension()B

    move-result v6

    aput-byte v6, v3, v10

    .line 172
    iget-byte v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;->subProtocolType:B

    aput-byte v6, v3, v11

    .line 174
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getType()B

    move-result v6

    aput-byte v6, v3, v9

    .line 176
    const/4 v6, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 178
    const/4 v6, 0x4

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    and-int/lit8 v7, v7, 0xf

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 180
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;->messages:Ljava/util/Vector;

    .line 182
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 183
    const/16 v7, 0x44

    .line 182
    invoke-direct {v6, v7, v3}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 128
    .end local v3    # "params":[B
    :sswitch_0
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-nez v6, :cond_3

    .line 130
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .local v1, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 132
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 134
    :cond_3
    const/4 v5, 0x1

    .line 136
    goto :goto_1

    .line 140
    :sswitch_1
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-ge v6, v9, :cond_4

    .line 142
    const/4 v5, 0x1

    .line 144
    goto :goto_1

    .line 146
    :cond_4
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 148
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 153
    :sswitch_2
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    instance-of v6, v6, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    if-nez v6, :cond_2

    .line 155
    const/4 v5, 0x1

    .line 157
    goto :goto_1

    .line 188
    :cond_5
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->validateFormat()Z

    move-result v6

    if-nez v6, :cond_6

    .line 190
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;->messages:Ljava/util/Vector;

    .line 192
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 193
    const/16 v7, 0x45

    .line 192
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 196
    :cond_6
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 198
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getSize()I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_0

    .line 212
    :cond_7
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_2
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_8

    .line 224
    return-void

    .line 214
    :cond_8
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 216
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->validateData()Z

    move-result v6

    if-nez v6, :cond_9

    .line 218
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;->messages:Ljava/util/Vector;

    .line 220
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 221
    const/16 v7, 0x47

    .line 220
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 212
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 125
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x25 -> :sswitch_1
        0x101 -> :sswitch_2
        0x105 -> :sswitch_2
    .end sparse-switch
.end method
