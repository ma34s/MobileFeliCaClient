.class public abstract Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
.super Ljava/lang/Object;
.source "TCAPSession.java"


# instance fields
.field protected agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

.field protected context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;ILcom/felicanetworks/felica/impl/tcap/TCAPState;Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;)V
    .locals 1
    .param p1, "agent"    # Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;
    .param p2, "initVersion"    # I
    .param p3, "initState"    # Lcom/felicanetworks/felica/impl/tcap/TCAPState;
    .param p4, "request"    # Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;
    .param p5, "response"    # Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    .line 47
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-direct {v0, p0, p4, p5}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;-><init>(Lcom/felicanetworks/felica/impl/tcap/TCAPSession;Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;)V

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    .line 49
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v0, p2}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setVersion(I)V

    .line 51
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v0, p3}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setState(Lcom/felicanetworks/felica/impl/tcap/TCAPState;)V

    .line 52
    return-void
.end method


# virtual methods
.method public getAgent()Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    return-object v0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getStopFlag()Z

    move-result v0

    return v0
.end method

.method protected abstract reportIllegalStateError(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation
.end method

.method protected abstract reportPacketFormatError(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation
.end method

.method protected abstract reportUnexpectedError(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation
.end method

.method public declared-synchronized setCookie(Ljava/lang/String;)V
    .locals 1
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setCookie(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeviceList(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V
    .locals 1
    .param p1, "deviceList"    # Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setDeviceList(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setURL(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setURL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/TCAPException;,
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    .line 126
    monitor-enter p0

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getState()Lcom/felicanetworks/felica/impl/tcap/TCAPState;

    move-result-object v4

    iget-object v5, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v4, v5}, Lcom/felicanetworks/felica/impl/tcap/TCAPState;->doExecution(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :try_start_1
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getState()Lcom/felicanetworks/felica/impl/tcap/TCAPState;

    move-result-object v4

    if-nez v4, :cond_0

    .line 158
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getReturnCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 162
    :try_start_2
    iget-object v5, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setStopFlag(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    monitor-exit p0

    return v4

    .line 128
    :catch_0
    move-exception v2

    .line 130
    .local v2, "re":Ljava/lang/RuntimeException;
    :try_start_3
    new-instance v4, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    .line 131
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    .line 130
    invoke-direct {v4, v5, v6}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v4
    :try_end_3
    .catch Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    .end local v2    # "re":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 137
    .local v1, "pe":Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;
    :try_start_4
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;->getErrorDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->reportPacketFormatError(Ljava/lang/String;)V

    .line 139
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 160
    .end local v1    # "pe":Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;
    :catchall_0
    move-exception v4

    .line 162
    :try_start_5
    iget-object v5, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setStopFlag(Z)V

    .line 163
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 126
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 141
    :catch_2
    move-exception v0

    .line 144
    .local v0, "ie":Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;
    :try_start_6
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;->getErrorDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->reportIllegalStateError(Ljava/lang/String;)V

    .line 146
    throw v0

    .line 148
    .end local v0    # "ie":Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;
    :catch_3
    move-exception v3

    .line 151
    .local v3, "ue":Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;
    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;->getErrorDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->reportUnexpectedError(Ljava/lang/String;)V

    .line 153
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public stop()V
    .locals 5

    .prologue
    .line 174
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setStopFlag(Z)V

    .line 176
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v1

    .line 178
    .local v1, "deviceList":Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 187
    return-void

    .line 180
    :cond_0
    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->get(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v3

    instance-of v3, v3, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    if-eqz v3, :cond_1

    .line 182
    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->get(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    .line 184
    .local v0, "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->cancel()V

    .line 178
    .end local v0    # "chip":Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
