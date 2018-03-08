.class public Lcom/felicanetworks/falp/state/FirstTransmitDataRecvWaitState;
.super Lcom/felicanetworks/falp/state/FalpState;
.source "FirstTransmitDataRecvWaitState.java"


# static fields
.field private static instance:Lcom/felicanetworks/falp/state/FirstTransmitDataRecvWaitState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/felicanetworks/falp/state/FirstTransmitDataRecvWaitState;

    invoke-direct {v0}, Lcom/felicanetworks/falp/state/FirstTransmitDataRecvWaitState;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/state/FirstTransmitDataRecvWaitState;->instance:Lcom/felicanetworks/falp/state/FirstTransmitDataRecvWaitState;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/felicanetworks/falp/state/FalpState;-><init>()V

    .line 40
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/falp/state/FirstTransmitDataRecvWaitState;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/felicanetworks/falp/state/FirstTransmitDataRecvWaitState;->instance:Lcom/felicanetworks/falp/state/FirstTransmitDataRecvWaitState;

    return-object v0
.end method


# virtual methods
.method public cancelFalp(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 161
    const/4 v0, 0x7

    const-string v1, "FirstTransmitDataRecvWaitState#recvCancelFalp()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 164
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->clearAppLisnter()V

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/felicanetworks/falp/state/FirstTransmitDataRecvWaitState;->actTermSentChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;I)I

    move-result v0

    return v0
.end method

.method public recvPacketEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/DataSendPacket;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/DataSendPacket;

    .prologue
    .line 68
    const/4 v0, 0x7

    const-string v1, "FirstTransmitDataRecvWaitState#recvPacketEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 71
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->stopTimer()V

    .line 75
    invoke-interface {p1, p2}, Lcom/felicanetworks/falp/state/StateListener;->setRecvData(Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;)I

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getRecvWaitTimer()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/felicanetworks/falp/state/StateListener;->startMiliTimer(I)V

    .line 79
    invoke-static {}, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->getInstance()Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    .line 86
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 83
    :cond_0
    const/4 v0, 0x2

    const-string v1, "\tsequence error."

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 84
    const/16 v0, 0x101

    invoke-virtual {p0, p1, v0}, Lcom/felicanetworks/falp/state/FirstTransmitDataRecvWaitState;->actChangeFWSendWait(Lcom/felicanetworks/falp/state/StateListener;S)I

    move-result v0

    goto :goto_0
.end method

.method public recvTimeout(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 10
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    const/4 v5, 0x0

    .line 182
    const/4 v6, 0x7

    const-string v7, "FirstTransmitDataRecvWaitState#recvTimeout()"

    invoke-static {v6, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 184
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v2

    .line 189
    .local v2, "mng":Lcom/felicanetworks/falp/FalpProtocolParameter;
    invoke-virtual {v2}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getSuitableAppWaitTimerMilliSec()I

    move-result v4

    .line 196
    .local v4, "waitTimer":I
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getDifferenceFromSavedTime()J

    move-result-wide v6

    int-to-long v8, v4

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 200
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getInstance()Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->stopToReceive()V

    .line 201
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ChipController;

    move-result-object v6

    invoke-virtual {v2}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getmGetRfChipRegisterNum()B

    move-result v7

    .line 202
    const/16 v8, 0x1f4

    .line 203
    const/4 v9, 0x0

    .line 201
    invoke-virtual {v6, v7, v8, v9}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->setRFChipRegister(BII)V

    .line 204
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getInstance()Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    move-result-object v6

    invoke-virtual {v2}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getSession_id()S

    move-result v7

    .line 205
    invoke-virtual {v2}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getRecvWaitTimer()I

    move-result v8

    .line 204
    invoke-virtual {v6, p1, v7, v8}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->startToReceive(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;SI)V
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getHandshakeResPacket()Lcom/felicanetworks/falp/packet/HandshakeResPacket;

    move-result-object v1

    .line 214
    .local v1, "hsResPacket":Lcom/felicanetworks/falp/packet/HandshakeResPacket;
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->setInformation(Lcom/felicanetworks/falp/FalpProtocolParameter;)V

    .line 219
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getInstance()Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    move-result-object v6

    .line 220
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getSession_id()S

    move-result v7

    .line 219
    invoke-virtual {v6, v1, v7}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->sendHandshakeRes(Lcom/felicanetworks/falp/packet/HandshakeResPacket;S)I

    move-result v3

    .line 221
    .local v3, "ret":I
    if-eqz v3, :cond_0

    .line 226
    const/16 v6, 0x1ff

    .line 225
    invoke-virtual {p0, p1, v6, v5}, Lcom/felicanetworks/falp/state/FirstTransmitDataRecvWaitState;->actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;SZ)I

    move-result v5

    .line 241
    .end local v1    # "hsResPacket":Lcom/felicanetworks/falp/packet/HandshakeResPacket;
    .end local v3    # "ret":I
    :goto_0
    return v5

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    invoke-virtual {v2}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getHsrRetryTimerNum()I

    move-result v6

    invoke-interface {p1, v6}, Lcom/felicanetworks/falp/state/StateListener;->startMiliTimer(I)V

    goto :goto_0

    .line 231
    .end local v0    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .restart local v1    # "hsResPacket":Lcom/felicanetworks/falp/packet/HandshakeResPacket;
    .restart local v3    # "ret":I
    :cond_0
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->sendRetryCountInit()V

    .line 232
    invoke-virtual {v2}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getHsrRetryTimerNum()I

    move-result v6

    invoke-interface {p1, v6}, Lcom/felicanetworks/falp/state/StateListener;->startMiliTimer(I)V

    goto :goto_0

    .line 239
    .end local v1    # "hsResPacket":Lcom/felicanetworks/falp/packet/HandshakeResPacket;
    .end local v3    # "ret":I
    :cond_1
    const/4 v5, -0x4

    invoke-virtual {p0, p1, v5}, Lcom/felicanetworks/falp/state/FirstTransmitDataRecvWaitState;->actTermSentChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;I)I

    move-result v5

    goto :goto_0
.end method

.method public recvTurnOverReadyBEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/ConvertBPacket;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/ConvertBPacket;

    .prologue
    .line 123
    const/4 v0, 0x7

    const-string v1, "FirstTransmitDataRecvWaitState#recvTurnOverReadyBEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/felicanetworks/falp/state/FirstTransmitDataRecvWaitState;->recvCommonTurnOverReadyABEvt(ZZLcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;)I

    move-result v0

    return v0
.end method

.method public recvTurnOverReadyEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/ConvertAPacket;)I
    .locals 3
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/ConvertAPacket;

    .prologue
    const/4 v2, 0x1

    .line 104
    const/4 v0, 0x7

    const-string v1, "FirstTransmitDataRecvWaitState#recvTurnOverReadyEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 105
    invoke-virtual {p0, v2, v2, p1, p2}, Lcom/felicanetworks/falp/state/FirstTransmitDataRecvWaitState;->recvCommonTurnOverReadyABEvt(ZZLcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;)I

    move-result v0

    return v0
.end method

.method public terminateFalp(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 141
    const/4 v0, 0x7

    const-string v1, "FirstTransmitDataRecvWaitState#recvTerminateFalp()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 144
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->setEndRequestFlag()V

    .line 145
    const/4 v0, 0x0

    return v0
.end method
