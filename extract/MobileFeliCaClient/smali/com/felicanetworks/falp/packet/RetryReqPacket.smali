.class public Lcom/felicanetworks/falp/packet/RetryReqPacket;
.super Lcom/felicanetworks/falp/packet/TransmitPacketBase;
.source "RetryReqPacket.java"


# instance fields
.field private mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

.field private mSequenceId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/felicanetworks/falp/packet/TransmitPacketBase;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/felicanetworks/falp/packet/RetryReqPacket;->mSequenceId:I

    .line 27
    new-instance v0, Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpMaxFalpRcevSize()S

    move-result v1

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/felicanetworks/falp/packet/RetryReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    .line 17
    return-void
.end method


# virtual methods
.method public getPayloadSize()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getSequenceId()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/felicanetworks/falp/packet/RetryReqPacket;->mSequenceId:I

    return v0
.end method

.method public makeTransmitCommand()Lcom/felicanetworks/felica/util/ByteBuffer;
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/RetryReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 93
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/RetryReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 95
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/RetryReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget v1, p0, Lcom/felicanetworks/falp/packet/RetryReqPacket;->mSequenceId:I

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 96
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/RetryReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget v1, p0, Lcom/felicanetworks/falp/packet/RetryReqPacket;->mSequenceId:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 98
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/RetryReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    return-object v0
.end method

.method public setInformation(I)V
    .locals 0
    .param p1, "sequenceId"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/felicanetworks/falp/packet/RetryReqPacket;->mSequenceId:I

    .line 53
    return-void
.end method

.method public setInformation([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/felicanetworks/falp/packet/RetryReqPacket;->mSequenceId:I

    .line 81
    return-void
.end method

.method public setSequenceId(I)V
    .locals 0
    .param p1, "seq"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/felicanetworks/falp/packet/RetryReqPacket;->mSequenceId:I

    .line 42
    return-void
.end method
