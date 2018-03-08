.class public abstract Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;
.super Lcom/felicanetworks/falp/packet/TransmitPacketBase;
.source "DataTransmitPacketBase.java"


# instance fields
.field protected mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

.field protected mDataLen:I

.field protected mSequenceId:I

.field protected myData:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/felicanetworks/falp/packet/TransmitPacketBase;-><init>()V

    .line 23
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpMaxFalpRcevSize()S

    move-result v0

    add-int/lit8 v0, v0, -0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->myData:[B

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->mDataLen:I

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->mSequenceId:I

    .line 76
    new-instance v0, Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpMaxFalpRcevSize()S

    move-result v1

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    .line 18
    return-void
.end method


# virtual methods
.method public getPayload()[B
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->myData:[B

    return-object v0
.end method

.method public getPayloadLen()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->mDataLen:I

    return v0
.end method

.method public getSequenceId()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->mSequenceId:I

    return v0
.end method

.method public setInformation([BI)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->mSequenceId:I

    .line 113
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->myData:[B

    if-nez v0, :cond_0

    .line 114
    const-string v0, "[DataTransmitPacketBase] payload null."

    invoke-static {v2, v0}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->myData:[B

    array-length v0, v0

    if-le p2, v0, :cond_1

    .line 120
    const-string v0, "[DataTransmitPacketBase] payload length is invalid."

    invoke-static {v2, v0, p2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    goto :goto_0

    .line 125
    :cond_1
    iput p2, p0, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->mDataLen:I

    .line 133
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->myData:[B

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public setInformation([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "len"    # I
    .param p3, "sequenceId"    # I

    .prologue
    const/4 v1, 0x0

    .line 91
    iput p2, p0, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->mDataLen:I

    .line 92
    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->myData:[B

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    :cond_0
    iput p3, p0, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->mSequenceId:I

    .line 95
    return-void
.end method

.method public setSequenceId(I)V
    .locals 0
    .param p1, "seq"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->mSequenceId:I

    .line 53
    return-void
.end method
