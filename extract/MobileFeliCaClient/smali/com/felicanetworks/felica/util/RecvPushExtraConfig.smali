.class public Lcom/felicanetworks/felica/util/RecvPushExtraConfig;
.super Ljava/lang/Object;
.source "RecvPushExtraConfig.java"


# static fields
.field private static final ENCODE_TYPE:Ljava/lang/String; = "UTF-8"

.field private static final FILE_PATH:Ljava/lang/String; = "/system/etc/felica/mfc_push.cfg"

.field private static final KEY_LENGTH:I = 0x2

.field private static final RECV_TAG:Ljava/lang/String; = "RECV"

.field private static instance:Lcom/felicanetworks/felica/util/RecvPushExtraConfig;

.field private static mapClassName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mapPackageName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 57
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/felicanetworks/felica/util/RecvPushExtraConfig;
    .locals 5

    .prologue
    .line 68
    const-class v2, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;

    monitor-enter v2

    const/4 v1, 0x4

    :try_start_0
    const-string v3, "%s"

    const-string v4, "000"

    invoke-static {v1, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 70
    sget-object v1, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;->instance:Lcom/felicanetworks/felica/util/RecvPushExtraConfig;

    if-nez v1, :cond_0

    .line 71
    const/4 v1, 0x7

    const-string v3, "%s"

    const-string v4, "001"

    invoke-static {v1, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 72
    new-instance v1, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;

    invoke-direct {v1}, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;-><init>()V

    sput-object v1, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;->instance:Lcom/felicanetworks/felica/util/RecvPushExtraConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :try_start_1
    sget-object v1, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;->instance:Lcom/felicanetworks/felica/util/RecvPushExtraConfig;

    const-string v3, "/system/etc/felica/mfc_push.cfg"

    invoke-direct {v1, v3}, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;->initialize(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    const/4 v1, 0x4

    :try_start_2
    const-string v3, "%s"

    const-string v4, "999"

    invoke-static {v1, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 84
    sget-object v1, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;->instance:Lcom/felicanetworks/felica/util/RecvPushExtraConfig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v1

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 77
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    :try_start_3
    sput-object v1, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;->instance:Lcom/felicanetworks/felica/util/RecvPushExtraConfig;

    .line 78
    const/4 v1, 0x0

    sput-object v1, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;->mapPackageName:Ljava/util/Map;

    .line 79
    const/4 v1, 0x0

    sput-object v1, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;->mapClassName:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v5, 0x1

    .line 99
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 102
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;->mapPackageName:Ljava/util/Map;

    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;->mapClassName:Ljava/util/Map;

    .line 104
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;->readConfigFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 122
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 123
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "%s : catch FileNotFoundException msg = %s"

    const-string v2, "800"

    .line 109
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-static {v5, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    const-string v1, "%s : $s %s"

    const-string v2, "801"

    const-string v3, "/system/etc/felica/mfc_push.cfg"

    const-string v4, " Not Found"

    invoke-static {v5, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    throw v0

    .line 112
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "%s : catch IOException msg = %s"

    const-string v2, "802"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    throw v0

    .line 116
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s : catch Exception msg = %s"

    const-string v2, "803"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Unknown Error"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readConfigFile(Ljava/lang/String;)V
    .locals 21
    .param p1, "fileLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 178
    const/16 v17, 0x5

    const-string v18, "%s"

    const-string v19, "000"

    invoke-static/range {v17 .. v19}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 180
    const/4 v6, 0x0

    .line 181
    .local v6, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 182
    .local v9, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v2, 0x0

    .line 185
    .local v2, "bufferReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .local v7, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v10, Ljava/io/InputStreamReader;

    const-string v17, "UTF-8"

    move-object/from16 v0, v17

    invoke-direct {v10, v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 187
    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v10, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 192
    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .local v3, "bufferReader":Ljava/io/BufferedReader;
    const/4 v13, 0x1

    .local v13, "line":I
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v15

    .local v15, "str":Ljava/lang/String;
    if-nez v15, :cond_3

    .line 270
    if-eqz v7, :cond_0

    .line 271
    const/16 v17, 0x7

    const-string v18, "%s"

    const-string v19, "005"

    invoke-static/range {v17 .. v19}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 273
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 278
    :cond_0
    :goto_1
    if-eqz v10, :cond_1

    .line 279
    const/16 v17, 0x7

    const-string v18, "%s"

    const-string v19, "006"

    invoke-static/range {v17 .. v19}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 281
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 286
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 287
    const/16 v17, 0x7

    const-string v18, "%s"

    const-string v19, "007"

    invoke-static/range {v17 .. v19}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 289
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 296
    :cond_2
    :goto_3
    const/16 v17, 0x5

    const-string v18, "%s"

    const-string v19, "999"

    invoke-static/range {v17 .. v19}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 297
    return-void

    .line 194
    :cond_3
    const/4 v12, 0x0

    .line 195
    .local v12, "keyStr":Ljava/lang/String;
    const/4 v14, 0x0

    .line 196
    .local v14, "packagename":Ljava/lang/String;
    const/4 v5, 0x0

    .line 197
    .local v5, "classname":Ljava/lang/String;
    :try_start_7
    new-instance v16, Ljava/util/StringTokenizer;

    const-string v17, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .local v16, "token":Ljava/util/StringTokenizer;
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 201
    const/16 v17, 0x7

    const-string v18, "%s"

    const-string v19, "001"

    invoke-static/range {v17 .. v19}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 203
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    const-string v18, "RECV"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 192
    :cond_4
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 211
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 212
    const/16 v17, 0x7

    const-string v18, "%s"

    const-string v19, "002"

    invoke-static/range {v17 .. v19}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 213
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 215
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 219
    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 221
    .local v8, "hexDigit":[C
    const/16 v17, 0x41

    const/16 v18, 0x0

    aget-char v18, v8, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_6

    const/16 v17, 0x0

    aget-char v17, v8, v17

    const/16 v18, 0x46

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 222
    :cond_6
    const/16 v17, 0x41

    const/16 v18, 0x1

    aget-char v18, v8, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_7

    const/16 v17, 0x1

    aget-char v17, v8, v17

    const/16 v18, 0x46

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 227
    :cond_7
    const/16 v17, 0x0

    aget-char v17, v8, v17

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    mul-int/lit8 v17, v17, 0x10

    .line 228
    const/16 v18, 0x1

    aget-char v18, v8, v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    .line 227
    add-int v4, v17, v18

    .line 231
    .local v4, "checkRange":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v4, v0, :cond_8

    const/16 v17, 0x6

    move/from16 v0, v17

    if-le v4, v0, :cond_4

    .line 236
    :cond_8
    and-int/lit16 v0, v4, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v11, v0

    .line 239
    .local v11, "key":B
    sget-object v17, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;->mapPackageName:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    sget-object v17, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;->mapClassName:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 247
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 248
    const/16 v17, 0x7

    const-string v18, "%s"

    const-string v19, "003"

    invoke-static/range {v17 .. v19}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 249
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    .line 255
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 256
    const/16 v17, 0x7

    const-string v18, "%s"

    const-string v19, "004"

    invoke-static/range {v17 .. v19}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 257
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 263
    sget-object v17, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;->mapPackageName:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v17, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;->mapClassName:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 266
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 269
    .end local v3    # "bufferReader":Ljava/io/BufferedReader;
    .end local v4    # "checkRange":I
    .end local v5    # "classname":Ljava/lang/String;
    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v8    # "hexDigit":[C
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v11    # "key":B
    .end local v12    # "keyStr":Ljava/lang/String;
    .end local v13    # "line":I
    .end local v14    # "packagename":Ljava/lang/String;
    .end local v15    # "str":Ljava/lang/String;
    .end local v16    # "token":Ljava/util/StringTokenizer;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_0
    move-exception v17

    .line 270
    :goto_5
    if-eqz v6, :cond_9

    .line 271
    const/16 v18, 0x7

    const-string v19, "%s"

    const-string v20, "005"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 273
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 278
    :cond_9
    :goto_6
    if-eqz v9, :cond_a

    .line 279
    const/16 v18, 0x7

    const-string v19, "%s"

    const-string v20, "006"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 281
    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 286
    :cond_a
    :goto_7
    if-eqz v2, :cond_b

    .line 287
    const/16 v18, 0x7

    const-string v19, "%s"

    const-string v20, "007"

    invoke-static/range {v18 .. v20}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 289
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 294
    :cond_b
    :goto_8
    throw v17

    .line 274
    :catch_0
    move-exception v18

    goto :goto_6

    .line 282
    :catch_1
    move-exception v18

    goto :goto_7

    .line 290
    :catch_2
    move-exception v18

    goto :goto_8

    .line 274
    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v13    # "line":I
    .restart local v15    # "str":Ljava/lang/String;
    :catch_3
    move-exception v17

    goto/16 :goto_1

    .line 282
    :catch_4
    move-exception v17

    goto/16 :goto_2

    .line 290
    :catch_5
    move-exception v17

    goto/16 :goto_3

    .line 269
    .end local v3    # "bufferReader":Ljava/io/BufferedReader;
    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v13    # "line":I
    .end local v15    # "str":Ljava/lang/String;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v17

    move-object v6, v7

    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v17

    move-object v9, v10

    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v13    # "line":I
    :catchall_3
    move-exception v17

    move-object v2, v3

    .end local v3    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v9    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_5
.end method


# virtual methods
.method public getClassName(B)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 155
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 157
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 158
    sget-object v0, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;->mapClassName:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName(B)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 137
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 139
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 140
    sget-object v0, Lcom/felicanetworks/felica/util/RecvPushExtraConfig;->mapPackageName:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
