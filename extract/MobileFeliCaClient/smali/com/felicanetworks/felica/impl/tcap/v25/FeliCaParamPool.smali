.class public Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaParamPool;
.super Ljava/lang/Object;
.source "FeliCaParamPool.java"


# instance fields
.field private pool:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public callParam(I)[B
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 71
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 72
    .local v0, "key":Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 74
    .local v1, "param":[B
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaParamPool;->pool:Ljava/util/Hashtable;

    if-nez v2, :cond_0

    .line 76
    const/4 v2, 0x0

    .line 81
    :goto_0
    return-object v2

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaParamPool;->pool:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "param":[B
    check-cast v1, [B

    .restart local v1    # "param":[B
    move-object v2, v1

    .line 81
    goto :goto_0
.end method

.method public clearParams()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaParamPool;->pool:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaParamPool;->pool:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    goto :goto_0
.end method

.method public saveParam(I[BII)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "bytes"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 49
    .local v0, "key":Ljava/lang/Integer;
    new-array v1, p4, [B

    .line 51
    .local v1, "param":[B
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaParamPool;->pool:Ljava/util/Hashtable;

    if-nez v2, :cond_0

    .line 53
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaParamPool;->pool:Ljava/util/Hashtable;

    .line 56
    :cond_0
    const/4 v2, 0x0

    invoke-static {p2, p3, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaParamPool;->pool:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method
