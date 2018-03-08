.class public Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;
.super Lcom/felicanetworks/mfw/i/fbl/ResData;
.source "ResDataStartParam.java"


# instance fields
.field private beforeStartDate:Ljava/lang/String;

.field private startParam:Ljava/lang/String;

.field private startParamSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/felicanetworks/mfw/i/fbl/ResData;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;->startParamSize:I

    .line 23
    iput-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;->startParam:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;->beforeStartDate:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getBeforeStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;->beforeStartDate:Ljava/lang/String;

    return-object v0
.end method

.method public getStartParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;->startParam:Ljava/lang/String;

    return-object v0
.end method

.method public getStartParamSize()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;->startParamSize:I

    return v0
.end method

.method public setBeforeStartDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "beforeStartDate"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;->beforeStartDate:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setStartParam(Ljava/lang/String;)V
    .locals 0
    .param p1, "startParam"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;->startParam:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setStartParamSize(I)V
    .locals 0
    .param p1, "startParamSize"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;->startParamSize:I

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 31
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ResDataStartParam startParamSize = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;->startParamSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", startParam = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;->startParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", beforeStartDate = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/felicanetworks/mfw/i/fbl/ResDataStartParam;->beforeStartDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
