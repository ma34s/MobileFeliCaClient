.class Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;
.super Lcom/felicanetworks/felica/impl/tcap/Packet;
.source "HandshakePacket21.java"


# static fields
.field static final MID_CLIENT_HELLO:I = 0x21

.field static final MID_CLIENT_HELLO_DONE:I = 0x22

.field static final MID_DEVICES:I = 0x25

.field static final MID_FINISHED:I = 0x0

.field static final MID_SERVER_HELLO:I = 0x23

.field static final MID_SERVER_HELLO_DONE:I = 0x24

.field static final MID_WARNING:I = 0x1

.field private static final ORDER_COMPLETE:I = 0x3

.field private static final ORDER_ERROR:I = 0x4

.field private static final ORDER_FINISHED_WAIT:I = 0x2

.field private static final ORDER_FIRST:I = 0x0

.field private static final ORDER_SERVER_HELLO_DONE_WAIT:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 92
    const/16 v0, 0x201

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/felicanetworks/felica/impl/tcap/Packet;-><init>(IB)V

    .line 93
    return-void
.end method

.method constructor <init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V
    .locals 0
    .param p1, "packet"    # Lcom/felicanetworks/felica/impl/tcap/Packet;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/impl/tcap/Packet;-><init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 105
    return-void
.end method

.method private validateMessageOrder()Z
    .locals 4

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    const/4 v2, 0x0

    .line 250
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 340
    :goto_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v3, 0x1

    :goto_2
    return v3

    .line 252
    :cond_0
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 254
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 258
    :pswitch_0
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 273
    const/4 v2, 0x4

    .line 250
    :goto_3
    :pswitch_1
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :sswitch_1
    const/4 v2, 0x1

    .line 263
    goto :goto_3

    .line 281
    :pswitch_2
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    .line 296
    const/4 v2, 0x4

    .line 299
    goto :goto_3

    .line 285
    :sswitch_2
    const/4 v2, 0x2

    .line 286
    goto :goto_3

    .line 304
    :pswitch_3
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 319
    const/4 v2, 0x4

    .line 322
    goto :goto_3

    .line 308
    :pswitch_4
    const/4 v2, 0x3

    .line 309
    goto :goto_3

    .line 328
    :pswitch_5
    const/4 v2, 0x4

    .line 329
    goto :goto_3

    .line 340
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 258
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x23 -> :sswitch_1
    .end sparse-switch

    .line 281
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_0
        0x24 -> :sswitch_2
    .end sparse-switch

    .line 304
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
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
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    iget v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;->offset:I

    add-int/lit8 v4, v6, 0x5

    .line 120
    .local v4, "pos":I
    const/4 v5, 0x0

    .line 122
    .local v5, "unsupported":Z
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;->messages:Ljava/util/Vector;

    .line 124
    :goto_0
    iget v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;->offset:I

    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;->size:I

    add-int/2addr v6, v7

    if-lt v4, v6, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;->validateMessageOrder()Z

    move-result v6

    if-nez v6, :cond_5

    .line 217
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;->messages:Ljava/util/Vector;

    .line 219
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 220
    const/16 v7, 0x46

    .line 219
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 126
    :cond_0
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;->data:[B

    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;->size:I

    invoke-direct {v0, v6, v4, v7}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>([BII)V

    .line 129
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-eqz v6, :cond_1

    .line 131
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    if-nez v6, :cond_1

    .line 133
    new-array v3, v11, [B

    .line 135
    .local v3, "params":[B
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    const v7, 0xff00

    and-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v9

    .line 137
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v10

    .line 139
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;->messages:Ljava/util/Vector;

    .line 141
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 142
    const/16 v7, 0x43

    .line 141
    invoke-direct {v6, v7, v3}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 146
    .end local v3    # "params":[B
    :cond_1
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-nez v6, :cond_2

    .line 148
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 165
    const/4 v5, 0x1

    .line 178
    :goto_1
    :sswitch_0
    if-eqz v5, :cond_3

    .line 180
    const/4 v6, 0x5

    new-array v3, v6, [B

    .line 182
    .restart local v3    # "params":[B
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getExtension()B

    move-result v6

    aput-byte v6, v3, v9

    .line 184
    iget-byte v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;->subProtocolType:B

    aput-byte v6, v3, v10

    .line 186
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getType()B

    move-result v6

    aput-byte v6, v3, v11

    .line 188
    const/4 v6, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 190
    const/4 v6, 0x4

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    and-int/lit8 v7, v7, 0xf

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 192
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;->messages:Ljava/util/Vector;

    .line 194
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 195
    const/16 v7, 0x44

    .line 194
    invoke-direct {v6, v7, v3}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 154
    .end local v3    # "params":[B
    :sswitch_1
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .local v1, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 156
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 174
    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    .line 200
    :cond_3
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->validateFormat()Z

    move-result v6

    if-nez v6, :cond_4

    .line 202
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;->messages:Ljava/util/Vector;

    .line 204
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 205
    const/16 v7, 0x45

    .line 204
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 208
    :cond_4
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getSize()I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_0

    .line 224
    :cond_5
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_2
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_6

    .line 236
    return-void

    .line 226
    :cond_6
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 228
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->validateData()Z

    move-result v6

    if-nez v6, :cond_7

    .line 230
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;->messages:Ljava/util/Vector;

    .line 232
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 233
    const/16 v7, 0x47

    .line 232
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 224
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 148
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
    .end sparse-switch
.end method
