.class public Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;
.super Ljava/lang/Object;
.source "TCAPCommunicationAgent.java"


# static fields
.field private static final DEFAULT_TIMEOUT:J = 0xea60L

.field private static final MAX_TIMEOUT:J = 0x1d4c0L

.field static final TCAP_CONTENT_TYPE:Ljava/lang/String; = "application/x-tcap"

.field static final TLAM_CONTENT_TYPE:Ljava/lang/String; = "application/x-tlam"


# instance fields
.field private volatile aborted:Z

.field private connMgr:Lorg/apache/http/conn/ClientConnectionManager;

.field private thread:Ljava/lang/Thread;

.field private timeout:J

.field private userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->userAgent:Ljava/lang/String;

    .line 105
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 106
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->init()V

    .line 107
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 108
    return-void
.end method


# virtual methods
.method abort()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x4

    .line 139
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 141
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 142
    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 149
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->connMgr:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->aborted:Z

    .line 157
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 158
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s %s"

    const-string v2, "700"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public doTCAPTransaction(Ljava/lang/String;Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "response"    # Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;
    .param p3, "request"    # Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x4

    .line 285
    const-string v6, "%s"

    const-string v7, "000"

    invoke-static {v9, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 287
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iput-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->thread:Ljava/lang/Thread;

    .line 291
    :try_start_0
    iget-boolean v6, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->aborted:Z

    if-eqz v6, :cond_0

    .line 292
    const/4 v6, 0x1

    const-string v7, "%s"

    const-string v8, "700"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 294
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/HTTPException;

    const-string v7, "Interrupted."

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;-><init>(Ljava/lang/String;Z)V

    throw v6
    :try_end_0
    .catch Lcom/felicanetworks/felica/impl/tcap/HTTPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :catch_0
    move-exception v2

    .line 342
    .local v2, "he":Lcom/felicanetworks/felica/impl/tcap/HTTPException;
    const/4 v6, 0x1

    :try_start_1
    const-string v7, "%s HTTPException"

    const-string v8, "701"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 344
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    .end local v2    # "he":Lcom/felicanetworks/felica/impl/tcap/HTTPException;
    :catchall_0
    move-exception v6

    .line 371
    const-string v7, "%s"

    const-string v8, "002"

    invoke-static {v9, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 373
    iput-object v10, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->thread:Ljava/lang/Thread;

    .line 374
    throw v6

    .line 304
    :cond_0
    :try_start_2
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 307
    .local v0, "connParams":Lorg/apache/http/params/HttpParams;
    const-string v6, "http.useragent"

    iget-object v7, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->userAgent:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 309
    const-string v6, "http.protocol.expect-continue"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 310
    iget-wide v6, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->timeout:J

    long-to-int v6, v6

    invoke-static {v0, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 311
    iget-wide v6, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->timeout:J

    long-to-int v6, v6

    invoke-static {v0, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 313
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->connMgr:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-direct {v3, v6, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 314
    .local v3, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent$2;

    invoke-direct {v6, p0}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent$2;-><init>(Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;)V

    invoke-virtual {v3, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 330
    invoke-virtual {p2, p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->send(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v4

    .line 333
    .local v4, "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 336
    .local v5, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-virtual {p3, v5}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->receive(Lorg/apache/http/HttpResponse;)V
    :try_end_2
    .catch Lcom/felicanetworks/felica/impl/tcap/HTTPException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 371
    const-string v6, "%s"

    const-string v7, "002"

    invoke-static {v9, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 373
    iput-object v10, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->thread:Ljava/lang/Thread;

    .line 376
    const-string v6, "%s"

    const-string v7, "999"

    invoke-static {v9, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 377
    return-void

    .line 357
    .end local v0    # "connParams":Lorg/apache/http/params/HttpParams;
    .end local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v4    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/Exception;
    const/4 v6, 0x1

    :try_start_3
    const-string v7, "%s Exception"

    const-string v8, "702"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 361
    iget-boolean v6, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->aborted:Z

    if-eqz v6, :cond_1

    .line 362
    const/4 v6, 0x1

    const-string v7, "%s"

    const-string v8, "703"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 364
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/HTTPException;

    const-string v7, "Interrupted."

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;-><init>(Ljava/lang/String;Z)V

    throw v6

    .line 366
    :cond_1
    const/4 v6, 0x1

    const-string v7, "%s"

    const-string v8, "704"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 368
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/HTTPException;

    const-string v7, "HTTP communication error."

    invoke-direct {v6, v7}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public doTLAMTransaction(Ljava/lang/String;Lcom/felicanetworks/felica/impl/tcap/TLAMRequest;Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/felicanetworks/felica/impl/tcap/TLAMRequest;
    .param p3, "response"    # Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x4

    .line 175
    const-string v6, "%s"

    const-string v7, "000"

    invoke-static {v9, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 177
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iput-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->thread:Ljava/lang/Thread;

    .line 181
    :try_start_0
    iget-boolean v6, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->aborted:Z

    if-eqz v6, :cond_0

    .line 182
    const/4 v6, 0x1

    const-string v7, "%s"

    const-string v8, "700"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 184
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/HTTPException;

    const-string v7, "Interrupted."

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;-><init>(Ljava/lang/String;Z)V

    throw v6
    :try_end_0
    .catch Lcom/felicanetworks/felica/impl/tcap/HTTPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :catch_0
    move-exception v2

    .line 232
    .local v2, "he":Lcom/felicanetworks/felica/impl/tcap/HTTPException;
    const/4 v6, 0x1

    :try_start_1
    const-string v7, "%s HTTPException"

    const-string v8, "701"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 234
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    .end local v2    # "he":Lcom/felicanetworks/felica/impl/tcap/HTTPException;
    :catchall_0
    move-exception v6

    .line 261
    const-string v7, "%s"

    const-string v8, "002"

    invoke-static {v9, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 263
    iput-object v10, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->thread:Ljava/lang/Thread;

    .line 264
    throw v6

    .line 194
    :cond_0
    :try_start_2
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 197
    .local v0, "connParams":Lorg/apache/http/params/HttpParams;
    const-string v6, "http.useragent"

    iget-object v7, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->userAgent:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 199
    const-string v6, "http.protocol.expect-continue"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 200
    iget-wide v6, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->timeout:J

    long-to-int v6, v6

    invoke-static {v0, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 201
    iget-wide v6, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->timeout:J

    long-to-int v6, v6

    invoke-static {v0, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 203
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->connMgr:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-direct {v3, v6, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 204
    .local v3, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent$1;

    invoke-direct {v6, p0}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent$1;-><init>(Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;)V

    invoke-virtual {v3, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 220
    invoke-virtual {p2, p1}, Lcom/felicanetworks/felica/impl/tcap/TLAMRequest;->send(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v4

    .line 223
    .local v4, "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 226
    .local v5, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-virtual {p3, v5}, Lcom/felicanetworks/felica/impl/tcap/TLAMResponse;->receive(Lorg/apache/http/HttpResponse;)V
    :try_end_2
    .catch Lcom/felicanetworks/felica/impl/tcap/HTTPException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    const-string v6, "%s"

    const-string v7, "002"

    invoke-static {v9, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 263
    iput-object v10, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->thread:Ljava/lang/Thread;

    .line 266
    const-string v6, "%s"

    const-string v7, "999"

    invoke-static {v9, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 267
    return-void

    .line 247
    .end local v0    # "connParams":Lorg/apache/http/params/HttpParams;
    .end local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v4    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Exception;
    const/4 v6, 0x1

    :try_start_3
    const-string v7, "%s Exception"

    const-string v8, "702"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 251
    iget-boolean v6, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->aborted:Z

    if-eqz v6, :cond_1

    .line 252
    const/4 v6, 0x1

    const-string v7, "%s"

    const-string v8, "702"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 254
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/HTTPException;

    const-string v7, "Interrupted."

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;-><init>(Ljava/lang/String;Z)V

    throw v6

    .line 256
    :cond_1
    const/4 v6, 0x1

    const-string v7, "%s"

    const-string v8, "702"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 258
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/HTTPException;

    const-string v7, "HTTP communication error."

    invoke-direct {v6, v7}, Lcom/felicanetworks/felica/impl/tcap/HTTPException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method getUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 401
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 402
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 403
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method init()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 117
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 119
    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->timeout:J

    .line 121
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->aborted:Z

    .line 123
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 124
    .local v1, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 126
    .local v0, "clientConnMgr":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 127
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 126
    iput-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->connMgr:Lorg/apache/http/conn/ClientConnectionManager;

    .line 129
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public setTimeout(J)V
    .locals 3
    .param p1, "timeout"    # J

    .prologue
    const/4 v2, 0x4

    .line 415
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 417
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 418
    const-string v0, "%s"

    const-string v1, "001"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 420
    const-wide/16 p1, 0x0

    .line 423
    :cond_0
    const-wide/32 v0, 0x1d4c0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 424
    const-string v0, "%s"

    const-string v1, "002"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 426
    const-wide/32 p1, 0x1d4c0

    .line 429
    :cond_1
    iput-wide p1, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->timeout:J

    .line 431
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 432
    return-void
.end method

.method setUserAgent(Ljava/lang/String;)V
    .locals 3
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    .line 388
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 389
    iput-object p1, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->userAgent:Ljava/lang/String;

    .line 390
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 391
    return-void
.end method
