.class Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;
.super Lcom/felicanetworks/felica/impl/tcap/Packet;
.source "OperateEntityPacket21.java"


# static fields
.field static final MID_CLOSE_RW_REQUEST:I = 0x105

.field static final MID_DEVICE_RESPONSE:I = 0x26

.field static final MID_FINISHED:I = 0x0

.field static final MID_OPEN_RW_REQUEST:I = 0x101

.field static final MID_OPERATE_DEVICE:I = 0x25

.field static final MID_PLAY_SOUND:I = 0x81

.field static final MID_WARNING:I = 0x1

.field static final MT_CLOSE_RW_STATUS:I = 0x106

.field static final MT_OPEN_RW_STATUS:I = 0x102

.field private static final ORDER_COMPLETE:I = 0x2

.field private static final ORDER_ERROR:I = 0x3

.field private static final ORDER_FINISHED_WAIT:I = 0x1

.field private static final ORDER_FIRST:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 99
    const/16 v0, 0x201

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/felicanetworks/felica/impl/tcap/Packet;-><init>(IB)V

    .line 100
    return-void
.end method

.method constructor <init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V
    .locals 0
    .param p1, "packet"    # Lcom/felicanetworks/felica/impl/tcap/Packet;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/impl/tcap/Packet;-><init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 112
    return-void
.end method

.method private validateMessageOrder()Z
    .locals 4

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    const/4 v2, 0x0

    .line 287
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 342
    :goto_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    return v3

    .line 289
    :cond_0
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 291
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 295
    :pswitch_0
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 310
    const/4 v2, 0x1

    .line 287
    :cond_1
    :goto_3
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :pswitch_2
    const/4 v2, 0x3

    .line 300
    goto :goto_3

    .line 319
    :pswitch_3
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v3

    if-nez v3, :cond_1

    .line 322
    const/4 v2, 0x2

    .line 324
    goto :goto_3

    .line 330
    :pswitch_4
    const/4 v2, 0x3

    .line 331
    goto :goto_3

    .line 342
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 295
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
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

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    iget v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;->offset:I

    add-int/lit8 v4, v6, 0x5

    .line 127
    .local v4, "pos":I
    const/4 v5, 0x0

    .line 129
    .local v5, "unsupported":Z
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;->messages:Ljava/util/Vector;

    .line 131
    :goto_0
    iget v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;->offset:I

    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;->size:I

    add-int/2addr v6, v7

    if-lt v4, v6, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;->validateMessageOrder()Z

    move-result v6

    if-nez v6, :cond_8

    .line 254
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;->messages:Ljava/util/Vector;

    .line 256
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 257
    const/16 v7, 0x46

    .line 256
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 133
    :cond_0
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;->data:[B

    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;->size:I

    invoke-direct {v0, v6, v4, v7}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>([BII)V

    .line 136
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-eqz v6, :cond_1

    .line 138
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    if-nez v6, :cond_1

    .line 140
    new-array v3, v9, [B

    .line 142
    .local v3, "params":[B
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    const v7, 0xff00

    and-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v10

    .line 144
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v11

    .line 146
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;->messages:Ljava/util/Vector;

    .line 148
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 149
    const/16 v7, 0x43

    .line 148
    invoke-direct {v6, v7, v3}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 153
    .end local v3    # "params":[B
    :cond_1
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 210
    const/4 v5, 0x1

    .line 215
    :cond_2
    :goto_1
    if-eqz v5, :cond_6

    .line 217
    const/4 v6, 0x5

    new-array v3, v6, [B

    .line 219
    .restart local v3    # "params":[B
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getExtension()B

    move-result v6

    aput-byte v6, v3, v10

    .line 221
    iget-byte v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;->subProtocolType:B

    aput-byte v6, v3, v11

    .line 223
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getType()B

    move-result v6

    aput-byte v6, v3, v9

    .line 225
    const/4 v6, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 227
    const/4 v6, 0x4

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    and-int/lit8 v7, v7, 0xf

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 229
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;->messages:Ljava/util/Vector;

    .line 231
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 232
    const/16 v7, 0x44

    .line 231
    invoke-direct {v6, v7, v3}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 156
    .end local v3    # "params":[B
    :sswitch_0
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-eqz v6, :cond_2

    .line 158
    const/4 v5, 0x1

    .line 160
    goto :goto_1

    .line 164
    :sswitch_1
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-nez v6, :cond_3

    .line 166
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .local v1, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 168
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 170
    :cond_3
    const/4 v5, 0x1

    .line 172
    goto :goto_1

    .line 176
    :sswitch_2
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-ge v6, v9, :cond_4

    .line 178
    const/4 v5, 0x1

    .line 180
    goto :goto_1

    .line 182
    :cond_4
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/OperateDeviceMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 185
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 189
    :sswitch_3
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-nez v6, :cond_5

    .line 191
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/v21/PlaySoundMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/v21/PlaySoundMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 193
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 195
    :cond_5
    const/4 v5, 0x1

    .line 197
    goto :goto_1

    .line 202
    :sswitch_4
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    instance-of v6, v6, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    if-nez v6, :cond_2

    .line 204
    const/4 v5, 0x1

    .line 206
    goto :goto_1

    .line 237
    :cond_6
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->validateFormat()Z

    move-result v6

    if-nez v6, :cond_7

    .line 239
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;->messages:Ljava/util/Vector;

    .line 241
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 242
    const/16 v7, 0x45

    .line 241
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 245
    :cond_7
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 247
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getSize()I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_0

    .line 261
    :cond_8
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_2
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_9

    .line 273
    return-void

    .line 263
    :cond_9
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 265
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->validateData()Z

    move-result v6

    if-nez v6, :cond_a

    .line 267
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;->messages:Ljava/util/Vector;

    .line 269
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 270
    const/16 v7, 0x47

    .line 269
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 261
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 153
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x25 -> :sswitch_2
        0x81 -> :sswitch_3
        0x101 -> :sswitch_4
        0x105 -> :sswitch_4
    .end sparse-switch
.end method
