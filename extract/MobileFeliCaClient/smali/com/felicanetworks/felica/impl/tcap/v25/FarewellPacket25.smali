.class Lcom/felicanetworks/felica/impl/tcap/v25/FarewellPacket25;
.super Lcom/felicanetworks/felica/impl/tcap/Packet;
.source "FarewellPacket25.java"


# static fields
.field static final MID_RETURN_CODE:I = 0x25

.field static final MID_SERVER_GOOD_BYE:I = 0x23

.field static final MID_SERVER_GOOD_BYE_DONE:I = 0x24

.field static final MID_WARNING:I = 0x1

.field private static final ORDER_COMPLETE:I = 0x3

.field private static final ORDER_ERROR:I = 0x4

.field private static final ORDER_FIRST:I = 0x0

.field private static final ORDER_RETURN_CODE_WAIT:I = 0x1

.field private static final ORDER_SERVER_GOOD_BYE_DONE_WAIT:I = 0x2


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "verion"    # I

    .prologue
    .line 80
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/felicanetworks/felica/impl/tcap/Packet;-><init>(IB)V

    .line 81
    return-void
.end method

.method constructor <init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V
    .locals 0
    .param p1, "packet"    # Lcom/felicanetworks/felica/impl/tcap/Packet;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/impl/tcap/Packet;-><init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 93
    return-void
.end method

.method private validateMessageOrder()Z
    .locals 4

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    const/4 v2, 0x0

    .line 239
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FarewellPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 339
    :goto_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v3, 0x1

    :goto_2
    return v3

    .line 241
    :cond_0
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FarewellPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 243
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 247
    :pswitch_0
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getType()B

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 262
    const/4 v2, 0x4

    .line 239
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
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getType()B

    move-result v3

    sparse-switch v3, :sswitch_data_1

    .line 285
    const/4 v2, 0x4

    .line 288
    goto :goto_3

    .line 274
    :sswitch_2
    const/4 v2, 0x2

    .line 275
    goto :goto_3

    .line 293
    :pswitch_3
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getType()B

    move-result v3

    sparse-switch v3, :sswitch_data_2

    .line 308
    const/4 v2, 0x4

    .line 311
    goto :goto_3

    .line 297
    :sswitch_3
    const/4 v2, 0x3

    .line 298
    goto :goto_3

    .line 316
    :pswitch_4
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getType()B

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 325
    const/4 v2, 0x4

    .line 328
    goto :goto_3

    .line 339
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 247
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x23 -> :sswitch_1
    .end sparse-switch

    .line 270
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_0
        0x25 -> :sswitch_2
    .end sparse-switch

    .line 293
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_0
        0x24 -> :sswitch_3
    .end sparse-switch

    .line 316
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

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    iget v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FarewellPacket25;->offset:I

    add-int/lit8 v4, v6, 0x5

    .line 108
    .local v4, "pos":I
    const/4 v5, 0x0

    .line 110
    .local v5, "unsupported":Z
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FarewellPacket25;->messages:Ljava/util/Vector;

    .line 112
    :goto_0
    iget v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FarewellPacket25;->offset:I

    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FarewellPacket25;->size:I

    add-int/2addr v6, v7

    if-lt v4, v6, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/v25/FarewellPacket25;->validateMessageOrder()Z

    move-result v6

    if-nez v6, :cond_5

    .line 206
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FarewellPacket25;->messages:Ljava/util/Vector;

    .line 208
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 209
    const/16 v7, 0x46

    .line 208
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 114
    :cond_0
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FarewellPacket25;->data:[B

    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FarewellPacket25;->size:I

    invoke-direct {v0, v6, v4, v7}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>([BII)V

    .line 117
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-eqz v6, :cond_1

    .line 119
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v6

    if-nez v6, :cond_1

    .line 121
    new-array v3, v11, [B

    .line 123
    .local v3, "params":[B
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    and-int/2addr v6, v12

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v9

    .line 125
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v10

    .line 127
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FarewellPacket25;->messages:Ljava/util/Vector;

    .line 129
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 130
    const/16 v7, 0x43

    .line 129
    invoke-direct {v6, v7, v3}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 134
    .end local v3    # "params":[B
    :cond_1
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v6

    if-nez v6, :cond_2

    .line 137
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 155
    const/4 v5, 0x1

    .line 167
    :goto_1
    :sswitch_0
    if-eqz v5, :cond_3

    .line 169
    const/4 v6, 0x5

    new-array v3, v6, [B

    .line 171
    .restart local v3    # "params":[B
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getExtension()B

    move-result v6

    aput-byte v6, v3, v9

    .line 173
    iget-byte v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FarewellPacket25;->subProtocolType:B

    aput-byte v6, v3, v10

    .line 175
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getType()B

    move-result v6

    aput-byte v6, v3, v11

    .line 177
    const/4 v6, 0x3

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    and-int/2addr v7, v12

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 179
    const/4 v6, 0x4

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getDeviceID()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 181
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FarewellPacket25;->messages:Ljava/util/Vector;

    .line 183
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 184
    const/16 v7, 0x44

    .line 183
    invoke-direct {v6, v7, v3}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 140
    .end local v3    # "params":[B
    :sswitch_1
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/WarningMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .local v1, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 141
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 149
    :sswitch_2
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/ReturnCodeMessage;

    invoke-direct {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/ReturnCodeMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    move-object v0, v1

    .line 150
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    goto :goto_1

    .line 163
    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    .line 189
    :cond_3
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->validateFormat()Z

    move-result v6

    if-nez v6, :cond_4

    .line 191
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FarewellPacket25;->messages:Ljava/util/Vector;

    .line 193
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 194
    const/16 v7, 0x45

    .line 193
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 197
    :cond_4
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FarewellPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 199
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getSize()I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_0

    .line 213
    :cond_5
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_2
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FarewellPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_6

    .line 225
    return-void

    .line 215
    :cond_6
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FarewellPacket25;->messages:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 217
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->validateData()Z

    move-result v6

    if-nez v6, :cond_7

    .line 219
    iput-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FarewellPacket25;->messages:Ljava/util/Vector;

    .line 221
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 222
    const/16 v7, 0x47

    .line 221
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v6

    .line 213
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 137
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x23 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_2
    .end sparse-switch
.end method
