.class public Lcom/felicanetworks/falp/state/FWSendWaitState;
.super Lcom/felicanetworks/falp/state/FalpState;
.source "FWSendWaitState.java"


# static fields
.field private static instance:Lcom/felicanetworks/falp/state/FWSendWaitState;


# instance fields
.field private mFwCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/felicanetworks/falp/state/FWSendWaitState;

    invoke-direct {v0}, Lcom/felicanetworks/falp/state/FWSendWaitState;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/state/FWSendWaitState;->instance:Lcom/felicanetworks/falp/state/FWSendWaitState;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/felicanetworks/falp/state/FalpState;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/falp/state/FWSendWaitState;->mFwCode:I

    .line 38
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/falp/state/FWSendWaitState;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/felicanetworks/falp/state/FWSendWaitState;->instance:Lcom/felicanetworks/falp/state/FWSendWaitState;

    return-object v0
.end method


# virtual methods
.method public cancelFalp(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 143
    const/4 v0, 0x7

    const-string v1, "FWSendWaitState#recvCancelFalp()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 146
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->clearAppLisnter()V

    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/felicanetworks/falp/state/FWSendWaitState;->actTermSentChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;I)I

    move-result v0

    return v0
.end method

.method public changeState(I)V
    .locals 0
    .param p1, "param"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/felicanetworks/falp/state/FWSendWaitState;->mFwCode:I

    .line 163
    return-void
.end method

.method public recvTimeout(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 3
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 116
    const/4 v0, 0x7

    const-string v1, "FWSendWaitState#recvTimeout()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 124
    iget v0, p0, Lcom/felicanetworks/falp/state/FWSendWaitState;->mFwCode:I

    int-to-short v0, v0

    iget v1, p0, Lcom/felicanetworks/falp/state/FWSendWaitState;->mFwCode:I

    int-to-short v1, v1

    invoke-virtual {p0, v1}, Lcom/felicanetworks/falp/state/FWSendWaitState;->getAppErrCode(S)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/felicanetworks/falp/state/FWSendWaitState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SIZ)I

    move-result v0

    return v0
.end method

.method public recvTurnOverReadyBEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/ConvertBPacket;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/ConvertBPacket;

    .prologue
    .line 92
    const/4 v0, 0x7

    const-string v1, "FWSendWaitState#recvTurnOverReadyBEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 94
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->stopTimer()V

    .line 100
    iget v0, p0, Lcom/felicanetworks/falp/state/FWSendWaitState;->mFwCode:I

    int-to-short v0, v0

    iget v1, p0, Lcom/felicanetworks/falp/state/FWSendWaitState;->mFwCode:I

    int-to-short v1, v1

    invoke-virtual {p0, v1}, Lcom/felicanetworks/falp/state/FWSendWaitState;->getAppErrCode(S)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/felicanetworks/falp/state/FWSendWaitState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SI)I

    move-result v0

    return v0
.end method

.method public recvTurnOverReadyEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/ConvertAPacket;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/ConvertAPacket;

    .prologue
    .line 66
    const/4 v0, 0x7

    const-string v1, "FWSendWaitState#recvTurnOverReadyEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 68
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->stopTimer()V

    .line 74
    iget v0, p0, Lcom/felicanetworks/falp/state/FWSendWaitState;->mFwCode:I

    int-to-short v0, v0

    iget v1, p0, Lcom/felicanetworks/falp/state/FWSendWaitState;->mFwCode:I

    int-to-short v1, v1

    invoke-virtual {p0, v1}, Lcom/felicanetworks/falp/state/FWSendWaitState;->getAppErrCode(S)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/felicanetworks/falp/state/FWSendWaitState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SI)I

    move-result v0

    return v0
.end method
