.class public Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;
.super Lcom/felicanetworks/mfw/i/fbl/ResData;
.source "ResDataVerUpConfir.java"


# instance fields
.field private offlineVerData:I

.field private offlineVerNum:I

.field private offlineVerNumLimit:I

.field private offlineVerUpReqDate:Ljava/lang/String;

.field private verUpConfirDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 17
    invoke-direct {p0}, Lcom/felicanetworks/mfw/i/fbl/ResData;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->verUpConfirDate:Ljava/lang/String;

    .line 23
    iput v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->offlineVerNumLimit:I

    .line 26
    iput v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->offlineVerNum:I

    .line 29
    iput v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->offlineVerData:I

    .line 32
    iput-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->offlineVerUpReqDate:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getOfflineVerData()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->offlineVerData:I

    return v0
.end method

.method public getOfflineVerNum()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->offlineVerNum:I

    return v0
.end method

.method public getOfflineVerNumLimit()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->offlineVerNumLimit:I

    return v0
.end method

.method public getOfflineVerUpReqDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->offlineVerUpReqDate:Ljava/lang/String;

    return-object v0
.end method

.method public getVerUpConfirDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->verUpConfirDate:Ljava/lang/String;

    return-object v0
.end method

.method public setOfflineVerData(I)V
    .locals 0
    .param p1, "offlineVerData"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->offlineVerData:I

    .line 126
    return-void
.end method

.method public setOfflineVerNum(I)V
    .locals 0
    .param p1, "offlineVerNum"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->offlineVerNum:I

    .line 102
    return-void
.end method

.method public setOfflineVerNumLimit(I)V
    .locals 0
    .param p1, "offlineVerNumLimit"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->offlineVerNumLimit:I

    .line 80
    return-void
.end method

.method public setOfflineVerUpReqDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "offlineVerUpReqDate"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->offlineVerUpReqDate:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setVerUpConfirDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "verUpConfirDate"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->verUpConfirDate:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 37
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ResDataVerUpConfir verUpConfirDate = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->verUpConfirDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", offlineVerNumLimit = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->offlineVerNumLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", offlineVerNum = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->offlineVerNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", offlineVerData = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->offlineVerData:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", offlineVerUpReqDate = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataVerUpConfir;->offlineVerUpReqDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
