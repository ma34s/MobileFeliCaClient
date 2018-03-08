.class public Lcom/felicanetworks/felica/impl/tcap/StopAbleTcapClient;
.super Ljava/lang/Object;
.source "StopAbleTcapClient.java"

# interfaces
.implements Lcom/felicanetworks/felica/FeliCaClient;


# instance fields
.field client:Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 26
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;

    invoke-direct {v0}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/StopAbleTcapClient;->client:Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;

    .line 27
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 28
    return-void
.end method


# virtual methods
.method public addDevice(Lcom/felicanetworks/felica/InternalDevice;I)V
    .locals 3
    .param p1, "device"    # Lcom/felicanetworks/felica/InternalDevice;
    .param p2, "deviceID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 114
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/StopAbleTcapClient;->client:Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;

    invoke-virtual {v0, p1, p2}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->addDevice(Lcom/felicanetworks/felica/InternalDevice;I)V

    .line 116
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public getDevice(Ljava/lang/String;Ljava/lang/String;)Lcom/felicanetworks/felica/InternalDevice;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    .line 98
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 99
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/StopAbleTcapClient;->client:Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;

    invoke-virtual {v0, p1, p2}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->getDevice(Ljava/lang/String;Ljava/lang/String;)Lcom/felicanetworks/felica/InternalDevice;

    move-result-object v0

    return-object v0
.end method

.method public getEventListener()Lcom/felicanetworks/felica/FeliCaClientEventListener;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 32
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 33
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/StopAbleTcapClient;->client:Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->getEventListener()Lcom/felicanetworks/felica/FeliCaClientEventListener;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 46
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 47
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/StopAbleTcapClient;->client:Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->getURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 121
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 122
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/StopAbleTcapClient;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isStarted()Z
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 60
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 61
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/StopAbleTcapClient;->client:Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->isStarted()Z

    move-result v0

    return v0
.end method

.method public removeAllDevices()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 39
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/StopAbleTcapClient;->client:Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->removeAllDevices()V

    .line 41
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public removeDevice(Ljava/lang/String;Ljava/lang/String;)Lcom/felicanetworks/felica/InternalDevice;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 105
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 106
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/StopAbleTcapClient;->client:Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;

    invoke-virtual {v0, p1, p2}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->removeDevice(Ljava/lang/String;Ljava/lang/String;)Lcom/felicanetworks/felica/InternalDevice;

    move-result-object v0

    return-object v0
.end method

.method public setEventListener(Lcom/felicanetworks/felica/FeliCaClientEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/felicanetworks/felica/FeliCaClientEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 53
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 54
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/StopAbleTcapClient;->client:Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->setEventListener(Lcom/felicanetworks/felica/FeliCaClientEventListener;)V

    .line 56
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 84
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/StopAbleTcapClient;->client:Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->setURL(Ljava/lang/String;)V

    .line 86
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 3
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 128
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 129
    if-nez p1, :cond_0

    .line 130
    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 131
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 133
    :cond_0
    iput-object p1, p0, Lcom/felicanetworks/felica/impl/tcap/StopAbleTcapClient;->userAgent:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/StopAbleTcapClient;->client:Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->setUserAgent(Ljava/lang/String;)V

    .line 135
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public declared-synchronized start(Z[B)V
    .locals 3
    .param p1, "useParam"    # Z
    .param p2, "postdata"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaClientException;
        }
    .end annotation

    .prologue
    .line 91
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/StopAbleTcapClient;->client:Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;

    invoke-virtual {v0, p1, p2}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->start(Z[B)V

    .line 93
    const/4 v0, 0x4

    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop(Z)V
    .locals 4
    .param p1, "forced"    # Z

    .prologue
    const/4 v3, 0x4

    .line 67
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 71
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/StopAbleTcapClient;->client:Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;

    invoke-virtual {v1, p1}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->stopCutOff(Z)Z

    move-result v0

    .line 72
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 73
    const-string v1, "%s TCAP spot stop."

    const-string v2, "001"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 75
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;

    invoke-direct {v1}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;-><init>()V

    iput-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/StopAbleTcapClient;->client:Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;

    .line 76
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/StopAbleTcapClient;->client:Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;

    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/StopAbleTcapClient;->userAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/impl/tcap/InnerTcapClient;->setUserAgent(Ljava/lang/String;)V

    .line 79
    :cond_0
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 80
    return-void
.end method
