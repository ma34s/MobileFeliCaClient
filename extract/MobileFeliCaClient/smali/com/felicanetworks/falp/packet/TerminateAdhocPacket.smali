.class public Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;
.super Ljava/lang/Object;
.source "TerminateAdhocPacket.java"


# static fields
.field private static final PACKET_HEADER_LEN:I = 0x5


# instance fields
.field private mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

.field private mTerminateCode:S


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput-short v0, p0, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;->mTerminateCode:S

    .line 30
    new-instance v0, Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    .line 16
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->getMaxLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public getTerminateCode()S
    .locals 1

    .prologue
    .line 58
    iget-short v0, p0, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;->mTerminateCode:S

    return v0
.end method

.method public makeTransmitCommand()Lcom/felicanetworks/felica/util/ByteBuffer;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 72
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 75
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 76
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 79
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-short v1, p0, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;->mTerminateCode:S

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 80
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-short v1, p0, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;->mTerminateCode:S

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 82
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    return-object v0
.end method

.method public setTerminateCode(S)V
    .locals 0
    .param p1, "code"    # S

    .prologue
    .line 48
    iput-short p1, p0, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;->mTerminateCode:S

    .line 49
    return-void
.end method
