.class Lcom/felicanetworks/falp/Falp$TimeoutHandler;
.super Landroid/os/Handler;
.source "Falp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/falp/Falp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeoutHandler"
.end annotation


# instance fields
.field private millitimeout:J

.field final synthetic this$0:Lcom/felicanetworks/falp/Falp;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/falp/Falp;Landroid/os/Looper;)V
    .locals 2
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/felicanetworks/falp/Falp$TimeoutHandler;->this$0:Lcom/felicanetworks/falp/Falp;

    .line 1136
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1137
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/felicanetworks/falp/Falp$TimeoutHandler;->millitimeout:J

    .line 1139
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 1214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/felicanetworks/falp/Falp$TimeoutHandler;->removeMessages(I)V

    .line 1215
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/felicanetworks/falp/Falp$TimeoutHandler;->millitimeout:J

    .line 1217
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1176
    const/4 v0, 0x7

    const-string v1, "Falp#handleMessage [in]"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1184
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp$TimeoutHandler;->this$0:Lcom/felicanetworks/falp/Falp;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/Falp;->onRecvTimeout()I

    .line 1185
    return-void
.end method

.method public setMicroTimer(J)V
    .locals 3
    .param p1, "timeout"    # J

    .prologue
    .line 1161
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/Falp$TimeoutHandler;->millitimeout:J

    .line 1165
    return-void
.end method

.method public setMiliTimer(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 1149
    iput-wide p1, p0, Lcom/felicanetworks/falp/Falp$TimeoutHandler;->millitimeout:J

    .line 1151
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp$TimeoutHandler;->this$0:Lcom/felicanetworks/falp/Falp;

    # getter for: Lcom/felicanetworks/falp/Falp;->mLocalPowerManager:Lcom/felicanetworks/felica/util/LocalPowerManager;
    invoke-static {v0}, Lcom/felicanetworks/falp/Falp;->access$0(Lcom/felicanetworks/falp/Falp;)Lcom/felicanetworks/felica/util/LocalPowerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/falp/Falp$TimeoutHandler;->this$0:Lcom/felicanetworks/falp/Falp;

    # getter for: Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/felicanetworks/falp/Falp;->access$1(Lcom/felicanetworks/falp/Falp;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/felicanetworks/falp/Falp$TimeoutHandler;->millitimeout:J

    long-to-int v2, v2

    .line 1205
    add-int/lit16 v2, v2, 0x96

    .line 1204
    invoke-virtual {v0, v1, v2}, Lcom/felicanetworks/felica/util/LocalPowerManager;->startTokeepCpuPowerOn(Landroid/content/Context;I)V

    .line 1206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/felicanetworks/falp/Falp$TimeoutHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-wide v2, p0, Lcom/felicanetworks/falp/Falp$TimeoutHandler;->millitimeout:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/felicanetworks/falp/Falp$TimeoutHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1207
    return-void
.end method
