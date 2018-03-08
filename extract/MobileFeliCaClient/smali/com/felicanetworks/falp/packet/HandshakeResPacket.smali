.class public Lcom/felicanetworks/falp/packet/HandshakeResPacket;
.super Lcom/felicanetworks/falp/packet/TransmitPacketBase;
.source "HandshakeResPacket.java"


# instance fields
.field private mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

.field private mHsrsParam:Lcom/felicanetworks/falp/HandshakeParameter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/felicanetworks/falp/packet/TransmitPacketBase;-><init>()V

    .line 24
    new-instance v0, Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-direct {v0}, Lcom/felicanetworks/falp/HandshakeParameter;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mHsrsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    .line 29
    new-instance v0, Lcom/felicanetworks/felica/util/ByteBuffer;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    .line 19
    return-void
.end method


# virtual methods
.method public getmHsrsParam()Lcom/felicanetworks/falp/HandshakeParameter;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mHsrsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    return-object v0
.end method

.method public makeTransmitCommand()Lcom/felicanetworks/felica/util/ByteBuffer;
    .locals 12

    .prologue
    const-wide/32 v10, -0x1000000

    const/16 v9, 0x18

    const/16 v8, 0x10

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 174
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 175
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mHsrsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    .line 177
    .local v0, "hsrsParam":Lcom/felicanetworks/falp/HandshakeParameter;
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 179
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 180
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 182
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getRecv_pkt_max()I

    move-result v2

    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 183
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getRecv_pkt_max()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 185
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getFalp_recvmax()S

    move-result v2

    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 186
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getFalp_recvmax()S

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 188
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdb()J

    move-result-wide v2

    and-long/2addr v2, v10

    shr-long/2addr v2, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 189
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdb()J

    move-result-wide v2

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    shr-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 190
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdb()J

    move-result-wide v2

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    shr-long/2addr v2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 191
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdb()J

    move-result-wide v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 193
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tddc()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 195
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tddb()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 197
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_ws()J

    move-result-wide v2

    and-long/2addr v2, v10

    shr-long/2addr v2, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 198
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_ws()J

    move-result-wide v2

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    shr-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 199
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_ws()J

    move-result-wide v2

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    shr-long/2addr v2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 200
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_ws()J

    move-result-wide v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 202
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tde()J

    move-result-wide v2

    and-long/2addr v2, v10

    shr-long/2addr v2, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 203
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tde()J

    move-result-wide v2

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    shr-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 204
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tde()J

    move-result-wide v2

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    shr-long/2addr v2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 205
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tde()J

    move-result-wide v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 207
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdf()J

    move-result-wide v2

    and-long/2addr v2, v10

    shr-long/2addr v2, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 208
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdf()J

    move-result-wide v2

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    shr-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 209
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdf()J

    move-result-wide v2

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    shr-long/2addr v2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 210
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdf()J

    move-result-wide v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 212
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdg()I

    move-result v2

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 213
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdg()I

    move-result v2

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 214
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdg()I

    move-result v2

    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 215
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdg()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 217
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdh()J

    move-result-wide v2

    and-long/2addr v2, v10

    shr-long/2addr v2, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 218
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdh()J

    move-result-wide v2

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    shr-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 219
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdh()J

    move-result-wide v2

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    shr-long/2addr v2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 220
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdh()J

    move-result-wide v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 222
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdi()J

    move-result-wide v2

    and-long/2addr v2, v10

    shr-long/2addr v2, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 223
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdi()J

    move-result-wide v2

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    shr-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 224
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdi()J

    move-result-wide v2

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    shr-long/2addr v2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 225
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdi()J

    move-result-wide v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 227
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 228
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 229
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 230
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 232
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 234
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    return-object v1
.end method

.method public setInformation(Lcom/felicanetworks/falp/FalpProtocolParameter;)V
    .locals 2
    .param p1, "hsParam"    # Lcom/felicanetworks/falp/FalpProtocolParameter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mHsrsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {p1}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getMyParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/falp/HandshakeParameter;->copyFrom(Lcom/felicanetworks/falp/HandshakeParameter;)V

    .line 43
    return-void
.end method

.method public setInformation(Lcom/felicanetworks/felica/util/ByteBuffer;)V
    .locals 9
    .param p1, "data"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/FalpException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x4

    .line 56
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->mHsrsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    .line 58
    .local v0, "hs":Lcom/felicanetworks/falp/HandshakeParameter;
    const/4 v1, 0x0

    .line 70
    .local v1, "pos":I
    invoke-virtual {p1, v1, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 71
    invoke-virtual {p1, v1, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v2

    const-wide/32 v4, 0x8000

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 72
    :cond_0
    invoke-virtual {p1, v1, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 73
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v2, v6}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v2

    .line 75
    :cond_1
    invoke-virtual {p1, v1, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/felicanetworks/falp/HandshakeParameter;->setRecv_pkt_max(I)V

    .line 77
    add-int/lit8 v1, v1, 0x2

    .line 88
    invoke-virtual {p1, v1, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v2

    const-wide/16 v4, 0x80

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 89
    invoke-virtual {p1, v1, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v2

    const-wide/16 v4, 0xf9

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 90
    :cond_2
    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 91
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v2, v6}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v2

    .line 94
    :cond_3
    invoke-virtual {p1, v1, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Lcom/felicanetworks/falp/HandshakeParameter;->setFalp_recvmax(S)V

    .line 95
    add-int/lit8 v1, v1, 0x2

    .line 99
    invoke-virtual {p1, v1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/felicanetworks/falp/HandshakeParameter;->setPara_tdb(J)V

    .line 100
    add-int/lit8 v1, v1, 0x4

    .line 104
    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Lcom/felicanetworks/falp/HandshakeParameter;->setPara_tddc(I)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 109
    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Lcom/felicanetworks/falp/HandshakeParameter;->setPara_tddb(I)V

    .line 110
    add-int/lit8 v1, v1, 0x1

    .line 121
    invoke-virtual {p1, v1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    .line 122
    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 123
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v2, v6}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v2

    .line 125
    :cond_4
    invoke-virtual {p1, v1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/felicanetworks/falp/HandshakeParameter;->setPara_ws(J)V

    .line 127
    add-int/lit8 v1, v1, 0x4

    .line 131
    invoke-virtual {p1, v1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/felicanetworks/falp/HandshakeParameter;->setPara_tde(J)V

    .line 132
    add-int/lit8 v1, v1, 0x4

    .line 136
    invoke-virtual {p1, v1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/felicanetworks/falp/HandshakeParameter;->setPara_tdf(J)V

    .line 137
    add-int/lit8 v1, v1, 0x4

    .line 147
    invoke-virtual {p1, v1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 148
    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 149
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v2, v6}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v2

    .line 152
    :cond_5
    invoke-virtual {p1, v1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/felicanetworks/falp/HandshakeParameter;->setPara_tdg(I)V

    .line 153
    add-int/lit8 v1, v1, 0x4

    .line 157
    invoke-virtual {p1, v1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/felicanetworks/falp/HandshakeParameter;->setPara_tdh(J)V

    .line 158
    add-int/lit8 v1, v1, 0x4

    .line 162
    invoke-virtual {p1, v1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/felicanetworks/falp/HandshakeParameter;->setPara_tdi(J)V

    .line 163
    add-int/lit8 v1, v1, 0x4

    .line 164
    return-void
.end method
