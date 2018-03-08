.class public Lcom/felicanetworks/mfw/i/fbl/RespCrtr;
.super Ljava/lang/Object;
.source "RespCrtr.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createResp(Lcom/felicanetworks/mfw/i/cmn/ArrayList;)Ljava/lang/String;
    .locals 6
    .param p0, "rsltItemList"    # Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    .prologue
    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pftype="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "02"

    invoke-static {v5}, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&issuer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 45
    sget-object v5, Lcom/felicanetworks/mfw/i/fbl/Property;->CHIP_ISSUER_ID:Ljava/lang/String;

    invoke-static {v5}, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&appver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 46
    sget-object v5, Lcom/felicanetworks/mfw/i/fbl/Property;->APPLICATION_VERSION:Ljava/lang/String;

    invoke-static {v5}, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&langcode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 47
    const-string v5, "ja"

    invoke-static {v5}, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&councode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 48
    const-string v5, "JP"

    invoke-static {v5}, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "commonBeginning":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    .local v0, "buff":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    if-nez p0, :cond_0

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 63
    :goto_0
    return-object v4

    .line 57
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0, v2}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/felicanetworks/mfw/i/cmn/Item;

    .line 59
    .local v3, "item":Lcom/felicanetworks/mfw/i/cmn/Item;
    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/cmn/Item;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 60
    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/cmn/Item;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/felicanetworks/mfw/i/cmn/NwConUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
