.class public Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;
.super Ljava/lang/Object;
.source "TCAPResponse.java"


# static fields
.field private static final MAX_SIZE:I = 0x10004


# instance fields
.field private buffer:Lcom/felicanetworks/felica/util/ByteBuffer;

.field private cookie:Ljava/lang/String;

.field private packets:Lcom/felicanetworks/felica/impl/tcap/Packets;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 57
    new-instance v0, Lcom/felicanetworks/felica/util/ByteBuffer;

    const v1, 0x10004

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->buffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    .line 59
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 60
    return-void
.end method


# virtual methods
.method public addPacket(Lcom/felicanetworks/felica/impl/tcap/Packet;)V
    .locals 3
    .param p1, "packet"    # Lcom/felicanetworks/felica/impl/tcap/Packet;

    .prologue
    const/4 v2, 0x4

    .line 162
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->packets:Lcom/felicanetworks/felica/impl/tcap/Packets;

    if-nez v0, :cond_0

    .line 165
    const-string v0, "%s"

    const-string v1, "001"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 167
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/Packets;

    invoke-direct {v0}, Lcom/felicanetworks/felica/impl/tcap/Packets;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->packets:Lcom/felicanetworks/felica/impl/tcap/Packets;

    .line 170
    :cond_0
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->size:I

    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->size:I

    .line 172
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->size:I

    const v1, 0x10004

    if-le v0, v1, :cond_1

    .line 173
    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 175
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Buffer overflow."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->packets:Lcom/felicanetworks/felica/impl/tcap/Packets;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/felica/impl/tcap/Packets;->addPacket(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 179
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 68
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 70
    iput-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->packets:Lcom/felicanetworks/felica/impl/tcap/Packets;

    .line 72
    iput-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->cookie:Ljava/lang/String;

    .line 74
    iput v2, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->size:I

    .line 76
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->buffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 78
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public send(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    .line 91
    const-string v5, "%s"

    const-string v6, "000"

    invoke-static {v9, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 97
    iget-object v5, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->packets:Lcom/felicanetworks/felica/impl/tcap/Packets;

    if-eqz v5, :cond_0

    .line 98
    const-string v5, "%s"

    const-string v6, "001"

    invoke-static {v9, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 101
    iget-object v5, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->packets:Lcom/felicanetworks/felica/impl/tcap/Packets;

    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->buffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v5, v6}, Lcom/felicanetworks/felica/impl/tcap/Packets;->getBytes(Lcom/felicanetworks/felica/util/ByteBuffer;)V

    .line 107
    :cond_0
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 108
    .local v3, "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    const-string v5, "Accept"

    const-string v6, "*, */*"

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v5, "Content-Type"

    const-string v6, "application/x-tcap"

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v5, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->cookie:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 113
    const/4 v5, 0x4

    const-string v6, "%s"

    const-string v7, "002"

    invoke-static {v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 116
    const-string v5, "Cookie"

    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->cookie:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_1
    iget-object v5, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->buffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v5

    if-lez v5, :cond_2

    .line 121
    const/4 v5, 0x4

    const-string v6, "%s"

    const-string v7, "003"

    invoke-static {v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 123
    iget-object v5, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->buffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v5

    new-array v4, v5, [B

    .line 124
    .local v4, "tmp":[B
    iget-object v5, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->buffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->buffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v8}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v8

    invoke-static {v5, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 126
    .local v2, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    move-object v0, v3

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v5, v0

    invoke-virtual {v5, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v2    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v4    # "tmp":[B
    :cond_2
    const-string v5, "%s"

    const-string v6, "999"

    invoke-static {v9, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 136
    return-object v3

    .line 129
    .end local v3    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x1

    const-string v6, "%s Exception"

    const-string v7, "700"

    invoke-static {v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 132
    new-instance v5, Lcom/felicanetworks/felica/impl/tcap/HTTPException;

    const-string v6, "HTTP communication error."

    invoke-direct {v5, v6}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 3
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    .line 148
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 149
    iput-object p1, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->cookie:Ljava/lang/String;

    .line 150
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 151
    return-void
.end method
