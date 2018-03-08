.class public Lcom/felicanetworks/falp/packet/HandshakeReqPacket;
.super Lcom/felicanetworks/falp/packet/TransmitPacketBase;
.source "HandshakeReqPacket.java"


# instance fields
.field private mAppCode:[B

.field private mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

.field private mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/felicanetworks/falp/packet/TransmitPacketBase;-><init>()V

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mAppCode:[B

    .line 30
    new-instance v0, Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-direct {v0}, Lcom/felicanetworks/falp/HandshakeParameter;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    .line 35
    new-instance v0, Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpMaxFalpRcevSize()S

    move-result v1

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    .line 20
    return-void
.end method


# virtual methods
.method public getHandshakeParam()Lcom/felicanetworks/falp/HandshakeParameter;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

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

    .line 216
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 218
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 220
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 221
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 223
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppid_len()C

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 225
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mAppCode:[B

    iget-object v2, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppid_len()C

    move-result v2

    invoke-virtual {v0, v1, v6, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([BII)V

    .line 227
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getRecv_pkt_max()I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 228
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getRecv_pkt_max()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 230
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getFalp_recvmax()S

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 231
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getFalp_recvmax()S

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 233
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdb()J

    move-result-wide v2

    and-long/2addr v2, v10

    shr-long/2addr v2, v9

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 234
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdb()J

    move-result-wide v2

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    shr-long/2addr v2, v8

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 235
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdb()J

    move-result-wide v2

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    shr-long/2addr v2, v7

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 236
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdb()J

    move-result-wide v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 238
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdcc()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 240
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_rs()J

    move-result-wide v2

    and-long/2addr v2, v10

    shr-long/2addr v2, v9

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 241
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_rs()J

    move-result-wide v2

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    shr-long/2addr v2, v8

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 242
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_rs()J

    move-result-wide v2

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    shr-long/2addr v2, v7

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 243
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_rs()J

    move-result-wide v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 245
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tddc()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 247
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tddb()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 249
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_ws()J

    move-result-wide v2

    and-long/2addr v2, v10

    shr-long/2addr v2, v9

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 250
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_ws()J

    move-result-wide v2

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    shr-long/2addr v2, v8

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 251
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_ws()J

    move-result-wide v2

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    shr-long/2addr v2, v7

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 252
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_ws()J

    move-result-wide v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 254
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tde()J

    move-result-wide v2

    and-long/2addr v2, v10

    shr-long/2addr v2, v9

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 255
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tde()J

    move-result-wide v2

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    shr-long/2addr v2, v8

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 256
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tde()J

    move-result-wide v2

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    shr-long/2addr v2, v7

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 257
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tde()J

    move-result-wide v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 259
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdf()J

    move-result-wide v2

    and-long/2addr v2, v10

    shr-long/2addr v2, v9

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 260
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdf()J

    move-result-wide v2

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    shr-long/2addr v2, v8

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 261
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdf()J

    move-result-wide v2

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    shr-long/2addr v2, v7

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 262
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdf()J

    move-result-wide v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 264
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdg()I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 265
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdg()I

    move-result v1

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 266
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdg()I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 267
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdg()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 269
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdh()J

    move-result-wide v2

    and-long/2addr v2, v10

    shr-long/2addr v2, v9

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 270
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdh()J

    move-result-wide v2

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    shr-long/2addr v2, v8

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 271
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdh()J

    move-result-wide v2

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    shr-long/2addr v2, v7

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 272
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdh()J

    move-result-wide v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 274
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdi()J

    move-result-wide v2

    and-long/2addr v2, v10

    shr-long/2addr v2, v9

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 275
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdi()J

    move-result-wide v2

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    shr-long/2addr v2, v8

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 276
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdi()J

    move-result-wide v2

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    shr-long/2addr v2, v7

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 277
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdi()J

    move-result-wide v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 279
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 280
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 281
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 282
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 284
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 286
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    return-object v0
.end method

.method public setInformation(Lcom/felicanetworks/falp/HandshakeParameter;)V
    .locals 4
    .param p1, "hsParam"    # Lcom/felicanetworks/falp/HandshakeParameter;

    .prologue
    const/4 v3, 0x0

    .line 45
    iget-object v0, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/falp/HandshakeParameter;->copyFrom(Lcom/felicanetworks/falp/HandshakeParameter;)V

    .line 46
    invoke-virtual {p1}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppid()[B

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mAppCode:[B

    iget-object v2, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mAppCode:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    return-void
.end method

.method public setInformation(Lcom/felicanetworks/felica/util/ByteBuffer;)V
    .locals 14
    .param p1, "data"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/FalpException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x4

    .line 61
    iget-object v1, p0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->mHsParam:Lcom/felicanetworks/falp/HandshakeParameter;

    .line 63
    .local v1, "hs":Lcom/felicanetworks/falp/HandshakeParameter;
    const/4 v2, 0x0

    .line 66
    .local v2, "pos":I
    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v3

    int-to-char v3, v3

    if-nez v3, :cond_0

    .line 67
    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 68
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v3

    .line 70
    :cond_0
    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Lcom/felicanetworks/falp/HandshakeParameter;->setAppid_len(C)V

    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 74
    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppid_len()C

    move-result v3

    new-array v0, v3, [B

    .line 75
    .local v0, "appId":[B
    invoke-virtual {p1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppid_len()C

    move-result v5

    invoke-static {v3, v2, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    invoke-virtual {v1, v0}, Lcom/felicanetworks/falp/HandshakeParameter;->setAppid([B)V

    .line 77
    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppid_len()C

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 89
    invoke-virtual {p1, v2, v9}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    .line 90
    invoke-virtual {p1, v2, v9}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v4

    const-wide/32 v6, 0x8000

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 91
    :cond_1
    invoke-virtual {p1, v2, v9}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 92
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v3, v8}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v3

    .line 94
    :cond_2
    invoke-virtual {p1, v2, v9}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v1, v3}, Lcom/felicanetworks/falp/HandshakeParameter;->setRecv_pkt_max(I)V

    .line 96
    add-int/lit8 v2, v2, 0x2

    .line 107
    invoke-virtual {p1, v2, v9}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v4

    const-wide/16 v6, 0x80

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    .line 108
    invoke-virtual {p1, v2, v9}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v4

    const-wide/16 v6, 0xf9

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    .line 109
    :cond_3
    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 110
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v3, v8}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v3

    .line 113
    :cond_4
    invoke-virtual {p1, v2, v9}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-short v3, v3

    invoke-virtual {v1, v3}, Lcom/felicanetworks/falp/HandshakeParameter;->setFalp_recvmax(S)V

    .line 114
    add-int/lit8 v2, v2, 0x2

    .line 118
    invoke-virtual {p1, v2, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/felicanetworks/falp/HandshakeParameter;->setPara_tdb(J)V

    .line 119
    add-int/lit8 v2, v2, 0x4

    .line 123
    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v1, v3}, Lcom/felicanetworks/falp/HandshakeParameter;->setPara_tdcc(I)V

    .line 124
    add-int/lit8 v2, v2, 0x1

    .line 135
    invoke-virtual {p1, v2, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v4

    cmp-long v3, v4, v12

    if-gtz v3, :cond_5

    .line 136
    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 137
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v3, v8}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v3

    .line 139
    :cond_5
    invoke-virtual {p1, v2, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/felicanetworks/falp/HandshakeParameter;->setPara_rs(J)V

    .line 141
    add-int/lit8 v2, v2, 0x4

    .line 145
    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v1, v3}, Lcom/felicanetworks/falp/HandshakeParameter;->setPara_tddc(I)V

    .line 146
    add-int/lit8 v2, v2, 0x1

    .line 150
    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v1, v3}, Lcom/felicanetworks/falp/HandshakeParameter;->setPara_tddb(I)V

    .line 151
    add-int/lit8 v2, v2, 0x1

    .line 162
    invoke-virtual {p1, v2, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v4

    cmp-long v3, v4, v12

    if-gtz v3, :cond_6

    .line 163
    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 164
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v3, v8}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v3

    .line 166
    :cond_6
    invoke-virtual {p1, v2, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/felicanetworks/falp/HandshakeParameter;->setPara_ws(J)V

    .line 168
    add-int/lit8 v2, v2, 0x4

    .line 172
    invoke-virtual {p1, v2, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/felicanetworks/falp/HandshakeParameter;->setPara_tde(J)V

    .line 173
    add-int/lit8 v2, v2, 0x4

    .line 177
    invoke-virtual {p1, v2, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/felicanetworks/falp/HandshakeParameter;->setPara_tdf(J)V

    .line 178
    add-int/lit8 v2, v2, 0x4

    .line 188
    invoke-virtual {p1, v2, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    cmp-long v3, v4, v6

    if-lez v3, :cond_7

    .line 189
    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 190
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v3, v8}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v3

    .line 193
    :cond_7
    invoke-virtual {p1, v2, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v1, v3}, Lcom/felicanetworks/falp/HandshakeParameter;->setPara_tdg(I)V

    .line 194
    add-int/lit8 v2, v2, 0x4

    .line 198
    invoke-virtual {p1, v2, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/felicanetworks/falp/HandshakeParameter;->setPara_tdh(J)V

    .line 199
    add-int/lit8 v2, v2, 0x4

    .line 203
    invoke-virtual {p1, v2, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/felicanetworks/falp/HandshakeParameter;->setPara_tdi(J)V

    .line 204
    add-int/lit8 v2, v2, 0x4

    .line 206
    return-void
.end method
