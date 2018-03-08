.class public Lcom/felicanetworks/mfw/i/cmn/NwConUtil;
.super Ljava/lang/Object;
.source "NwConUtil.java"


# static fields
.field private static final CONNECT_TIMEOUT:I = 0xea60

.field private static final ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final FAILED_ENCODE:Ljava/lang/String; = "failed to encode."

.field private static final READ_TIMEOUT:I = 0xea60

.field private static sclient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private static surlBuff:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;->surlBuff:Ljava/lang/StringBuffer;

    .line 70
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;->sclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createString([BLjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "target"    # [B
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v9, 0x1

    .line 197
    const-string v6, "%s"

    const-string v7, "000"

    invoke-static {v8, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 198
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, p0

    if-lt v5, v6, :cond_0

    .line 207
    :try_start_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 208
    .local v0, "byteBuff":Ljava/nio/ByteBuffer;
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 209
    .local v2, "cs":Ljava/nio/charset/Charset;
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    .line 210
    .local v3, "decoder":Ljava/nio/charset/CharsetDecoder;
    invoke-virtual {v3, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 211
    .local v1, "charBuff":Ljava/nio/CharBuffer;
    const/4 v6, 0x4

    const-string v7, "%s"

    const-string v8, "999"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 212
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 199
    .end local v0    # "byteBuff":Ljava/nio/ByteBuffer;
    .end local v1    # "charBuff":Ljava/nio/CharBuffer;
    .end local v2    # "cs":Ljava/nio/charset/Charset;
    .end local v3    # "decoder":Ljava/nio/charset/CharsetDecoder;
    :cond_0
    aget-byte v6, p0, v5

    int-to-char v6, v6

    invoke-static {v6}, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;->isControlCharacter(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 200
    const-string v6, "800 control char(%x)"

    aget-byte v7, p0, v5

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-static {v9, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 201
    new-instance v6, Ljava/io/IOException;

    const-string v7, "failed to encode."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 198
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 213
    :catch_0
    move-exception v4

    .line 214
    .local v4, "e":Ljava/lang/Exception;
    const-string v6, "%s Exception(%s)"

    const-string v7, "801"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 215
    new-instance v6, Ljava/io/IOException;

    const-string v7, "failed to encode."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 299
    const-string v3, "%s : target = %s"

    const-string v4, "000"

    invoke-static {v6, v3, v4, p0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 300
    if-nez p0, :cond_0

    .line 301
    const-string v3, "800 target = %s"

    invoke-static {v5, v3, p0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Illegal argument [target = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v4, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;

    const-string v5, "decode"

    invoke-direct {v3, v4, v5, v2}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 308
    .end local v2    # "message":Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string v3, "UTF-8"

    invoke-static {p0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 313
    .local v0, "decoded":Ljava/lang/String;
    const-string v3, "%s"

    const-string v4, "999"

    invoke-static {v6, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 314
    return-object v0

    .line 309
    .end local v0    # "decoded":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "801 UnsupportedEncodingException"

    invoke-static {v5, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 311
    new-instance v3, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v4, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;

    const-string v5, "decode"

    const-string v6, "failed to decode."

    invoke-direct {v3, v4, v5, v6}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 271
    const-string v3, "%s : target = %s"

    const-string v4, "000"

    invoke-static {v6, v3, v4, p0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 272
    if-nez p0, :cond_0

    .line 273
    const-string v3, "800 target = %s"

    invoke-static {v5, v3, p0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Illegal argument [target = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v4, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;

    const-string v5, "encode"

    invoke-direct {v3, v4, v5, v2}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 280
    .end local v2    # "message":Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string v3, "UTF-8"

    invoke-static {p0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 285
    .local v1, "encoded":Ljava/lang/String;
    const-string v3, "%s"

    const-string v4, "999"

    invoke-static {v6, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 286
    return-object v1

    .line 281
    .end local v1    # "encoded":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "801 UnsupportedEncodingException"

    invoke-static {v5, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 283
    new-instance v3, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v4, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;

    const-string v5, "encode"

    const-string v6, "failed to encode."

    invoke-direct {v3, v4, v5, v6}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Lcom/felicanetworks/mfw/i/cmn/NwConUtilListener;)V
    .locals 17
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/felicanetworks/mfw/i/cmn/NwConUtilListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v2, 0x4

    const-string v3, "%s : url = %s, parameter = %s, listener = %s"

    const-string v4, "000"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static/range {v2 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->isValidURL(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    sget-object v2, Lcom/felicanetworks/mfw/i/fbl/Property;->USER_AGENT:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 105
    :cond_0
    const/4 v2, 0x1

    const-string v3, "800 url = %s, listener = %s, UA = %s"

    .line 106
    sget-object v4, Lcom/felicanetworks/mfw/i/fbl/Property;->USER_AGENT:Ljava/lang/String;

    .line 105
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v2, v3, v0, v1, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal argument [url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", parameter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 108
    const-string v3, ", listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 109
    .local v13, "message":Ljava/lang/String;
    new-instance v2, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v3, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;

    const-string v4, "get"

    invoke-direct {v2, v3, v4, v13}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 112
    .end local v13    # "message":Ljava/lang/String;
    :cond_1
    new-instance v15, Lcom/felicanetworks/mfw/i/cmn/RespData;

    invoke-direct {v15}, Lcom/felicanetworks/mfw/i/cmn/RespData;-><init>()V

    .line 116
    .local v15, "response":Lcom/felicanetworks/mfw/i/cmn/RespData;
    sget-object v2, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;->surlBuff:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 118
    sget-object v2, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;->surlBuff:Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    if-eqz p1, :cond_2

    .line 120
    const/4 v2, 0x7

    const-string v3, "%s"

    const-string v4, "001"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 121
    const/16 v2, 0x3f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 122
    const/4 v2, 0x7

    const-string v3, "%s"

    const-string v4, "002"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 123
    sget-object v2, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;->surlBuff:Ljava/lang/StringBuffer;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    :goto_0
    sget-object v2, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;->surlBuff:Ljava/lang/StringBuffer;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    :cond_2
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    sget-object v2, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;->surlBuff:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 133
    .local v11, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    sget-object v2, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;->sclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const v3, 0xea60

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 134
    sget-object v2, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;->sclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const v3, 0xea60

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 135
    sget-object v2, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;->sclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.useragent"

    sget-object v4, Lcom/felicanetworks/mfw/i/fbl/Property;->USER_AGENT:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 139
    :try_start_0
    sget-object v2, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;->sclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 147
    .local v14, "res":Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    .line 148
    .local v16, "statusLine":Lorg/apache/http/StatusLine;
    if-nez v16, :cond_4

    .line 149
    const/4 v2, 0x1

    const-string v3, "%s null status line"

    const-string v4, "803"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 150
    new-instance v2, Ljava/io/IOException;

    const-string v3, "failed to communicate."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    .end local v11    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .end local v14    # "res":Lorg/apache/http/HttpResponse;
    .end local v16    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_3
    const/4 v2, 0x7

    const-string v3, "%s"

    const-string v4, "003"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 126
    sget-object v2, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;->surlBuff:Ljava/lang/StringBuffer;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 140
    .restart local v11    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :catch_0
    move-exception v9

    .line 141
    .local v9, "e1":Lorg/apache/http/client/ClientProtocolException;
    const/4 v2, 0x1

    const-string v3, "%s ClientProtocolException"

    const-string v4, "801"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 142
    new-instance v2, Ljava/io/IOException;

    const-string v3, "failed to communicate."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    .end local v9    # "e1":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v9

    .line 144
    .local v9, "e1":Ljava/io/IOException;
    const/4 v2, 0x1

    const-string v3, "%s IOException"

    const-string v4, "802"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 145
    new-instance v2, Ljava/io/IOException;

    const-string v3, "failed to communicate."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    .end local v9    # "e1":Ljava/io/IOException;
    .restart local v14    # "res":Lorg/apache/http/HttpResponse;
    .restart local v16    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_4
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v15, v2}, Lcom/felicanetworks/mfw/i/cmn/RespData;->setStatusCode(I)V

    .line 154
    const-string v2, "Content-Type"

    invoke-interface {v14, v2}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v12

    .line 155
    .local v12, "header":Lorg/apache/http/Header;
    if-nez v12, :cond_5

    .line 156
    const/4 v2, 0x1

    const-string v3, "%s null Conetnt-Type"

    const-string v4, "804"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 157
    new-instance v2, Ljava/io/IOException;

    const-string v3, "failed to communicate."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_5
    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/felicanetworks/mfw/i/cmn/RespData;->setContentType(Ljava/lang/String;)V

    .line 162
    :try_start_1
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 163
    .local v10, "entity":Lorg/apache/http/HttpEntity;
    if-nez v10, :cond_6

    .line 164
    const/4 v2, 0x1

    const-string v3, "%s null entity"

    const-string v4, "805"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 165
    new-instance v2, Ljava/io/IOException;

    const-string v3, "failed to communicate."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 170
    .end local v10    # "entity":Lorg/apache/http/HttpEntity;
    :catch_2
    move-exception v8

    .line 171
    .local v8, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    const-string v3, "%s Exception(%s)"

    const-string v4, "806"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    new-instance v2, Ljava/io/IOException;

    const-string v3, "failed to encode."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v10    # "entity":Lorg/apache/http/HttpEntity;
    :cond_6
    :try_start_2
    invoke-static {v10}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;->createString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 169
    .restart local v13    # "message":Ljava/lang/String;
    invoke-virtual {v15, v13}, Lcom/felicanetworks/mfw/i/cmn/RespData;->setMessageBody(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 175
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/felicanetworks/mfw/i/cmn/NwConUtilListener;->webUtilExpired(Lcom/felicanetworks/mfw/i/cmn/RespData;)V

    .line 176
    const/4 v2, 0x4

    const-string v3, "%s"

    const-string v4, "999"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method private static isControlCharacter(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 221
    if-ltz p0, :cond_0

    const/16 v0, 0x9

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0xb

    if-gt v0, p0, :cond_1

    const/16 v0, 0xc

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0xe

    if-gt v0, p0, :cond_2

    const/16 v0, 0x1f

    if-le p0, v0, :cond_3

    .line 222
    :cond_2
    const/16 v0, 0x7f

    if-ne p0, v0, :cond_4

    .line 223
    :cond_3
    const/4 v0, 0x1

    .line 225
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;Lcom/felicanetworks/mfw/i/cmn/NwConUtilListener;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/felicanetworks/mfw/i/cmn/NwConUtilListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    const/4 v0, 0x4

    const-string v1, "%s : url = %s, parameter = %s, listener = %s"

    const-string v2, "000"

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 258
    new-instance v0, Lcom/felicanetworks/mfw/i/cmn/SysException;

    const-class v1, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;

    const-string v2, "post"

    const-string v3, "unexpected call."

    invoke-direct {v0, v1, v2, v3}, Lcom/felicanetworks/mfw/i/cmn/SysException;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
