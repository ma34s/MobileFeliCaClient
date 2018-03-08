.class public Lcom/felicanetworks/mfw/i/fbl/Permit;
.super Ljava/lang/Object;
.source "Permit.java"


# instance fields
.field private extensionList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

.field private keyId:Ljava/lang/String;

.field private notAfter:Ljava/lang/String;

.field private notBefore:Ljava/lang/String;

.field private permitIssuerId:Ljava/lang/String;

.field private permitType:Ljava/lang/String;

.field private rvctionDistributionPoint:Ljava/lang/String;

.field private serialNum:Ljava/lang/String;

.field private serviceId:Ljava/lang/String;

.field private signature:[B

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-direct {v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->extensionList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    .line 36
    return-void
.end method


# virtual methods
.method public addExtension(Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;)V
    .locals 1
    .param p1, "extension"    # Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->extensionList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->add(Ljava/lang/Object;)V

    .line 351
    return-void
.end method

.method public extensionSize()I
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->extensionList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getExtension(I)Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->extensionList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;

    return-object v0
.end method

.method public getExtension(Ljava/lang/String;)Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;
    .locals 3
    .param p1, "extensionId"    # Ljava/lang/String;

    .prologue
    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->extensionList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 317
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 312
    :cond_1
    iget-object v2, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->extensionList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v2, v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;

    .line 313
    .local v1, "target":Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;
    invoke-interface {v1}, Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getNotAfter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->notAfter:Ljava/lang/String;

    return-object v0
.end method

.method public getNotBefore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->notBefore:Ljava/lang/String;

    return-object v0
.end method

.method public getPermitIssuerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->permitIssuerId:Ljava/lang/String;

    return-object v0
.end method

.method public getPermitType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->permitType:Ljava/lang/String;

    return-object v0
.end method

.method public getRvctionDistributionPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->rvctionDistributionPoint:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->serialNum:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->serviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->signature:[B

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyId"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->keyId:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setNotAfter(Ljava/lang/String;)V
    .locals 0
    .param p1, "notAfter"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->notAfter:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setNotBefore(Ljava/lang/String;)V
    .locals 0
    .param p1, "notBefore"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->notBefore:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setPermitIssuerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "issuerId"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->permitIssuerId:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setPermitType(Ljava/lang/String;)V
    .locals 0
    .param p1, "permitType"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->permitType:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setRvctionDistributionPoint(Ljava/lang/String;)V
    .locals 0
    .param p1, "rvctionDistributionPoint"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->rvctionDistributionPoint:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setSerialNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "serialNum"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->serialNum:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setServiceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->serviceId:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setSignature([B)V
    .locals 0
    .param p1, "signature"    # [B

    .prologue
    .line 299
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->signature:[B

    .line 300
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->version:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Permit version = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", permitType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->permitType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", permitIssuerId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->permitIssuerId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", serialNum = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->serialNum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", keyId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->keyId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", notBefore = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->notBefore:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", notAfter = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->notAfter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", serviceId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->serviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", rvctionDistributionPoint = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->rvctionDistributionPoint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", signature = ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->signature:[B

    invoke-static {v3}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->extensionList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v2}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 87
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", extentionList["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/Permit;->extensionList:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3, v1}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
