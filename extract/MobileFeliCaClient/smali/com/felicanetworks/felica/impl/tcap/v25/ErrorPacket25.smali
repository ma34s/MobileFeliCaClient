.class Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;
.super Lcom/felicanetworks/felica/impl/tcap/Packet;
.source "ErrorPacket25.java"


# static fields
.field static final MID_ILLEGAL_STATE_ERROR:I = 0x22

.field static final MID_PACKET_FORMAT_ERROR:I = 0x21

.field static final MID_UNEXPECTED_ERROR:I = 0x23

.field static final MID_WARNING:I = 0x1

.field private static final ORDER_COMPLETE:I = 0x1

.field private static final ORDER_ERROR:I = 0x2

.field private static final ORDER_FIRST:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 70
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/felicanetworks/felica/impl/tcap/Packet;-><init>(IB)V

    .line 71
    return-void
.end method

.method constructor <init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V
    .locals 0
    .param p1, "packet"    # Lcom/felicanetworks/felica/impl/tcap/Packet;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/impl/tcap/Packet;-><init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 83
    return-void
.end method

.method private validateMessageOrder()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    const/4 v2, 0x0

    .line 226
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 282
    :goto_1
    if-ne v2, v3, :cond_1

    :goto_2
    return v3

    .line 228
    :cond_0
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 230
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 234
    :pswitch_0
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getType()B

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 251
    const/4 v2, 0x2

    .line 226
    :goto_3
    :pswitch_1
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :sswitch_1
    const/4 v2, 0x1

    .line 241
    goto :goto_3

    .line 259
    :pswitch_2
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getType()B

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 268
    const/4 v2, 0x2

    .line 271
    goto :goto_3

    .line 282
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 234
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x21 -> :sswitch_1
        0x22 -> :sswitch_1
        0x23 -> :sswitch_1
    .end sparse-switch

    .line 259
    :pswitch_data_1
    .packed-switch 0x1
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

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    iget v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;->offset:I

    add-int/lit8 v4, v6, 0x5

    .line 98
    .local v4, "pos":I
    const/4 v5, 0x0

    .line 100
    .local v5, "unsupported":Z
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;->messages:Ljava/util/Vector;

    .line 102
    :goto_0
    iget v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;->offset:I

    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;->size:I

    add-int/2addr v6, v7

    if-lt v4, v6, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;->validateMessageOrder()Z

    move-result v6

    if-nez v6, :cond_5

    .line 193
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;->messages:Ljava/util/Vector;

    .line 195
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 196
    const/16 v7, 0x46

    .line 195
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 104
    :cond_0
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;->data:[B

    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;->size:I

    invoke-direct {v0, v6, v4, v7}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>([BII)V

    .line 107
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-eqz v6, :cond_1

    .line 109
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    if-nez v6, :cond_1

    .line 111
    new-array v3, v11, [B

    .line 113
    .local v3, "params":[B
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    and-int/2addr v6, v12

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v9

    .line 115
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v10

    .line 117
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;->messages:Ljava/util/Vector;

    .line 119
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 120
    const/16 v7, 0x43

    .line 119
    invoke-direct {v6, v7, v3}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 125
    .end local v3    # "params":[B
    :cond_1
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-nez v6, :cond_2

    .line 127
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 142
    const/4 v5, 0x1

    .line 154
    :goto_1
    if-eqz v5, :cond_3

    .line 156
    const/4 v6, 0x5

    new-array v3, v6, [B

    .line 158
    .restart local v3    # "params":[B
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getExtension()B

    move-result v6

    aput-byte v6, v3, v9

    .line 160
    iget-byte v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;->subProtocolType:B

    aput-byte v6, v3, v10

    .line 162
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getType()B

    move-result v6

    aput-byte v6, v3, v11

    .line 164
    const/4 v6, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    and-int/2addr v7, v12

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 166
    const/4 v6, 0x4

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 168
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;->messages:Ljava/util/Vector;

    .line 170
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 171
    const/16 v7, 0x44

    .line 170
    invoke-direct {v6, v7, v3}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 130
    .end local v3    # "params":[B
    :sswitch_0
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .local v1, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 131
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 137
    :sswitch_1
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 138
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 150
    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    .line 176
    :cond_3
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->validateFormat()Z

    move-result v6

    if-nez v6, :cond_4

    .line 178
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;->messages:Ljava/util/Vector;

    .line 180
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 181
    const/16 v7, 0x45

    .line 180
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 184
    :cond_4
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 186
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getSize()I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_0

    .line 200
    :cond_5
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_2
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_6

    .line 212
    return-void

    .line 202
    :cond_6
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 204
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->validateData()Z

    move-result v6

    if-nez v6, :cond_7

    .line 206
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;->messages:Ljava/util/Vector;

    .line 208
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 209
    const/16 v7, 0x47

    .line 208
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 200
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x21 -> :sswitch_1
        0x22 -> :sswitch_1
        0x23 -> :sswitch_1
    .end sparse-switch
.end method
