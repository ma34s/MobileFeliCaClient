.class public Lcom/felicanetworks/falp/packet/ConvertAPacket;
.super Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;
.source "ConvertAPacket.java"


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
    const v2, 0xff00

    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 25
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/ConvertAPacket;->myData:[B

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/ConvertAPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 29
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/ConvertAPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 31
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/ConvertAPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget v1, p0, Lcom/felicanetworks/falp/packet/ConvertAPacket;->mSequenceId:I

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 32
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/ConvertAPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget v1, p0, Lcom/felicanetworks/falp/packet/ConvertAPacket;->mSequenceId:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/ConvertAPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    return-object v0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/ConvertAPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 37
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/ConvertAPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 39
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/ConvertAPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget v1, p0, Lcom/felicanetworks/falp/packet/ConvertAPacket;->mSequenceId:I

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 40
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/ConvertAPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget v1, p0, Lcom/felicanetworks/falp/packet/ConvertAPacket;->mSequenceId:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 42
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/ConvertAPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/ConvertAPacket;->myData:[B

    iget v2, p0, Lcom/felicanetworks/falp/packet/ConvertAPacket;->mDataLen:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([BII)V

    goto :goto_0
.end method
