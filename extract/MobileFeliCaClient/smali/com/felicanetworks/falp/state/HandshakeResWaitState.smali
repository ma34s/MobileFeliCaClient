.class public Lcom/felicanetworks/falp/state/HandshakeResWaitState;
.super Lcom/felicanetworks/falp/state/FalpState;
.source "HandshakeResWaitState.java"


# static fields
.field private static instance:Lcom/felicanetworks/falp/state/HandshakeResWaitState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/felicanetworks/falp/state/HandshakeResWaitState;

    invoke-direct {v0}, Lcom/felicanetworks/falp/state/HandshakeResWaitState;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/state/HandshakeResWaitState;->instance:Lcom/felicanetworks/falp/state/HandshakeResWaitState;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/felicanetworks/falp/state/FalpState;-><init>()V

    .line 37
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/falp/state/HandshakeResWaitState;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/felicanetworks/falp/state/HandshakeResWaitState;->instance:Lcom/felicanetworks/falp/state/HandshakeResWaitState;

    return-object v0
.end method


# virtual methods
.method public cancelFalp(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 144
    const/4 v0, 0x7

    const-string v1, "FalpState#recvCancelFalp()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 148
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->clearAppLisnter()V

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/felicanetworks/falp/state/HandshakeResWaitState;->actTermSentChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;I)I

    move-result v0

    return v0
.end method

.method public recvHandshakeRes(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/HandshakeResPacket;)I
    .locals 10
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/HandshakeResPacket;

    .prologue
    const/16 v9, 0x1ff

    const/4 v5, 0x0

    .line 65
    const-string v8, "HandshakeResWaitState#recvHandshakeRes()"

    invoke-static {v5, v8}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 68
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->stopTimer()V

    .line 71
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getPeerParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v2

    .line 72
    .local v2, "hs":Lcom/felicanetworks/falp/HandshakeParameter;
    invoke-virtual {p2}, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->getmHsrsParam()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/felicanetworks/falp/HandshakeParameter;->copyFrom(Lcom/felicanetworks/falp/HandshakeParameter;)V

    .line 75
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->copySendDataFromBufferToWrkArea()V

    .line 83
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->getPrevReceivedPacketSize()I

    move-result v8

    add-int/lit8 v3, v8, 0x5

    .line 85
    .local v3, "recv_len":I
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getSeqNum()I

    move-result v8

    invoke-interface {p1, v8}, Lcom/felicanetworks/falp/state/StateListener;->getSendDataLen(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x5

    add-int/lit8 v4, v8, 0x3

    .line 92
    .local v4, "send_len":I
    invoke-interface {p1, v3, v4, v5}, Lcom/felicanetworks/falp/state/StateListener;->getIVb(IIZ)J

    move-result-wide v6

    .line 93
    .local v6, "timeout":J
    invoke-interface {p1, v6, v7}, Lcom/felicanetworks/falp/state/StateListener;->startMicroTimer(J)V

    .line 96
    invoke-static {}, Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;->getInstance()Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;

    move-result-object v8

    invoke-interface {p1, v8, v5}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    .line 100
    :try_start_0
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getAppLisnter()Lcom/felicanetworks/falp/FalpListener;

    move-result-object v8

    invoke-interface {v8}, Lcom/felicanetworks/falp/FalpListener;->completedInitiatorFalp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    :goto_0
    return v5

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, p1, v9}, Lcom/felicanetworks/falp/state/HandshakeResWaitState;->actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;S)I

    move-result v5

    goto :goto_0

    .line 104
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 105
    .local v1, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {p0, p1, v9}, Lcom/felicanetworks/falp/state/HandshakeResWaitState;->actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;S)I

    move-result v5

    goto :goto_0
.end method

.method public recvTimeout(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 165
    const/4 v0, 0x7

    const-string v1, "HandshakeResWaitState#recvTimeout()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 168
    const/4 v0, -0x4

    invoke-virtual {p0, p1, v0}, Lcom/felicanetworks/falp/state/HandshakeResWaitState;->actTermSentChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;I)I

    move-result v0

    return v0
.end method

.method public terminateFalp(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 124
    const/4 v0, 0x7

    const-string v1, "FalpState#recvTerminateFalp()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 127
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->setEndRequestFlag()V

    .line 128
    const/4 v0, 0x0

    return v0
.end method
