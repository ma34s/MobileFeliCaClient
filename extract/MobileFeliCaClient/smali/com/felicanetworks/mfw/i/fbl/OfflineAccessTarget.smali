.class public Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;
.super Ljava/lang/Object;
.source "OfflineAccessTarget.java"


# instance fields
.field private nodeCodeRangeArray:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

.field private systemCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-direct {v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;->nodeCodeRangeArray:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public addNodeCodeRange(Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;)V
    .locals 1
    .param p1, "nodeCodeRange"    # Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;->nodeCodeRangeArray:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->add(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public getNodeCodeRange(I)Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;->nodeCodeRangeArray:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;

    return-object v0
.end method

.method public getSystemCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;->systemCode:Ljava/lang/String;

    return-object v0
.end method

.method public nodeCodeRangeSize()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;->nodeCodeRangeArray:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public setSystemCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemCode"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;->systemCode:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 38
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OfflineAccessTarget systemCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;->systemCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;->nodeCodeRangeArray:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 40
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nodeCodeRangeArray["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;->nodeCodeRangeArray:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3, v1}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
