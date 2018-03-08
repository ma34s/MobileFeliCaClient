.class public Lcom/felicanetworks/felica/pushimpl/PushStartMailerAnalyzer;
.super Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
.source "PushStartMailerAnalyzer.java"


# static fields
.field private static final DATA_SEPARATE_TYPE:B = 0x2ct


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfc/PushStartMailerSegment;)V
    .locals 4
    .param p1, "pushSeg"    # Lcom/felicanetworks/mfc/PushStartMailerSegment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 122
    invoke-direct {p0}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;-><init>()V

    .line 124
    const-string v0, "%s In pushSeg = %s"

    const-string v1, "000"

    invoke-static {v3, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    if-nez p1, :cond_0

    .line 127
    const-string v0, "%s pushSeg null"

    const-string v1, "800"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 128
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    .line 129
    const-string v1, "The spefified SegmentData is null."

    .line 128
    invoke-direct {v0, v2, v1}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    iput-object p1, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    .line 133
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public constructor <init>([B)V
    .locals 26
    .param p1, "rcvData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;-><init>()V

    .line 32
    const/16 v23, 0x4

    const-string v24, "%s In rcvdata = %s"

    const-string v25, "000"

    move/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 35
    const/16 v23, 0xba

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    .line 36
    :cond_0
    const/16 v23, 0x1

    const-string v24, "%s data error"

    const-string v25, "800"

    invoke-static/range {v23 .. v25}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 37
    new-instance v23, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/16 v24, 0x1

    .line 38
    const-string v25, "The spefified ReceivedData is null or empty."

    .line 37
    invoke-direct/range {v23 .. v25}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v23

    .line 41
    :cond_1
    new-instance v19, Lcom/felicanetworks/felica/util/ByteBuffer;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    .line 42
    .local v19, "rcvByteBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    const/16 v18, 0x0

    .line 45
    .local v18, "index":I
    const/16 v23, 0x0

    :try_start_0
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 46
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 49
    const/16 v23, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInLittleEndian(II)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v22, v0

    .line 50
    .local v22, "toSize":I
    add-int/lit8 v18, v18, 0x2

    .line 52
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getData(ILcom/felicanetworks/felica/util/ByteBuffer;I)[B

    move-result-object v14

    .line 54
    .local v14, "bToData":[B
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkAsciiCode([B)V

    .line 55
    add-int/lit8 v18, v22, 0x2

    .line 57
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v23

    .line 58
    const/16 v24, 0x2c

    .line 57
    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->resolveData([BB)[Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "sToData":[Ljava/lang/String;
    const/16 v23, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInLittleEndian(II)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v16, v0

    .line 62
    .local v16, "ccSize":I
    add-int/lit8 v18, v18, 0x2

    .line 64
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getData(ILcom/felicanetworks/felica/util/ByteBuffer;I)[B

    move-result-object v11

    .line 66
    .local v11, "bCcData":[B
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkAsciiCode([B)V

    .line 67
    add-int v18, v18, v16

    .line 69
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v23

    .line 70
    const/16 v24, 0x2c

    .line 69
    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v11, v1}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->resolveData([BB)[Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, "sCcData":[Ljava/lang/String;
    const/16 v23, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInLittleEndian(II)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v21, v0

    .line 74
    .local v21, "subSize":I
    add-int/lit8 v18, v18, 0x2

    .line 76
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getData(ILcom/felicanetworks/felica/util/ByteBuffer;I)[B

    move-result-object v13

    .line 78
    .local v13, "bSubData":[B
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v23

    .line 79
    const-string v24, "Shift_JIS"

    .line 78
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertByteToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 80
    .local v7, "sSubData":Ljava/lang/String;
    add-int v18, v18, v21

    .line 83
    const/16 v23, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInLittleEndian(II)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v15, v0

    .line 84
    .local v15, "bodySize":I
    add-int/lit8 v18, v18, 0x2

    .line 86
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getData(ILcom/felicanetworks/felica/util/ByteBuffer;I)[B

    move-result-object v10

    .line 89
    .local v10, "bBodyData":[B
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v23

    .line 90
    const-string v24, "Shift_JIS"

    .line 89
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v10, v1}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertByteToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, "sBodyData":Ljava/lang/String;
    add-int v18, v18, v15

    .line 94
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    sub-int v20, v23, v18

    .line 96
    .local v20, "startParamSize":I
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getData(ILcom/felicanetworks/felica/util/ByteBuffer;I)[B

    move-result-object v12

    .line 99
    .local v12, "bStartParamData":[B
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v23

    .line 100
    const-string v24, "Shift_JIS"

    .line 99
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertByteToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 103
    .local v9, "sStartParamData":Ljava/lang/String;
    new-instance v4, Lcom/felicanetworks/mfc/PushStartMailerSegment;

    invoke-direct/range {v4 .. v9}, Lcom/felicanetworks/mfc/PushStartMailerSegment;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v4, "mailerSeg":Lcom/felicanetworks/mfc/PushStartMailerSegment;
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    .line 107
    const/16 v23, 0x4

    const-string v24, "%s"

    const-string v25, "999"

    invoke-static/range {v23 .. v25}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-void

    .line 108
    .end local v4    # "mailerSeg":Lcom/felicanetworks/mfc/PushStartMailerSegment;
    .end local v5    # "sToData":[Ljava/lang/String;
    .end local v6    # "sCcData":[Ljava/lang/String;
    .end local v7    # "sSubData":Ljava/lang/String;
    .end local v8    # "sBodyData":Ljava/lang/String;
    .end local v9    # "sStartParamData":Ljava/lang/String;
    .end local v10    # "bBodyData":[B
    .end local v11    # "bCcData":[B
    .end local v12    # "bStartParamData":[B
    .end local v13    # "bSubData":[B
    .end local v14    # "bToData":[B
    .end local v15    # "bodySize":I
    .end local v16    # "ccSize":I
    .end local v20    # "startParamSize":I
    .end local v21    # "subSize":I
    .end local v22    # "toSize":I
    :catch_0
    move-exception v17

    .line 109
    .local v17, "e":Ljava/lang/Exception;
    const/16 v23, 0x1

    const-string v24, "%s Exception"

    const-string v25, "801"

    invoke-static/range {v23 .. v25}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 110
    new-instance v23, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/16 v24, 0x1

    .line 111
    const-string v25, "The spefified ReceivedData is null or empty."

    .line 110
    invoke-direct/range {v23 .. v25}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v23
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

    .line 147
    const-string v1, "%s In Felica = %s : Context = %s"

    const-string v2, "000"

    invoke-static {v4, v1, v2, p1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 150
    :cond_0
    const-string v1, "%s parameter error"

    const-string v2, "800"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 151
    new-instance v1, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    .line 152
    const-string v2, "The spefified ReceivedData is null or empty."

    .line 151
    invoke-direct {v1, v3, v2}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 155
    :cond_1
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;

    .line 156
    iget-object v1, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    check-cast v1, Lcom/felicanetworks/mfc/PushStartMailerSegment;

    .line 155
    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;-><init>(Lcom/felicanetworks/mfc/PushStartMailerSegment;)V

    .line 158
    .local v0, "pushIntentExcecuter":Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;
    invoke-virtual {v0, p1, p2}, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->execute(Lcom/felicanetworks/mfc/Felica;Landroid/content/Context;)V

    .line 160
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public serialize()[B
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    .line 173
    const/16 v19, 0x4

    const-string v20, "%s"

    const-string v21, "000"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 176
    new-instance v10, Lcom/felicanetworks/felica/util/ByteBuffer;

    const/16 v19, 0xba

    move/from16 v0, v19

    invoke-direct {v10, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    .line 178
    .local v10, "dataBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    new-instance v5, Lcom/felicanetworks/felica/util/ByteBuffer;

    const/16 v19, 0xba

    move/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    .line 180
    .local v5, "buffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    check-cast v13, Lcom/felicanetworks/mfc/PushStartMailerSegment;

    .line 184
    .local v13, "mailerSeg":Lcom/felicanetworks/mfc/PushStartMailerSegment;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 185
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 189
    :try_start_0
    invoke-virtual {v13}, Lcom/felicanetworks/mfc/PushStartMailerSegment;->getToAddress()[Ljava/lang/String;

    move-result-object v17

    .line 190
    .local v17, "toAddress":[Ljava/lang/String;
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    if-nez v19, :cond_5

    .line 191
    :cond_0
    const/16 v19, 0x7

    const-string v20, "%s"

    const-string v21, "001"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 192
    const-wide/16 v20, 0x0

    const/16 v19, 0x2

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 214
    :goto_0
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 217
    invoke-virtual {v13}, Lcom/felicanetworks/mfc/PushStartMailerSegment;->getCcAddress()[Ljava/lang/String;

    move-result-object v7

    .line 219
    .local v7, "ccAddress":[Ljava/lang/String;
    if-eqz v7, :cond_1

    array-length v0, v7

    move/from16 v19, v0

    if-nez v19, :cond_8

    .line 220
    :cond_1
    const/16 v19, 0x7

    const-string v20, "%s"

    const-string v21, "004"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 221
    const-wide/16 v20, 0x0

    const/16 v19, 0x2

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 245
    :goto_1
    invoke-virtual {v13}, Lcom/felicanetworks/mfc/PushStartMailerSegment;->getSubject()Ljava/lang/String;

    move-result-object v16

    .line 246
    .local v16, "subject":Ljava/lang/String;
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_b

    .line 247
    :cond_2
    const/16 v19, 0x7

    const-string v20, "%s"

    const-string v21, "007"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 248
    const-wide/16 v20, 0x0

    const/16 v19, 0x2

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 265
    :goto_2
    invoke-virtual {v13}, Lcom/felicanetworks/mfc/PushStartMailerSegment;->getBody()Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, "body":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_c

    .line 267
    :cond_3
    const/16 v19, 0x7

    const-string v20, "%s"

    const-string v21, "009"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 268
    const-wide/16 v20, 0x0

    const/16 v19, 0x2

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 285
    :goto_3
    invoke-virtual {v13}, Lcom/felicanetworks/mfc/PushStartMailerSegment;->getMailerStartupParam()Ljava/lang/String;

    move-result-object v15

    .line 286
    .local v15, "startupParam":Ljava/lang/String;
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_4

    .line 287
    const/16 v19, 0x7

    const-string v20, "%s"

    const-string v21, "011"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 289
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v19

    .line 290
    const-string v20, "Shift_JIS"

    .line 289
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertStringToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    .line 292
    .local v6, "byteData":[B
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v19

    .line 293
    const-string v20, "Shift_JIS"

    .line 292
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertByteToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 295
    .local v9, "checkData":Ljava/lang/String;
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v9}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkConvert(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v10, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 301
    .end local v6    # "byteData":[B
    .end local v9    # "checkData":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v19

    .line 302
    const/16 v20, 0x3

    .line 301
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->makeSerializeData(Lcom/felicanetworks/felica/util/ByteBuffer;B)[B

    move-result-object v14

    .line 304
    .local v14, "serializeData":[B
    const/16 v19, 0x4

    const-string v20, "%s return serializeData : %s"

    const-string v21, "999"

    move/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v14}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 305
    return-object v14

    .line 194
    .end local v4    # "body":Ljava/lang/String;
    .end local v7    # "ccAddress":[Ljava/lang/String;
    .end local v14    # "serializeData":[B
    .end local v15    # "startupParam":Ljava/lang/String;
    .end local v16    # "subject":Ljava/lang/String;
    :cond_5
    const/16 v19, 0x7

    const-string v20, "%s"

    const-string v21, "002"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 195
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v12, v0, :cond_6

    .line 208
    invoke-virtual {v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const/16 v19, 0x2

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 210
    invoke-virtual {v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 211
    .local v18, "toData":[B
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual {v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v21

    move/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[BII)V

    .line 212
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 306
    .end local v12    # "i":I
    .end local v17    # "toAddress":[Ljava/lang/String;
    .end local v18    # "toData":[B
    :catch_0
    move-exception v11

    .line 307
    .local v11, "e":Ljava/lang/Exception;
    const/16 v19, 0x1

    const-string v20, "%s Exception"

    const-string v21, "800"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 308
    new-instance v19, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/16 v20, 0x1

    const-string v21, "serialize faild"

    invoke-direct/range {v19 .. v21}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v19

    .line 196
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v12    # "i":I
    .restart local v17    # "toAddress":[Ljava/lang/String;
    :cond_6
    if-eqz v12, :cond_7

    .line 197
    const/16 v19, 0x7

    :try_start_1
    const-string v20, "%s"

    const-string v21, "003"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 198
    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 201
    :cond_7
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v19

    aget-object v20, v17, v12

    .line 202
    const-string v21, "US-ASCII"

    .line 201
    invoke-virtual/range {v19 .. v21}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertStringToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    .line 204
    .restart local v6    # "byteData":[B
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkAsciiCode([B)V

    .line 205
    invoke-virtual {v5, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 195
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 223
    .end local v6    # "byteData":[B
    .end local v12    # "i":I
    .restart local v7    # "ccAddress":[Ljava/lang/String;
    :cond_8
    const/16 v19, 0x7

    const-string v20, "%s"

    const-string v21, "005"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 224
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    array-length v0, v7

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v12, v0, :cond_9

    .line 237
    invoke-virtual {v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const/16 v19, 0x2

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 239
    invoke-virtual {v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v19

    move/from16 v0, v19

    new-array v8, v0, [B

    .line 240
    .local v8, "ccData":[B
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual {v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v5, v0, v8, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[BII)V

    .line 241
    invoke-virtual {v10, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    goto/16 :goto_1

    .line 225
    .end local v8    # "ccData":[B
    :cond_9
    if-eqz v12, :cond_a

    .line 226
    const/16 v19, 0x7

    const-string v20, "%s"

    const-string v21, "006"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 227
    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 230
    :cond_a
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v19

    aget-object v20, v7, v12

    .line 231
    const-string v21, "US-ASCII"

    .line 230
    invoke-virtual/range {v19 .. v21}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertStringToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    .line 233
    .restart local v6    # "byteData":[B
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkAsciiCode([B)V

    .line 234
    invoke-virtual {v5, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 224
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 250
    .end local v6    # "byteData":[B
    .end local v12    # "i":I
    .restart local v16    # "subject":Ljava/lang/String;
    :cond_b
    const/16 v19, 0x7

    const-string v20, "%s"

    const-string v21, "008"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 252
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v19

    .line 253
    const-string v20, "Shift_JIS"

    .line 252
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertStringToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    .line 255
    .restart local v6    # "byteData":[B
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v19

    .line 256
    const-string v20, "Shift_JIS"

    .line 255
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertByteToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 258
    .restart local v9    # "checkData":Ljava/lang/String;
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkConvert(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const/16 v19, 0x2

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 261
    invoke-virtual {v10, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    goto/16 :goto_2

    .line 270
    .end local v6    # "byteData":[B
    .end local v9    # "checkData":Ljava/lang/String;
    .restart local v4    # "body":Ljava/lang/String;
    :cond_c
    const/16 v19, 0x7

    const-string v20, "%s"

    const-string v21, "010"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 272
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v19

    .line 273
    const-string v20, "Shift_JIS"

    .line 272
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertStringToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    .line 275
    .restart local v6    # "byteData":[B
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v19

    .line 276
    const-string v20, "Shift_JIS"

    .line 275
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertByteToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 278
    .restart local v9    # "checkData":Ljava/lang/String;
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v9}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkConvert(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const/16 v19, 0x2

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-virtual {v10, v0, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 281
    invoke-virtual {v10, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method
