.class Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;
.super Lcom/felicanetworks/felica/impl/tcap/Packet;
.source "ErrorPacket21.java"


# static fields
.field static final MID_FINISHED:I = 0x0

.field static final MID_ILLEGAL_STATE_ERROR:I = 0x22

.field static final MID_PACKET_FORMAT_ERROR:I = 0x21

.field static final MID_UNEXPECTED_ERROR:I = 0x23

.field static final MID_WARNING:I = 0x1

.field private static final ORDER_COMPLETE:I = 0x2

.field private static final ORDER_ERROR:I = 0x3

.field private static final ORDER_FINISHED_WAIT:I = 0x1

.field private static final ORDER_FIRST:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 78
    const/16 v0, 0x201

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/felicanetworks/felica/impl/tcap/Packet;-><init>(IB)V

    .line 79
    return-void
.end method

.method constructor <init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V
    .locals 0
    .param p1, "packet"    # Lcom/felicanetworks/felica/impl/tcap/Packet;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/impl/tcap/Packet;-><init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 91
    return-void
.end method

.method private validateMessageOrder()Z
    .locals 4

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    const/4 v2, 0x0

    .line 237
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 306
    :goto_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v3, 0x1

    :goto_2
    return v3

    .line 239
    :cond_0
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 241
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 245
    :pswitch_0
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 262
    const/4 v2, 0x3

    .line 237
    :goto_3
    :pswitch_1
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    :sswitch_1
    const/4 v2, 0x1

    .line 252
    goto :goto_3

    .line 270
    :pswitch_2
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 285
    const/4 v2, 0x3

    .line 288
    goto :goto_3

    .line 274
    :pswitch_3
    const/4 v2, 0x2

    .line 275
    goto :goto_3

    .line 294
    :pswitch_4
    const/4 v2, 0x3

    .line 295
    goto :goto_3

    .line 306
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 245
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x21 -> :sswitch_1
        0x22 -> :sswitch_1
        0x23 -> :sswitch_1
    .end sparse-switch

    .line 270
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
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

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    iget v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;->offset:I

    add-int/lit8 v4, v6, 0x5

    .line 106
    .local v4, "pos":I
    const/4 v5, 0x0

    .line 108
    .local v5, "unsupported":Z
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;->messages:Ljava/util/Vector;

    .line 110
    :goto_0
    iget v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;->offset:I

    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;->size:I

    add-int/2addr v6, v7

    if-lt v4, v6, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;->validateMessageOrder()Z

    move-result v6

    if-nez v6, :cond_5

    .line 204
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;->messages:Ljava/util/Vector;

    .line 206
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 207
    const/16 v7, 0x46

    .line 206
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 112
    :cond_0
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;->data:[B

    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;->size:I

    invoke-direct {v0, v6, v4, v7}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>([BII)V

    .line 115
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-eqz v6, :cond_1

    .line 117
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    if-nez v6, :cond_1

    .line 119
    new-array v3, v11, [B

    .line 121
    .local v3, "params":[B
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    and-int/2addr v6, v12

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v9

    .line 123
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v10

    .line 125
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;->messages:Ljava/util/Vector;

    .line 127
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 128
    const/16 v7, 0x43

    .line 127
    invoke-direct {v6, v7, v3}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 133
    .end local v3    # "params":[B
    :cond_1
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-nez v6, :cond_2

    .line 135
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 153
    const/4 v5, 0x1

    .line 165
    :goto_1
    :sswitch_0
    if-eqz v5, :cond_3

    .line 167
    const/4 v6, 0x5

    new-array v3, v6, [B

    .line 169
    .restart local v3    # "params":[B
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getExtension()B

    move-result v6

    aput-byte v6, v3, v9

    .line 171
    iget-byte v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;->subProtocolType:B

    aput-byte v6, v3, v10

    .line 173
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getType()B

    move-result v6

    aput-byte v6, v3, v11

    .line 175
    const/4 v6, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    and-int/2addr v7, v12

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 177
    const/4 v6, 0x4

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 179
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;->messages:Ljava/util/Vector;

    .line 181
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 182
    const/16 v7, 0x44

    .line 181
    invoke-direct {v6, v7, v3}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 141
    .end local v3    # "params":[B
    :sswitch_1
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .local v1, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 142
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 148
    :sswitch_2
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 149
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 161
    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    .line 187
    :cond_3
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->validateFormat()Z

    move-result v6

    if-nez v6, :cond_4

    .line 189
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;->messages:Ljava/util/Vector;

    .line 191
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 192
    const/16 v7, 0x45

    .line 191
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 195
    :cond_4
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 197
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getSize()I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_0

    .line 211
    :cond_5
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_2
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_6

    .line 223
    return-void

    .line 213
    :cond_6
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;->messages:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 215
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->validateData()Z

    move-result v6

    if-nez v6, :cond_7

    .line 217
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;->messages:Ljava/util/Vector;

    .line 219
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 220
    const/16 v7, 0x47

    .line 219
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 211
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 135
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x21 -> :sswitch_2
        0x22 -> :sswitch_2
        0x23 -> :sswitch_2
    .end sparse-switch
.end method
