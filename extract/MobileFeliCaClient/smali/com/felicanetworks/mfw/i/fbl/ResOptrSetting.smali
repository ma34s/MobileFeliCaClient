.class public Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;
.super Ljava/lang/Object;
.source "ResOptrSetting.java"


# instance fields
.field private id:Ljava/lang/String;

.field private isBuffered:Z

.field private isRead:Z

.field private resData:Lcom/felicanetworks/mfw/i/fbl/ResData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getResData()Lcom/felicanetworks/mfw/i/fbl/ResData;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->resData:Lcom/felicanetworks/mfw/i/fbl/ResData;

    return-object v0
.end method

.method public isBuffered()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->isBuffered:Z

    return v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->isRead:Z

    return v0
.end method

.method public setBuffered(Z)V
    .locals 0
    .param p1, "isBuffered"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->isBuffered:Z

    .line 116
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->id:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setRead(Z)V
    .locals 0
    .param p1, "isRead"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->isRead:Z

    .line 72
    return-void
.end method

.method public setResData(Lcom/felicanetworks/mfw/i/fbl/ResData;)V
    .locals 0
    .param p1, "resData"    # Lcom/felicanetworks/mfw/i/fbl/ResData;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->resData:Lcom/felicanetworks/mfw/i/fbl/ResData;

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 34
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ResOptrSetting id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", isRead = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->isRead:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", isBuffered = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->isBuffered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", resData = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/felicanetworks/mfw/i/fbl/ResOptrSetting;->resData:Lcom/felicanetworks/mfw/i/fbl/ResData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
