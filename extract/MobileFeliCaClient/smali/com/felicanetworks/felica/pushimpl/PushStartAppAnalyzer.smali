.class public Lcom/felicanetworks/felica/pushimpl/PushStartAppAnalyzer;
.super Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
.source "PushStartAppAnalyzer.java"


# static fields
.field private static final DATA_SEPARATE_TYPE:B = 0x20t


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfc/PushStartAppSegment;)V
    .locals 4
    .param p1, "pushSeg"    # Lcom/felicanetworks/mfc/PushStartAppSegment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 123
    invoke-direct {p0}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;-><init>()V

    .line 125
    const-string v0, "%s In pushSeg = %s"

    const-string v1, "000"

    invoke-static {v3, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    if-nez p1, :cond_0

    .line 128
    const-string v0, "%s pushSeg null"

    const-string v1, "800"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 129
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    .line 130
    const-string v1, "The spefified SegmentData is null."

    .line 129
    invoke-direct {v0, v2, v1}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iput-object p1, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    .line 135
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public constructor <init>([B)V
    .locals 21
    .param p1, "rcvData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;-><init>()V

    .line 38
    const/16 v17, 0x4

    const-string v18, "%s In rcvdata = %s"

    const-string v19, "000"

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 41
    const/16 v17, 0xba

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 42
    :cond_0
    const/16 v17, 0x1

    const-string v18, "%s data error"

    const-string v19, "800"

    invoke-static/range {v17 .. v19}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 43
    new-instance v17, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/16 v18, 0x1

    .line 44
    const-string v19, "The spefified ReceivedData is null or empty."

    .line 43
    invoke-direct/range {v17 .. v19}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 48
    :cond_1
    :try_start_0
    new-instance v12, Lcom/felicanetworks/felica/util/ByteBuffer;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v12, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    .line 49
    .local v12, "rcvByteBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    const/4 v11, 0x0

    .line 51
    .local v11, "index":I
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 52
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 55
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v12, v11, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInLittleEndian(II)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v6, v0

    .line 58
    .local v6, "appUrlSize":I
    if-ltz v6, :cond_2

    const/16 v17, 0xb0

    move/from16 v0, v17

    if-ge v0, v6, :cond_3

    .line 59
    :cond_2
    const/16 v17, 0x1

    const-string v18, "%s application URL size error (%s)"

    const-string v19, "801"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v17 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    new-instance v17, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/16 v18, 0x1

    .line 61
    const-string v19, "The spefified ReceivedData is null or empty."

    .line 60
    invoke-direct/range {v17 .. v19}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v6    # "appUrlSize":I
    .end local v11    # "index":I
    .end local v12    # "rcvByteBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    :catch_0
    move-exception v10

    .line 110
    .local v10, "e":Ljava/lang/Exception;
    const/16 v17, 0x1

    const-string v18, "%s Exception"

    const-string v19, "803"

    invoke-static/range {v17 .. v19}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 111
    new-instance v17, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/16 v18, 0x1

    .line 112
    const-string v19, "The spefified ReceivedData is null or empty."

    .line 111
    invoke-direct/range {v17 .. v19}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 63
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v6    # "appUrlSize":I
    .restart local v11    # "index":I
    .restart local v12    # "rcvByteBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    :cond_3
    add-int/lit8 v11, v11, 0x2

    .line 65
    :try_start_1
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v12, v6}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getData(ILcom/felicanetworks/felica/util/ByteBuffer;I)[B

    move-result-object v8

    .line 68
    .local v8, "bAppUrlData":[B
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkAsciiCode([B)V

    .line 70
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v17

    .line 71
    const-string v18, "US-ASCII"

    .line 70
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertByteToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 72
    .local v14, "sAppUrlData":Ljava/lang/String;
    add-int/lit8 v11, v6, 0x2

    .line 75
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v12, v11, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInLittleEndian(II)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v4, v0

    .line 76
    .local v4, "appCodeSize":I
    const/16 v17, 0x6

    move/from16 v0, v17

    if-eq v4, v0, :cond_4

    .line 77
    const/16 v17, 0x1

    const-string v18, "%s app identification code error"

    const-string v19, "802"

    invoke-static/range {v17 .. v19}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 78
    new-instance v17, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/16 v18, 0x1

    .line 79
    const-string v19, "The spefified ReceivedData is null or empty."

    .line 78
    invoke-direct/range {v17 .. v19}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 81
    :cond_4
    add-int/lit8 v11, v11, 0x2

    .line 83
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v12, v4}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getData(ILcom/felicanetworks/felica/util/ByteBuffer;I)[B

    move-result-object v7

    .line 86
    .local v7, "bAppCodeData":[B
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkAsciiCode([B)V

    .line 88
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v17

    .line 89
    const-string v18, "US-ASCII"

    .line 88
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertByteToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 90
    .local v13, "sAppCodeData":Ljava/lang/String;
    add-int/2addr v11, v4

    .line 93
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    sub-int v16, v17, v11

    .line 95
    .local v16, "startParamSize":I
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v11, v12, v1}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getData(ILcom/felicanetworks/felica/util/ByteBuffer;I)[B

    move-result-object v9

    .line 98
    .local v9, "bStartParamData":[B
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkAsciiCode([B)V

    .line 100
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v17

    .line 101
    const/16 v18, 0x20

    .line 100
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->resolveData([BB)[Ljava/lang/String;

    move-result-object v15

    .line 104
    .local v15, "sStartParamData":[Ljava/lang/String;
    new-instance v5, Lcom/felicanetworks/mfc/PushStartAppSegment;

    invoke-direct {v5, v14, v13, v15}, Lcom/felicanetworks/mfc/PushStartAppSegment;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 106
    .local v5, "appSeg":Lcom/felicanetworks/mfc/PushStartAppSegment;
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    .line 108
    const/16 v17, 0x4

    const-string v18, "%s"

    const-string v19, "999"

    invoke-static/range {v17 .. v19}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    return-void
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

    const/4 v3, 0x1

    .line 149
    const-string v1, "%s In Felica = %s : Context = %s"

    const-string v2, "000"

    invoke-static {v4, v1, v2, p1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 152
    :cond_0
    const-string v1, "%s parameter error"

    const-string v2, "800"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 153
    new-instance v1, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    .line 154
    const-string v2, "The spefified ReceivedData is null or empty."

    .line 153
    invoke-direct {v1, v3, v2}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 157
    :cond_1
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;

    .line 158
    iget-object v1, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    check-cast v1, Lcom/felicanetworks/mfc/PushStartAppSegment;

    .line 157
    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;-><init>(Lcom/felicanetworks/mfc/PushStartAppSegment;)V

    .line 160
    .local v0, "pushIntentExcecuter":Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;
    invoke-virtual {v0, p1, p2}, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->execute(Lcom/felicanetworks/mfc/Felica;Landroid/content/Context;)V

    .line 162
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method public serialize()[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v11, 0x4

    const-string v12, "%s"

    const-string v13, "000"

    invoke-static {v11, v12, v13}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 177
    new-instance v5, Lcom/felicanetworks/felica/util/ByteBuffer;

    const/16 v11, 0xba

    invoke-direct {v5, v11}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    .line 179
    .local v5, "dataBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    new-instance v3, Lcom/felicanetworks/felica/util/ByteBuffer;

    const/16 v11, 0xba

    invoke-direct {v3, v11}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    .line 181
    .local v3, "buffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    iget-object v1, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    check-cast v1, Lcom/felicanetworks/mfc/PushStartAppSegment;

    .line 185
    .local v1, "appSeg":Lcom/felicanetworks/mfc/PushStartAppSegment;
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 186
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 190
    :try_start_0
    invoke-virtual {v1}, Lcom/felicanetworks/mfc/PushStartAppSegment;->getAppURL()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "appUrl":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    .line 192
    :cond_0
    const/4 v11, 0x7

    const-string v12, "%s"

    const-string v13, "001"

    invoke-static {v11, v12, v13}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 193
    const-wide/16 v12, 0x0

    const/4 v11, 0x2

    invoke-virtual {v5, v12, v13, v11}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 207
    :goto_0
    invoke-virtual {v1}, Lcom/felicanetworks/mfc/PushStartAppSegment;->getAppIdentificationCode()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "appCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x6

    if-eq v11, v12, :cond_2

    .line 210
    const/4 v11, 0x1

    const-string v12, "%s app identification code error"

    const-string v13, "800"

    invoke-static {v11, v12, v13}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 211
    new-instance v11, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v12, 0x1

    .line 212
    const-string v13, "The spefified ReceivedData is null or empty."

    .line 211
    invoke-direct {v11, v12, v13}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v0    # "appCode":Ljava/lang/String;
    .end local v2    # "appUrl":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 255
    .local v6, "e":Ljava/lang/Exception;
    const/4 v11, 0x1

    const-string v12, "%s Exception"

    const-string v13, "801"

    invoke-static {v11, v12, v13}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 256
    new-instance v11, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v12, 0x1

    const-string v13, "serialize faild"

    invoke-direct {v11, v12, v13}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v11

    .line 195
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "appUrl":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x7

    :try_start_1
    const-string v12, "%s"

    const-string v13, "002"

    invoke-static {v11, v12, v13}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 197
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v11

    .line 198
    const-string v12, "US-ASCII"

    .line 197
    invoke-virtual {v11, v2, v12}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertStringToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 200
    .local v4, "byteData":[B
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkAsciiCode([B)V

    .line 202
    array-length v11, v4

    int-to-long v12, v11

    const/4 v11, 0x2

    invoke-virtual {v5, v12, v13, v11}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 203
    invoke-virtual {v5, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    goto :goto_0

    .line 214
    .end local v4    # "byteData":[B
    .restart local v0    # "appCode":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x7

    const-string v12, "%s"

    const-string v13, "004"

    invoke-static {v11, v12, v13}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 216
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v11

    .line 217
    const-string v12, "US-ASCII"

    .line 216
    invoke-virtual {v11, v0, v12}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertStringToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 219
    .restart local v4    # "byteData":[B
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkAsciiCode([B)V

    .line 221
    array-length v11, v4

    int-to-long v12, v11

    const/4 v11, 0x2

    invoke-virtual {v5, v12, v13, v11}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 222
    invoke-virtual {v5, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 226
    invoke-virtual {v1}, Lcom/felicanetworks/mfc/PushStartAppSegment;->getAppStartupParam()[Ljava/lang/String;

    move-result-object v9

    .line 227
    .local v9, "startupParam":[Ljava/lang/String;
    if-eqz v9, :cond_3

    array-length v11, v9

    if-eqz v11, :cond_3

    .line 228
    const/4 v11, 0x7

    const-string v12, "%s"

    const-string v13, "005"

    invoke-static {v11, v12, v13}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 229
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v11, v9

    if-lt v7, v11, :cond_4

    .line 243
    invoke-virtual {v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v11

    new-array v10, v11, [B

    .line 244
    .local v10, "startupParamData":[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v13

    invoke-virtual {v3, v11, v10, v12, v13}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[BII)V

    .line 245
    invoke-virtual {v5, v10}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 249
    .end local v7    # "i":I
    .end local v10    # "startupParamData":[B
    :cond_3
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v11

    .line 250
    const/4 v12, 0x1

    .line 249
    invoke-virtual {v11, v5, v12}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->makeSerializeData(Lcom/felicanetworks/felica/util/ByteBuffer;B)[B

    move-result-object v8

    .line 252
    .local v8, "serializeData":[B
    const/4 v11, 0x4

    const-string v12, "%s return serializeData %s"

    const-string v13, "999"

    invoke-static {v11, v12, v13, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    return-object v8

    .line 230
    .end local v8    # "serializeData":[B
    .restart local v7    # "i":I
    :cond_4
    if-eqz v7, :cond_5

    .line 231
    const/4 v11, 0x7

    const-string v12, "%s"

    const-string v13, "006"

    invoke-static {v11, v12, v13}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 232
    const/16 v11, 0x20

    invoke-virtual {v3, v11}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 235
    :cond_5
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v11

    aget-object v12, v9, v7

    .line 236
    const-string v13, "US-ASCII"

    .line 235
    invoke-virtual {v11, v12, v13}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertStringToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 238
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkAsciiCode([B)V

    .line 240
    invoke-virtual {v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method
