.class public Lcom/felicanetworks/falp/FalpProtocolParameter;
.super Ljava/lang/Object;
.source "FalpProtocolParameter.java"


# static fields
.field public static final ANDR01_APP_CODE:[B

.field public static final APP_CODE_SIZE:I = 0x8

.field public static final FALP_FALPCNG_FILEPASS:Ljava/lang/String; = "/system/etc/felica/mfc_falp.cfg"

.field public static final FALP_FALPCNG_FWSEND_TIMER:I = 0x1e

.field public static final FALP_FALPCNG_LINE_CNT:I = 0x5

.field public static final FALP_FWENDCODE_CRITICALERR:S = 0x1ffs

.field public static final FALP_FWENDCODE_INVALIDPAYLOAD:S = 0x102s

.field public static final FALP_FWENDCODE_OK:S = 0x0s

.field public static final FALP_FWENDCODE_OVER:S = 0x101s

.field public static final FALP_FWENDCODE_PACKETLOST:S = 0x104s

.field public static final FALP_FWENDCODE_UNEXPECTED:S = 0x103s

.field public static final FALP_FWENDCODE_UNKNOWNAPPID:S = 0x105s

.field public static final FALP_FWENDCODE_UNKNOWNPACKET:S = 0x100s

.field public static final FALP_HEADER_PACKET_NUM:I = 0x5

.field public static final FALP_PKTCODE_CONVERT_A:B = 0x3t

.field public static final FALP_PKTCODE_CONVERT_B:B = 0x4t

.field public static final FALP_PKTCODE_FAREWELL:B = 0x7t

.field public static final FALP_PKTCODE_HANDSHAKE:B = 0x0t

.field public static final FALP_PKTCODE_HANDSHAKERES:B = 0x1t

.field public static final FALP_PKTCODE_RESEND:B = 0x6t

.field public static final FALP_PKTCODE_RESENDREQ:B = 0x5t

.field public static final FALP_PKTCODE_SENDDATA:B = 0x2t

.field public static final FALP_RS_212:I = 0x33ba3

.field public static final FALP_RS_424:I = 0x67746

.field public static final FALP_SEND_HEADER_PACKET_NUM:I = 0x3

.field public static final MAX_SEQUENCE_ID_NUM:I = 0xffff

.field public static final TIMER_COUNT_RECV_WAIT:I = 0xbb8

.field public static final TIMER_GET_RF_CHIP_REGISTER:I = 0x3e8

.field public static final TIMER_HSR_RETRY_WAIT:I = 0xbb8

.field public static final TIMER_SET_RF_CHIP_REGISTER:I = 0x1f4


# instance fields
.field private falp_recvmax:S

.field private falp_sendmax:S

.field private hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

.field private hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

.field private mGetRfChipRegisterNum:B

.field mRand:Ljava/util/Random;

.field private para_rs:J

.field private para_tdab:I

.field private para_tdac:I

.field private para_tdb:J

.field private para_tdcc:I

.field private para_tddb:I

.field private para_tddc:I

.field private para_tde:J

.field private para_tdf:J

.field private para_tdg:I

.field private para_tdh:J

.field private para_tdi:J

.field private para_ws:J

.field private recv_pkt_max:I

.field private send_pkt_max:S

.field private session_id:S

.field private timer_hs:I

.field private timer_hsres_send:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 147
    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 149
    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 153
    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 154
    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    .line 155
    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    .line 156
    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    .line 158
    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    .line 147
    sput-object v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->ANDR01_APP_CODE:[B

    .line 184
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->mGetRfChipRegisterNum:B

    .line 312
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->mRand:Ljava/util/Random;

    .line 327
    new-instance v0, Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-direct {v0}, Lcom/felicanetworks/falp/HandshakeParameter;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    .line 328
    new-instance v0, Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-direct {v0}, Lcom/felicanetworks/falp/HandshakeParameter;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    .line 329
    invoke-virtual {p0}, Lcom/felicanetworks/falp/FalpProtocolParameter;->init()V

    .line 330
    return-void
.end method


# virtual methods
.method public getAndr01AppWaitTimerMilliSec()I
    .locals 1

    .prologue
    .line 527
    const/16 v0, 0xbb8

    return v0
.end method

.method public getFalp_recvmax()S
    .locals 1

    .prologue
    .line 412
    iget-short v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->falp_recvmax:S

    return v0
.end method

.method public getFalp_sendmax()S
    .locals 1

    .prologue
    .line 422
    iget-short v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->falp_sendmax:S

    return v0
.end method

.method public getFwWaitTimer()I
    .locals 1

    .prologue
    .line 950
    const/16 v0, 0x1e

    return v0
.end method

.method public getHsrRetryTimerNum()I
    .locals 1

    .prologue
    .line 988
    const/16 v0, 0xbb8

    return v0
.end method

.method public getIVa(II)J
    .locals 18
    .param p1, "preSend_len"    # I
    .param p2, "nowSend_len"    # I

    .prologue
    .line 708
    const-wide/16 v10, 0x0

    .line 709
    .local v10, "lIVa":J
    const-wide/16 v12, 0x0

    .line 710
    .local v12, "lTDaX2A":J
    const-wide/16 v14, 0x0

    .line 711
    .local v14, "lTDcX1A":J
    const-wide/16 v16, 0x0

    .line 714
    .local v16, "lTDdX1B":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdcc()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getSuitableRs()J

    move-result-wide v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getTDc(IIJ)J

    move-result-wide v14

    .line 715
    move-object/from16 v0, p0

    iget v4, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdac:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdab:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_ws()J

    move-result-wide v6

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getTDa(IIIJ)J

    move-result-wide v12

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tddb()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tddc()I

    move-result v5

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_ws()J

    move-result-wide v6

    move-object/from16 v2, p0

    move/from16 v3, p1

    .line 716
    invoke-virtual/range {v2 .. v7}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getTDd(IIIJ)J

    move-result-wide v16

    .line 722
    move-object/from16 v0, p0

    iget v4, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdac:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdab:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_ws()J

    move-result-wide v6

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getTDa(IIIJ)J

    move-result-wide v8

    .line 724
    .local v8, "iTDaX1A":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdb()J

    move-result-wide v2

    add-long/2addr v2, v14

    add-long v2, v2, v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v4}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tde()J

    move-result-wide v4

    add-long/2addr v2, v4

    add-long v10, v2, v8

    .line 727
    cmp-long v2, v10, v12

    if-lez v2, :cond_0

    .line 728
    sub-long/2addr v10, v12

    .line 745
    :goto_0
    return-wide v10

    .line 730
    :cond_0
    const-wide/16 v10, 0x0

    goto :goto_0
.end method

.method public getIVb(IIZ)J
    .locals 14
    .param p1, "rcv_len"    # I
    .param p2, "snd_len"    # I
    .param p3, "isUseTDi"    # Z

    .prologue
    .line 761
    const-wide/16 v6, 0x0

    .line 762
    .local v6, "lIVb":J
    const-wide/16 v10, 0x0

    .line 763
    .local v10, "lTDcX3A":J
    const-wide/16 v12, 0x0

    .line 764
    .local v12, "lTDdX3A":J
    const-wide/16 v8, 0x0

    .line 769
    .local v8, "lTDaX4A":J
    iget-object v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdg()I

    move-result v0

    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpAdhPeerTdgMax()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 770
    const-wide/16 v0, 0x0

    .line 801
    :goto_0
    return-wide v0

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdcc()I

    move-result v0

    invoke-virtual {p0}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getSuitableRs()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getTDc(IIJ)J

    move-result-wide v10

    .line 778
    iget-object v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tddb()I

    move-result v2

    iget-object v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tddc()I

    move-result v3

    .line 779
    iget-object v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_ws()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    .line 778
    invoke-virtual/range {v0 .. v5}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getTDd(IIIJ)J

    move-result-wide v12

    .line 782
    iget v2, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdac:I

    iget v3, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdab:I

    iget-object v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_ws()J

    move-result-wide v4

    move-object v0, p0

    move/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getTDa(IIIJ)J

    move-result-wide v8

    .line 785
    iget-object v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdg()I

    move-result v0

    int-to-long v0, v0

    add-long v2, v10, v12

    add-long/2addr v2, v8

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 786
    iget-object v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdg()I

    move-result v0

    int-to-long v0, v0

    add-long v2, v10, v12

    add-long/2addr v2, v8

    sub-long v6, v0, v2

    .line 792
    :goto_1
    if-eqz p3, :cond_1

    .line 793
    iget-object v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdg()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdi()J

    move-result-wide v2

    add-long/2addr v2, v10

    add-long/2addr v2, v12

    add-long/2addr v2, v8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdi()J

    move-result-wide v6

    .line 800
    :cond_1
    const/4 v0, 0x7

    const-string v1, "IVb="

    long-to-int v2, v6

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    move-wide v0, v6

    .line 801
    goto :goto_0

    .line 788
    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_1
.end method

.method public getMyParams()Lcom/felicanetworks/falp/HandshakeParameter;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    return-object v0
.end method

.method public getPara_rs()J
    .locals 2

    .prologue
    .line 570
    iget-wide v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_rs:J

    return-wide v0
.end method

.method public getPara_tdab()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdab:I

    return v0
.end method

.method public getPara_tdac()I
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdac:I

    return v0
.end method

.method public getPara_tdb()J
    .locals 2

    .prologue
    .line 559
    iget-wide v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdb:J

    return-wide v0
.end method

.method public getPara_tdcc()I
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdcc:I

    return v0
.end method

.method public getPara_tddb()I
    .locals 1

    .prologue
    .line 674
    iget v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tddb:I

    return v0
.end method

.method public getPara_tddc()I
    .locals 1

    .prologue
    .line 664
    iget v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tddc:I

    return v0
.end method

.method public getPara_tde()J
    .locals 2

    .prologue
    .line 581
    iget-wide v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tde:J

    return-wide v0
.end method

.method public getPara_tdf()J
    .locals 2

    .prologue
    .line 592
    iget-wide v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdf:J

    return-wide v0
.end method

.method public getPara_tdg()I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdg:I

    return v0
.end method

.method public getPara_tdh()J
    .locals 2

    .prologue
    .line 613
    iget-wide v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdh:J

    return-wide v0
.end method

.method public getPara_tdi()J
    .locals 2

    .prologue
    .line 624
    iget-wide v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdi:J

    return-wide v0
.end method

.method public getPara_ws()J
    .locals 2

    .prologue
    .line 548
    iget-wide v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_ws:J

    return-wide v0
.end method

.method public getPeerParams()Lcom/felicanetworks/falp/HandshakeParameter;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    return-object v0
.end method

.method public getRecvWaitTimer()I
    .locals 1

    .prologue
    .line 960
    const/16 v0, 0xbb8

    return v0
.end method

.method public getRecv_pkt_max()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->recv_pkt_max:I

    return v0
.end method

.method public getSend_pkt_max()S
    .locals 1

    .prologue
    .line 402
    iget-short v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->send_pkt_max:S

    return v0
.end method

.method public getSession_id()S
    .locals 1

    .prologue
    .line 370
    iget-short v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->session_id:S

    return v0
.end method

.method public getSuitableAppWaitTimerMilliSec()I
    .locals 7

    .prologue
    const/16 v3, 0x7d0

    const/4 v4, 0x0

    .line 480
    iget-object v5, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v5}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppCodeKind()I

    move-result v0

    .line 482
    .local v0, "appkind":I
    packed-switch v0, :pswitch_data_0

    move v3, v4

    .line 503
    :goto_0
    :pswitch_0
    return v3

    .line 484
    :pswitch_1
    const/4 v5, 0x1

    new-array v2, v5, [I

    .line 486
    .local v2, "timer":[I
    new-instance v1, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;

    invoke-direct {v1}, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;-><init>()V

    .line 487
    .local v1, "componentNameHolder":Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;
    iget-object v5, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    const-string v6, "Target"

    invoke-virtual {v5, v6, v1, v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getParameterFromFalpCng(Ljava/lang/String;Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;[I)V

    .line 489
    iget v5, v1, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->ret:I

    if-eqz v5, :cond_0

    .line 491
    aput v3, v2, v4

    .line 494
    :cond_0
    aget v3, v2, v4

    goto :goto_0

    .line 497
    .end local v1    # "componentNameHolder":Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;
    .end local v2    # "timer":[I
    :pswitch_2
    const v3, 0xafc8

    goto :goto_0

    .line 482
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getSuitableHsrTimerMilliSec()I
    .locals 7

    .prologue
    const/16 v3, 0xbb8

    const/4 v4, 0x0

    .line 434
    iget-object v5, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v5}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppCodeKind()I

    move-result v0

    .line 436
    .local v0, "appkind":I
    packed-switch v0, :pswitch_data_0

    move v3, v4

    .line 456
    :goto_0
    :pswitch_0
    return v3

    .line 438
    :pswitch_1
    const/4 v5, 0x1

    new-array v2, v5, [I

    .line 439
    .local v2, "timer":[I
    new-instance v1, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;

    invoke-direct {v1}, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;-><init>()V

    .line 440
    .local v1, "componentNameHolder":Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;
    iget-object v5, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    const-string v6, "Initiator"

    invoke-virtual {v5, v6, v1, v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getParameterFromFalpCng(Ljava/lang/String;Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;[I)V

    .line 442
    iget v5, v1, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->ret:I

    if-eqz v5, :cond_0

    .line 444
    aput v3, v2, v4

    .line 447
    :cond_0
    aget v3, v2, v4

    goto :goto_0

    .line 450
    .end local v1    # "componentNameHolder":Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;
    .end local v2    # "timer":[I
    :pswitch_2
    const v3, 0xafc8

    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getSuitableRs()J
    .locals 4

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_rs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_rs()J

    move-result-wide v0

    .line 1010
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_rs()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getTDa(IIIJ)J
    .locals 6
    .param p1, "x"    # I
    .param p2, "tdac"    # I
    .param p3, "tdab"    # I
    .param p4, "ws"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 880
    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    .line 889
    :goto_0
    return-wide v0

    .line 884
    :cond_0
    const-wide/16 v0, 0x0

    .line 887
    .local v0, "lTDa":J
    add-int v2, p1, p2

    int-to-long v2, v2

    int-to-long v4, p3

    mul-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    div-long v0, v2, p4

    .line 889
    goto :goto_0
.end method

.method public getTDc(IIJ)J
    .locals 7
    .param p1, "x"    # I
    .param p2, "tdcc"    # I
    .param p3, "rs"    # J

    .prologue
    .line 906
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_0

    .line 907
    const-wide/32 p3, 0x33ba3

    .line 910
    :cond_0
    const-wide/16 v0, 0x0

    .line 911
    .local v0, "lTDc":J
    add-int v2, p1, p2

    int-to-long v2, v2

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    div-long v0, v2, p3

    .line 913
    return-wide v0
.end method

.method public getTDd(IIIJ)J
    .locals 6
    .param p1, "x"    # I
    .param p2, "tddb"    # I
    .param p3, "tddc"    # I
    .param p4, "ws"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 931
    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    .line 940
    :goto_0
    return-wide v0

    .line 935
    :cond_0
    const-wide/16 v0, 0x0

    .line 938
    .local v0, "lTDd":J
    add-int v2, p1, p3

    int-to-long v2, v2

    int-to-long v4, p2

    mul-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    div-long v0, v2, p4

    .line 940
    goto :goto_0
.end method

.method public getTOb(Z)J
    .locals 30
    .param p1, "isUseTDi"    # Z

    .prologue
    .line 813
    const-wide/16 v26, 0x0

    .line 814
    .local v26, "lTObc":J
    const-wide/16 v24, 0x0

    .line 815
    .local v24, "lTObMin":J
    const-wide/16 v28, 0x0

    .line 816
    .local v28, "lTObr":J
    const-wide/16 v22, 0x0

    .line 817
    .local v22, "lTOb":J
    const/4 v12, 0x0

    .line 818
    .local v12, "iX5":I
    const/4 v3, 0x0

    .line 819
    .local v3, "iX6":I
    const-wide/16 v14, 0x0

    .line 820
    .local v14, "lTDcX5A":J
    const-wide/16 v16, 0x0

    .line 821
    .local v16, "lTDcX6A":J
    const-wide/16 v20, 0x0

    .line 822
    .local v20, "lTDdX6A":J
    const-wide/16 v18, 0x0

    .line 823
    .local v18, "lTDdX5B":J
    const-wide/16 v10, 0x0

    .line 825
    .local v10, "iTDaX6A":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getFalp_recvmax()S

    move-result v2

    add-int/lit8 v12, v2, 0x5

    .line 826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getFalp_recvmax()S

    move-result v2

    add-int/lit8 v3, v2, 0x5

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdcc()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getSuitableRs()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2, v4, v5}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getTDc(IIJ)J

    move-result-wide v14

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdcc()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getSuitableRs()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getTDc(IIJ)J

    move-result-wide v16

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tddb()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tddc()I

    move-result v5

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_ws()J

    move-result-wide v6

    move-object/from16 v2, p0

    .line 833
    invoke-virtual/range {v2 .. v7}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getTDd(IIIJ)J

    move-result-wide v20

    .line 835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tddb()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tddc()I

    move-result v7

    .line 836
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_ws()J

    move-result-wide v8

    move-object/from16 v4, p0

    move v5, v12

    .line 835
    invoke-virtual/range {v4 .. v9}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getTDd(IIIJ)J

    move-result-wide v18

    .line 839
    move-object/from16 v0, p0

    iget v6, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdac:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdab:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_ws()J

    move-result-wide v8

    move-object/from16 v4, p0

    move v5, v12

    invoke-virtual/range {v4 .. v9}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getTDa(IIIJ)J

    move-result-wide v10

    .line 841
    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdb()J

    move-result-wide v6

    mul-long/2addr v4, v6

    add-long/2addr v4, v14

    add-long v4, v4, v16

    const-wide/16 v6, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdb()J

    move-result-wide v8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long v4, v4, v18

    add-long v4, v4, v20

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdh()J

    move-result-wide v6

    .line 841
    add-long/2addr v4, v6

    add-long v26, v4, v10

    .line 843
    if-eqz p1, :cond_0

    .line 844
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdi()J

    move-result-wide v4

    add-long v26, v26, v4

    .line 847
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getPara_tdg()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    int-to-long v0, v2

    move-wide/from16 v24, v0

    .line 849
    cmp-long v2, v24, v26

    if-lez v2, :cond_1

    .line 850
    move-wide/from16 v26, v24

    .line 853
    :cond_1
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpAdhMngTobcMax()I

    move-result v2

    int-to-long v4, v2

    cmp-long v2, v26, v4

    if-lez v2, :cond_2

    .line 855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->mRand:Ljava/util/Random;

    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpAdhMngTobcMax()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v28, v0

    .line 859
    :goto_0
    add-long v22, v26, v28

    .line 860
    const/4 v2, 0x7

    const-string v4, "TOb="

    move-wide/from16 v0, v22

    long-to-int v5, v0

    invoke-static {v2, v4, v5}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 861
    return-wide v22

    .line 857
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/felicanetworks/falp/FalpProtocolParameter;->mRand:Ljava/util/Random;

    move-wide/from16 v0, v26

    long-to-int v4, v0

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v28, v0

    goto :goto_0
.end method

.method public getTimer_hs()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->timer_hs:I

    return v0
.end method

.method public getTimer_hsres_send()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->timer_hsres_send:I

    return v0
.end method

.method public getUserAppWaitTimerMilliSec()I
    .locals 1

    .prologue
    .line 516
    const v0, 0xafc8

    return v0
.end method

.method public getmGetRfChipRegisterNum()B
    .locals 1

    .prologue
    .line 980
    iget-byte v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->mGetRfChipRegisterNum:B

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 337
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->setFalpConfigValue()V

    .line 338
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxReceivePacketSequence()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->recv_pkt_max:I

    .line 339
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxSendPacketSequence()S

    move-result v0

    iput-short v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->send_pkt_max:S

    .line 340
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxReceiveSize()S

    move-result v0

    iput-short v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->falp_recvmax:S

    .line 341
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxSendSize()S

    move-result v0

    iput-short v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->falp_sendmax:S

    .line 342
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpAdhCommHs()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->timer_hs:I

    .line 343
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpAdhCommHsResSend()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->timer_hsres_send:I

    .line 344
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpCommWs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_ws:J

    .line 345
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpCommTdb()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdb:J

    .line 346
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpCommRs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_rs:J

    .line 347
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpCommTde()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tde:J

    .line 348
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpCommTdf()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdf:J

    .line 349
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpCommTdg()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdg:I

    .line 350
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpCommTdh()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdh:J

    .line 351
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpCommTdi()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdi:J

    .line 352
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpCommTdac()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdac:I

    .line 353
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpCommTdab()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdab:I

    .line 354
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpCommTdcc()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tdcc:I

    .line 355
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpCommTddc()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tddc:I

    .line 356
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpCommTddb()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->para_tddb:I

    .line 357
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/felicanetworks/falp/FalpProtocolParameter;->setmGetRfChipRegisterNum(B)V

    .line 359
    iget-object v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsA:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v0, p0}, Lcom/felicanetworks/falp/HandshakeParameter;->init(Lcom/felicanetworks/falp/FalpProtocolParameter;)V

    .line 360
    iget-object v0, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->hsParamsB:Lcom/felicanetworks/falp/HandshakeParameter;

    invoke-virtual {v0, p0}, Lcom/felicanetworks/falp/HandshakeParameter;->init(Lcom/felicanetworks/falp/FalpProtocolParameter;)V

    .line 361
    return-void
.end method

.method public setSession_id(S)V
    .locals 0
    .param p1, "sessionId"    # S

    .prologue
    .line 381
    iput-short p1, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->session_id:S

    .line 382
    return-void
.end method

.method public setmGetRfChipRegisterNum(B)V
    .locals 0
    .param p1, "getRfChipRegisterNum"    # B

    .prologue
    .line 970
    iput-byte p1, p0, Lcom/felicanetworks/falp/FalpProtocolParameter;->mGetRfChipRegisterNum:B

    .line 971
    return-void
.end method
