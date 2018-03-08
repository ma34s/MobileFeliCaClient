.class public Lcom/felicanetworks/mfw/i/fbl/ResDataPrblmAnalyze;
.super Lcom/felicanetworks/mfw/i/fbl/ResData;
.source "ResDataPrblmAnalyze.java"


# instance fields
.field private addInfo:Ljava/lang/String;

.field private mgmtFlag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/felicanetworks/mfw/i/fbl/ResData;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPrblmAnalyze;->mgmtFlag:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPrblmAnalyze;->addInfo:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getAddInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPrblmAnalyze;->addInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getMgmtFlag()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPrblmAnalyze;->mgmtFlag:I

    return v0
.end method

.method public setAddInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "addInfo"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPrblmAnalyze;->addInfo:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setMgmtFlag(I)V
    .locals 0
    .param p1, "mgmtFlag"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPrblmAnalyze;->mgmtFlag:I

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 28
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ResDataPrblmAnalyze mgmtFlag = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPrblmAnalyze;->mgmtFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", addInfo = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataPrblmAnalyze;->addInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
