.class Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;
.super Lcom/felicanetworks/felica/impl/tcap/Packet;
.source "HandshakePacket25.java"


# static fields
.field static final MID_ACCEPT:I = 0x81

.field static final MID_CLIENT_HELLO:I = 0x21

.field static final MID_CLIENT_HELLO_DONE:I = 0x22

.field static final MID_DEVICES:I = 0x25

.field static final MID_FEATURES:I = 0x26

.field static final MID_SERVER_HELLO:I = 0x23

.field static final MID_SERVER_HELLO_DONE:I = 0x24

.field static final MID_WARNING:I = 0x1

.field private static final ORDER_ACCEPT_WAIT:I = 0x1

.field private static final ORDER_COMPLETE:I = 0x3

.field private static final ORDER_ERROR:I = 0x4

.field private static final ORDER_FIRST:I = 0x0

.field private static final ORDER_SERVER_HELLO_DONE_WAIT:I = 0x2


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/felicanetworks/felica/impl/tcap/Packet;-><init>(IB)V

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
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    const/4 v2, 0x0

    .line 260
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 360
    :goto_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v3, 0x1

    :goto_2
    return v3

    .line 262
    :cond_0
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 264
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 268
    :pswitch_0
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getType()B

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 283
    const/4 v2, 0x4

    .line 260
    :goto_3
    :pswitch_1
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :sswitch_1
    const/4 v2, 0x1

    .line 273
    goto :goto_3

    .line 291
    :pswitch_2
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getType()B

    move-result v3

    sparse-switch v3, :sswitch_data_1

    .line 306
    const/4 v2, 0x4

    .line 309
    goto :goto_3

    .line 295
    :sswitch_2
    const/4 v2, 0x2

    .line 296
    goto :goto_3

    .line 314
    :pswitch_3
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getType()B

    move-result v3

    sparse-switch v3, :sswitch_data_2

    .line 329
    const/4 v2, 0x4

    .line 332
    goto :goto_3

    .line 318
    :sswitch_3
    const/4 v2, 0x3

    .line 319
    goto :goto_3

    .line 337
    :pswitch_4
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getType()B

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 346
    const/4 v2, 0x4

    .line 349
    goto :goto_3

    .line 360
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 268
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x23 -> :sswitch_1
    .end sparse-switch

    .line 291
    :sswitch_data_1
    .sparse-switch
        -0x7f -> :sswitch_2
        0x1 -> :sswitch_0
    .end sparse-switch

    .line 314
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_0
        0x24 -> :sswitch_3
    .end sparse-switch

    .line 337
    :pswitch_data_1
    .packed-switch 0x1
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

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    iget v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;->offset:I

    add-int/lit8 v4, v6, 0x5

    .line 127
    .local v4, "pos":I
    const/4 v5, 0x0

    .line 129
    .local v5, "unsupported":Z
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;->messages:Ljava/util/Vector;

    .line 131
    :goto_0
    iget v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;->offset:I

    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;->size:I

    add-int/2addr v6, v7

    if-lt v4, v6, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;->validateMessageOrder()Z

    move-result v6

    if-nez v6, :cond_5

    .line 227
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;->messages:Ljava/util/Vector;

    .line 229
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 230
    const/16 v7, 0x46

    .line 229
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 133
    :cond_0
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;->data:[B

    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;->size:I

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
    new-array v3, v11, [B

    .line 142
    .local v3, "params":[B
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    const v7, 0xff00

    and-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v9

    .line 144
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v10

    .line 146
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;->messages:Ljava/util/Vector;

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
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-nez v6, :cond_2

    .line 155
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 175
    const/4 v5, 0x1

    .line 188
    :goto_1
    :sswitch_0
    if-eqz v5, :cond_3

    .line 190
    const/4 v6, 0x5

    new-array v3, v6, [B

    .line 192
    .restart local v3    # "params":[B
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getExtension()B

    move-result v6

    aput-byte v6, v3, v9

    .line 194
    iget-byte v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;->subProtocolType:B

    aput-byte v6, v3, v10

    .line 196
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getType()B

    move-result v6

    aput-byte v6, v3, v11

    .line 198
    const/4 v6, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 200
    const/4 v6, 0x4

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    and-int/lit8 v7, v7, 0xf

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 202
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;->messages:Ljava/util/Vector;

    .line 204
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 205
    const/16 v7, 0x44

    .line 204
    invoke-direct {v6, v7, v3}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 158
    .end local v3    # "params":[B
    :sswitch_1
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .local v1, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 160
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 169
    :sswitch_2
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 170
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 184
    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    .line 210
    :cond_3
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->validateFormat()Z

    move-result v6

    if-nez v6, :cond_4

    .line 212
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;->messages:Ljava/util/Vector;

    .line 214
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 215
    const/16 v7, 0x45

    .line 214
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 218
    :cond_4
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 220
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getSize()I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_0

    .line 234
    :cond_5
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_2
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_6

    .line 246
    return-void

    .line 236
    :cond_6
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 238
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->validateData()Z

    move-result v6

    if-nez v6, :cond_7

    .line 240
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;->messages:Ljava/util/Vector;

    .line 242
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 243
    const/16 v7, 0x47

    .line 242
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 234
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 155
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x81 -> :sswitch_2
    .end sparse-switch
.end method
