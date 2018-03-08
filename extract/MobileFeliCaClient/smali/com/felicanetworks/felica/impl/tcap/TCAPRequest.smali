.class public abstract Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;
.super Ljava/lang/Object;
.source "TCAPRequest.java"


# static fields
.field private static final MAX_SIZE:I = 0x10004


# instance fields
.field private buffer:Lcom/felicanetworks/felica/util/ByteBuffer;

.field private cookie:Ljava/lang/String;

.field private packets:Lcom/felicanetworks/felica/impl/tcap/Packets;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 55
    new-instance v0, Lcom/felicanetworks/felica/util/ByteBuffer;

    const v1, 0x10004

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->buffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    .line 57
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 177
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 178
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->buffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getCookie()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 191
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 192
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->cookie:Ljava/lang/String;

    return-object v0
.end method

.method public getPacket(I)Lcom/felicanetworks/felica/impl/tcap/Packet;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x4

    .line 264
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 265
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->packets:Lcom/felicanetworks/felica/impl/tcap/Packets;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/felica/impl/tcap/Packets;->getPacket(I)Lcom/felicanetworks/felica/impl/tcap/Packet;

    move-result-object v0

    return-object v0
.end method

.method public getPacketNum()I
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 248
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 249
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->packets:Lcom/felicanetworks/felica/impl/tcap/Packets;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Packets;->getPacketNum()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 205
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 206
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->buffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v0

    return v0
.end method

.method public parse()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 220
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->packets:Lcom/felicanetworks/felica/impl/tcap/Packets;

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "%s"

    const-string v1, "998"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 238
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->validateData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 232
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    .line 233
    const/16 v1, 0x42

    const/4 v2, 0x0

    .line 232
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v0

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->parseData()Lcom/felicanetworks/felica/impl/tcap/Packets;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->packets:Lcom/felicanetworks/felica/impl/tcap/Packets;

    .line 237
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract parseData()Lcom/felicanetworks/felica/impl/tcap/Packets;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;
        }
    .end annotation
.end method

.method receive(Lorg/apache/http/HttpResponse;)V
    .locals 14
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v9, 0x4

    const-string v10, "%s"

    const-string v11, "000"

    invoke-static {v9, v10, v11}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->reset()V

    .line 103
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    .line 104
    .local v6, "statusLine":Lorg/apache/http/StatusLine;
    if-eqz v6, :cond_0

    .line 105
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 107
    .local v5, "responseCode":I
    const/16 v9, 0xc8

    if-eq v5, v9, :cond_1

    .line 108
    new-instance v9, Lcom/felicanetworks/felica/impl/tcap/HTTPException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Invalid response code: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Lcom/felicanetworks/felica/impl/tcap/HTTPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    .end local v5    # "responseCode":I
    .end local v6    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v3

    .line 161
    .local v3, "he":Lcom/felicanetworks/felica/impl/tcap/HTTPException;
    throw v3

    .line 111
    .end local v3    # "he":Lcom/felicanetworks/felica/impl/tcap/HTTPException;
    .restart local v6    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_0
    :try_start_1
    new-instance v9, Lcom/felicanetworks/felica/impl/tcap/HTTPException;

    const-string v10, "Invalid response code: null"

    invoke-direct {v9, v10}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Lcom/felicanetworks/felica/impl/tcap/HTTPException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    .end local v6    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_1
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    new-instance v9, Lcom/felicanetworks/felica/impl/tcap/HTTPException;

    const-string v10, "HTTP communication error."

    invoke-direct {v9, v10}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 114
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "responseCode":I
    .restart local v6    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_1
    :try_start_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 115
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    if-nez v2, :cond_2

    .line 116
    new-instance v9, Lcom/felicanetworks/felica/impl/tcap/HTTPException;

    const-string v10, "Invalid response: Can\'t get Entity."

    invoke-direct {v9, v10}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 120
    :cond_2
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v4

    .line 121
    .local v4, "header":Lorg/apache/http/Header;
    if-eqz v4, :cond_4

    .line 122
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 124
    const-string v9, "application/x-tcap"

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_5

    .line 125
    :cond_3
    new-instance v9, Lcom/felicanetworks/felica/impl/tcap/HTTPException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Invalid content-type: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 128
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_4
    new-instance v9, Lcom/felicanetworks/felica/impl/tcap/HTTPException;

    const-string v10, "Invalid content-type: null"

    invoke-direct {v9, v10}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 132
    .restart local v0    # "contentType":Ljava/lang/String;
    :cond_5
    const-string v9, "Set-Cookie"

    invoke-interface {p1, v9}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 133
    if-eqz v4, :cond_6

    .line 134
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->cookie:Ljava/lang/String;

    .line 140
    :goto_0
    const-string v9, "Transfer-Encoding"

    invoke-interface {p1, v9}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 141
    if-eqz v4, :cond_7

    .line 142
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 147
    .local v8, "transferEncoding":Ljava/lang/String;
    :goto_1
    if-nez v8, :cond_8

    .line 148
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gtz v9, :cond_8

    .line 149
    new-instance v9, Lcom/felicanetworks/felica/impl/tcap/HTTPException;

    const-string v10, "HTTP communication error."

    invoke-direct {v9, v10}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 136
    .end local v8    # "transferEncoding":Ljava/lang/String;
    :cond_6
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->cookie:Ljava/lang/String;

    goto :goto_0

    .line 144
    :cond_7
    const/4 v8, 0x0

    .restart local v8    # "transferEncoding":Ljava/lang/String;
    goto :goto_1

    .line 155
    :cond_8
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v7

    .line 156
    .local v7, "tmp":[B
    iget-object v9, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->buffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v9, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V
    :try_end_2
    .catch Lcom/felicanetworks/felica/impl/tcap/HTTPException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 166
    const/4 v9, 0x4

    const-string v10, "%s"

    const-string v11, "999"

    invoke-static {v9, v10, v11}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method public removePacket(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x4

    .line 279
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->packets:Lcom/felicanetworks/felica/impl/tcap/Packets;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/felica/impl/tcap/Packets;->removePacket(I)V

    .line 283
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 284
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 66
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 68
    iput-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->packets:Lcom/felicanetworks/felica/impl/tcap/Packets;

    .line 70
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->buffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 72
    iput-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->cookie:Ljava/lang/String;

    .line 74
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method protected validateData()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x4

    .line 294
    const-string v5, "%s"

    const-string v6, "000"

    invoke-static {v7, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 296
    iget-object v5, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->buffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v0

    .line 297
    .local v0, "data":[B
    iget-object v5, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->buffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v3

    .line 298
    .local v3, "size":I
    const/4 v2, 0x0

    .line 301
    .local v2, "pos":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 318
    if-eq v2, v3, :cond_2

    .line 319
    const-string v5, "%s"

    const-string v6, "998"

    invoke-static {v7, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 325
    :goto_1
    return v4

    .line 304
    :cond_0
    sub-int v5, v3, v2

    const/4 v6, 0x5

    if-ge v5, v6, :cond_1

    .line 305
    const-string v5, "%s"

    const-string v6, "997"

    invoke-static {v7, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 311
    :cond_1
    add-int/lit8 v5, v2, 0x3

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 312
    add-int/lit8 v6, v2, 0x4

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    .line 311
    or-int v1, v5, v6

    .line 315
    .local v1, "length":I
    add-int/lit8 v5, v1, 0x5

    add-int/2addr v2, v5

    goto :goto_0

    .line 324
    .end local v1    # "length":I
    :cond_2
    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v7, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 325
    const/4 v4, 0x1

    goto :goto_1
.end method
