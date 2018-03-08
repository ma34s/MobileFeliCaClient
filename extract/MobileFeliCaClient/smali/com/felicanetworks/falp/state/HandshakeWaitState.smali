.class public Lcom/felicanetworks/falp/state/HandshakeWaitState;
.super Lcom/felicanetworks/falp/state/FalpState;
.source "HandshakeWaitState.java"


# static fields
.field private static instance:Lcom/felicanetworks/falp/state/HandshakeWaitState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/felicanetworks/falp/state/HandshakeWaitState;

    invoke-direct {v0}, Lcom/felicanetworks/falp/state/HandshakeWaitState;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/state/HandshakeWaitState;->instance:Lcom/felicanetworks/falp/state/HandshakeWaitState;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/felicanetworks/falp/state/FalpState;-><init>()V

    .line 41
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/falp/state/HandshakeWaitState;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/felicanetworks/falp/state/HandshakeWaitState;->instance:Lcom/felicanetworks/falp/state/HandshakeWaitState;

    return-object v0
.end method


# virtual methods
.method public recvFarewell(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;)I
    .locals 3
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;

    .prologue
    const/4 v2, 0x0

    .line 241
    const/4 v0, 0x7

    const-string v1, "HandshakeWaitState#recvFarewellReq()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 244
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->stopTimer()V

    .line 247
    invoke-static {}, Lcom/felicanetworks/falp/state/IdleState;->getInstance()Lcom/felicanetworks/falp/state/IdleState;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    .line 248
    return v2
.end method

.method public recvHandshakeEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/HandshakeReqPacket;)I
    .locals 13
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/HandshakeReqPacket;

    .prologue
    const/16 v12, 0x105

    const/4 v8, 0x0

    .line 69
    const-string v9, "HandshakeWaitState#recvHandshakeEvt()"

    invoke-static {v8, v9}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 72
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->stopTimer()V

    .line 75
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->saveCurrentTime()V

    .line 78
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v6

    .line 80
    .local v6, "mng":Lcom/felicanetworks/falp/FalpProtocolParameter;
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getInstance()Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    move-result-object v9

    invoke-virtual {v9}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->stopToReceive()V

    .line 81
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ChipController;

    move-result-object v9

    .line 82
    const/16 v10, 0x3e8

    const/4 v11, 0x0

    .line 81
    invoke-virtual {v9, v10, v11}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->getRFChipRegister(II)B

    move-result v1

    .line 83
    .local v1, "b":B
    invoke-virtual {v6, v1}, Lcom/felicanetworks/falp/FalpProtocolParameter;->setmGetRfChipRegisterNum(B)V

    .line 84
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getInstance()Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    move-result-object v9

    invoke-virtual {v6}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getSession_id()S

    move-result v10

    .line 85
    invoke-virtual {v6}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getRecvWaitTimer()I

    move-result v11

    .line 84
    invoke-virtual {v9, p1, v10, v11}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->startToReceive(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;SI)V
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    invoke-static {}, Lcom/felicanetworks/mfc/Felica;->getInstance()Lcom/felicanetworks/mfc/Felica;

    move-result-object v9

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/Felica;->getAllowFalpWhileUsingMfc()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 101
    invoke-virtual {p2}, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->getHandshakeParam()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppid()[B

    move-result-object v9

    invoke-interface {p1, v9}, Lcom/felicanetworks/falp/state/StateListener;->isSameListeningAppCode([B)Z

    move-result v5

    .line 104
    .local v5, "isSame":Z
    if-eqz v5, :cond_1

    .line 106
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getPeerParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v4

    .line 107
    .local v4, "hs":Lcom/felicanetworks/falp/HandshakeParameter;
    invoke-virtual {p2}, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->getHandshakeParam()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/felicanetworks/falp/HandshakeParameter;->copyFrom(Lcom/felicanetworks/falp/HandshakeParameter;)V

    .line 108
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getMyParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v9

    invoke-virtual {v4}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppid()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/felicanetworks/falp/HandshakeParameter;->setAppid([B)V

    .line 109
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getMyParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v9

    invoke-virtual {v4}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppid_len()C

    move-result v10

    invoke-virtual {v9, v10}, Lcom/felicanetworks/falp/HandshakeParameter;->setAppid_len(C)V

    .line 114
    invoke-virtual {v6}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getSuitableAppWaitTimerMilliSec()I

    move-result v9

    invoke-interface {p1, v9}, Lcom/felicanetworks/falp/state/StateListener;->startMiliTimer(I)V

    .line 118
    invoke-static {}, Lcom/felicanetworks/falp/state/AppWaitState;->getInstance()Lcom/felicanetworks/falp/state/AppWaitState;

    move-result-object v9

    invoke-interface {p1, v9, v8}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    .line 122
    :try_start_1
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getAppReceiveLisnter()Lcom/felicanetworks/falp/FalpListener;

    move-result-object v9

    invoke-interface {v9}, Lcom/felicanetworks/falp/FalpListener;->receivedFalpHandshake()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 225
    .end local v1    # "b":B
    .end local v4    # "hs":Lcom/felicanetworks/falp/HandshakeParameter;
    .end local v5    # "isSame":Z
    :cond_0
    :goto_0
    return v8

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/4 v8, 0x1

    .line 88
    const-string v9, "HandshakeWaitState#recvHandshakeEvt() getRFChipRegister ERR."

    .line 87
    invoke-static {v8, v9}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 90
    invoke-virtual {p0, p1, v12}, Lcom/felicanetworks/falp/state/HandshakeWaitState;->actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;S)I

    move-result v8

    goto :goto_0

    .line 123
    .end local v2    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .restart local v1    # "b":B
    .restart local v4    # "hs":Lcom/felicanetworks/falp/HandshakeParameter;
    .restart local v5    # "isSame":Z
    :catch_1
    move-exception v2

    .line 124
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, p1, v12}, Lcom/felicanetworks/falp/state/HandshakeWaitState;->actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;S)I

    move-result v8

    goto :goto_0

    .line 126
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v3

    .line 127
    .local v3, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {p0, p1, v12}, Lcom/felicanetworks/falp/state/HandshakeWaitState;->actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;S)I

    move-result v8

    goto :goto_0

    .line 133
    .end local v3    # "e2":Ljava/lang/NullPointerException;
    .end local v4    # "hs":Lcom/felicanetworks/falp/HandshakeParameter;
    :cond_1
    invoke-virtual {p0, p1, v12}, Lcom/felicanetworks/falp/state/HandshakeWaitState;->actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;S)I

    move-result v8

    goto :goto_0

    .line 140
    .end local v5    # "isSame":Z
    :cond_2
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getPeerParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v4

    .line 141
    .restart local v4    # "hs":Lcom/felicanetworks/falp/HandshakeParameter;
    invoke-virtual {p2}, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->getHandshakeParam()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/felicanetworks/falp/HandshakeParameter;->copyFrom(Lcom/felicanetworks/falp/HandshakeParameter;)V

    .line 142
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getMyParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v9

    invoke-virtual {v4}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppid()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/felicanetworks/falp/HandshakeParameter;->setAppid([B)V

    .line 143
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getMyParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v9

    invoke-virtual {v4}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppid_len()C

    move-result v10

    invoke-virtual {v9, v10}, Lcom/felicanetworks/falp/HandshakeParameter;->setAppid_len(C)V

    .line 146
    invoke-virtual {v4}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppCodeKind()I

    move-result v0

    .line 147
    .local v0, "appKind":I
    packed-switch v0, :pswitch_data_0

    .line 221
    invoke-virtual {p0, p1, v12}, Lcom/felicanetworks/falp/state/HandshakeWaitState;->actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;S)I

    move-result v8

    goto :goto_0

    .line 153
    :pswitch_0
    invoke-virtual {v6}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getSuitableAppWaitTimerMilliSec()I

    move-result v9

    invoke-interface {p1, v9}, Lcom/felicanetworks/falp/state/StateListener;->startMiliTimer(I)V

    .line 156
    invoke-static {}, Lcom/felicanetworks/falp/state/AppWaitState;->getInstance()Lcom/felicanetworks/falp/state/AppWaitState;

    move-result-object v9

    invoke-interface {p1, v9, v8}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    .line 159
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->reqStartSvcApp()I

    move-result v7

    .line 161
    .local v7, "retApp":I
    if-eqz v7, :cond_0

    .line 162
    invoke-virtual {p0, p1, v12}, Lcom/felicanetworks/falp/state/HandshakeWaitState;->actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;S)I

    move-result v8

    goto :goto_0

    .line 176
    .end local v7    # "retApp":I
    :pswitch_1
    invoke-virtual {v6}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getUserAppWaitTimerMilliSec()I

    move-result v9

    invoke-interface {p1, v9}, Lcom/felicanetworks/falp/state/StateListener;->startMiliTimer(I)V

    .line 179
    invoke-static {}, Lcom/felicanetworks/falp/state/UserAplStartCheckState;->getInstance()Lcom/felicanetworks/falp/state/UserAplStartCheckState;

    move-result-object v9

    invoke-interface {p1, v9, v8}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    .line 182
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->reqUserAplStartCheck()I

    move-result v7

    .line 184
    .restart local v7    # "retApp":I
    if-eqz v7, :cond_0

    .line 185
    invoke-virtual {p0, p1, v12}, Lcom/felicanetworks/falp/state/HandshakeWaitState;->actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;S)I

    move-result v8

    goto :goto_0

    .line 201
    .end local v7    # "retApp":I
    :pswitch_2
    invoke-virtual {v6}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getAndr01AppWaitTimerMilliSec()I

    move-result v9

    invoke-interface {p1, v9}, Lcom/felicanetworks/falp/state/StateListener;->startMiliTimer(I)V

    .line 204
    invoke-static {}, Lcom/felicanetworks/falp/state/AppWaitState;->getInstance()Lcom/felicanetworks/falp/state/AppWaitState;

    move-result-object v9

    invoke-interface {p1, v9, v8}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    .line 207
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->reqStartAndr01App()I

    move-result v7

    .line 209
    .restart local v7    # "retApp":I
    if-eqz v7, :cond_0

    .line 210
    invoke-virtual {p0, p1, v12}, Lcom/felicanetworks/falp/state/HandshakeWaitState;->actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;S)I

    move-result v8

    goto/16 :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public recvPacketReadError(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 3
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    const/4 v2, 0x0

    .line 264
    const/4 v0, 0x7

    const-string v1, "FalpState#recvPacketReadError()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 267
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->stopTimer()V

    .line 270
    invoke-static {}, Lcom/felicanetworks/falp/state/IdleState;->getInstance()Lcom/felicanetworks/falp/state/IdleState;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    .line 272
    return v2
.end method

.method public recvTimeout(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 3
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    const/4 v2, 0x0

    .line 303
    const/4 v0, 0x7

    const-string v1, "HandshakeWaitState#recvTimeout()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/felicanetworks/falp/state/IdleState;->getInstance()Lcom/felicanetworks/falp/state/IdleState;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    .line 308
    return v2
.end method

.method public sendData([B)I
    .locals 1
    .param p1, "sendbyte"    # [B

    .prologue
    .line 288
    const/4 v0, -0x6

    return v0
.end method
