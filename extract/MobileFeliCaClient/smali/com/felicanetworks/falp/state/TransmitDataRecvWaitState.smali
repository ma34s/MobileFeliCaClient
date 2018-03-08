.class public Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;
.super Lcom/felicanetworks/falp/state/FalpState;
.source "TransmitDataRecvWaitState.java"


# static fields
.field private static instance:Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;


# instance fields
.field private mCanRecvData:Z

.field private mHasRecvPacketAfterChangestate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;

    invoke-direct {v0}, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->instance:Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/felicanetworks/falp/state/FalpState;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->mHasRecvPacketAfterChangestate:Z

    .line 43
    iput-boolean v0, p0, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->mCanRecvData:Z

    .line 50
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->instance:Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;

    return-object v0
.end method


# virtual methods
.method public cancelFalp(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 292
    const/4 v0, 0x7

    const-string v1, "FalpState#recvCancelFalp()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 295
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->clearAppLisnter()V

    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->actTermSentChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;I)I

    move-result v0

    return v0
.end method

.method public changeState(I)V
    .locals 1
    .param p1, "param"    # I

    .prologue
    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->mHasRecvPacketAfterChangestate:Z

    .line 381
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->mCanRecvData:Z

    .line 382
    return-void
.end method

.method public recvPacketEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/DataSendPacket;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/DataSendPacket;

    .prologue
    .line 78
    const/4 v0, 0x7

    const-string v1, "TransmitDataRecvWaitState#recvPacketEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 81
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->stopTimer()V

    .line 84
    iget-boolean v0, p0, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->mCanRecvData:Z

    if-nez v0, :cond_0

    .line 89
    const/16 v0, 0x103

    .line 88
    invoke-virtual {p0, p1, v0}, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->actChangeFWSendWait(Lcom/felicanetworks/falp/state/StateListener;S)I

    move-result v0

    .line 108
    :goto_0
    return v0

    .line 93
    :cond_0
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->clearSendDataBufferInWrkArea()V

    .line 96
    invoke-interface {p1, p2}, Lcom/felicanetworks/falp/state/StateListener;->setRecvData(Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;)I

    move-result v0

    if-nez v0, :cond_1

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->mHasRecvPacketAfterChangestate:Z

    .line 101
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getRecvWaitTimer()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/felicanetworks/falp/state/StateListener;->startMiliTimer(I)V

    .line 108
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :cond_1
    const/16 v0, 0x101

    invoke-virtual {p0, p1, v0}, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->actChangeFWSendWait(Lcom/felicanetworks/falp/state/StateListener;S)I

    move-result v0

    goto :goto_0
.end method

.method public recvRetryReqEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/RetryReqPacket;)I
    .locals 12
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/RetryReqPacket;

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v5, 0x0

    .line 165
    const/4 v6, 0x7

    const-string v7, "FalpState#recvRetryReqEvt()"

    invoke-static {v6, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 168
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->stopTimer()V

    .line 176
    invoke-virtual {p2}, Lcom/felicanetworks/falp/packet/RetryReqPacket;->getSequenceId()I

    move-result v6

    invoke-interface {p1, v6}, Lcom/felicanetworks/falp/state/StateListener;->getSendData(I)Lcom/felicanetworks/felica/util/ByteBuffer;

    move-result-object v0

    .line 178
    .local v0, "buf":Lcom/felicanetworks/felica/util/ByteBuffer;
    if-eqz v0, :cond_2

    .line 180
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->mHasRecvPacketAfterChangestate:Z

    .line 186
    invoke-virtual {p2}, Lcom/felicanetworks/falp/packet/RetryReqPacket;->getPayloadSize()I

    move-result v6

    invoke-virtual {p2}, Lcom/felicanetworks/falp/packet/RetryReqPacket;->getPacketLenExceptPayload()I

    move-result v7

    add-int/2addr v6, v7

    .line 187
    invoke-virtual {v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v7

    add-int/lit8 v7, v7, 0x5

    add-int/lit8 v7, v7, 0x3

    .line 185
    invoke-interface {p1, v6, v7, v5}, Lcom/felicanetworks/falp/state/StateListener;->getIVb(IIZ)J

    move-result-wide v2

    .line 191
    .local v2, "ivb":J
    monitor-enter p0

    .line 193
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 194
    const-wide/16 v6, 0x3e8

    :try_start_0
    div-long v6, v2, v6

    const-wide/16 v8, 0x3e8

    rem-long v8, v2, v8

    mul-long/2addr v8, v10

    long-to-int v8, v8

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getRetryResPacket()Lcom/felicanetworks/falp/packet/RetryResPacket;

    move-result-object v4

    .line 203
    .local v4, "retryPacket":Lcom/felicanetworks/falp/packet/RetryResPacket;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v7

    invoke-virtual {p2}, Lcom/felicanetworks/falp/packet/RetryReqPacket;->getSequenceId()I

    move-result v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/felicanetworks/falp/packet/RetryResPacket;->setInformation([BII)V

    .line 206
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getInstance()Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    move-result-object v6

    .line 207
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getSession_id()S

    move-result v7

    .line 206
    invoke-virtual {v6, v4, v7}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->sendRetryRes(Lcom/felicanetworks/falp/packet/RetryResPacket;S)I

    move-result v1

    .line 209
    .local v1, "ret":I
    invoke-interface {p1, v5}, Lcom/felicanetworks/falp/state/StateListener;->getTOb(Z)J

    move-result-wide v6

    invoke-interface {p1, v6, v7}, Lcom/felicanetworks/falp/state/StateListener;->startMicroTimer(J)V

    .line 211
    if-eqz v1, :cond_1

    .line 216
    const/16 v6, 0x1ff

    .line 215
    invoke-virtual {p0, p1, v6, v5}, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;SZ)I

    move-result v5

    .line 229
    .end local v1    # "ret":I
    .end local v2    # "ivb":J
    .end local v4    # "retryPacket":Lcom/felicanetworks/falp/packet/RetryResPacket;
    :cond_1
    :goto_1
    return v5

    .line 191
    .restart local v2    # "ivb":J
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 227
    .end local v2    # "ivb":J
    :cond_2
    const/16 v5, 0x101

    invoke-virtual {p0, p1, v5}, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->actChangeFWSendWait(Lcom/felicanetworks/falp/state/StateListener;S)I

    move-result v5

    goto :goto_1

    .line 195
    .restart local v2    # "ivb":J
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public recvRetryResEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/RetryResPacket;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/RetryResPacket;

    .prologue
    .line 249
    invoke-static {p2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->isSameKine(Lcom/felicanetworks/falp/packet/TransmitPacketBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->getPrevReceivedSequenceNum()I

    move-result v0

    invoke-virtual {p2}, Lcom/felicanetworks/falp/packet/RetryResPacket;->getSequenceId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 256
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/felicanetworks/falp/state/FalpState;->recvRetryResEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/RetryResPacket;)I

    move-result v0

    goto :goto_0
.end method

.method public recvTimeout(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 5
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    const/16 v4, 0x1ff

    const/4 v3, -0x4

    const/4 v0, 0x0

    .line 312
    const/4 v1, 0x7

    const-string v2, "TransmitDataRecvWaitState#recvTimeout()"

    invoke-static {v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 315
    iget-boolean v1, p0, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->mHasRecvPacketAfterChangestate:Z

    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {p0, p1, v4, v3, v0}, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SIZ)I

    move-result v0

    .line 365
    :goto_0
    return v0

    .line 330
    :cond_0
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->sendRetryCountOverCheck()Z

    move-result v1

    if-nez v1, :cond_3

    .line 332
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->sendRetryCountUp()V

    .line 335
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getInstance()Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->retrySendPacket()I

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    invoke-virtual {p0, p1, v4, v3, v0}, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SIZ)I

    move-result v0

    goto :goto_0

    .line 349
    :cond_1
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getPrevSentPacketSize()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 350
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/felicanetworks/falp/state/StateListener;->getTOb(Z)J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lcom/felicanetworks/falp/state/StateListener;->startMicroTimer(J)V

    goto :goto_0

    .line 352
    :cond_2
    invoke-interface {p1, v0}, Lcom/felicanetworks/falp/state/StateListener;->getTOb(Z)J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lcom/felicanetworks/falp/state/StateListener;->startMicroTimer(J)V

    goto :goto_0

    .line 363
    :cond_3
    invoke-virtual {p0, p1, v3}, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->actTermSentChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;I)I

    move-result v0

    goto :goto_0
.end method

.method public recvTurnOverReadyBEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/ConvertBPacket;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/ConvertBPacket;

    .prologue
    .line 145
    const/4 v0, 0x7

    const-string v1, "TransmitDataRecvWaitState#recvTurnOverReadyBEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 147
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->mCanRecvData:Z

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->recvCommonTurnOverReadyABEvt(ZZLcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;)I

    move-result v0

    return v0
.end method

.method public recvTurnOverReadyEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/ConvertAPacket;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/ConvertAPacket;

    .prologue
    .line 126
    const/4 v0, 0x7

    const-string v1, "TransmitDataRecvWaitState#recvTurnOverReadyEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 127
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->mCanRecvData:Z

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->recvCommonTurnOverReadyABEvt(ZZLcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;)I

    move-result v0

    return v0
.end method

.method public terminateFalp(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 272
    const/4 v0, 0x7

    const-string v1, "FalpState#recvTerminateFalp()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 275
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->setEndRequestFlag()V

    .line 276
    const/4 v0, 0x0

    return v0
.end method
