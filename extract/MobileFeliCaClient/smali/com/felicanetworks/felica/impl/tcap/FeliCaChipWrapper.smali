.class public Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;
.super Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
.source "FeliCaChipWrapper.java"


# static fields
.field static final DEFAULT_RETRY_COUNT:I = 0x3

.field static final DEFAULT_TIMEOUT:I = 0x3e8

.field private static final MAX_RETRY_COUNT:J = 0xaL

.field private static final MAX_TIMEOUT:J = 0xea60L

.field private static final MIN_RETRY_COUNT:J

.field private static final MIN_TIMEOUT:J


# instance fields
.field private feliCaChip:Lcom/felicanetworks/felica/FeliCaChip;

.field private retryCount:I

.field private timeout:I


# direct methods
.method constructor <init>(ILcom/felicanetworks/felica/FeliCaChip;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "feliCaChip"    # Lcom/felicanetworks/felica/FeliCaChip;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;-><init>(ILcom/felicanetworks/felica/InternalDevice;)V

    .line 76
    iput-object p2, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->feliCaChip:Lcom/felicanetworks/felica/FeliCaChip;

    .line 77
    const/4 v0, 0x3

    iput v0, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->retryCount:I

    .line 78
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->timeout:I

    .line 79
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->feliCaChip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v0}, Lcom/felicanetworks/felica/FeliCaChip;->cancel()V

    .line 299
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->feliCaChip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v0}, Lcom/felicanetworks/felica/FeliCaChip;->reset()V

    .line 173
    return-void
.end method

.method public execute([B)[B
    .locals 5
    .param p1, "command"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, "exception":Lcom/felicanetworks/felica/FeliCaChipException;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->retryCount:I

    if-le v2, v3, :cond_0

    .line 200
    :goto_1
    throw v1

    .line 189
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->feliCaChip:Lcom/felicanetworks/felica/FeliCaChip;

    iget v4, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->timeout:I

    invoke-interface {v3, p1, v4}, Lcom/felicanetworks/felica/FeliCaChip;->execute([BI)[B
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    move-object v1, v0

    .line 192
    invoke-virtual {v0}, Lcom/felicanetworks/felica/FeliCaChipException;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 187
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public executeThru([B)[B
    .locals 5
    .param p1, "command"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, "exception":Lcom/felicanetworks/felica/FeliCaChipException;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->retryCount:I

    if-le v2, v3, :cond_0

    .line 228
    :goto_1
    throw v1

    .line 217
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->feliCaChip:Lcom/felicanetworks/felica/FeliCaChip;

    iget v4, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->timeout:I

    invoke-interface {v3, p1, v4}, Lcom/felicanetworks/felica/FeliCaChip;->executeThru([BI)[B
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    move-object v1, v0

    .line 220
    invoke-virtual {v0}, Lcom/felicanetworks/felica/FeliCaChipException;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 215
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->retryCount:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->timeout:I

    return v0
.end method

.method public initialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->feliCaChip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v0}, Lcom/felicanetworks/felica/FeliCaChip;->initialize()V

    .line 137
    return-void
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->feliCaChip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v0}, Lcom/felicanetworks/felica/FeliCaChip;->open()V

    .line 161
    return-void
.end method

.method public receive()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    .line 274
    const/4 v1, 0x0

    .line 275
    .local v1, "exception":Lcom/felicanetworks/felica/FeliCaChipException;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->retryCount:I

    if-le v2, v3, :cond_0

    .line 288
    :goto_1
    throw v1

    .line 277
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->feliCaChip:Lcom/felicanetworks/felica/FeliCaChip;

    iget v4, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->timeout:I

    invoke-interface {v3, v4}, Lcom/felicanetworks/felica/FeliCaChip;->receive(I)[B
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    move-object v1, v0

    .line 280
    invoke-virtual {v0}, Lcom/felicanetworks/felica/FeliCaChipException;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 275
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public send([B)V
    .locals 5
    .param p1, "command"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, "exception":Lcom/felicanetworks/felica/FeliCaChipException;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->retryCount:I

    if-le v2, v3, :cond_0

    .line 259
    :goto_1
    throw v1

    .line 247
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->feliCaChip:Lcom/felicanetworks/felica/FeliCaChip;

    iget v4, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->timeout:I

    invoke-interface {v3, p1, v4}, Lcom/felicanetworks/felica/FeliCaChip;->send([BI)V
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    move-object v1, v0

    .line 251
    invoke-virtual {v0}, Lcom/felicanetworks/felica/FeliCaChipException;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 245
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public setRetryCount(J)V
    .locals 5
    .param p1, "retryCount"    # J

    .prologue
    .line 90
    const-wide/16 v0, 0xa

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->retryCount:I

    .line 91
    return-void
.end method

.method public setTimeout(J)V
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    .line 113
    const-wide/32 v0, 0xea60

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->timeout:I

    .line 114
    return-void
.end method

.method public terminate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;->feliCaChip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v0}, Lcom/felicanetworks/felica/FeliCaChip;->terminate()V

    .line 149
    return-void
.end method
