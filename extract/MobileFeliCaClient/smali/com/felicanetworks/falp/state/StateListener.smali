.class public interface abstract Lcom/felicanetworks/falp/state/StateListener;
.super Ljava/lang/Object;
.source "StateListener.java"

# interfaces
.implements Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;


# virtual methods
.method public abstract checkRecvData()S
.end method

.method public abstract clearAppLisnter()V
.end method

.method public abstract clearRecvData()V
.end method

.method public abstract clearSendDataBufferInWrkArea()V
.end method

.method public abstract copySendDataFromBufferToWrkArea()V
.end method

.method public abstract countupSeqNum()V
.end method

.method public abstract getAppLisnter()Lcom/felicanetworks/falp/FalpListener;
.end method

.method public abstract getAppReceiveLisnter()Lcom/felicanetworks/falp/FalpListener;
.end method

.method public abstract getDifferenceFromSavedTime()J
.end method

.method public abstract getEndRequestFlag()Z
.end method

.method public abstract getExpectedSeqNum()I
.end method

.method public abstract getFalpCaller()[Ljava/lang/String;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getIVa(II)J
.end method

.method public abstract getIVb(IIZ)J
.end method

.method public abstract getMyPackageName()Ljava/lang/String;
.end method

.method public abstract getMyParams()Lcom/felicanetworks/falp/HandshakeParameter;
.end method

.method public abstract getOneTimePassword()I
.end method

.method public abstract getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;
.end method

.method public abstract getPeerParams()Lcom/felicanetworks/falp/HandshakeParameter;
.end method

.method public abstract getRecvDataLen()I
.end method

.method public abstract getResendRequestSeqno()I
.end method

.method public abstract getResendResponseSeqno()I
.end method

.method public abstract getSendData(I)Lcom/felicanetworks/felica/util/ByteBuffer;
.end method

.method public abstract getSendDataLen(I)I
.end method

.method public abstract getSeqNum()I
.end method

.method public abstract getState()Lcom/felicanetworks/falp/state/FalpState;
.end method

.method public abstract getTOb(Z)J
.end method

.method public abstract hasAppLisnter()Z
.end method

.method public abstract isSameListeningAppCode([B)Z
.end method

.method public abstract reqStartAndr01App()I
.end method

.method public abstract reqStartSvcApp()I
.end method

.method public abstract reqStartUsrApp()I
.end method

.method public abstract reqUserAplStartCheck()I
.end method

.method public abstract resendRetryCountInit()V
.end method

.method public abstract resendRetryCountOverCheck()Z
.end method

.method public abstract resendRetryCountUp()V
.end method

.method public abstract rollbackSeqNum()V
.end method

.method public abstract saveCurrentTime()V
.end method

.method public abstract saveRecvPacketToBuffer(Z)Z
.end method

.method public abstract sendRetryCountInit()V
.end method

.method public abstract sendRetryCountOverCheck()Z
.end method

.method public abstract sendRetryCountUp()V
.end method

.method public abstract setEndRequestFlag()V
.end method

.method public abstract setRecvData(Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;)I
.end method

.method public abstract setResendRequestSeqno(I)V
.end method

.method public abstract setResendResponseSeqno(I)V
.end method

.method public abstract setState(Lcom/felicanetworks/falp/state/FalpState;I)I
.end method

.method public abstract startMicroTimer(J)V
.end method

.method public abstract startMiliTimer(I)V
.end method

.method public abstract stopService()V
.end method

.method public abstract stopTimer()V
.end method
