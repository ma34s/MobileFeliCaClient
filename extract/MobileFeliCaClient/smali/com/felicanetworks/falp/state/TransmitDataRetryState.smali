.class public Lcom/felicanetworks/falp/state/TransmitDataRetryState;
.super Lcom/felicanetworks/falp/state/FalpState;
.source "TransmitDataRetryState.java"


# static fields
.field private static instance:Lcom/felicanetworks/falp/state/TransmitDataRetryState;


# instance fields
.field mCanPartnerReceiveData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/felicanetworks/falp/state/TransmitDataRetryState;

    invoke-direct {v0}, Lcom/felicanetworks/falp/state/TransmitDataRetryState;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/state/TransmitDataRetryState;->instance:Lcom/felicanetworks/falp/state/TransmitDataRetryState;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/felicanetworks/falp/state/FalpState;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/falp/state/TransmitDataRetryState;->mCanPartnerReceiveData:Z

    .line 45
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/falp/state/TransmitDataRetryState;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/felicanetworks/falp/state/TransmitDataRetryState;->instance:Lcom/felicanetworks/falp/state/TransmitDataRetryState;

    return-object v0
.end method

.method private recvTurnOverReadyABEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/TransmitPacketBase;)I
    .locals 13
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/TransmitPacketBase;

    .prologue
    const/4 v12, -0x4

    const-wide/16 v10, 0x3e8

    const/4 v4, 0x0

    .line 287
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->stopTimer()V

    .line 290
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->resendRetryCountUp()V

    .line 293
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->resendRetryCountOverCheck()Z

    move-result v5

    if-nez v5, :cond_2

    .line 301
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getPrevSentPacketSize()I

    move-result v5

    add-int/lit8 v2, v5, 0x5

    .line 303
    .local v2, "preSendLen":I
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->getPrevReceivedPacketSize()I

    move-result v5

    add-int/lit8 v3, v5, 0x5

    .line 307
    .local v3, "recvLen":I
    invoke-interface {p1, v3, v2, v4}, Lcom/felicanetworks/falp/state/StateListener;->getIVb(IIZ)J

    move-result-wide v0

    .line 310
    .local v0, "ivb":J
    monitor-enter p0

    .line 312
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-eqz v5, :cond_0

    .line 313
    const-wide/16 v6, 0x3e8

    :try_start_0
    div-long v6, v0, v6

    const-wide/16 v8, 0x3e8

    rem-long v8, v0, v8

    mul-long/2addr v8, v10

    long-to-int v5, v8

    invoke-virtual {p0, v6, v7, v5}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getInstance()Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    move-result-object v5

    invoke-virtual {v5}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->retrySendPacket()I

    move-result v5

    if-eqz v5, :cond_1

    .line 325
    const/16 v5, 0x103

    .line 324
    invoke-virtual {p0, p1, v5, v12, v4}, Lcom/felicanetworks/falp/state/TransmitDataRetryState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SIZ)I

    move-result v4

    .line 339
    .end local v0    # "ivb":J
    .end local v2    # "preSendLen":I
    .end local v3    # "recvLen":I
    :goto_1
    return v4

    .line 310
    .restart local v0    # "ivb":J
    .restart local v2    # "preSendLen":I
    .restart local v3    # "recvLen":I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 332
    :cond_1
    invoke-interface {p1, v4}, Lcom/felicanetworks/falp/state/StateListener;->getTOb(Z)J

    move-result-wide v6

    invoke-interface {p1, v6, v7}, Lcom/felicanetworks/falp/state/StateListener;->startMicroTimer(J)V

    goto :goto_1

    .line 336
    .end local v0    # "ivb":J
    .end local v2    # "preSendLen":I
    .end local v3    # "recvLen":I
    :cond_2
    const/16 v4, 0x101

    invoke-virtual {p0, p1, v4, v12}, Lcom/felicanetworks/falp/state/TransmitDataRetryState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SI)I

    move-result v4

    goto :goto_1

    .line 314
    .restart local v0    # "ivb":J
    .restart local v2    # "preSendLen":I
    .restart local v3    # "recvLen":I
    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public cancelFalp(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 225
    const/4 v0, 0x7

    const-string v1, "TransmitDataRetryState#recvCancelFalp()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 229
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->clearAppLisnter()V

    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/felicanetworks/falp/state/TransmitDataRetryState;->actTermSentChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;I)I

    move-result v0

    return v0
.end method

.method public changeState(I)V
    .locals 1
    .param p1, "param"    # I

    .prologue
    .line 353
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/felicanetworks/falp/state/TransmitDataRetryState;->mCanPartnerReceiveData:Z

    .line 354
    return-void

    .line 353
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recvPacketEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/DataSendPacket;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/DataSendPacket;

    .prologue
    .line 72
    const/4 v0, 0x7

    const-string v1, "TransmitDataRetryState#recvPacketEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public recvRetryReqEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/RetryReqPacket;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/RetryReqPacket;

    .prologue
    .line 131
    const/4 v0, 0x7

    const-string v1, "TransmitDataRetryState#recvRetryReqEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/falp/state/TransmitDataRetryState;->recvTurnOverReadyABEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/TransmitPacketBase;)I

    move-result v0

    return v0
.end method

.method public recvRetryResEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/RetryResPacket;)I
    .locals 8
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/RetryResPacket;

    .prologue
    const/4 v5, 0x0

    .line 150
    const/4 v0, 0x7

    const-string v1, "TransmitDataRetryState#recvRetryResEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Lcom/felicanetworks/falp/packet/RetryResPacket;->getSequenceId()I

    move-result v0

    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getResendRequestSeqno()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 156
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->stopTimer()V

    .line 159
    invoke-virtual {p2}, Lcom/felicanetworks/falp/packet/RetryResPacket;->getSequenceId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/felicanetworks/falp/state/StateListener;->setResendResponseSeqno(I)V

    .line 163
    iget-boolean v1, p0, Lcom/felicanetworks/falp/state/TransmitDataRetryState;->mCanPartnerReceiveData:Z

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/felicanetworks/falp/state/TransmitDataRetryState;->recvCommonTurnOverReadyABEvt(ZZLcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;Z)I

    move-result v5

    .line 189
    :cond_0
    :goto_0
    return v5

    .line 166
    :cond_1
    invoke-virtual {p2}, Lcom/felicanetworks/falp/packet/RetryResPacket;->getSequenceId()I

    move-result v0

    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getResendResponseSeqno()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 168
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->stopTimer()V

    .line 178
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getPrevSentPacketSize()I

    move-result v0

    add-int/lit8 v6, v0, 0x5

    .line 180
    .local v6, "preSendLen":I
    invoke-virtual {p2}, Lcom/felicanetworks/falp/packet/RetryResPacket;->getPayloadLen()I

    move-result v0

    invoke-virtual {p2}, Lcom/felicanetworks/falp/packet/RetryResPacket;->getPacketLenExceptPayload()I

    move-result v1

    add-int v7, v0, v1

    .line 183
    .local v7, "recvLen":I
    invoke-interface {p1, v7, v6, v5}, Lcom/felicanetworks/falp/state/StateListener;->getIVb(IIZ)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/felicanetworks/falp/state/StateListener;->startMicroTimer(J)V

    goto :goto_0
.end method

.method public recvTimeout(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 4
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    const/4 v0, 0x0

    .line 246
    const/4 v1, 0x7

    const-string v2, "TransmitDataRetryState#recvTimeout()"

    invoke-static {v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 248
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->sendRetryCountOverCheck()Z

    move-result v1

    if-nez v1, :cond_1

    .line 250
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->sendRetryCountUp()V

    .line 253
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getInstance()Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->retrySendPacket()I

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const/16 v1, 0x1ff

    .line 257
    invoke-virtual {p0, p1, v1, v0}, Lcom/felicanetworks/falp/state/TransmitDataRetryState;->actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;SZ)I

    move-result v0

    .line 274
    :goto_0
    return v0

    .line 263
    :cond_0
    invoke-interface {p1, v0}, Lcom/felicanetworks/falp/state/StateListener;->getTOb(Z)J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lcom/felicanetworks/falp/state/StateListener;->startMicroTimer(J)V

    goto :goto_0

    .line 272
    :cond_1
    const/4 v0, -0x4

    invoke-virtual {p0, p1, v0}, Lcom/felicanetworks/falp/state/TransmitDataRetryState;->actTermSentChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;I)I

    move-result v0

    goto :goto_0
.end method

.method public recvTurnOverReadyBEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/ConvertBPacket;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/ConvertBPacket;

    .prologue
    .line 111
    const/4 v0, 0x7

    const-string v1, "TransmitDataRetryState#recvTurnOverReadyBEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public recvTurnOverReadyEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/ConvertAPacket;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/ConvertAPacket;

    .prologue
    .line 91
    const/4 v0, 0x7

    const-string v1, "TransmitDataRetryState#recvTurnOverReadyEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public terminateFalp(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 205
    const/4 v0, 0x7

    const-string v1, "TransmitDataRetryState#recvTerminateFalp()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 208
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->setEndRequestFlag()V

    .line 209
    const/4 v0, 0x0

    return v0
.end method
