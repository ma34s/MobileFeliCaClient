.class public Lcom/felicanetworks/felica/pushimpl/PushIntentAnalyzer;
.super Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
.source "PushIntentAnalyzer.java"


# static fields
.field public static final APP_CODE:Ljava/lang/String; = "ANDR01"

.field public static final MAX_INTENT_DATA_SIZE:I = 0xb0


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfc/PushIntentSegment;)V
    .locals 4
    .param p1, "pushSeg"    # Lcom/felicanetworks/mfc/PushIntentSegment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 112
    invoke-direct {p0}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;-><init>()V

    .line 114
    const-string v0, "%s In pushSeg = %s"

    const-string v1, "000"

    invoke-static {v3, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    if-nez p1, :cond_0

    .line 117
    const-string v0, "%s pushSeg null"

    const-string v1, "800"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 118
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    .line 119
    const-string v1, "The spefified SegmentData is null."

    .line 118
    invoke-direct {v0, v2, v1}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iput-object p1, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    .line 124
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public constructor <init>([B)V
    .locals 17
    .param p1, "rcvData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;-><init>()V

    .line 36
    const/4 v14, 0x4

    const-string v15, "%s In rcvdata = %s"

    const-string v16, "000"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v14, v15, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v14, v0

    if-eqz v14, :cond_0

    .line 39
    const/16 v14, 0xba

    move-object/from16 v0, p1

    array-length v15, v0

    if-ge v14, v15, :cond_1

    .line 40
    :cond_0
    const/4 v14, 0x1

    const-string v15, "%s data error"

    const-string v16, "800"

    invoke-static/range {v14 .. v16}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 41
    new-instance v14, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v15, 0x1

    .line 42
    const-string v16, "The spefified ReceivedData is null or empty."

    .line 41
    invoke-direct/range {v14 .. v16}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v14

    .line 45
    :cond_1
    :try_start_0
    new-instance v11, Lcom/felicanetworks/felica/util/ByteBuffer;

    move-object/from16 v0, p1

    array-length v14, v0

    invoke-direct {v11, v14}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    .line 46
    .local v11, "rcvByteBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    const/4 v7, 0x0

    .line 47
    .local v7, "index":I
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 48
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 51
    const/4 v14, 0x2

    invoke-virtual {v11, v7, v14}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInLittleEndian(II)J

    move-result-wide v14

    long-to-int v3, v14

    .line 52
    .local v3, "appUrlSize":I
    add-int/lit8 v14, v3, 0x2

    add-int/2addr v7, v14

    .line 55
    const/4 v14, 0x2

    invoke-virtual {v11, v7, v14}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInLittleEndian(II)J

    move-result-wide v14

    long-to-int v2, v14

    .line 56
    .local v2, "appCodeSize":I
    add-int/lit8 v7, v7, 0x2

    .line 58
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v14

    invoke-virtual {v14, v7, v11, v2}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getData(ILcom/felicanetworks/felica/util/ByteBuffer;I)[B

    move-result-object v4

    .line 61
    .local v4, "bAppCodeData":[B
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkAsciiCode([B)V

    .line 63
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v14

    .line 64
    const-string v15, "US-ASCII"

    .line 63
    invoke-virtual {v14, v4, v15}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertByteToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 66
    .local v12, "sAppCodeData":Ljava/lang/String;
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v14

    const-string v15, "ANDR01"

    invoke-virtual {v14, v12, v15}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkConvert(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    add-int/2addr v7, v2

    .line 70
    move-object/from16 v0, p1

    array-length v14, v0

    sub-int v9, v14, v7

    .line 71
    .local v9, "intentDataSize":I
    if-nez v9, :cond_2

    .line 72
    const/4 v14, 0x1

    const-string v15, "%s intentData null"

    const-string v16, "802"

    invoke-static/range {v14 .. v16}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 73
    new-instance v14, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v15, 0x1

    .line 74
    const-string v16, "The spefified ReceivedData is null or empty."

    .line 73
    invoke-direct/range {v14 .. v16}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    .end local v2    # "appCodeSize":I
    .end local v3    # "appUrlSize":I
    .end local v4    # "bAppCodeData":[B
    .end local v7    # "index":I
    .end local v9    # "intentDataSize":I
    .end local v11    # "rcvByteBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    .end local v12    # "sAppCodeData":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 96
    .local v6, "e":Ljava/net/URISyntaxException;
    const/4 v14, 0x1

    const-string v15, "%s URISyntaxException"

    const-string v16, "803"

    invoke-static/range {v14 .. v16}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 97
    new-instance v14, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v15, 0x1

    .line 98
    const-string v16, "The spefified ReceivedData is null or empty."

    .line 97
    invoke-direct/range {v14 .. v16}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v14

    .line 76
    .end local v6    # "e":Ljava/net/URISyntaxException;
    .restart local v2    # "appCodeSize":I
    .restart local v3    # "appUrlSize":I
    .restart local v4    # "bAppCodeData":[B
    .restart local v7    # "index":I
    .restart local v9    # "intentDataSize":I
    .restart local v11    # "rcvByteBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    .restart local v12    # "sAppCodeData":Ljava/lang/String;
    :cond_2
    const/4 v14, 0x7

    :try_start_1
    const-string v15, "%s"

    const-string v16, "001"

    invoke-static/range {v14 .. v16}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v14

    invoke-virtual {v14, v7, v11, v9}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getData(ILcom/felicanetworks/felica/util/ByteBuffer;I)[B

    move-result-object v5

    .line 81
    .local v5, "bIntentDataData":[B
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v14

    .line 82
    const-string v15, "US-ASCII"

    .line 81
    invoke-virtual {v14, v5, v15}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertByteToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 84
    .local v13, "sIntentData":Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v8, "intent":Landroid/content/Intent;
    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 90
    new-instance v10, Lcom/felicanetworks/mfc/PushIntentSegment;

    invoke-direct {v10, v8}, Lcom/felicanetworks/mfc/PushIntentSegment;-><init>(Landroid/content/Intent;)V

    .line 91
    .local v10, "intentSeg":Lcom/felicanetworks/mfc/PushIntentSegment;
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    .line 93
    const/4 v14, 0x4

    const-string v15, "%s"

    const-string v16, "999"

    invoke-static/range {v14 .. v16}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    return-void

    .line 99
    .end local v2    # "appCodeSize":I
    .end local v3    # "appUrlSize":I
    .end local v4    # "bAppCodeData":[B
    .end local v5    # "bIntentDataData":[B
    .end local v7    # "index":I
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "intentDataSize":I
    .end local v10    # "intentSeg":Lcom/felicanetworks/mfc/PushIntentSegment;
    .end local v11    # "rcvByteBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    .end local v12    # "sAppCodeData":Ljava/lang/String;
    .end local v13    # "sIntentData":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 100
    .local v6, "e":Ljava/lang/Exception;
    const/4 v14, 0x1

    const-string v15, "%s Exception"

    const-string v16, "804"

    invoke-static/range {v14 .. v16}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 101
    new-instance v14, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v15, 0x1

    .line 102
    const-string v16, "The spefified ReceivedData is null or empty."

    .line 101
    invoke-direct/range {v14 .. v16}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v14
.end method


# virtual methods
.method public execute(Lcom/felicanetworks/mfc/Felica;Landroid/content/Context;)V
    .locals 4
    .param p1, "felica"    # Lcom/felicanetworks/mfc/Felica;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 138
    const-string v1, "%s In Felica = %s : Context = %s"

    const-string v2, "000"

    invoke-static {v3, v1, v2, p1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;

    .line 141
    iget-object v1, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    check-cast v1, Lcom/felicanetworks/mfc/PushIntentSegment;

    .line 140
    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;-><init>(Lcom/felicanetworks/mfc/PushIntentSegment;)V

    .line 143
    .local v0, "pushIntentExcecuter":Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;
    invoke-virtual {v0, p1, p2}, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->execute(Lcom/felicanetworks/mfc/Felica;Landroid/content/Context;)V

    .line 145
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public serialize()[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v11, 0x1

    .line 156
    const-string v7, "%s"

    const-string v8, "000"

    invoke-static {v9, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 159
    new-instance v1, Lcom/felicanetworks/felica/util/ByteBuffer;

    const/16 v7, 0xba

    invoke-direct {v1, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    .line 160
    .local v1, "dataBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    iget-object v4, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    check-cast v4, Lcom/felicanetworks/mfc/PushIntentSegment;

    .line 162
    .local v4, "intentSeg":Lcom/felicanetworks/mfc/PushIntentSegment;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 165
    const-wide/16 v8, 0x0

    const/4 v7, 0x2

    :try_start_0
    invoke-virtual {v1, v8, v9, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 168
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v7

    const-string v8, "ANDR01"

    .line 169
    const-string v9, "US-ASCII"

    .line 168
    invoke-virtual {v7, v8, v9}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertStringToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 170
    .local v0, "byteData":[B
    array-length v7, v0

    int-to-long v8, v7

    const/4 v7, 0x2

    invoke-virtual {v1, v8, v9, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 171
    invoke-virtual {v1, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 174
    invoke-virtual {v4}, Lcom/felicanetworks/mfc/PushIntentSegment;->getIntentData()Landroid/content/Intent;

    move-result-object v3

    .line 175
    .local v3, "intent":Landroid/content/Intent;
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 177
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xb0

    if-le v7, v8, :cond_0

    .line 178
    const/4 v7, 0x1

    const-string v8, "%s size over (%d)"

    const-string v9, "800"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    new-instance v7, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v8, 0x1

    const-string v9, "serialize faild"

    invoke-direct {v7, v8, v9}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v0    # "byteData":[B
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "%s Exception"

    const-string v8, "801"

    invoke-static {v11, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 193
    new-instance v7, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v8, "serialize faild"

    invoke-direct {v7, v11, v8}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 181
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "byteData":[B
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v6    # "str":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v7

    const-string v8, "US-ASCII"

    invoke-virtual {v7, v6, v8}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertStringToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 182
    invoke-virtual {v1, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 185
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v7

    .line 186
    const/4 v8, 0x1

    .line 185
    invoke-virtual {v7, v1, v8}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->makeSerializeData(Lcom/felicanetworks/felica/util/ByteBuffer;B)[B

    move-result-object v5

    .line 188
    .local v5, "serializeData":[B
    const/4 v7, 0x4

    const-string v8, "%s return serializeData : %s"

    const-string v9, "999"

    invoke-static {v7, v8, v9, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    return-object v5
.end method
