.class public Lcom/felicanetworks/falp/state/UserAplStartCheckState;
.super Lcom/felicanetworks/falp/state/FalpState;
.source "UserAplStartCheckState.java"


# static fields
.field private static instance:Lcom/felicanetworks/falp/state/UserAplStartCheckState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/felicanetworks/falp/state/UserAplStartCheckState;

    invoke-direct {v0}, Lcom/felicanetworks/falp/state/UserAplStartCheckState;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/state/UserAplStartCheckState;->instance:Lcom/felicanetworks/falp/state/UserAplStartCheckState;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/felicanetworks/falp/state/FalpState;-><init>()V

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/felicanetworks/falp/state/UserAplStartCheckState;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/felicanetworks/falp/state/UserAplStartCheckState;->instance:Lcom/felicanetworks/falp/state/UserAplStartCheckState;

    return-object v0
.end method


# virtual methods
.method public recvStartCheckNO(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 101
    const/4 v0, 0x7

    const-string v1, "FalpState#recvStartCheckNO()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 103
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->stopTimer()V

    .line 110
    const/16 v0, 0x105

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/felicanetworks/falp/state/UserAplStartCheckState;->actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;SZ)I

    move-result v0

    return v0
.end method

.method public recvStartCheckYES(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 4
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    const/4 v1, 0x0

    .line 58
    const/4 v2, 0x7

    const-string v3, "FalpState#recvStartCheckYES()"

    invoke-static {v2, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/felicanetworks/falp/state/AppWaitState;->getInstance()Lcom/felicanetworks/falp/state/AppWaitState;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    .line 66
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->reqStartUsrApp()I

    move-result v0

    .line 69
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 82
    :goto_0
    return v1

    .line 83
    :cond_0
    const/16 v2, 0x105

    .line 82
    invoke-virtual {p0, p1, v2, v1}, Lcom/felicanetworks/falp/state/UserAplStartCheckState;->actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;SZ)I

    move-result v1

    goto :goto_0
.end method

.method public recvTimeout(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 3
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 140
    const/4 v0, 0x7

    const-string v1, "UserAplStartCheckState#recvTimeout()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 152
    const/16 v0, 0x105

    .line 153
    const/4 v1, -0x3

    const/4 v2, 0x0

    .line 151
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/felicanetworks/falp/state/UserAplStartCheckState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SIZ)I

    move-result v0

    return v0
.end method

.method public sendData([B)I
    .locals 1
    .param p1, "sendbyte"    # [B

    .prologue
    .line 127
    const/4 v0, -0x6

    return v0
.end method
