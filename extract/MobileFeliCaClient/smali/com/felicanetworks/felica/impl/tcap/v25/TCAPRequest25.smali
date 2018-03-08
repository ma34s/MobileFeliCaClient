.class Lcom/felicanetworks/felica/impl/tcap/v25/TCAPRequest25;
.super Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;
.source "TCAPRequest25.java"


# instance fields
.field private paramPool:Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaParamPool;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;-><init>()V

    .line 34
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaParamPool;

    invoke-direct {v0}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaParamPool;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPRequest25;->paramPool:Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaParamPool;

    .line 35
    return-void
.end method

.method private validatePacketOrder(Lcom/felicanetworks/felica/impl/tcap/Packets;)Z
    .locals 8
    .param p1, "packets"    # Lcom/felicanetworks/felica/impl/tcap/Packets;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 162
    const/4 v3, 0x0

    .line 164
    .local v3, "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/Packets;->getPacketNum()I

    move-result v6

    if-nez v6, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v4

    .line 169
    :cond_1
    invoke-virtual {p1, v4}, Lcom/felicanetworks/felica/impl/tcap/Packets;->getPacket(I)Lcom/felicanetworks/felica/impl/tcap/Packet;

    move-result-object v3

    .line 171
    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getSubProtocolType()B

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 173
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/Packets;->getPacketNum()I

    move-result v6

    if-gt v6, v5, :cond_0

    :cond_2
    move v4, v5

    .line 216
    goto :goto_0

    .line 180
    :cond_3
    const/4 v1, 0x0

    .line 181
    .local v1, "countHP":I
    const/4 v0, 0x0

    .line 183
    .local v0, "countFP":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_1
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/Packets;->getPacketNum()I

    move-result v6

    if-lt v2, v6, :cond_4

    .line 210
    if-gt v1, v5, :cond_0

    if-le v0, v5, :cond_2

    goto :goto_0

    .line 185
    :cond_4
    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/impl/tcap/Packets;->getPacket(I)Lcom/felicanetworks/felica/impl/tcap/Packet;

    move-result-object v3

    .line 187
    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getSubProtocolType()B

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 190
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    .line 183
    :goto_2
    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 195
    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 196
    goto :goto_2

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getFeliCaParamPool()Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaParamPool;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPRequest25;->paramPool:Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaParamPool;

    return-object v0
.end method

.method protected parseData()Lcom/felicanetworks/felica/impl/tcap/Packets;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPRequest25;->getBytes()[B

    move-result-object v0

    .line 68
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPRequest25;->getSize()I

    move-result v6

    .line 69
    .local v6, "size":I
    new-instance v4, Lcom/felicanetworks/felica/impl/tcap/Packets;

    invoke-direct {v4}, Lcom/felicanetworks/felica/impl/tcap/Packets;-><init>()V

    .line 70
    .local v4, "packets":Lcom/felicanetworks/felica/impl/tcap/Packets;
    const/4 v2, 0x0

    .line 71
    .local v2, "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    const/4 v1, 0x0

    .line 73
    .local v1, "offset":I
    :goto_0
    if-lt v1, v6, :cond_0

    .line 143
    invoke-direct {p0, v4}, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPRequest25;->validatePacketOrder(Lcom/felicanetworks/felica/impl/tcap/Packets;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 145
    new-instance v7, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 146
    const/16 v8, 0x42

    const/4 v9, 0x0

    .line 145
    invoke-direct {v7, v8, v9}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v7

    .line 75
    :cond_0
    new-instance v2, Lcom/felicanetworks/felica/impl/tcap/Packet;

    .end local v2    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    invoke-direct {v2, v0, v1, v6}, Lcom/felicanetworks/felica/impl/tcap/Packet;-><init>([BII)V

    .line 77
    .restart local v2    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getVersion()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 127
    const/4 v7, 0x2

    new-array v5, v7, [B

    .line 129
    .local v5, "params":[B
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMajorVersion()B

    move-result v7

    aput-byte v7, v5, v8

    .line 131
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMinorVersion()B

    move-result v7

    aput-byte v7, v5, v9

    .line 133
    new-instance v7, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 134
    const/16 v8, 0x40

    .line 133
    invoke-direct {v7, v8, v5}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v7

    .line 80
    .end local v5    # "params":[B
    :pswitch_0
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getSubProtocolType()B

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 113
    const/4 v4, 0x0

    .line 116
    new-array v5, v9, [B

    .line 118
    .restart local v5    # "params":[B
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getSubProtocolType()B

    move-result v7

    aput-byte v7, v5, v8

    .line 120
    new-instance v7, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 121
    const/16 v8, 0x41

    .line 120
    invoke-direct {v7, v8, v5}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v7

    .line 83
    .end local v5    # "params":[B
    :pswitch_1
    new-instance v3, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;

    invoke-direct {v3, v2}, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;-><init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .end local v2    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .local v3, "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    move-object v2, v3

    .line 137
    .end local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .restart local v2    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    :goto_1
    invoke-virtual {v4, v2}, Lcom/felicanetworks/felica/impl/tcap/Packets;->addPacket(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 139
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getSize()I

    move-result v7

    add-int/2addr v1, v7

    goto :goto_0

    .line 88
    :pswitch_2
    new-instance v3, Lcom/felicanetworks/felica/impl/tcap/v25/FarewellPacket25;

    invoke-direct {v3, v2}, Lcom/felicanetworks/felica/impl/tcap/v25/FarewellPacket25;-><init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .end local v2    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .restart local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    move-object v2, v3

    .line 89
    .end local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .restart local v2    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    goto :goto_1

    .line 93
    :pswitch_3
    new-instance v3, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;

    invoke-direct {v3, v2}, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;-><init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .end local v2    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .restart local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    move-object v2, v3

    .line 94
    .end local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .restart local v2    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    goto :goto_1

    .line 98
    :pswitch_4
    new-instance v3, Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;

    invoke-direct {v3, v2}, Lcom/felicanetworks/felica/impl/tcap/v25/ApplicationDataTransferPacket25;-><init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .end local v2    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .restart local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    move-object v2, v3

    .line 99
    .end local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .restart local v2    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    goto :goto_1

    .line 103
    :pswitch_5
    new-instance v3, Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;

    invoke-direct {v3, v2}, Lcom/felicanetworks/felica/impl/tcap/v25/UpdateEntityPacket25;-><init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .end local v2    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .restart local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    move-object v2, v3

    .line 104
    .end local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .restart local v2    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    goto :goto_1

    .line 108
    :pswitch_6
    new-instance v3, Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;

    invoke-direct {v3, v2}, Lcom/felicanetworks/felica/impl/tcap/v25/OperateEntityPacket25;-><init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .end local v2    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .restart local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    move-object v2, v3

    .line 109
    .end local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .restart local v2    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    goto :goto_1

    .line 149
    :cond_1
    return-object v4

    .line 77
    :pswitch_data_0
    .packed-switch 0x205
        :pswitch_0
    .end packed-switch

    .line 80
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->reset()V

    .line 46
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPRequest25;->paramPool:Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaParamPool;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaParamPool;->clearParams()V

    .line 47
    return-void
.end method
