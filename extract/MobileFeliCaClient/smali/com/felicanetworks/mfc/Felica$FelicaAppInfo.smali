.class Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;
.super Ljava/lang/Object;
.source "Felica.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/Felica;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FelicaAppInfo"
.end annotation


# instance fields
.field pid:I

.field final synthetic this$0:Lcom/felicanetworks/mfc/Felica;

.field uid:I


# direct methods
.method constructor <init>(Lcom/felicanetworks/mfc/Felica;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPID()I
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 515
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 516
    const-string v0, "%s return pid = %d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 517
    iget v0, p0, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->pid:I

    return v0
.end method

.method public getUID()I
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 494
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 495
    const-string v0, "%s return uid = %d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 496
    iget v0, p0, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->uid:I

    return v0
.end method

.method public setPID(I)V
    .locals 4
    .param p1, "pid"    # I

    .prologue
    const/4 v3, 0x4

    .line 526
    const-string v0, "%s In pid = %d"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 527
    iput p1, p0, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->pid:I

    .line 528
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 529
    return-void
.end method

.method public setUID(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x4

    .line 505
    const-string v0, "%s In uid = %d"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 506
    iput p1, p0, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->uid:I

    .line 507
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 508
    return-void
.end method
