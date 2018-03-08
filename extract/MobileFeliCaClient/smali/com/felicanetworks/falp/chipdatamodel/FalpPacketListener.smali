.class public interface abstract Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;
.super Ljava/lang/Object;
.source "FalpPacketListener.java"


# virtual methods
.method public abstract onRecvAppCodeErrPacket()V
.end method

.method public abstract onRecvData(Lcom/felicanetworks/falp/packet/DataSendPacket;)V
.end method

.method public abstract onRecvHandshakeReq(Lcom/felicanetworks/falp/packet/HandshakeReqPacket;)V
.end method

.method public abstract onRecvHandshakeRes(Lcom/felicanetworks/falp/packet/HandshakeResPacket;)V
.end method

.method public abstract onRecvOtherPacket()V
.end method

.method public abstract onRecvPayLoadErrPacket()V
.end method

.method public abstract onRecvRetryReq(Lcom/felicanetworks/falp/packet/RetryReqPacket;)V
.end method

.method public abstract onRecvRetryRes(Lcom/felicanetworks/falp/packet/RetryResPacket;)V
.end method

.method public abstract onRecvTerminateAdhoc(Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;)V
.end method

.method public abstract onRecvTransitionA(Lcom/felicanetworks/falp/packet/ConvertAPacket;)V
.end method

.method public abstract onRecvTransitionB(Lcom/felicanetworks/falp/packet/ConvertBPacket;)V
.end method

.method public abstract onSendError(I)V
.end method
