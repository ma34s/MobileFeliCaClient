.class public Lcom/felicanetworks/felica/impl/tcap/TLAMRequest;
.super Ljava/lang/Object;
.source "TLAMRequest.java"


# instance fields
.field postdata:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    .line 48
    const-string v4, "%s"

    const-string v5, "000"

    invoke-static {v7, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 55
    :try_start_0
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/TLAMRequest;->postdata:[B

    if-nez v4, :cond_0

    .line 56
    const/4 v4, 0x4

    const-string v5, "%s"

    const-string v6, "001"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 59
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 60
    .local v3, "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    const-string v4, "Accept"

    const-string v5, "*, */*"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v7, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 82
    return-object v3

    .line 63
    .end local v3    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_0
    const/4 v4, 0x4

    :try_start_1
    const-string v5, "%s"

    const-string v6, "002"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 66
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 67
    .restart local v3    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    const-string v4, "Accept"

    const-string v5, "*, */*"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v4, "Content-Type"

    const-string v5, "application/x-tlam"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/TLAMRequest;->postdata:[B

    invoke-direct {v2, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 72
    .local v2, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    move-object v0, v3

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v4, v0

    invoke-virtual {v4, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 75
    .end local v2    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v3    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    const-string v5, "%s Exception"

    const-string v6, "700"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 78
    new-instance v4, Lcom/felicanetworks/felica/impl/tcap/HTTPException;

    const-string v5, "HTTP communication error."

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method setPostData([B)V
    .locals 3
    .param p1, "postdata"    # [B

    .prologue
    const/4 v2, 0x4

    .line 94
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 95
    iput-object p1, p0, Lcom/felicanetworks/felica/impl/tcap/TLAMRequest;->postdata:[B

    .line 96
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 97
    return-void
.end method
