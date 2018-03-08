.class public Lcom/felicanetworks/falp/state/IdleState;
.super Lcom/felicanetworks/falp/state/FalpState;
.source "IdleState.java"


# static fields
.field private static instance:Lcom/felicanetworks/falp/state/IdleState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/felicanetworks/falp/state/IdleState;

    invoke-direct {v0}, Lcom/felicanetworks/falp/state/IdleState;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/state/IdleState;->instance:Lcom/felicanetworks/falp/state/IdleState;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/felicanetworks/falp/state/FalpState;-><init>()V

    .line 45
    return-void
.end method

.method public static getInstance()Lcom/felicanetworks/falp/state/IdleState;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/felicanetworks/falp/state/IdleState;->instance:Lcom/felicanetworks/falp/state/IdleState;

    return-object v0
.end method


# virtual methods
.method public cancelFalp(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 348
    const/4 v0, 0x7

    const-string v1, "FirstTransmitDataRecvWaitState#recvCancelFalp()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 351
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->clearAppLisnter()V

    .line 352
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/felicanetworks/falp/state/IdleState;->actTermSentChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;I)I

    move-result v0

    return v0
.end method

.method public recvFarewell(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;

    .prologue
    .line 298
    const/4 v0, 0x7

    const-string v1, "FalpState#recvFarewellReq()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public recvHandshakeEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/HandshakeReqPacket;)I
    .locals 1
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/HandshakeReqPacket;

    .prologue
    .line 178
    const/4 v0, -0x6

    return v0
.end method

.method public recvHandshakeRes(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/HandshakeResPacket;)I
    .locals 1
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/HandshakeResPacket;

    .prologue
    .line 196
    const/4 v0, -0x6

    return v0
.end method

.method public recvPacketEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/DataSendPacket;)I
    .locals 1
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/DataSendPacket;

    .prologue
    .line 215
    const/4 v0, -0x6

    return v0
.end method

.method public recvPacketReadError(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 330
    const/4 v0, 0x7

    const-string v1, "FalpState#recvPacketReadError()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public recvRetryReqEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/RetryReqPacket;)I
    .locals 1
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/RetryReqPacket;

    .prologue
    .line 264
    const/4 v0, -0x6

    return v0
.end method

.method public recvRetryResEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/RetryResPacket;)I
    .locals 1
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/RetryResPacket;

    .prologue
    .line 282
    const/4 v0, -0x6

    return v0
.end method

.method public recvTurnOverReadyBEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/ConvertBPacket;)I
    .locals 1
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/ConvertBPacket;

    .prologue
    .line 247
    const/4 v0, -0x6

    return v0
.end method

.method public recvTurnOverReadyEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/ConvertAPacket;)I
    .locals 1
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/ConvertAPacket;

    .prologue
    .line 231
    const/4 v0, -0x6

    return v0
.end method

.method public recvUnknownPacket(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 1
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 314
    const/4 v0, -0x1

    return v0
.end method

.method public sendData([B)I
    .locals 1
    .param p1, "sendbyte"    # [B

    .prologue
    .line 160
    const/4 v0, -0x6

    return v0
.end method

.method public startInitiatorFalp(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 10
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 72
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getHandshakeReqPacket()Lcom/felicanetworks/falp/packet/HandshakeReqPacket;

    move-result-object v2

    .line 73
    .local v2, "hsReqPacket":Lcom/felicanetworks/falp/packet/HandshakeReqPacket;
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v4

    .line 74
    .local v4, "paramMng":Lcom/felicanetworks/falp/FalpProtocolParameter;
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getMyParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v1

    .line 75
    .local v1, "hs":Lcom/felicanetworks/falp/HandshakeParameter;
    invoke-virtual {v2, v1}, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->setInformation(Lcom/felicanetworks/falp/HandshakeParameter;)V

    .line 78
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getInstance()Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    move-result-object v8

    .line 79
    invoke-virtual {v4}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getSession_id()S

    move-result v9

    .line 78
    invoke-virtual {v8, v2, v9}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->sendHandshakeReq(Lcom/felicanetworks/falp/packet/HandshakeReqPacket;S)I

    move-result v5

    .line 80
    .local v5, "sendRet":I
    if-eqz v5, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v6

    .line 87
    :cond_1
    invoke-virtual {v4}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getSuitableHsrTimerMilliSec()I

    move-result v3

    .line 90
    .local v3, "milliTimer":I
    invoke-interface {p1, v3}, Lcom/felicanetworks/falp/state/StateListener;->startMiliTimer(I)V

    .line 93
    invoke-static {}, Lcom/felicanetworks/falp/state/HandshakeResWaitState;->getInstance()Lcom/felicanetworks/falp/state/HandshakeResWaitState;

    move-result-object v8

    invoke-interface {p1, v8, v7}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    .line 96
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getInstance()Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    move-result-object v8

    .line 97
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getSession_id()S

    move-result v9

    .line 96
    invoke-virtual {v8, p1, v9, v3}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->startToReceive(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;SI)V

    .line 101
    :try_start_0
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getAppLisnter()Lcom/felicanetworks/falp/FalpListener;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 102
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getAppLisnter()Lcom/felicanetworks/falp/FalpListener;

    move-result-object v8

    invoke-interface {v8}, Lcom/felicanetworks/falp/FalpListener;->proposedInitiatorFalp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 110
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startTargetFalp(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 5
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    const/4 v4, 0x0

    .line 126
    const/4 v2, 0x7

    const-string v3, "IdleState#recvFalpReq()"

    invoke-static {v2, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 128
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v0

    .line 132
    .local v0, "paramMng":Lcom/felicanetworks/falp/FalpProtocolParameter;
    invoke-virtual {v0}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getTimer_hs()I

    move-result v1

    .line 135
    .local v1, "shwait_timeout":I
    invoke-interface {p1, v1}, Lcom/felicanetworks/falp/state/StateListener;->startMiliTimer(I)V

    .line 138
    invoke-static {}, Lcom/felicanetworks/falp/state/HandshakeWaitState;->getInstance()Lcom/felicanetworks/falp/state/HandshakeWaitState;

    move-result-object v2

    invoke-interface {p1, v2, v4}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    .line 141
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getInstance()Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    move-result-object v2

    .line 142
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getSession_id()S

    move-result v3

    .line 141
    invoke-virtual {v2, p1, v3, v1}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->startToReceive(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;SI)V

    .line 145
    return v4
.end method
