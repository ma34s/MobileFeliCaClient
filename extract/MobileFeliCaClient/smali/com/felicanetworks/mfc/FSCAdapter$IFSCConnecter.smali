.class Lcom/felicanetworks/mfc/FSCAdapter$IFSCConnecter;
.super Lcom/felicanetworks/mfc/IFSC$Stub;
.source "FSCAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/FSCAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IFSCConnecter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfc/FSCAdapter;


# direct methods
.method constructor <init>(Lcom/felicanetworks/mfc/FSCAdapter;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/felicanetworks/mfc/FSCAdapter$IFSCConnecter;->this$0:Lcom/felicanetworks/mfc/FSCAdapter;

    invoke-direct {p0}, Lcom/felicanetworks/mfc/IFSC$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyError(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 228
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSCAdapter$IFSCConnecter;->this$0:Lcom/felicanetworks/mfc/FSCAdapter;

    # getter for: Lcom/felicanetworks/mfc/FSCAdapter;->fscEntity:Lcom/felicanetworks/mfc/FSC;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FSCAdapter;->access$0(Lcom/felicanetworks/mfc/FSCAdapter;)Lcom/felicanetworks/mfc/FSC;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/felicanetworks/mfc/FSC;->notifyError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 236
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x2

    const-string v2, "%s : catch Exception = "

    const-string v3, "700"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public notifyResult([B)V
    .locals 6
    .param p1, "result"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 208
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSCAdapter$IFSCConnecter;->this$0:Lcom/felicanetworks/mfc/FSCAdapter;

    # getter for: Lcom/felicanetworks/mfc/FSCAdapter;->fscEntity:Lcom/felicanetworks/mfc/FSC;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FSCAdapter;->access$0(Lcom/felicanetworks/mfc/FSCAdapter;)Lcom/felicanetworks/mfc/FSC;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/felicanetworks/mfc/FSC;->notifyResult([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 216
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x2

    const-string v2, "%s : catch Exception = "

    const-string v3, "700"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public start(Ljava/lang/String;Lcom/felicanetworks/mfc/DeviceList;Lcom/felicanetworks/mfc/IFSCEventListener;Lcom/felicanetworks/mfc/IFelica;)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "deviceList"    # Lcom/felicanetworks/mfc/DeviceList;
    .param p3, "fscEventListener"    # Lcom/felicanetworks/mfc/IFSCEventListener;
    .param p4, "felica"    # Lcom/felicanetworks/mfc/IFelica;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x4

    const-string v1, "%s, url=%s, deviceList=%s, fscEventListener=%s, felica=%s"

    .line 130
    const-string v2, "000"

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 129
    invoke-static/range {v0 .. v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    if-nez p4, :cond_0

    .line 133
    const/4 v0, 0x2

    const-string v1, "%s : felica == null"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 134
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/4 v1, 0x1

    .line 135
    const-string v2, "FSCAdapter$FSCConnecter.start() felica==null"

    .line 136
    const/4 v3, 0x2

    const/16 v4, 0x18

    .line 134
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;II)V

    .line 175
    :goto_0
    return-object v0

    .line 140
    :cond_0
    :try_start_0
    invoke-interface {p4}, Lcom/felicanetworks/mfc/IFelica;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 141
    .local v7, "binder":Landroid/os/IBinder;
    instance-of v0, v7, Lcom/felicanetworks/mfc/IFelica$Stub;

    if-eqz v0, :cond_2

    .line 142
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 143
    check-cast v7, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;

    .end local v7    # "binder":Landroid/os/IBinder;
    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->getFelica()Lcom/felicanetworks/mfc/Felica;

    move-result-object v9

    .line 144
    .local v9, "feliceInstance":Lcom/felicanetworks/mfc/Felica;
    if-eqz v9, :cond_1

    .line 145
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "002"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSCAdapter$IFSCConnecter;->this$0:Lcom/felicanetworks/mfc/FSCAdapter;

    # getter for: Lcom/felicanetworks/mfc/FSCAdapter;->fscEntity:Lcom/felicanetworks/mfc/FSC;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FSCAdapter;->access$0(Lcom/felicanetworks/mfc/FSCAdapter;)Lcom/felicanetworks/mfc/FSC;

    move-result-object v0

    invoke-virtual {v0, p1, v9, p3, p2}, Lcom/felicanetworks/mfc/FSC;->start(Ljava/lang/String;Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/IFSCEventListener;Lcom/felicanetworks/mfc/DeviceList;)V
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    const/4 v0, 0x4

    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 175
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>()V

    goto :goto_0

    .line 148
    :cond_1
    const/4 v0, 0x2

    :try_start_1
    const-string v1, "%s : felica == null"

    const-string v2, "701"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 149
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/4 v1, 0x1

    .line 150
    const-string v2, "FSCAdapter$FSCConnecter.start() felicaInstance==null"

    .line 151
    const/4 v3, 0x2

    .line 152
    const/4 v4, 0x1

    .line 149
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;II)V
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 162
    .end local v9    # "feliceInstance":Lcom/felicanetworks/mfc/Felica;
    :catch_0
    move-exception v8

    .line 163
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x2

    const-string v1, "%s : Catch FelicaException message = %s, ID = %s"

    const-string v2, "703"

    .line 164
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 163
    invoke-static/range {v0 .. v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/4 v1, 0x1

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    .line 165
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;II)V

    goto/16 :goto_0

    .line 155
    .end local v8    # "e":Lcom/felicanetworks/mfc/FelicaException;
    .restart local v7    # "binder":Landroid/os/IBinder;
    :cond_2
    const/4 v0, 0x2

    :try_start_2
    const-string v1, "%s : binder != IFelica.Stub"

    const-string v2, "702"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 156
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/4 v1, 0x1

    .line 157
    const-string v2, "FSCAdapter$FSCConnecter.start() binder != IFelica.Stub"

    .line 158
    const/4 v3, 0x1

    .line 159
    const/16 v4, 0x2f

    .line 156
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;II)V
    :try_end_2
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 167
    .end local v7    # "binder":Landroid/os/IBinder;
    :catch_1
    move-exception v8

    .line 168
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x2

    const-string v1, "%s : Catch IllegalArgumentException message = %s"

    const-string v2, "704"

    .line 169
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/16 v1, 0x20

    .line 171
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public stop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 188
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSCAdapter$IFSCConnecter;->this$0:Lcom/felicanetworks/mfc/FSCAdapter;

    # getter for: Lcom/felicanetworks/mfc/FSCAdapter;->fscEntity:Lcom/felicanetworks/mfc/FSC;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FSCAdapter;->access$0(Lcom/felicanetworks/mfc/FSCAdapter;)Lcom/felicanetworks/mfc/FSC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/FSC;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 196
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x2

    const-string v2, "%s : catch Exception = "

    const-string v3, "700"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
