.class Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;
.super Lcom/felicanetworks/felica/impl/tcap/Packet;
.source "UpdateEntityPacket21.java"


# static fields
.field static final MID_FINISHED:I = 0x0

.field static final MID_SELECTED_FELICA_DEVICE:I = 0x103

.field static final MID_SELECT_INTERNAL_FELICA:I = 0x101

.field static final MID_SET_FELICA_TIMEOUT:I = 0x181

.field static final MID_SET_NETWORK_TIMEOUT:I = 0x81

.field static final MID_SET_RETRY_COUNT:I = 0x182

.field static final MID_WARNING:I = 0x1

.field private static final ORDER_COMPLETE:I = 0x2

.field private static final ORDER_ERROR:I = 0x3

.field private static final ORDER_FINISHED_WAIT:I = 0x1

.field private static final ORDER_FIRST:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 91
    const/16 v0, 0x201

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/felicanetworks/felica/impl/tcap/Packet;-><init>(IB)V

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
    .locals 4

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    const/4 v2, 0x0

    .line 289
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 344
    :goto_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    return v3

    .line 291
    :cond_0
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 293
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 297
    :pswitch_0
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 312
    const/4 v2, 0x1

    .line 289
    :cond_1
    :goto_3
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    :pswitch_2
    const/4 v2, 0x3

    .line 302
    goto :goto_3

    .line 321
    :pswitch_3
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v3

    if-nez v3, :cond_1

    .line 324
    const/4 v2, 0x2

    .line 326
    goto :goto_3

    .line 332
    :pswitch_4
    const/4 v2, 0x3

    .line 333
    goto :goto_3

    .line 344
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 297
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
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    iget v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;->offset:I

    add-int/lit8 v4, v6, 0x5

    .line 119
    .local v4, "pos":I
    const/4 v5, 0x0

    .line 121
    .local v5, "unsupported":Z
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;->messages:Ljava/util/Vector;

    .line 123
    :goto_0
    iget v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;->offset:I

    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;->size:I

    add-int/2addr v6, v7

    if-lt v4, v6, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;->validateMessageOrder()Z

    move-result v6

    if-nez v6, :cond_9

    .line 256
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;->messages:Ljava/util/Vector;

    .line 258
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 259
    const/16 v7, 0x46

    .line 258
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 125
    :cond_0
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;->data:[B

    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;->size:I

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

    const v7, 0xff00

    and-int/2addr v6, v7

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
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;->messages:Ljava/util/Vector;

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

    .line 212
    const/4 v5, 0x1

    .line 217
    :cond_2
    :goto_1
    if-eqz v5, :cond_7

    .line 219
    const/4 v6, 0x5

    new-array v3, v6, [B

    .line 221
    .restart local v3    # "params":[B
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getExtension()B

    move-result v6

    aput-byte v6, v3, v9

    .line 223
    iget-byte v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;->subProtocolType:B

    aput-byte v6, v3, v10

    .line 225
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getType()B

    move-result v6

    aput-byte v6, v3, v11

    .line 227
    const/4 v6, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 229
    const/4 v6, 0x4

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    and-int/lit8 v7, v7, 0xf

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 231
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;->messages:Ljava/util/Vector;

    .line 233
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 234
    const/16 v7, 0x44

    .line 233
    invoke-direct {v6, v7, v3}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 148
    .end local v3    # "params":[B
    :sswitch_0
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-eqz v6, :cond_2

    .line 150
    const/4 v5, 0x1

    .line 152
    goto :goto_1

    .line 156
    :sswitch_1
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-nez v6, :cond_3

    .line 158
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .local v1, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 160
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 162
    :cond_3
    const/4 v5, 0x1

    .line 164
    goto :goto_1

    .line 168
    :sswitch_2
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-nez v6, :cond_4

    .line 170
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/SetNetworkTimeoutMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/SetNetworkTimeoutMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 172
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 174
    :cond_4
    const/4 v5, 0x1

    .line 176
    goto :goto_1

    .line 180
    :sswitch_3
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    instance-of v6, v6, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    if-nez v6, :cond_2

    .line 182
    const/4 v5, 0x1

    .line 184
    goto :goto_1

    .line 188
    :sswitch_4
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    instance-of v6, v6, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    if-eqz v6, :cond_5

    .line 190
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/SetFelicaTimeoutMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/SetFelicaTimeoutMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 192
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 194
    :cond_5
    const/4 v5, 0x1

    .line 196
    goto :goto_1

    .line 200
    :sswitch_5
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    instance-of v6, v6, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    if-eqz v6, :cond_6

    .line 202
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/SetRetryCountMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/SetRetryCountMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 204
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto/16 :goto_1

    .line 206
    :cond_6
    const/4 v5, 0x1

    .line 208
    goto/16 :goto_1

    .line 239
    :cond_7
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->validateFormat()Z

    move-result v6

    if-nez v6, :cond_8

    .line 241
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;->messages:Ljava/util/Vector;

    .line 243
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 244
    const/16 v7, 0x45

    .line 243
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 247
    :cond_8
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 249
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getSize()I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_0

    .line 263
    :cond_9
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_2
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_a

    .line 275
    return-void

    .line 265
    :cond_a
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 267
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->validateData()Z

    move-result v6

    if-nez v6, :cond_b

    .line 269
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;->messages:Ljava/util/Vector;

    .line 271
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 272
    const/16 v7, 0x47

    .line 271
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 263
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 145
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x81 -> :sswitch_2
        0x101 -> :sswitch_3
        0x181 -> :sswitch_4
        0x182 -> :sswitch_5
    .end sparse-switch
.end method
