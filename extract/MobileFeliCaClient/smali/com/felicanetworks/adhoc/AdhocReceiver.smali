.class public Lcom/felicanetworks/adhoc/AdhocReceiver;
.super Landroid/app/Activity;
.source "AdhocReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    return-void
.end method

.method public onStart()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v0, 0x1

    .line 28
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v9, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 29
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 32
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/mfc/Felica;->getInstance()Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/felicanetworks/mfc/Felica;->startAdhoc(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/felicanetworks/felica/pushimpl/PushImplException; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    :goto_0
    invoke-virtual {p0}, Lcom/felicanetworks/adhoc/AdhocReceiver;->finish()V

    .line 45
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v9, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 46
    return-void

    .line 33
    :catch_0
    move-exception v8

    .line 36
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const-string v1, "%s : catch FelicaException type = %d, id = %d, statusFlag1 = %d, statusFlag2 = %d, pid = %d"

    .line 37
    const-string v2, "800"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 38
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getOtherAppInfo()Lcom/felicanetworks/mfc/AppInfo;

    move-result-object v7

    .line 34
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 39
    .end local v8    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catch_1
    move-exception v8

    .line 40
    .local v8, "e":Lcom/felicanetworks/felica/pushimpl/PushImplException;
    const-string v1, "%s : catch PushImplException id = %d, message = %s"

    const-string v2, "801"

    .line 41
    invoke-virtual {v8}, Lcom/felicanetworks/felica/pushimpl/PushImplException;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/felica/pushimpl/PushImplException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-static {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
