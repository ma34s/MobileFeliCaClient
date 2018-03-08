.class public Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;
.super Lcom/felicanetworks/falp/state/FalpState;
.source "TransmitDataSendWaitState.java"


# static fields
.field private static instance:Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;

    invoke-direct {v0}, Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;->instance:Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;

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

.method public static getInstance()Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;->instance:Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;

    return-object v0
.end method


# virtual methods
.method public cancelFalp(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 143
    const/4 v0, 0x7

    const-string v1, "FalpState#recvCancelFalp()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 146
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->clearAppLisnter()V

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;->actTermSentChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;I)I

    move-result v0

    return v0
.end method

.method public recvRetryResEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/RetryResPacket;)I
    .locals 3
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/RetryResPacket;

    .prologue
    const/4 v2, 0x1

    .line 106
    const/4 v0, 0x7

    const-string v1, "FalpState#recvRetryResEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 107
    invoke-virtual {p0, v2, v2, p1, p2}, Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;->recvTurnOverReadyEvtWhenSendState(ZZLcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;)I

    move-result v0

    return v0
.end method

.method public recvTimeout(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 13
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    const/4 v12, 0x7

    const/4 v9, 0x0

    .line 160
    const-string v10, "TransmitDataSendWaitState#recvTimeout()"

    invoke-static {v12, v10}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 163
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getSeqNum()I

    move-result v6

    .line 164
    .local v6, "seqNum":I
    invoke-interface {p1, v6}, Lcom/felicanetworks/falp/state/StateListener;->getSendDataLen(I)I

    move-result v7

    .line 166
    .local v7, "sizeToBeSent":I
    invoke-static {}, Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;->getInstance()Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->getWriteBufferSize()I

    move-result v10

    .line 167
    invoke-static {}, Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;->getInstance()Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;

    move-result-object v11

    invoke-virtual {v11}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->getReadBufferSize()I

    move-result v11

    .line 166
    sub-int v8, v10, v11

    .line 170
    .local v8, "sizeToBeSentNext":I
    if-nez v7, :cond_0

    if-nez v8, :cond_0

    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getEndRequestFlag()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 178
    invoke-virtual {p0, p1, v9, v9, v9}, Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SIZ)I

    move-result v9

    .line 232
    :goto_0
    return v9

    .line 183
    :cond_0
    if-nez v7, :cond_1

    .line 184
    const-string v10, "\tno payload turnover."

    invoke-static {v12, v10}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 185
    const/4 v10, 0x0

    invoke-virtual {p0, p1, v10, v9}, Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;->sendTurnOverForRecvState(Lcom/felicanetworks/falp/state/StateListener;[BI)I

    move-result v9

    goto :goto_0

    .line 187
    :cond_1
    invoke-interface {p1, v6}, Lcom/felicanetworks/falp/state/StateListener;->getSendData(I)Lcom/felicanetworks/felica/util/ByteBuffer;

    move-result-object v5

    .line 190
    .local v5, "sendBuf":Lcom/felicanetworks/felica/util/ByteBuffer;
    add-int/lit8 v0, v6, 0x1

    .line 191
    .local v0, "nextSeq":I
    const v10, 0xffff

    if-le v0, v10, :cond_2

    .line 192
    const/4 v0, 0x0

    .line 195
    :cond_2
    invoke-interface {p1, v0}, Lcom/felicanetworks/falp/state/StateListener;->getSendDataLen(I)I

    move-result v10

    if-nez v10, :cond_3

    .line 196
    invoke-virtual {v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v9

    invoke-virtual {v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v10

    invoke-virtual {p0, p1, v9, v10}, Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;->sendTurnOverForRecvState(Lcom/felicanetworks/falp/state/StateListener;[BI)I

    move-result v9

    goto :goto_0

    .line 200
    :cond_3
    const/4 v2, 0x0

    .line 201
    .local v2, "packet":Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getDataSendPacket()Lcom/felicanetworks/falp/packet/DataSendPacket;

    move-result-object v2

    .line 202
    invoke-virtual {v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v10

    invoke-virtual {v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v11

    invoke-virtual {v2, v10, v11, v6}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->setInformation([BII)V

    .line 203
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->countupSeqNum()V

    .line 211
    invoke-virtual {v2}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getPayloadLen()I

    move-result v10

    invoke-virtual {v2}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getPacketLenExceptPayload()I

    move-result v11

    add-int v3, v10, v11

    .line 212
    .local v3, "prevSentLen":I
    invoke-interface {p1, v0}, Lcom/felicanetworks/falp/state/StateListener;->getSendDataLen(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x5

    add-int/lit8 v1, v10, 0x3

    .line 216
    .local v1, "nowSendLen":I
    const/4 v4, 0x0

    .line 217
    .local v4, "ret":I
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getInstance()Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    move-result-object v10

    check-cast v2, Lcom/felicanetworks/falp/packet/DataSendPacket;

    .line 218
    .end local v2    # "packet":Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getSession_id()S

    move-result v11

    .line 217
    invoke-virtual {v10, v2, v11}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->sendData(Lcom/felicanetworks/falp/packet/DataSendPacket;S)I

    move-result v4

    .line 219
    if-eqz v4, :cond_4

    .line 223
    invoke-virtual {p0, p1, v9, v9, v9}, Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SIZ)I

    move-result v9

    goto :goto_0

    .line 229
    :cond_4
    invoke-interface {p1, v3, v1}, Lcom/felicanetworks/falp/state/StateListener;->getIVa(II)J

    move-result-wide v10

    invoke-interface {p1, v10, v11}, Lcom/felicanetworks/falp/state/StateListener;->startMicroTimer(J)V

    goto :goto_0
.end method

.method public recvTurnOverReadyBEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/ConvertBPacket;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/ConvertBPacket;

    .prologue
    .line 87
    const/4 v0, 0x7

    const-string v1, "TransmitDataSendWaitState#recvTurnOverReadyBEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;->recvTurnOverReadyEvtWhenSendState(ZZLcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;)I

    move-result v0

    return v0
.end method

.method public recvTurnOverReadyEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/ConvertAPacket;)I
    .locals 3
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/ConvertAPacket;

    .prologue
    const/4 v2, 0x1

    .line 68
    const/4 v0, 0x7

    const-string v1, "TransmitDataSendWaitState#recvTurnOverReadyEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 69
    invoke-virtual {p0, v2, v2, p1, p2}, Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;->recvTurnOverReadyEvtWhenSendState(ZZLcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;)I

    move-result v0

    return v0
.end method

.method public terminateFalp(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 123
    const/4 v0, 0x7

    const-string v1, "FalpState#recvTerminateFalp()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 126
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->setEndRequestFlag()V

    .line 127
    const/4 v0, 0x0

    return v0
.end method
