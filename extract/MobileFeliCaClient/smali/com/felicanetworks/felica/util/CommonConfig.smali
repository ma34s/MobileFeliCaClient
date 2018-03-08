.class public Lcom/felicanetworks/felica/util/CommonConfig;
.super Ljava/lang/Object;
.source "CommonConfig.java"


# static fields
.field private static final ENCODE_TYPE:Ljava/lang/String; = "UTF-8"

.field private static final FILE_PATH:Ljava/lang/String; = "/system/etc/felica/common.cfg"

.field private static final KEY_LENGTH:I = 0x8

.field private static instance:Lcom/felicanetworks/felica/util/CommonConfig;

.field private static map:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 54
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/felicanetworks/felica/util/CommonConfig;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    const-class v1, Lcom/felicanetworks/felica/util/CommonConfig;

    monitor-enter v1

    const/4 v0, 0x4

    :try_start_0
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 73
    sget-object v0, Lcom/felicanetworks/felica/util/CommonConfig;->instance:Lcom/felicanetworks/felica/util/CommonConfig;

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 75
    new-instance v0, Lcom/felicanetworks/felica/util/CommonConfig;

    invoke-direct {v0}, Lcom/felicanetworks/felica/util/CommonConfig;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/util/CommonConfig;->instance:Lcom/felicanetworks/felica/util/CommonConfig;

    .line 76
    sget-object v0, Lcom/felicanetworks/felica/util/CommonConfig;->instance:Lcom/felicanetworks/felica/util/CommonConfig;

    const-string v2, "/system/etc/felica/common.cfg"

    invoke-direct {v0, v2}, Lcom/felicanetworks/felica/util/CommonConfig;->initialize(Ljava/lang/String;)V

    .line 79
    :cond_0
    const/4 v0, 0x4

    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 80
    sget-object v0, Lcom/felicanetworks/felica/util/CommonConfig;->instance:Lcom/felicanetworks/felica/util/CommonConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v5, 0x1

    .line 98
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 101
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/felicanetworks/felica/util/CommonConfig;->map:Ljava/util/Map;

    .line 102
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/util/CommonConfig;->readConfigFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 125
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 126
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "%s : catch FileNotFoundException msg = %s"

    const-string v2, "800"

    .line 107
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-static {v5, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    const-string v1, "%s : $s %s"

    const-string v2, "801"

    const-string v3, "/system/etc/felica/common.cfg"

    const-string v4, " Not Found"

    invoke-static {v5, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    throw v0

    .line 110
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 112
    .local v0, "e":Ljava/text/ParseException;
    const-string v1, "%s : catch ParseException msg = %s line = %d"

    const-string v2, "801"

    .line 113
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/text/ParseException;->getErrorOffset()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 112
    invoke-static {v5, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    throw v0

    .line 115
    .end local v0    # "e":Ljava/text/ParseException;
    :catch_2
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "%s : catch IOException msg = %s"

    const-string v2, "802"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    throw v0

    .line 119
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s : catch Exception msg = %s"

    const-string v2, "803"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Unknown Error"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readConfigFile(Ljava/lang/String;)V
    .locals 16
    .param p1, "fileLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v12, 0x5

    const-string v13, "%s"

    const-string v14, "000"

    invoke-static {v12, v13, v14}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 174
    const/4 v3, 0x0

    .line 175
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 176
    .local v5, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    .line 179
    .local v1, "bufferReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 180
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v12, "UTF-8"

    invoke-direct {v6, v4, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 181
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v6, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 184
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .local v2, "bufferReader":Ljava/io/BufferedReader;
    const/4 v8, 0x1

    .local v8, "line":I
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    .local v9, "str":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 220
    if-eqz v4, :cond_0

    .line 221
    const/4 v12, 0x7

    const-string v13, "%s"

    const-string v14, "003"

    invoke-static {v12, v13, v14}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 222
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 226
    :cond_0
    const/4 v12, 0x5

    const-string v13, "%s"

    const-string v14, "999"

    invoke-static {v12, v13, v14}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 227
    return-void

    .line 186
    :cond_1
    const/4 v7, 0x0

    .line 187
    .local v7, "key":Ljava/lang/String;
    const/4 v11, 0x0

    .line 188
    .local v11, "value":Ljava/lang/String;
    :try_start_4
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v12, ","

    invoke-direct {v10, v9, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .local v10, "token":Ljava/util/StringTokenizer;
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 192
    const/4 v12, 0x7

    const-string v13, "%s"

    const-string v14, "001"

    invoke-static {v12, v13, v14}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 193
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 195
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_4

    .line 196
    const/4 v12, 0x1

    const-string v13, "%s : throw ParseException str = %s line = %d"

    .line 197
    const-string v14, "800"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 196
    invoke-static {v12, v13, v14, v9, v15}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    new-instance v12, Ljava/text/ParseException;

    invoke-direct {v12, v9, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 219
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "str":Ljava/lang/String;
    .end local v10    # "token":Ljava/util/StringTokenizer;
    .end local v11    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v12

    move-object v1, v2

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v3, v4

    .line 220
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v8    # "line":I
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v3, :cond_2

    .line 221
    const/4 v13, 0x7

    const-string v14, "%s"

    const-string v15, "003"

    invoke-static {v13, v14, v15}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 222
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 224
    :cond_2
    throw v12

    .line 201
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "line":I
    .restart local v9    # "str":Ljava/lang/String;
    .restart local v10    # "token":Ljava/util/StringTokenizer;
    .restart local v11    # "value":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x1

    :try_start_5
    const-string v13, "%s : throw ParseException str = %s line = %d"

    const-string v14, "801"

    .line 202
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 201
    invoke-static {v12, v13, v14, v9, v15}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    new-instance v12, Ljava/text/ParseException;

    invoke-direct {v12, v9, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v12

    .line 207
    :cond_4
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 208
    const/4 v12, 0x7

    const-string v13, "%s"

    const-string v14, "002"

    invoke-static {v12, v13, v14}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 209
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 217
    sget-object v12, Lcom/felicanetworks/felica/util/CommonConfig;->map:Ljava/util/Map;

    invoke-interface {v12, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 211
    :cond_5
    const/4 v12, 0x1

    const-string v13, "%s : throw ParseException str = %s line = %d"

    const-string v14, "802"

    .line 212
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 211
    invoke-static {v12, v13, v14, v9, v15}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    new-instance v12, Ljava/text/ParseException;

    invoke-direct {v12, v9, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 219
    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "line":I
    .end local v9    # "str":Ljava/lang/String;
    .end local v10    # "token":Ljava/util/StringTokenizer;
    .end local v11    # "value":Ljava/lang/String;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v12

    goto :goto_1

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v12

    move-object v3, v4

    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v12

    move-object v5, v6

    .end local v6    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 140
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 142
    if-nez p1, :cond_0

    .line 143
    const-string v0, "%s : throw IllegalArgumentException key == null"

    const-string v1, "800"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified key value is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 146
    const-string v0, "%s : throw IllegalArgumentException key_length = %d"

    const-string v1, "801"

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 146
    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified key value is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 152
    sget-object v0, Lcom/felicanetworks/felica/util/CommonConfig;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
