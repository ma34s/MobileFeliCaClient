.class public Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;
.super Ljava/lang/Object;
.source "FeliCaAccessData.java"

# interfaces
.implements Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;


# instance fields
.field private offlineAccessTargetArray:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

.field private ordinaryCommandCategory:[B

.field private privilegedCommandCategory:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-direct {v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->offlineAccessTargetArray:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public addOfflineAccessTarget(Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;)V
    .locals 1
    .param p1, "offlineAccessTarget"    # Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->offlineAccessTargetArray:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->add(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const-string v0, "0002"

    return-object v0
.end method

.method public getOfflineAccessTarget(I)Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->offlineAccessTargetArray:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfw/i/fbl/OfflineAccessTarget;

    return-object v0
.end method

.method public getOrdinaryCommandCategory()[B
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->ordinaryCommandCategory:[B

    return-object v0
.end method

.method public getPrivilegedCommandCategory()[B
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->privilegedCommandCategory:[B

    return-object v0
.end method

.method public offlineAccessTargetSize()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->offlineAccessTargetArray:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public setOrdinaryCommandCategory([B)V
    .locals 0
    .param p1, "ordinaryCommandCategory"    # [B

    .prologue
    .line 92
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->ordinaryCommandCategory:[B

    .line 93
    return-void
.end method

.method public setPrivilegedCommandCategory([B)V
    .locals 0
    .param p1, "privilegedCommandCategory"    # [B

    .prologue
    .line 71
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->privilegedCommandCategory:[B

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 42
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FeliCaAccessData privilegedCommandCategory = ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->privilegedCommandCategory:[B

    invoke-static {v3}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", ordinaryCommandCategory = ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->ordinaryCommandCategory:[B

    invoke-static {v3}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->offlineAccessTargetArray:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 47
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", offlineAccessTargetArray["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 48
    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/FeliCaAccessData;->offlineAccessTargetArray:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3, v1}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
