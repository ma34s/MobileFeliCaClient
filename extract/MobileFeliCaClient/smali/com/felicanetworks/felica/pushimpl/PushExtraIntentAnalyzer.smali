.class public Lcom/felicanetworks/felica/pushimpl/PushExtraIntentAnalyzer;
.super Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
.source "PushExtraIntentAnalyzer.java"


# static fields
.field private static final EXTRADATA_NAME:Ljava/lang/String; = "com.felicanetworks.mfc.FeliCaPushSegmentByteData"

.field private static final MAX_BYTES_LENGTH:I = 0xdd

.field private static final MIN_BYTES_LENGTH:I = 0x3


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfc/PushExtraIntentSegment;)V
    .locals 4
    .param p1, "pushSeg"    # Lcom/felicanetworks/mfc/PushExtraIntentSegment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 100
    invoke-direct {p0}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;-><init>()V

    .line 102
    const-string v0, "%s In pushSeg = %s"

    const-string v1, "000"

    invoke-static {v3, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    if-nez p1, :cond_0

    .line 105
    const-string v0, "%s pushSeg == null"

    const-string v1, "800"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 106
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    .line 107
    const-string v1, "The spefified SegmentData is null."

    .line 106
    invoke-direct {v0, v2, v1}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    .line 112
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public constructor <init>([B)V
    .locals 8
    .param p1, "rcvData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v7, 0x1

    .line 55
    invoke-direct {p0}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;-><init>()V

    .line 57
    const-string v4, "%s rcvData = %s"

    const-string v5, "000"

    invoke-static {v6, v4, v5, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    if-eqz p1, :cond_0

    array-length v4, p1

    if-eqz v4, :cond_0

    array-length v4, p1

    const/16 v5, 0xdd

    if-gt v4, v5, :cond_0

    .line 60
    array-length v4, p1

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 62
    :cond_0
    const-string v4, "%s throw PushImplException"

    const-string v5, "800"

    invoke-static {v7, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 63
    new-instance v4, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    .line 64
    const-string v5, "The spefified SegmentData is null."

    .line 63
    invoke-direct {v4, v7, v5}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 69
    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v2, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    invoke-direct {p0, v4}, Lcom/felicanetworks/felica/pushimpl/PushExtraIntentAnalyzer;->getComponentName(B)Landroid/content/ComponentName;

    move-result-object v0

    .line 74
    .local v0, "componentName":Landroid/content/ComponentName;
    if-nez v0, :cond_2

    .line 75
    const/4 v4, 0x1

    const-string v5, "%s throw PushImplException"

    const-string v6, "801"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 76
    new-instance v4, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v5, 0x1

    .line 77
    const-string v6, "componentName == null"

    .line 76
    invoke-direct {v4, v5, v6}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "%s message == %s"

    const-string v5, "802"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    new-instance v4, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    .line 88
    const-string v5, "The spefified SegmentData is null."

    .line 87
    invoke-direct {v4, v7, v5}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 79
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 80
    const-string v4, "com.felicanetworks.mfc.FeliCaPushSegmentByteData"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 82
    new-instance v3, Lcom/felicanetworks/mfc/PushExtraIntentSegment;

    invoke-direct {v3, v2}, Lcom/felicanetworks/mfc/PushExtraIntentSegment;-><init>(Landroid/content/Intent;)V

    .line 83
    .local v3, "intentSeg":Lcom/felicanetworks/mfc/PushExtraIntentSegment;
    iput-object v3, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    const-string v4, "%s In pushSeg = %s"

    const-string v5, "999"

    invoke-static {v6, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method private getComponentName(B)Landroid/content/ComponentName;
    .locals 7
    .param p1, "control"    # B

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x5

    .line 125
    const-string v4, "%s In pushSeg = %s"

    const-string v5, "000"

    invoke-static {v6, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 139
    invoke-static {}, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;->getInstance()Lcom/felicanetworks/felica/util/RecvPushExtraConfig;

    move-result-object v3

    .line 140
    .local v3, "recvPushExtraConfig":Lcom/felicanetworks/felica/util/RecvPushExtraConfig;
    if-nez v3, :cond_0

    .line 141
    const/4 v4, 0x1

    const-string v5, "%s RecvPushExtraConfig.getInstance() return null"

    const-string v6, "800"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 155
    :goto_0
    return-object v1

    .line 144
    :cond_0
    invoke-virtual {v3, p1}, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;->getPackageName(B)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {v3, p1}, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;->getClassName(B)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "className":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-nez v0, :cond_2

    .line 149
    :cond_1
    const/4 v4, 0x7

    const-string v5, "%s In pushSeg = %s"

    const-string v6, "001"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 153
    :cond_2
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .local v1, "componentName":Landroid/content/ComponentName;
    const-string v4, "%s In pushSeg = %s"

    const-string v5, "999"

    invoke-static {v6, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/felicanetworks/mfc/Felica;Landroid/content/Context;)V
    .locals 5
    .param p1, "felica"    # Lcom/felicanetworks/mfc/Felica;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 169
    const-string v1, "%s In Felica = %s : Context = %s"

    const-string v2, "000"

    invoke-static {v4, v1, v2, p1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 172
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 173
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;

    .line 174
    iget-object v1, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    check-cast v1, Lcom/felicanetworks/mfc/PushExtraIntentSegment;

    .line 173
    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;-><init>(Lcom/felicanetworks/mfc/PushExtraIntentSegment;)V

    .line 175
    .local v0, "pushIntentExcecuter":Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;
    invoke-virtual {v0, p1, p2}, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->execute(Lcom/felicanetworks/mfc/Felica;Landroid/content/Context;)V

    .line 182
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 183
    return-void

    .line 177
    .end local v0    # "pushIntentExcecuter":Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;
    :cond_0
    const/4 v1, 0x1

    const-string v2, "%s segmentData == null"

    const-string v3, "800"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 178
    new-instance v1, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v2, 0x3

    .line 179
    const-string v3, "The spefified SegmentData is null."

    .line 178
    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public serialize()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 193
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "byteData":[B
    iget-object v2, p0, Lcom/felicanetworks/felica/pushimpl/PushExtraIntentAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    if-eqz v2, :cond_1

    .line 197
    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v6, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 198
    iget-object v2, p0, Lcom/felicanetworks/felica/pushimpl/PushExtraIntentAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    check-cast v2, Lcom/felicanetworks/mfc/PushExtraIntentSegment;

    invoke-virtual {v2}, Lcom/felicanetworks/mfc/PushExtraIntentSegment;->getIntentData()Landroid/content/Intent;

    move-result-object v1

    .line 199
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 200
    const-string v2, "%s"

    const-string v3, "002"

    invoke-static {v6, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 201
    const-string v2, "com.felicanetworks.mfc.FeliCaPushSegmentByteData"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 213
    if-nez v0, :cond_2

    .line 214
    const-string v2, "%s segmentData == null"

    const-string v3, "802"

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 215
    new-instance v2, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    .line 216
    const-string v3, "The spefified SegmentData is null."

    .line 215
    invoke-direct {v2, v4, v3}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 203
    :cond_0
    const-string v2, "%s segmentData == null"

    const-string v3, "800"

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 204
    new-instance v2, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    .line 205
    const-string v3, "The spefified SegmentData is null."

    .line 204
    invoke-direct {v2, v4, v3}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 208
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v2, "%s segmentData == null"

    const-string v3, "801"

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 209
    new-instance v2, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    .line 210
    const-string v3, "The spefified SegmentData is null."

    .line 209
    invoke-direct {v2, v4, v3}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 219
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 220
    return-object v0
.end method
