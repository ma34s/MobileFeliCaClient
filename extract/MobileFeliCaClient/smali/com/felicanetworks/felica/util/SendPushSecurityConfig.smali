.class public Lcom/felicanetworks/felica/util/SendPushSecurityConfig;
.super Ljava/lang/Object;
.source "SendPushSecurityConfig.java"


# static fields
.field private static final ENCODE_TYPE:Ljava/lang/String; = "UTF-8"

.field private static final FILE_PATH:Ljava/lang/String; = "/system/etc/felica/mfc_push.cfg"

.field private static final KEY_LENGTH:I = 0x2

.field private static final SEND_TAG:Ljava/lang/String; = "SEND"

.field private static instance:Lcom/felicanetworks/felica/util/SendPushSecurityConfig;

.field private static map:Ljava/util/Map;
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

.field private static pkgNameNull:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, ""

    sput-object v0, Lcom/felicanetworks/felica/util/SendPushSecurityConfig;->pkgNameNull:Ljava/lang/String;

    .line 48
    return-void
.end method

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

.method public static declared-synchronized getInstance()Lcom/felicanetworks/felica/util/SendPushSecurityConfig;
    .locals 5

    .prologue
    .line 68
    const-class v2, Lcom/felicanetworks/felica/util/SendPushSecurityConfig;

    monitor-enter v2

    const/4 v1, 0x4

    :try_start_0
    const-string v3, "%s"

    const-string v4, "000"

    invoke-static {v1, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 70
    sget-object v1, Lcom/felicanetworks/felica/util/SendPushSecurityConfig;->instance:Lcom/felicanetworks/felica/util/SendPushSecurityConfig;

    if-nez v1, :cond_0

    .line 71
    const/4 v1, 0x7

    const-string v3, "%s"

    const-string v4, "001"

    invoke-static {v1, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 72
    new-instance v1, Lcom/felicanetworks/felica/util/SendPushSecurityConfig;

    invoke-direct {v1}, Lcom/felicanetworks/felica/util/SendPushSecurityConfig;-><init>()V

    sput-object v1, Lcom/felicanetworks/felica/util/SendPushSecurityConfig;->instance:Lcom/felicanetworks/felica/util/SendPushSecurityConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :try_start_1
    sget-object v1, Lcom/felicanetworks/felica/util/SendPushSecurityConfig;->instance:Lcom/felicanetworks/felica/util/SendPushSecurityConfig;

    const-string v3, "/system/etc/felica/mfc_push.cfg"

    invoke-direct {v1, v3}, Lcom/felicanetworks/felica/util/SendPushSecurityConfig;->initialize(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    const/4 v1, 0x4

    :try_start_2
    const-string v3, "%s"

    const-string v4, "999"

    invoke-static {v1, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 83
    sget-object v1, Lcom/felicanetworks/felica/util/SendPushSecurityConfig;->instance:Lcom/felicanetworks/felica/util/SendPushSecurityConfig;
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
    sput-object v1, Lcom/felicanetworks/felica/util/SendPushSecurityConfig;->instance:Lcom/felicanetworks/felica/util/SendPushSecurityConfig;

    .line 78
    const/4 v1, 0x0

    sput-object v1, Lcom/felicanetworks/felica/util/SendPushSecurityConfig;->map:Ljava/util/Map;
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

    .line 98
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 101
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/felicanetworks/felica/util/SendPushSecurityConfig;->map:Ljava/util/Map;

    .line 102
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/util/SendPushSecurityConfig;->readConfigFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 120
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 121
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

    const-string v3, "/system/etc/felica/mfc_push.cfg"

    const-string v4, " Not Found"

    invoke-static {v5, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    throw v0

    .line 110
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "%s : catch IOException msg = %s"

    const-string v2, "802"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    throw v0

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s : catch Exception msg = %s"

    const-string v2, "803"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Unknown Error"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readConfigFile(Ljava/lang/String;)V
    .locals 19
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
    .line 158
    const/4 v15, 0x5

    const-string v16, "%s"

    const-string v17, "000"

    invoke-static/range {v15 .. v17}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 160
    const/4 v4, 0x0

    .line 161
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 162
    .local v7, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    .line 165
    .local v1, "bufferReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 166
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .local v5, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/InputStreamReader;

    const-string v15, "UTF-8"

    invoke-direct {v8, v5, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 167
    .end local v7    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v8, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 170
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .local v2, "bufferReader":Ljava/io/BufferedReader;
    const/4 v11, 0x1

    .local v11, "line":I
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v13

    .local v13, "str":Ljava/lang/String;
    if-nez v13, :cond_3

    .line 237
    if-eqz v5, :cond_0

    .line 238
    const/4 v15, 0x7

    const-string v16, "%s"

    const-string v17, "004"

    invoke-static/range {v15 .. v17}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 240
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 245
    :cond_0
    :goto_1
    if-eqz v8, :cond_1

    .line 246
    const/4 v15, 0x7

    const-string v16, "%s"

    const-string v17, "005"

    invoke-static/range {v15 .. v17}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 248
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 253
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 254
    const/4 v15, 0x7

    const-string v16, "%s"

    const-string v17, "006"

    invoke-static/range {v15 .. v17}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 256
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 263
    :cond_2
    :goto_3
    const/4 v15, 0x5

    const-string v16, "%s"

    const-string v17, "999"

    invoke-static/range {v15 .. v17}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 264
    return-void

    .line 172
    :cond_3
    const/4 v10, 0x0

    .line 173
    .local v10, "keyStr":Ljava/lang/String;
    const/4 v12, 0x0

    .line 174
    .local v12, "packagename":Ljava/lang/String;
    :try_start_7
    new-instance v14, Ljava/util/StringTokenizer;

    const-string v15, ","

    invoke-direct {v14, v13, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v14, "token":Ljava/util/StringTokenizer;
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 179
    const/4 v15, 0x7

    const-string v16, "%s"

    const-string v17, "001"

    invoke-static/range {v15 .. v17}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    const-string v16, "SEND"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 170
    :cond_4
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 189
    :cond_5
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 190
    const/4 v15, 0x7

    const-string v16, "%s"

    const-string v17, "002"

    invoke-static/range {v15 .. v17}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 191
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 193
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 197
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 199
    .local v6, "hexDigit":[C
    const/16 v15, 0x41

    const/16 v16, 0x0

    aget-char v16, v6, v16

    move/from16 v0, v16

    if-gt v15, v0, :cond_6

    const/4 v15, 0x0

    aget-char v15, v6, v15

    const/16 v16, 0x46

    move/from16 v0, v16

    if-le v15, v0, :cond_4

    .line 200
    :cond_6
    const/16 v15, 0x41

    const/16 v16, 0x1

    aget-char v16, v6, v16

    move/from16 v0, v16

    if-gt v15, v0, :cond_7

    const/4 v15, 0x1

    aget-char v15, v6, v15

    const/16 v16, 0x46

    move/from16 v0, v16

    if-le v15, v0, :cond_4

    .line 205
    :cond_7
    const/4 v15, 0x0

    aget-char v15, v6, v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Character;->digit(CI)I

    move-result v15

    mul-int/lit8 v15, v15, 0x10

    .line 206
    const/16 v16, 0x1

    aget-char v16, v6, v16

    const/16 v17, 0x10

    invoke-static/range {v16 .. v17}, Ljava/lang/Character;->digit(CI)I

    move-result v16

    .line 205
    add-int v3, v15, v16

    .line 209
    .local v3, "checkRange":I
    const/4 v15, 0x1

    if-lt v3, v15, :cond_8

    const/4 v15, 0x6

    if-le v3, v15, :cond_4

    .line 214
    :cond_8
    and-int/lit16 v15, v3, 0xff

    int-to-byte v9, v15

    .line 217
    .local v9, "key":B
    sget-object v15, Lcom/felicanetworks/felica/util/SendPushSecurityConfig;->map:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 226
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 227
    const/4 v15, 0x7

    const-string v16, "%s"

    const-string v17, "003"

    invoke-static/range {v15 .. v17}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 228
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 234
    :goto_5
    sget-object v15, Lcom/felicanetworks/felica/util/SendPushSecurityConfig;->map:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    .line 236
    .end local v3    # "checkRange":I
    .end local v6    # "hexDigit":[C
    .end local v9    # "key":B
    .end local v10    # "keyStr":Ljava/lang/String;
    .end local v12    # "packagename":Ljava/lang/String;
    .end local v13    # "str":Ljava/lang/String;
    .end local v14    # "token":Ljava/util/StringTokenizer;
    :catchall_0
    move-exception v15

    move-object v1, v2

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v7    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v4, v5

    .line 237
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v11    # "line":I
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_6
    if-eqz v4, :cond_9

    .line 238
    const/16 v16, 0x7

    const-string v17, "%s"

    const-string v18, "004"

    invoke-static/range {v16 .. v18}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 240
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 245
    :cond_9
    :goto_7
    if-eqz v7, :cond_a

    .line 246
    const/16 v16, 0x7

    const-string v17, "%s"

    const-string v18, "005"

    invoke-static/range {v16 .. v18}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 248
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 253
    :cond_a
    :goto_8
    if-eqz v1, :cond_b

    .line 254
    const/16 v16, 0x7

    const-string v17, "%s"

    const-string v18, "006"

    invoke-static/range {v16 .. v18}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 256
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 261
    :cond_b
    :goto_9
    throw v15

    .line 230
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v7    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v3    # "checkRange":I
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "hexDigit":[C
    .restart local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v9    # "key":B
    .restart local v10    # "keyStr":Ljava/lang/String;
    .restart local v11    # "line":I
    .restart local v12    # "packagename":Ljava/lang/String;
    .restart local v13    # "str":Ljava/lang/String;
    .restart local v14    # "token":Ljava/util/StringTokenizer;
    :cond_c
    :try_start_b
    sget-object v12, Lcom/felicanetworks/felica/util/SendPushSecurityConfig;->pkgNameNull:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_5

    .line 241
    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .end local v3    # "checkRange":I
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "hexDigit":[C
    .end local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v9    # "key":B
    .end local v10    # "keyStr":Ljava/lang/String;
    .end local v11    # "line":I
    .end local v12    # "packagename":Ljava/lang/String;
    .end local v13    # "str":Ljava/lang/String;
    .end local v14    # "token":Ljava/util/StringTokenizer;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v16

    goto :goto_7

    .line 249
    :catch_1
    move-exception v16

    goto :goto_8

    .line 257
    :catch_2
    move-exception v16

    goto :goto_9

    .line 241
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v7    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v11    # "line":I
    .restart local v13    # "str":Ljava/lang/String;
    :catch_3
    move-exception v15

    goto/16 :goto_1

    .line 249
    :catch_4
    move-exception v15

    goto/16 :goto_2

    .line 257
    :catch_5
    move-exception v15

    goto/16 :goto_3

    .line 236
    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v11    # "line":I
    .end local v13    # "str":Ljava/lang/String;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v15

    goto :goto_6

    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v15

    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v7    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v15

    move-object v7, v8

    .end local v8    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v7    # "inputStreamReader":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_6
.end method


# virtual methods
.method public containsKey(B)Z
    .locals 2
    .param p1, "key"    # B

    .prologue
    .line 275
    sget-object v0, Lcom/felicanetworks/felica/util/SendPushSecurityConfig;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    .line 135
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 137
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 138
    sget-object v0, Lcom/felicanetworks/felica/util/SendPushSecurityConfig;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
