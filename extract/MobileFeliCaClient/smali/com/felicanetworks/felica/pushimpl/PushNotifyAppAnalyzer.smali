.class public Lcom/felicanetworks/felica/pushimpl/PushNotifyAppAnalyzer;
.super Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
.source "PushNotifyAppAnalyzer.java"


# static fields
.field private static final DATA_SEPARATE_TYPE:B = 0x20t


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfc/PushNotifyAppSegment;)V
    .locals 4
    .param p1, "pushSeg"    # Lcom/felicanetworks/mfc/PushNotifyAppSegment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 131
    invoke-direct {p0}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;-><init>()V

    .line 133
    const-string v0, "%s In pushSeg = %s"

    const-string v1, "000"

    invoke-static {v3, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    if-nez p1, :cond_0

    .line 136
    const-string v0, "%s pushSeg null"

    const-string v1, "800"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 137
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    .line 138
    const-string v1, "The spefified SegmentData is null."

    .line 137
    invoke-direct {v0, v2, v1}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iput-object p1, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    .line 143
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public constructor <init>([B)V
    .locals 14
    .param p1, "rcvData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;-><init>()V

    .line 39
    const/4 v11, 0x4

    const-string v12, "%s In rcvdata = %s"

    const-string v13, "000"

    invoke-static {v11, v12, v13, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    if-eqz p1, :cond_0

    array-length v11, p1

    if-nez v11, :cond_1

    .line 45
    :cond_0
    new-instance v11, Lcom/felicanetworks/mfc/PushNotifyAppSegment;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/felicanetworks/mfc/PushNotifyAppSegment;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v11, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    .line 46
    const/4 v11, 0x4

    const-string v12, "%s"

    const-string v13, "998"

    invoke-static {v11, v12, v13}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 122
    :goto_0
    return-void

    .line 50
    :cond_1
    array-length v11, p1

    const/16 v12, 0xba

    if-le v11, v12, :cond_2

    .line 51
    const/4 v11, 0x1

    const-string v12, "%s data error"

    const-string v13, "800"

    invoke-static {v11, v12, v13}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 52
    new-instance v11, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v12, 0x1

    .line 53
    const-string v13, "The spefified ReceivedData is null or empty."

    .line 52
    invoke-direct {v11, v12, v13}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v11

    .line 57
    :cond_2
    :try_start_0
    new-instance v8, Lcom/felicanetworks/felica/util/ByteBuffer;

    array-length v11, p1

    invoke-direct {v8, v11}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    .line 58
    .local v8, "rcvByteBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    const/4 v6, 0x0

    .line 60
    .local v6, "index":I
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 61
    invoke-virtual {v8, p1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 64
    const/4 v11, 0x2

    invoke-virtual {v8, v6, v11}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInLittleEndian(II)J

    move-result-wide v12

    long-to-int v0, v12

    .line 65
    .local v0, "appCodeSize":I
    add-int/lit8 v6, v6, 0x2

    .line 66
    const/4 v9, 0x0

    .line 68
    .local v9, "sAppCodeData":Ljava/lang/String;
    const/4 v11, 0x7

    const-string v12, "%s"

    const-string v13, "001"

    invoke-static {v11, v12, v13}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 70
    const/4 v11, 0x6

    if-eq v0, v11, :cond_3

    .line 71
    const/4 v11, 0x1

    const-string v12, "%s app identification code error"

    const-string v13, "801"

    invoke-static {v11, v12, v13}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 72
    new-instance v11, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v12, 0x1

    .line 73
    const-string v13, "The spefified ReceivedData is null or empty."

    .line 72
    invoke-direct {v11, v12, v13}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0    # "appCodeSize":I
    .end local v6    # "index":I
    .end local v8    # "rcvByteBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    .end local v9    # "sAppCodeData":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 117
    .local v5, "e":Ljava/lang/Exception;
    const/4 v11, 0x1

    const-string v12, "%s Exception"

    const-string v13, "802"

    invoke-static {v11, v12, v13}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 118
    new-instance v11, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v12, 0x1

    .line 119
    const-string v13, "The spefified ReceivedData is null or empty."

    .line 118
    invoke-direct {v11, v12, v13}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v11

    .line 77
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "appCodeSize":I
    .restart local v6    # "index":I
    .restart local v8    # "rcvByteBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    .restart local v9    # "sAppCodeData":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v11

    invoke-virtual {v11, v6, v8, v0}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getData(ILcom/felicanetworks/felica/util/ByteBuffer;I)[B

    move-result-object v2

    .line 80
    .local v2, "bAppCodeData":[B
    const/4 v11, 0x4

    aget-byte v11, v2, v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    const/4 v11, 0x5

    aget-byte v11, v2, v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    .line 82
    const/4 v11, 0x4

    new-array v3, v11, [B

    .line 83
    .local v3, "bAppCodeData4":[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-static {v2, v11, v3, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkAsciiCode([B)V

    .line 87
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v11

    .line 88
    const-string v12, "US-ASCII"

    .line 87
    invoke-virtual {v11, v3, v12}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertByteToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 98
    .end local v3    # "bAppCodeData4":[B
    :goto_1
    add-int/lit8 v6, v0, 0x2

    .line 101
    array-length v11, p1

    sub-int v7, v11, v6

    .line 103
    .local v7, "notifyParamSize":I
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v11

    invoke-virtual {v11, v6, v8, v7}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getData(ILcom/felicanetworks/felica/util/ByteBuffer;I)[B

    move-result-object v4

    .line 106
    .local v4, "bNotifyParamData":[B
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkAsciiCode([B)V

    .line 108
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v11

    .line 109
    const/16 v12, 0x20

    .line 108
    invoke-virtual {v11, v4, v12}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->resolveData([BB)[Ljava/lang/String;

    move-result-object v10

    .line 112
    .local v10, "sNotifyParamData":[Ljava/lang/String;
    new-instance v1, Lcom/felicanetworks/mfc/PushNotifyAppSegment;

    invoke-direct {v1, v9, v10}, Lcom/felicanetworks/mfc/PushNotifyAppSegment;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 113
    .local v1, "appSeg":Lcom/felicanetworks/mfc/PushNotifyAppSegment;
    iput-object v1, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    .line 115
    const/4 v11, 0x4

    const-string v12, "%s"

    const-string v13, "999"

    invoke-static {v11, v12, v13}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 92
    .end local v1    # "appSeg":Lcom/felicanetworks/mfc/PushNotifyAppSegment;
    .end local v4    # "bNotifyParamData":[B
    .end local v7    # "notifyParamSize":I
    .end local v10    # "sNotifyParamData":[Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkAsciiCode([B)V

    .line 94
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v11

    .line 95
    const-string v12, "US-ASCII"

    .line 94
    invoke-virtual {v11, v2, v12}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertByteToString([BLjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_1
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

    .line 157
    const-string v1, "%s In Felica = %s : Context = %s"

    const-string v2, "000"

    invoke-static {v4, v1, v2, p1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 160
    :cond_0
    const-string v1, "%s parameter error"

    const-string v2, "800"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 161
    new-instance v1, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    .line 162
    const-string v2, "The spefified ReceivedData is null or empty."

    .line 161
    invoke-direct {v1, v3, v2}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 165
    :cond_1
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushCallbackExecutor;

    .line 166
    iget-object v1, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    check-cast v1, Lcom/felicanetworks/mfc/PushNotifyAppSegment;

    .line 165
    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/pushimpl/PushCallbackExecutor;-><init>(Lcom/felicanetworks/mfc/PushNotifyAppSegment;)V

    .line 168
    .local v0, "pushCallbackExcecuter":Lcom/felicanetworks/felica/pushimpl/PushCallbackExecutor;
    invoke-virtual {v0, p1, p2}, Lcom/felicanetworks/felica/pushimpl/PushCallbackExecutor;->execute(Lcom/felicanetworks/mfc/Felica;Landroid/content/Context;)V

    .line 170
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method public serialize()[B
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    .line 181
    const/16 v20, 0x4

    const-string v21, "%s"

    const-string v22, "000"

    invoke-static/range {v20 .. v22}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 184
    new-instance v11, Lcom/felicanetworks/felica/util/ByteBuffer;

    const/16 v20, 0xba

    move/from16 v0, v20

    invoke-direct {v11, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    .line 186
    .local v11, "dataBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    new-instance v6, Lcom/felicanetworks/felica/util/ByteBuffer;

    const/16 v20, 0xba

    move/from16 v0, v20

    invoke-direct {v6, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    .line 188
    .local v6, "buffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    check-cast v5, Lcom/felicanetworks/mfc/PushNotifyAppSegment;

    .line 191
    .local v5, "appSeg":Lcom/felicanetworks/mfc/PushNotifyAppSegment;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 192
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 195
    :try_start_0
    invoke-virtual {v5}, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->getAppIdentificationCode()Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, "appCode":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->getAppNotificationParam()[Ljava/lang/String;

    move-result-object v16

    .line 200
    .local v16, "notifyParam":[Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_1

    .line 201
    :cond_0
    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 202
    :cond_1
    const/16 v20, 0x7

    const-string v21, "%s"

    const-string v22, "001"

    invoke-static/range {v20 .. v22}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 211
    if-nez v4, :cond_2

    .line 212
    const/16 v20, 0x1

    const-string v21, "%s app identification code error"

    const-string v22, "800"

    invoke-static/range {v20 .. v22}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 213
    new-instance v20, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/16 v21, 0x1

    .line 214
    const-string v22, "serialize faild"

    .line 213
    invoke-direct/range {v20 .. v22}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v20
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v4    # "appCode":Ljava/lang/String;
    .end local v16    # "notifyParam":[Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 275
    .local v12, "e":Ljava/lang/Exception;
    const/16 v20, 0x1

    const-string v21, "%s Exception"

    const-string v22, "801"

    invoke-static/range {v20 .. v22}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 276
    new-instance v20, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/16 v21, 0x1

    const-string v22, "serialize faild"

    invoke-direct/range {v20 .. v22}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v20

    .line 216
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v4    # "appCode":Ljava/lang/String;
    .restart local v16    # "notifyParam":[Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v4}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v10

    .line 217
    .local v10, "chbuf":Ljava/nio/CharBuffer;
    const-string v20, "US-ASCII"

    invoke-static/range {v20 .. v20}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    .line 218
    .local v9, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v9}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v13

    .line 219
    .local v13, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v13, v10}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 220
    .local v7, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v15

    .line 221
    .local v15, "len":I
    const/16 v20, 0x6

    move/from16 v0, v20

    if-eq v15, v0, :cond_3

    const/16 v20, 0x4

    move/from16 v0, v20

    if-eq v15, v0, :cond_3

    .line 222
    const/16 v20, 0x1

    const-string v21, "%s app identification code error"

    const-string v22, "801"

    invoke-static/range {v20 .. v22}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 223
    new-instance v20, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/16 v21, 0x1

    .line 224
    const-string v22, "serialize faild"

    .line 223
    invoke-direct/range {v20 .. v22}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v20

    .line 230
    :cond_3
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v20

    .line 231
    const-string v21, "US-ASCII"

    .line 230
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertStringToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    .line 233
    .local v8, "byteData":[B
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkAsciiCode([B)V

    .line 237
    const-wide/16 v20, 0x6

    const/16 v22, 0x2

    move-wide/from16 v0, v20

    move/from16 v2, v22

    invoke-virtual {v11, v0, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 238
    array-length v0, v8

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 239
    invoke-virtual {v11, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 247
    :goto_0
    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 248
    const/16 v20, 0x7

    const-string v21, "%s"

    const-string v22, "004"

    invoke-static/range {v20 .. v22}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 249
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v14, v0, :cond_6

    .line 262
    invoke-virtual {v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 263
    .local v17, "notifyParamData":[B
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual {v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v22

    move/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[BII)V

    .line 264
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 269
    .end local v7    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v8    # "byteData":[B
    .end local v9    # "charset":Ljava/nio/charset/Charset;
    .end local v10    # "chbuf":Ljava/nio/CharBuffer;
    .end local v13    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .end local v14    # "i":I
    .end local v15    # "len":I
    .end local v17    # "notifyParamData":[B
    :cond_4
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v20

    .line 270
    const/16 v21, 0x6

    .line 269
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->makeSerializeData(Lcom/felicanetworks/felica/util/ByteBuffer;B)[B

    move-result-object v18

    .line 272
    .local v18, "serializeData":[B
    const/16 v20, 0x4

    const-string v21, "%s return serializeData "

    const-string v22, "999"

    move/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    return-object v18

    .line 241
    .end local v18    # "serializeData":[B
    .restart local v7    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local v8    # "byteData":[B
    .restart local v9    # "charset":Ljava/nio/charset/Charset;
    .restart local v10    # "chbuf":Ljava/nio/CharBuffer;
    .restart local v13    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .restart local v15    # "len":I
    :cond_5
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v19, v0

    fill-array-data v19, :array_0

    .line 242
    .local v19, "wildCard":[B
    invoke-virtual {v11, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 243
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    goto :goto_0

    .line 250
    .end local v19    # "wildCard":[B
    .restart local v14    # "i":I
    :cond_6
    if-eqz v14, :cond_7

    .line 251
    const/16 v20, 0x7

    const-string v21, "%s"

    const-string v22, "005"

    invoke-static/range {v20 .. v22}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 252
    const/16 v20, 0x20

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 255
    :cond_7
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v20

    .line 256
    aget-object v21, v16, v14

    const-string v22, "US-ASCII"

    .line 255
    invoke-virtual/range {v20 .. v22}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertStringToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    .line 258
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkAsciiCode([B)V

    .line 259
    invoke-virtual {v6, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 249
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 241
    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method
