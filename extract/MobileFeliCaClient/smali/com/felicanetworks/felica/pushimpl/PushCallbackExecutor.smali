.class Lcom/felicanetworks/felica/pushimpl/PushCallbackExecutor;
.super Lcom/felicanetworks/felica/pushimpl/PushExecutor;
.source "PushCallbackExecutor.java"


# static fields
.field private static final IDENTIFICATIONCODE_LENGTH:I = 0x6

.field private static final IDENTIFICATIONCODE_LENGTH2:I = 0x4


# instance fields
.field private segment:Lcom/felicanetworks/mfc/PushNotifyAppSegment;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfc/PushNotifyAppSegment;)V
    .locals 3
    .param p1, "segment"    # Lcom/felicanetworks/mfc/PushNotifyAppSegment;

    .prologue
    const/4 v2, 0x5

    .line 40
    invoke-direct {p0}, Lcom/felicanetworks/felica/pushimpl/PushExecutor;-><init>()V

    .line 42
    const-string v0, "%s sgment=%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    iput-object p1, p0, Lcom/felicanetworks/felica/pushimpl/PushCallbackExecutor;->segment:Lcom/felicanetworks/mfc/PushNotifyAppSegment;

    .line 44
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 45
    return-void
.end method


# virtual methods
.method public execute(Lcom/felicanetworks/mfc/Felica;Landroid/content/Context;)V
    .locals 12
    .param p1, "felica"    # Lcom/felicanetworks/mfc/Felica;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v5, 0x7

    const/4 v4, 0x0

    const/4 v10, 0x5

    const/4 v0, 0x2

    .line 59
    const-string v1, "%s felica=%s : context=%s"

    const-string v2, "000"

    iget-object v3, p0, Lcom/felicanetworks/felica/pushimpl/PushCallbackExecutor;->segment:Lcom/felicanetworks/mfc/PushNotifyAppSegment;

    invoke-static {v10, v1, v2, v3, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    :try_start_0
    invoke-virtual {p1}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :try_start_1
    invoke-virtual {p1}, Lcom/felicanetworks/mfc/Felica;->isAliveProcess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    const/4 v1, 0x7

    const-string v2, "%s,"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 76
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/felicanetworks/mfc/Felica;->doCloseNoReset(Z)V

    .line 78
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/felicanetworks/mfc/Felica;->doInactivateFelica(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v6

    .line 65
    .local v6, "e":Lcom/felicanetworks/mfc/FelicaException;
    const-string v1, "%s : id = %d type = %d message = %s"

    const-string v2, "700"

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 66
    invoke-virtual {v6}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v1, "felica not opend."

    invoke-direct {v0, v10, v1}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 82
    .end local v6    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catch_1
    move-exception v6

    .line 84
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/felica/pushimpl/PushCallbackExecutor;->segment:Lcom/felicanetworks/mfc/PushNotifyAppSegment;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/PushNotifyAppSegment;->getAppIdentificationCode()Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, "segIdentCode":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/felicanetworks/mfc/Felica;->getAppIdentificationCode()Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, "felicaIdentCode":Ljava/lang/String;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    const-string v1, "%s,"

    const-string v2, "002"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 96
    const-string v1, "%s,"

    const-string v2, "003"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    const-string v1, "%s : throw PushImplException.TYPE_INVALID_STATUS"

    .line 99
    const-string v2, "702"

    .line 98
    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 100
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    .line 101
    const-string v1, "segIdentCode != felicaIdentCode."

    .line 100
    invoke-direct {v0, v10, v1}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    const-string v1, "%s,"

    const-string v2, "004"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v9, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {v7, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 106
    if-nez v1, :cond_2

    .line 107
    const-string v1, "%s : throw PushImplException.TYPE_INVALID_STATUS"

    .line 108
    const-string v2, "703"

    .line 107
    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 109
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    .line 110
    const-string v1, "segIdentCode != felicaIdentCode."

    .line 109
    invoke-direct {v0, v10, v1}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 115
    :cond_2
    invoke-virtual {p1}, Lcom/felicanetworks/mfc/Felica;->getPushNotificationListener()Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;

    move-result-object v8

    .line 116
    .local v8, "listener":Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;
    if-nez v8, :cond_3

    .line 117
    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 118
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    .line 119
    const-string v1, "The listener is not set."

    .line 118
    invoke-direct {v0, v10, v1}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 123
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/felicanetworks/felica/pushimpl/PushCallbackExecutor;->segment:Lcom/felicanetworks/mfc/PushNotifyAppSegment;

    invoke-interface {v8, v1}, Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;->pushAppNotified(Lcom/felicanetworks/mfc/PushNotifyAppSegment;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 129
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v10, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 124
    :catch_2
    move-exception v6

    .line 125
    .local v6, "e":Landroid/os/RemoteException;
    const-string v1, "%s message=%s"

    const-string v2, "702"

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
