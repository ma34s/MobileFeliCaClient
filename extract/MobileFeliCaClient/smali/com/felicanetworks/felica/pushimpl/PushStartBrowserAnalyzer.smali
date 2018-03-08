.class public Lcom/felicanetworks/felica/pushimpl/PushStartBrowserAnalyzer;
.super Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
.source "PushStartBrowserAnalyzer.java"


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfc/PushStartBrowserSegment;)V
    .locals 4
    .param p1, "pushSeg"    # Lcom/felicanetworks/mfc/PushStartBrowserSegment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 91
    invoke-direct {p0}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;-><init>()V

    .line 93
    const-string v0, "%s In pushSeg = %s"

    const-string v1, "000"

    invoke-static {v3, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    if-nez p1, :cond_0

    .line 96
    const-string v0, "%s pushSeg null"

    const-string v1, "800"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 97
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    .line 98
    const-string v1, "The spefified SegmentData is null."

    .line 97
    invoke-direct {v0, v2, v1}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    .line 103
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 104
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
    .line 24
    invoke-direct {p0}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;-><init>()V

    .line 26
    const/4 v10, 0x4

    const-string v11, "%s In rcvdata = %s"

    const-string v12, "000"

    invoke-static {v10, v11, v12, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    if-eqz p1, :cond_0

    array-length v10, p1

    if-eqz v10, :cond_0

    .line 29
    const/16 v10, 0xba

    array-length v11, p1

    if-ge v10, v11, :cond_1

    .line 30
    :cond_0
    const/4 v10, 0x1

    const-string v11, "%s data error"

    const-string v12, "800"

    invoke-static {v10, v11, v12}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 31
    new-instance v10, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v11, 0x1

    .line 32
    const-string v12, "The spefified ReceivedData is null or empty."

    .line 31
    invoke-direct {v10, v11, v12}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v10

    .line 36
    :cond_1
    :try_start_0
    new-instance v5, Lcom/felicanetworks/felica/util/ByteBuffer;

    array-length v10, p1

    invoke-direct {v5, v10}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    .line 37
    .local v5, "rcvByteBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    const/4 v4, 0x0

    .line 39
    .local v4, "index":I
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 40
    invoke-virtual {v5, p1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 43
    const/4 v10, 0x2

    invoke-virtual {v5, v4, v10}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInLittleEndian(II)J

    move-result-wide v10

    long-to-int v9, v10

    .line 46
    .local v9, "urlSize":I
    if-ltz v9, :cond_2

    const/16 v10, 0xb8

    if-ge v10, v9, :cond_3

    .line 47
    :cond_2
    const/4 v10, 0x1

    const-string v11, "%s application URL size error (%s)"

    const-string v12, "801"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    new-instance v10, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v11, 0x1

    .line 49
    const-string v12, "The spefified ReceivedData is null or empty."

    .line 48
    invoke-direct {v10, v11, v12}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v4    # "index":I
    .end local v5    # "rcvByteBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    .end local v9    # "urlSize":I
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e":Ljava/lang/Exception;
    const/4 v10, 0x1

    const-string v11, "%s Exception"

    const-string v12, "802"

    invoke-static {v10, v11, v12}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 78
    new-instance v10, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v11, 0x1

    .line 79
    const-string v12, "The spefified ReceivedData is null or empty."

    .line 78
    invoke-direct {v10, v11, v12}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v10

    .line 51
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "index":I
    .restart local v5    # "rcvByteBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    .restart local v9    # "urlSize":I
    :cond_3
    add-int/lit8 v4, v4, 0x2

    .line 53
    :try_start_1
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v10

    invoke-virtual {v10, v4, v5, v9}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getData(ILcom/felicanetworks/felica/util/ByteBuffer;I)[B

    move-result-object v1

    .line 55
    .local v1, "bUrlData":[B
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkAsciiCode([B)V

    .line 57
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v10

    .line 58
    const-string v11, "US-ASCII"

    .line 57
    invoke-virtual {v10, v1, v11}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertByteToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "sUrlData":Ljava/lang/String;
    add-int/lit8 v4, v9, 0x2

    .line 62
    array-length v10, p1

    sub-int v8, v10, v4

    .line 64
    .local v8, "startParamSize":I
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v10

    invoke-virtual {v10, v4, v5, v8}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getData(ILcom/felicanetworks/felica/util/ByteBuffer;I)[B

    move-result-object v0

    .line 67
    .local v0, "bStartParamData":[B
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v10

    .line 68
    const-string v11, "Shift_JIS"

    .line 67
    invoke-virtual {v10, v0, v11}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertByteToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, "sStartParamData":Ljava/lang/String;
    new-instance v2, Lcom/felicanetworks/mfc/PushStartBrowserSegment;

    invoke-direct {v2, v7, v6}, Lcom/felicanetworks/mfc/PushStartBrowserSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .local v2, "browserSeg":Lcom/felicanetworks/mfc/PushStartBrowserSegment;
    iput-object v2, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    .line 75
    const/4 v10, 0x4

    const-string v11, "%s"

    const-string v12, "999"

    invoke-static {v10, v11, v12}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
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

    .line 117
    const-string v1, "%s In Felica = %s : Context = %s"

    const-string v2, "000"

    invoke-static {v4, v1, v2, p1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 120
    :cond_0
    const-string v1, "%s parameter error"

    const-string v2, "800"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 121
    new-instance v1, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    .line 122
    const-string v2, "The spefified ReceivedData is null or empty."

    .line 121
    invoke-direct {v1, v3, v2}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 125
    :cond_1
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;

    .line 126
    iget-object v1, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    check-cast v1, Lcom/felicanetworks/mfc/PushStartBrowserSegment;

    .line 125
    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;-><init>(Lcom/felicanetworks/mfc/PushStartBrowserSegment;)V

    .line 128
    .local v0, "pushIntentExcecuter":Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;
    invoke-virtual {v0, p1, p2}, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->execute(Lcom/felicanetworks/mfc/Felica;Landroid/content/Context;)V

    .line 130
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 132
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
    const/4 v10, 0x4

    const/4 v11, 0x1

    .line 142
    const-string v8, "%s"

    const-string v9, "000"

    invoke-static {v10, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 145
    new-instance v3, Lcom/felicanetworks/felica/util/ByteBuffer;

    const/16 v8, 0xba

    invoke-direct {v3, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    .line 147
    .local v3, "dataBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    iget-object v0, p0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->segmentData:Lcom/felicanetworks/mfc/PushSegment;

    check-cast v0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;

    .line 151
    .local v0, "browserSeg":Lcom/felicanetworks/mfc/PushStartBrowserSegment;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 154
    :try_start_0
    invoke-virtual {v0}, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->getURL()Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, "url":Ljava/lang/String;
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v8

    const-string v9, "US-ASCII"

    invoke-virtual {v8, v7, v9}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertStringToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 159
    .local v1, "byteData":[B
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkAsciiCode([B)V

    .line 161
    array-length v8, v1

    int-to-long v8, v8

    const/4 v10, 0x2

    invoke-virtual {v3, v8, v9, v10}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 162
    invoke-virtual {v3, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 165
    invoke-virtual {v0}, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->getBrowserStartupParam()Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, "startupParam":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 167
    const/4 v8, 0x7

    const-string v9, "%s"

    const-string v10, "001"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 168
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v8

    .line 169
    const-string v9, "Shift_JIS"

    .line 168
    invoke-virtual {v8, v6, v9}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertStringToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 171
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v8

    .line 172
    const-string v9, "Shift_JIS"

    .line 171
    invoke-virtual {v8, v1, v9}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertByteToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "checkData":Ljava/lang/String;
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v8

    invoke-virtual {v8, v6, v2}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->checkConvert(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v3, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 180
    .end local v2    # "checkData":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    move-result-object v8

    .line 181
    const/4 v9, 0x2

    .line 180
    invoke-virtual {v8, v3, v9}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->makeSerializeData(Lcom/felicanetworks/felica/util/ByteBuffer;B)[B

    move-result-object v5

    .line 183
    .local v5, "serializeData":[B
    const/4 v8, 0x4

    const-string v9, "%s return serializeData : %s"

    const-string v10, "999"

    invoke-static {v8, v9, v10, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    return-object v5

    .line 185
    .end local v1    # "byteData":[B
    .end local v5    # "serializeData":[B
    .end local v6    # "startupParam":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 186
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "%s Exception"

    const-string v9, "800"

    invoke-static {v11, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 187
    new-instance v8, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v9, "serialize faild"

    invoke-direct {v8, v11, v9}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v8
.end method
