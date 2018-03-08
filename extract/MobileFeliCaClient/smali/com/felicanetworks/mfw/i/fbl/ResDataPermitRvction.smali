.class public Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;
.super Lcom/felicanetworks/mfw/i/fbl/ResData;
.source "ResDataPermitRvction.java"


# instance fields
.field private mposInFile:J

.field private musedDate:Ljava/lang/String;

.field private offlineRvctionNum:I

.field private offlineRvctionNumLimit:I

.field private offlineRvctionTerm:I

.field private rvctionList:[Ljava/lang/String;

.field private rvctionPoint:Ljava/lang/String;

.field private rvctionPointSize:I

.field private serialNumCount:I

.field private updateDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 17
    invoke-direct {p0}, Lcom/felicanetworks/mfw/i/fbl/ResData;-><init>()V

    .line 20
    iput v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->offlineRvctionNumLimit:I

    .line 23
    iput v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->offlineRvctionNum:I

    .line 27
    iput-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->musedDate:Ljava/lang/String;

    .line 32
    iput v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->offlineRvctionTerm:I

    .line 35
    iput-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->updateDate:Ljava/lang/String;

    .line 38
    iput v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->rvctionPointSize:I

    .line 41
    iput-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->rvctionPoint:Ljava/lang/String;

    .line 44
    iput v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->serialNumCount:I

    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->rvctionList:[Ljava/lang/String;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->mposInFile:J

    .line 17
    return-void
.end method


# virtual methods
.method public getOfflineRvctionNum()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->offlineRvctionNum:I

    return v0
.end method

.method public getOfflineRvctionNumLimit()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->offlineRvctionNumLimit:I

    return v0
.end method

.method public getOfflineRvctionTerm()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->offlineRvctionTerm:I

    return v0
.end method

.method public getPosInFile()J
    .locals 2

    .prologue
    .line 300
    iget-wide v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->mposInFile:J

    return-wide v0
.end method

.method public getRvctionList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->rvctionList:[Ljava/lang/String;

    return-object v0
.end method

.method public getRvctionPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->rvctionPoint:Ljava/lang/String;

    return-object v0
.end method

.method public getRvctionPointSize()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->rvctionPointSize:I

    return v0
.end method

.method public getSerialNumCount()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->serialNumCount:I

    return v0
.end method

.method public getUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->musedDate:Ljava/lang/String;

    return-object v0
.end method

.method public setOfflineRvctionNum(I)V
    .locals 0
    .param p1, "offlineRvctionNum"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->offlineRvctionNum:I

    .line 102
    return-void
.end method

.method public setOfflineRvctionNumLimit(I)V
    .locals 0
    .param p1, "offlineRvctionNumLimit"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->offlineRvctionNumLimit:I

    .line 80
    return-void
.end method

.method public setOfflineRvctionTerm(I)V
    .locals 0
    .param p1, "offlineRvctionTerm"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->offlineRvctionTerm:I

    .line 153
    return-void
.end method

.method public setPosInFile(J)V
    .locals 1
    .param p1, "pos"    # J

    .prologue
    .line 290
    iput-wide p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->mposInFile:J

    .line 291
    return-void
.end method

.method public setRvctionList([Ljava/lang/String;)V
    .locals 0
    .param p1, "rvctionList"    # [Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->rvctionList:[Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setRvctionPoint(Ljava/lang/String;)V
    .locals 0
    .param p1, "rvctionPoint"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->rvctionPoint:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setRvctionPointSize(I)V
    .locals 0
    .param p1, "rvctionPointSize"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->rvctionPointSize:I

    .line 202
    return-void
.end method

.method public setSerialNumCount(I)V
    .locals 0
    .param p1, "serialNumCount"    # I

    .prologue
    .line 245
    iput p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->serialNumCount:I

    .line 246
    return-void
.end method

.method public setUpdateDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateDate"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->updateDate:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setUsedDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "usedDate"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->musedDate:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ResDataPermitRvction offlineRvctionNumLimit = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->offlineRvctionNumLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", offlineRvctionNum = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->offlineRvctionNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", offlineRvctionTerm = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->offlineRvctionTerm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", updateDate = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->updateDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", rvctionPointSize = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->rvctionPointSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", rvctionPoint = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->rvctionPoint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", serialNumCount = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->serialNumCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->rvctionList:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 66
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", rvctionList["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPermitRvction;->rvctionList:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
