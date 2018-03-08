.class public Lcom/felicanetworks/falp/packet/DataSendPacket;
.super Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;
.source "DataSendPacket.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;-><init>()V

    return-void
.end method


# virtual methods
.method public makeTransmitCommand()Lcom/felicanetworks/felica/util/ByteBuffer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 26
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/DataSendPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 28
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/DataSendPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 30
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/DataSendPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget v1, p0, Lcom/felicanetworks/falp/packet/DataSendPacket;->mSequenceId:I

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 31
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/DataSendPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget v1, p0, Lcom/felicanetworks/falp/packet/DataSendPacket;->mSequenceId:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 33
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/DataSendPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/DataSendPacket;->myData:[B

    iget v2, p0, Lcom/felicanetworks/falp/packet/DataSendPacket;->mDataLen:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([BII)V

    .line 35
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/DataSendPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    return-object v0
.end method
