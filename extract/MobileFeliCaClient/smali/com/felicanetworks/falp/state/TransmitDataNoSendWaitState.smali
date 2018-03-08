.class public Lcom/felicanetworks/falp/state/TransmitDataNoSendWaitState;
.super Lcom/felicanetworks/falp/state/FalpState;
.source "TransmitDataNoSendWaitState.java"


# static fields
.field private static instance:Lcom/felicanetworks/falp/state/TransmitDataNoSendWaitState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/felicanetworks/falp/state/TransmitDataNoSendWaitState;

    invoke-direct {v0}, Lcom/felicanetworks/falp/state/TransmitDataNoSendWaitState;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/state/TransmitDataNoSendWaitState;->instance:Lcom/felicanetworks/falp/state/TransmitDataNoSendWaitState;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/felicanetworks/falp/state/FalpState;-><init>()V

    .line 36
    return-void
.end method

.method public static getInstance()Lcom/felicanetworks/falp/state/TransmitDataNoSendWaitState;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/felicanetworks/falp/state/TransmitDataNoSendWaitState;->instance:Lcom/felicanetworks/falp/state/TransmitDataNoSendWaitState;

    return-object v0
.end method


# virtual methods
.method public cancelFalp(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 139
    const/4 v0, 0x7

    const-string v1, "FalpState#recvCancelFalp()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 143
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->clearAppLisnter()V

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/felicanetworks/falp/state/TransmitDataNoSendWaitState;->actTermSentChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;I)I

    move-result v0

    return v0
.end method

.method public recvRetryResEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/RetryResPacket;)I
    .locals 3
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/RetryResPacket;

    .prologue
    const/4 v2, 0x1

    .line 102
    const/4 v0, 0x7

    const-string v1, "FalpState#recvRetryResEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 103
    invoke-virtual {p0, v2, v2, p1, p2}, Lcom/felicanetworks/falp/state/TransmitDataNoSendWaitState;->recvTurnOverReadyEvtWhenSendState(ZZLcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;)I

    move-result v0

    return v0
.end method

.method public recvTimeout(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 4
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    const/4 v3, 0x0

    .line 157
    const/4 v1, 0x7

    const-string v2, "TransmitDataNoSendWaitState#recvTimeout()"

    invoke-static {v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;->getInstance()Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->getWriteBufferSize()I

    move-result v1

    .line 160
    invoke-static {}, Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;->getInstance()Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->getReadBufferSize()I

    move-result v2

    .line 159
    sub-int v0, v1, v2

    .line 163
    .local v0, "sizeToBeSent":I
    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getEndRequestFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p0, p1, v3, v3, v3}, Lcom/felicanetworks/falp/state/TransmitDataNoSendWaitState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SIZ)I

    move-result v1

    .line 177
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v3}, Lcom/felicanetworks/falp/state/TransmitDataNoSendWaitState;->sendTurnOverForRecvState(Lcom/felicanetworks/falp/state/StateListener;[BI)I

    move-result v1

    goto :goto_0
.end method

.method public recvTurnOverReadyBEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/ConvertBPacket;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/ConvertBPacket;

    .prologue
    .line 83
    const/4 v0, 0x7

    const-string v1, "TransmitDataNoSendWaitState#recvTurnOverReadyBEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/felicanetworks/falp/state/TransmitDataNoSendWaitState;->recvTurnOverReadyEvtWhenSendState(ZZLcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;)I

    move-result v0

    return v0
.end method

.method public recvTurnOverReadyEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/ConvertAPacket;)I
    .locals 3
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/ConvertAPacket;

    .prologue
    const/4 v2, 0x1

    .line 64
    const/4 v0, 0x7

    const-string v1, "TransmitDataNoSendWaitState#recvTurnOverReadyEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 65
    invoke-virtual {p0, v2, v2, p1, p2}, Lcom/felicanetworks/falp/state/TransmitDataNoSendWaitState;->recvTurnOverReadyEvtWhenSendState(ZZLcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;)I

    move-result v0

    return v0
.end method

.method public terminateFalp(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 119
    const/4 v0, 0x7

    const-string v1, "FalpState#recvTerminateFalp()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 122
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->setEndRequestFlag()V

    .line 123
    const/4 v0, 0x0

    return v0
.end method
