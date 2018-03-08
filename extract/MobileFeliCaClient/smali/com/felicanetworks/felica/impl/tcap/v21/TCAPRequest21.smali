.class Lcom/felicanetworks/felica/impl/tcap/v21/TCAPRequest21;
.super Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;
.source "TCAPRequest21.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method protected parseData()Lcom/felicanetworks/felica/impl/tcap/Packets;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/16 v10, 0x42

    .line 38
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPRequest21;->getBytes()[B

    move-result-object v0

    .line 39
    .local v0, "data":[B
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPRequest21;->getSize()I

    move-result v7

    .line 40
    .local v7, "size":I
    new-instance v5, Lcom/felicanetworks/felica/impl/tcap/Packets;

    invoke-direct {v5}, Lcom/felicanetworks/felica/impl/tcap/Packets;-><init>()V

    .line 41
    .local v5, "packets":Lcom/felicanetworks/felica/impl/tcap/Packets;
    const/4 v3, 0x0

    .line 42
    .local v3, "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    const/4 v2, 0x0

    .line 43
    .local v2, "offset":I
    const/4 v1, 0x0

    .line 45
    .local v1, "disableMultiPacket":Z
    :goto_0
    if-lt v2, v7, :cond_0

    .line 165
    return-object v5

    .line 47
    :cond_0
    new-instance v3, Lcom/felicanetworks/felica/impl/tcap/Packet;

    .end local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    invoke-direct {v3, v0, v2, v7}, Lcom/felicanetworks/felica/impl/tcap/Packet;-><init>([BII)V

    .line 50
    .restart local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getVersion()I

    move-result v8

    const/16 v9, 0x201

    if-eq v8, v9, :cond_1

    .line 52
    const/4 v8, 0x2

    new-array v6, v8, [B

    .line 54
    .local v6, "params":[B
    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMajorVersion()B

    move-result v8

    aput-byte v8, v6, v12

    .line 56
    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMinorVersion()B

    move-result v8

    aput-byte v8, v6, v13

    .line 58
    new-instance v8, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 59
    const/16 v9, 0x40

    .line 58
    invoke-direct {v8, v9, v6}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v8

    .line 62
    .end local v6    # "params":[B
    :cond_1
    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getSubProtocolType()B

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 149
    const/4 v5, 0x0

    .line 152
    new-array v6, v13, [B

    .line 154
    .restart local v6    # "params":[B
    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getSubProtocolType()B

    move-result v8

    aput-byte v8, v6, v12

    .line 156
    new-instance v8, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 157
    const/16 v9, 0x41

    .line 156
    invoke-direct {v8, v9, v6}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v8

    .line 65
    .end local v6    # "params":[B
    :pswitch_0
    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/Packets;->getPacketNum()I

    move-result v8

    if-lez v8, :cond_2

    .line 67
    const/4 v5, 0x0

    .line 69
    new-instance v8, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    invoke-direct {v8, v10, v11}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v8

    .line 73
    :cond_2
    const/4 v1, 0x1

    .line 75
    new-instance v4, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;

    invoke-direct {v4, v3}, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;-><init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .end local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .local v4, "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    move-object v3, v4

    .line 160
    .end local v4    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .restart local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    :goto_1
    invoke-virtual {v5, v3}, Lcom/felicanetworks/felica/impl/tcap/Packets;->addPacket(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 162
    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getSize()I

    move-result v8

    add-int/2addr v2, v8

    goto :goto_0

    .line 80
    :pswitch_1
    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/Packets;->getPacketNum()I

    move-result v8

    if-lez v8, :cond_3

    .line 82
    const/4 v5, 0x0

    .line 84
    new-instance v8, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    invoke-direct {v8, v10, v11}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v8

    .line 88
    :cond_3
    const/4 v1, 0x1

    .line 90
    new-instance v4, Lcom/felicanetworks/felica/impl/tcap/v21/FarewellPacket21;

    invoke-direct {v4, v3}, Lcom/felicanetworks/felica/impl/tcap/v21/FarewellPacket21;-><init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .end local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .restart local v4    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    move-object v3, v4

    .line 91
    .end local v4    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .restart local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    goto :goto_1

    .line 95
    :pswitch_2
    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/Packets;->getPacketNum()I

    move-result v8

    if-lez v8, :cond_4

    .line 97
    const/4 v5, 0x0

    .line 99
    new-instance v8, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    invoke-direct {v8, v10, v11}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v8

    .line 103
    :cond_4
    const/4 v1, 0x1

    .line 105
    new-instance v4, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;

    invoke-direct {v4, v3}, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;-><init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .end local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .restart local v4    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    move-object v3, v4

    .line 106
    .end local v4    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .restart local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    goto :goto_1

    .line 110
    :pswitch_3
    if-eqz v1, :cond_5

    .line 112
    const/4 v5, 0x0

    .line 114
    new-instance v8, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    invoke-direct {v8, v10, v11}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v8

    .line 118
    :cond_5
    new-instance v4, Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;

    invoke-direct {v4, v3}, Lcom/felicanetworks/felica/impl/tcap/v21/ApplicationDataTransferPacket21;-><init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .end local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .restart local v4    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    move-object v3, v4

    .line 119
    .end local v4    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .restart local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    goto :goto_1

    .line 123
    :pswitch_4
    if-eqz v1, :cond_6

    .line 125
    const/4 v5, 0x0

    .line 127
    new-instance v8, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    invoke-direct {v8, v10, v11}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v8

    .line 131
    :cond_6
    new-instance v4, Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;

    invoke-direct {v4, v3}, Lcom/felicanetworks/felica/impl/tcap/v21/UpdateEntityPacket21;-><init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .end local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .restart local v4    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    move-object v3, v4

    .line 132
    .end local v4    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .restart local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    goto :goto_1

    .line 136
    :pswitch_5
    if-eqz v1, :cond_7

    .line 138
    const/4 v5, 0x0

    .line 140
    new-instance v8, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    invoke-direct {v8, v10, v11}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v8

    .line 144
    :cond_7
    new-instance v4, Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;

    invoke-direct {v4, v3}, Lcom/felicanetworks/felica/impl/tcap/v21/OperateEntityPacket21;-><init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .end local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .restart local v4    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    move-object v3, v4

    .line 145
    .end local v4    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    .restart local v3    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    goto :goto_1

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
