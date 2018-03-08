.class public Lcom/felicanetworks/falp/state/AppWaitState;
.super Lcom/felicanetworks/falp/state/FalpState;
.source "AppWaitState.java"


# static fields
.field private static instance:Lcom/felicanetworks/falp/state/AppWaitState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/felicanetworks/falp/state/AppWaitState;

    invoke-direct {v0}, Lcom/felicanetworks/falp/state/AppWaitState;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/state/AppWaitState;->instance:Lcom/felicanetworks/falp/state/AppWaitState;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/felicanetworks/falp/state/FalpState;-><init>()V

    .line 33
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/falp/state/AppWaitState;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/felicanetworks/falp/state/AppWaitState;->instance:Lcom/felicanetworks/falp/state/AppWaitState;

    return-object v0
.end method


# virtual methods
.method public cancelFalp(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 175
    const/4 v0, 0x7

    const-string v1, "AppWaitState#cancelFalp()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 177
    const/4 v0, -0x6

    return v0
.end method

.method public recvTargetFalpAccept(Lcom/felicanetworks/falp/state/StateListener;I)I
    .locals 3
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "pswd"    # I

    .prologue
    const/4 v1, 0x0

    .line 59
    const-string v2, "AppWaitState#recvTargetFalpAccept[in]"

    invoke-static {v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/felicanetworks/mfc/Felica;->getInstance()Lcom/felicanetworks/mfc/Felica;

    move-result-object v2

    invoke-virtual {v2}, Lcom/felicanetworks/mfc/Felica;->getCurrentState()I

    move-result v0

    .line 65
    .local v0, "mfcState":I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 69
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getOneTimePassword()I

    move-result v2

    if-eq p2, v2, :cond_0

    .line 70
    const/16 v1, -0xf

    .line 81
    :goto_0
    return v1

    .line 75
    :cond_0
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->stopTimer()V

    .line 78
    invoke-static {}, Lcom/felicanetworks/falp/state/FirstTransmitDataRecvWaitState;->getInstance()Lcom/felicanetworks/falp/state/FirstTransmitDataRecvWaitState;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    .line 79
    invoke-interface {p1, v1}, Lcom/felicanetworks/falp/state/StateListener;->startMiliTimer(I)V

    goto :goto_0
.end method

.method public recvTargetFalpReject(Lcom/felicanetworks/falp/state/StateListener;I)I
    .locals 3
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "pswd"    # I

    .prologue
    .line 98
    const/4 v1, 0x7

    const-string v2, "FalpState#recvTargetFalpReject()"

    invoke-static {v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/felicanetworks/mfc/Felica;->getInstance()Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Felica;->getCurrentState()I

    move-result v0

    .line 103
    .local v0, "mfcState":I
    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 107
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getOneTimePassword()I

    move-result v1

    if-eq p2, v1, :cond_0

    .line 108
    const/16 v1, -0xf

    .line 117
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x105

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/felicanetworks/falp/state/AppWaitState;->actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;SZ)I

    move-result v1

    goto :goto_0
.end method

.method public recvTimeout(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 150
    const/4 v0, 0x7

    const-string v1, "AppWaitState#recvTimeout[in]"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 158
    const/16 v0, 0x105

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/felicanetworks/falp/state/AppWaitState;->actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;SZ)I

    move-result v0

    return v0
.end method

.method public sendData([B)I
    .locals 1
    .param p1, "sendbyte"    # [B

    .prologue
    .line 134
    const/4 v0, -0x6

    return v0
.end method
