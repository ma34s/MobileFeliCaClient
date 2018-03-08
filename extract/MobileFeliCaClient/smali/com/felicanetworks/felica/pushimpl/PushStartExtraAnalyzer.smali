.class public Lcom/felicanetworks/felica/pushimpl/PushStartExtraAnalyzer;
.super Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
.source "PushStartExtraAnalyzer.java"


# static fields
.field private static final EXTRA_PARAM_INDEX:I = 0x3

.field private static final MAX_PARTPARAM_LENGTH:I = 0xda

.field private static final TYPE_INVALID_DATA:Ljava/lang/String; = "TYPE_INVALID_DATA"

.field private static final TYPE_SECURITY_ERROR:Ljava/lang/String; = "TYPE_SECURITY_ERROR"


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfc/PushStartExtraSegment;)V
    .locals 4
    .param p1, "pushSeg"    # Lcom/felicanetworks/mfc/PushStartExtraSegment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 53
    invoke-direct {p0}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;-><init>()V

    .line 55
    const-string v0, "%s In pushSeg = %s"

    const-string v1, "000"

    invoke-static {v3, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    if-nez p1, :cond_0

    .line 58
    const-string v0, "%s pushSeg null"

    const-string v1, "800"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 59
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    .line 60
    const-string v1, "The spefified SegmentData is null."

    .line 59
    invoke-direct {v0, v2, v1}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    .line 65
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 67
    return-void
.end method


# virtual methods
.method public checkSecurity([Ljava/lang/String;)V
    .locals 11
    .param p1, "packagenamelist"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x6

    .line 165
    iget-object v5, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    check-cast v5, Lcom/felicanetworks/mfc/PushStartExtraSegment;

    .line 166
    .local v5, "pushStartExtraSegment":Lcom/felicanetworks/mfc/PushStartExtraSegment;
    invoke-virtual {v5}, Lcom/felicanetworks/mfc/PushStartExtraSegment;->getControlInfo()B

    move-result v2

    .line 168
    .local v2, "control":B
    if-lt v2, v10, :cond_0

    if-gt v2, v9, :cond_0

    .line 170
    const-string v6, "%s control info error"

    const-string v7, "800"

    invoke-static {v10, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 171
    new-instance v6, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v7, "TYPE_SECURITY_ERROR"

    invoke-direct {v6, v9, v7}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 174
    :cond_0
    const/4 v0, 0x0

    .line 176
    .local v0, "bHit":Z
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/util/SendPushSecurityConfig;->getInstance()Lcom/felicanetworks/felica/util/SendPushSecurityConfig;

    move-result-object v1

    .line 177
    .local v1, "config":Lcom/felicanetworks/felica/util/SendPushSecurityConfig;
    if-nez v1, :cond_1

    .line 179
    const/4 v6, 0x1

    const-string v7, "%s SendPushSecurityConfig.getInstance() return null"

    const-string v8, "803"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 180
    new-instance v6, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v7, 0x6

    .line 181
    const-string v8, "TYPE_SECURITY_ERROR"

    .line 180
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v1    # "config":Lcom/felicanetworks/felica/util/SendPushSecurityConfig;
    :catch_0
    move-exception v3

    .line 204
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "%s throws IllegalArgumentException"

    const-string v7, "802"

    invoke-static {v10, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 205
    new-instance v6, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v7, "TYPE_SECURITY_ERROR"

    invoke-direct {v6, v9, v7}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 184
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "config":Lcom/felicanetworks/felica/util/SendPushSecurityConfig;
    :cond_1
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/SendPushSecurityConfig;->containsKey(B)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 185
    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/SendPushSecurityConfig;->getPackageName(B)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 209
    :cond_2
    return-void

    .line 190
    :cond_3
    array-length v7, p1

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_5

    .line 198
    :cond_4
    :goto_1
    if-nez v0, :cond_2

    .line 200
    new-instance v6, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v7, 0x6

    .line 201
    const-string v8, "TYPE_SECURITY_ERROR"

    .line 200
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 190
    :cond_5
    aget-object v4, p1, v6

    .line 191
    .local v4, "packagename":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/util/SendPushSecurityConfig;->getPackageName(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-eqz v8, :cond_6

    .line 193
    const/4 v0, 0x1

    .line 194
    goto :goto_1

    .line 190
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public execute(Lcom/felicanetworks/mfc/Felica;Landroid/content/Context;)V
    .locals 3
    .param p1, "felica"    # Lcom/felicanetworks/mfc/Felica;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 82
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 83
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public getMaxSize()I
    .locals 1

    .prologue
    .line 220
    const/16 v0, 0xda

    return v0
.end method

.method public serialize()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v9, 0x1

    .line 101
    const-string v6, "%s"

    const-string v7, "000"

    invoke-static {v8, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 104
    iget-object v3, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    check-cast v3, Lcom/felicanetworks/mfc/PushStartExtraSegment;

    .line 105
    .local v3, "pushStartExtraSegment":Lcom/felicanetworks/mfc/PushStartExtraSegment;
    invoke-virtual {v3}, Lcom/felicanetworks/mfc/PushStartExtraSegment;->getControlInfo()B

    move-result v0

    .line 107
    .local v0, "control":B
    invoke-virtual {v3}, Lcom/felicanetworks/mfc/PushStartExtraSegment;->getSegmentParameter()[B

    move-result-object v2

    .line 108
    .local v2, "extraParam":[B
    array-length v5, v2

    .line 111
    .local v5, "sizeExtra":I
    if-lt v0, v9, :cond_0

    const/4 v6, 0x6

    if-gt v0, v6, :cond_0

    .line 112
    const-string v6, "%s control info error"

    const-string v7, "800"

    invoke-static {v9, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 113
    new-instance v6, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v7, "TYPE_INVALID_DATA"

    invoke-direct {v6, v9, v7}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/felicanetworks/felica/pushimpl/PushStartExtraAnalyzer;->getMaxSize()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 117
    const-string v6, "%s extra info error"

    const-string v7, "801"

    invoke-static {v9, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 118
    new-instance v6, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v7, "TYPE_INVALID_DATA"

    invoke-direct {v6, v9, v7}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 121
    :cond_1
    new-instance v4, Lcom/felicanetworks/felica/util/ByteBuffer;

    add-int/lit8 v6, v5, 0x3

    invoke-direct {v4, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    .line 122
    .local v4, "serializeBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 126
    :try_start_0
    invoke-virtual {v4, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 129
    int-to-long v6, v5

    const/4 v8, 0x2

    invoke-virtual {v4, v6, v7, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 132
    invoke-virtual {v4, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 134
    const/4 v6, 0x4

    const-string v7, "%s"

    const-string v8, "999"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 139
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "%s size over (%d)"

    const-string v7, "803"

    invoke-virtual {v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9, v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    new-instance v6, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v7, "serialize faild"

    invoke-direct {v6, v9, v7}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v6
.end method
