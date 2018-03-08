.class Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;
.super Lcom/felicanetworks/mfc/IFelica$Stub;
.source "FelicaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/FelicaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IFelicaConnecter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfc/FelicaAdapter;


# direct methods
.method constructor <init>(Lcom/felicanetworks/mfc/FelicaAdapter;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    invoke-direct {p0}, Lcom/felicanetworks/mfc/IFelica$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public activateFelica([Ljava/lang/String;Lcom/felicanetworks/mfc/IFelicaEventListener;)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 10
    .param p1, "permitList"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/felicanetworks/mfc/IFelicaEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x27

    const/4 v4, 0x4

    const/4 v8, 0x1

    const/4 v0, 0x2

    .line 1075
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1078
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1079
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1080
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/felicanetworks/mfc/Felica;->activateFelica([Ljava/lang/String;Lcom/felicanetworks/mfc/IFelicaEventListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1111
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1112
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>()V

    :goto_0
    return-object v0

    .line 1082
    :catch_0
    move-exception v7

    .line 1083
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "%s : Catch IllegalArgumentException message = %s"

    const-string v2, "700"

    .line 1084
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1083
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1085
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/16 v1, 0x20

    .line 1086
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1085
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 1087
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 1090
    .local v7, "e":Lcom/felicanetworks/mfc/FelicaException;
    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v1

    if-eq v1, v9, :cond_1

    .line 1091
    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_2

    .line 1094
    :cond_1
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d otherAppPID = %s"

    .line 1095
    const-string v2, "801"

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getOtherAppInfo()Lcom/felicanetworks/mfc/AppInfo;

    move-result-object v6

    .line 1092
    invoke-static/range {v0 .. v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1097
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    .line 1098
    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    .line 1099
    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getOtherAppInfo()Lcom/felicanetworks/mfc/AppInfo;

    move-result-object v5

    move v1, v8

    move v4, v9

    .line 1097
    invoke-direct/range {v0 .. v5}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;IILcom/felicanetworks/mfc/AppInfo;)V

    goto :goto_0

    .line 1103
    :cond_2
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 1104
    const-string v2, "802"

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getOtherAppInfo()Lcom/felicanetworks/mfc/AppInfo;

    move-result-object v6

    .line 1101
    invoke-static/range {v0 .. v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1105
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    .line 1106
    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    .line 1107
    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    move v1, v8

    .line 1105
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;IIII)V

    goto/16 :goto_0
.end method

.method public cancelOffline()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 1256
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1258
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1259
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1260
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Felica;->cancelOffline()V
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1271
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1272
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>()V

    :goto_0
    return-object v0

    .line 1262
    :catch_0
    move-exception v8

    .line 1264
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x2

    .line 1265
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 1266
    const-string v2, "700"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1267
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1263
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1268
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/4 v1, 0x1

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1269
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 1268
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public checkOnlineAccess()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x2

    .line 1164
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1167
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1168
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1169
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Felica;->checkOnlineAccess()V
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1186
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1187
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>()V

    :goto_0
    return-object v0

    .line 1171
    :catch_0
    move-exception v8

    .line 1174
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 1175
    const-string v2, "701"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1176
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1172
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1177
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/4 v1, 0x1

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1178
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 1177
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1179
    .end local v8    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catch_1
    move-exception v8

    .line 1180
    .local v8, "e":Ljava/lang/NumberFormatException;
    const-string v1, "%s : Catch IllegalArgumentException message = %s"

    const-string v2, "700"

    .line 1181
    invoke-virtual {v8}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1180
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1182
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/16 v1, 0x22

    .line 1183
    invoke-virtual {v8}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1182
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public close()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 188
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Felica;->close()V
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 204
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>()V

    :goto_0
    return-object v0

    .line 194
    :catch_0
    move-exception v8

    .line 196
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x2

    .line 197
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 198
    const-string v2, "700"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 199
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 195
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/4 v1, 0x1

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 200
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public executeFelicaCommand([BII)Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .locals 9
    .param p1, "commandPacket"    # [B
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 1292
    const-string v0, "%s"

    const-string v1, "START"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1295
    const/4 v8, 0x0

    .line 1298
    .local v8, "responsePacket":[B
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1299
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "call Felica.executeFelicaCommand()"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1300
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/felicanetworks/mfc/Felica;->executeFelicaCommand([BII)[B
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1310
    :cond_0
    const-string v0, "%s"

    const-string v1, "END"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1311
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;

    invoke-direct {v0, v8}, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;-><init>([B)V

    :goto_0
    return-object v0

    .line 1302
    :catch_0
    move-exception v7

    .line 1304
    .local v7, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x2

    .line 1305
    const-string v1, "catch FelicaException id = %d type = %d"

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1303
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1306
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;

    const/4 v1, 0x1

    .line 1307
    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    .line 1308
    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 1306
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public getBlockCountInformation([III)Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;
    .locals 10
    .param p1, "nodeCodeList"    # [I
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x2

    .line 222
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 225
    const/4 v8, 0x0

    .line 228
    .local v8, "blockCountInformation":[Lcom/felicanetworks/mfc/BlockCountInformation;
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 229
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 230
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/felicanetworks/mfc/Felica;->getBlockCountInformation([III)[Lcom/felicanetworks/mfc/BlockCountInformation;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 249
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 250
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;

    invoke-direct {v0, v8}, Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;-><init>([Lcom/felicanetworks/mfc/BlockCountInformation;)V

    :goto_0
    return-object v0

    .line 233
    :catch_0
    move-exception v9

    .line 234
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "%s : Catch IllegalArgumentException message = %s"

    const-string v2, "700"

    .line 235
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 234
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 236
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;

    .line 237
    const/16 v1, 0x20

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 238
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v9

    .line 241
    .local v9, "e":Lcom/felicanetworks/mfc/FelicaException;
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 242
    const-string v2, "701"

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 243
    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 239
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 244
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;

    .line 245
    const/4 v1, 0x1

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    .line 246
    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 244
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public getContainerId(II)Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .locals 10
    .param p1, "timeout"    # I
    .param p2, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x2

    .line 266
    const/4 v1, 0x4

    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 269
    const/4 v8, 0x0

    .line 272
    .local v8, "containerId":[B
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 273
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 274
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/felicanetworks/mfc/Felica;->getContainerId(II)[B
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 287
    :cond_0
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 288
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;

    invoke-direct {v0, v8}, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;-><init>([B)V

    :goto_0
    return-object v0

    .line 276
    :catch_0
    move-exception v9

    .line 279
    .local v9, "e":Lcom/felicanetworks/mfc/FelicaException;
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 280
    const-string v2, "700"

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 281
    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 277
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;

    const/4 v1, 0x1

    .line 283
    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    .line 284
    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 282
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public getContainerIssueInformation(II)Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .locals 10
    .param p1, "timeout"    # I
    .param p2, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 304
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 307
    const/4 v8, 0x0

    .line 310
    .local v8, "containerIssueInfo":[B
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/felicanetworks/mfc/Felica;->getContainerIssueInformation(II)[B
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 324
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 325
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;

    invoke-direct {v0, v8}, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;-><init>([B)V

    :goto_0
    return-object v0

    .line 314
    :catch_0
    move-exception v9

    .line 316
    .local v9, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x2

    .line 317
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 318
    const-string v2, "700"

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 319
    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 315
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 320
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;

    const/4 v1, 0x1

    .line 321
    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    .line 322
    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 320
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public getFelica()Lcom/felicanetworks/mfc/Felica;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 175
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 176
    const-string v0, "%s : felicaEntity = %s"

    const-string v1, "000"

    iget-object v2, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v2}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    return-object v0
.end method

.method public getICCode()Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 336
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 339
    const/4 v9, 0x0

    .line 342
    .local v9, "icCode":[B
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Felica;->getICCode()[B
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 357
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 358
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;

    invoke-direct {v0, v9}, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;-><init>([B)V

    :goto_0
    return-object v0

    .line 346
    :catch_0
    move-exception v8

    .line 348
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x2

    .line 349
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 350
    const-string v2, "700"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 351
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 347
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 352
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;

    const/4 v1, 0x1

    .line 353
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    .line 354
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 352
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public getIDm()Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 369
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 372
    const/4 v9, 0x0

    .line 375
    .local v9, "idm":[B
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 377
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Felica;->getIDm()[B
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 390
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 391
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;

    invoke-direct {v0, v9}, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;-><init>([B)V

    :goto_0
    return-object v0

    .line 379
    :catch_0
    move-exception v8

    .line 381
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x2

    .line 382
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 383
    const-string v2, "700"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 384
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 380
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 385
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;

    const/4 v1, 0x1

    .line 386
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    .line 387
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 385
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public getInterface()Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 402
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 405
    const/4 v9, 0x0

    .line 408
    .local v9, "interfaceKind":I
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Felica;->getInterface()I
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 423
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 424
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoInt;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/felicanetworks/mfc/FelicaResultInfoInt;-><init>(Ljava/lang/Integer;)V

    :goto_0
    return-object v0

    .line 412
    :catch_0
    move-exception v8

    .line 414
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x2

    .line 415
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 416
    const-string v2, "700"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 417
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 413
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 418
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoInt;

    const/4 v1, 0x1

    .line 419
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    .line 420
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 418
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfoInt;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public getKeyVersion(III)Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    .locals 10
    .param p1, "serviceCode"    # I
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x2

    .line 442
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 445
    const/4 v9, 0x0

    .line 448
    .local v9, "keyVersion":I
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 449
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 450
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/felicanetworks/mfc/Felica;->getKeyVersion(III)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    .line 467
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 468
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoInt;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/felicanetworks/mfc/FelicaResultInfoInt;-><init>(Ljava/lang/Integer;)V

    :goto_0
    return-object v0

    .line 452
    :catch_0
    move-exception v8

    .line 453
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "%s : Catch IllegalArgumentException message = %s"

    const-string v2, "700"

    .line 454
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 453
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 455
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoInt;

    const/16 v1, 0x20

    .line 456
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 455
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaResultInfoInt;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 457
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 460
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 461
    const-string v2, "701"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 462
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 458
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 463
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoInt;

    const/4 v1, 0x1

    .line 464
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    .line 465
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 463
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfoInt;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public getNodeInformation(III)Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    .locals 10
    .param p1, "parentAreaCode"    # I
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x2

    .line 486
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 489
    const/4 v9, 0x0

    .line 492
    .local v9, "nodeInformation":Lcom/felicanetworks/mfc/NodeInformation;
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 493
    const/4 v1, 0x6

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 494
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/felicanetworks/mfc/Felica;->getNodeInformation(III)Lcom/felicanetworks/mfc/NodeInformation;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 513
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 514
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;

    invoke-direct {v0, v9}, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;-><init>(Lcom/felicanetworks/mfc/NodeInformation;)V

    :goto_0
    return-object v0

    .line 497
    :catch_0
    move-exception v8

    .line 498
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "%s : Catch IllegalArgumentException message = %s"

    const-string v2, "700"

    .line 499
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 498
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 500
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;

    .line 501
    const/16 v1, 0x20

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 500
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 502
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 505
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 506
    const-string v2, "701"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 507
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 503
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 508
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;

    const/4 v1, 0x1

    .line 509
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    .line 510
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 508
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public getPrivacyNodeInformation(III)Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    .locals 10
    .param p1, "parentAreaCode"    # I
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x2

    .line 532
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 535
    const/4 v9, 0x0

    .line 538
    .local v9, "nodeInformation":Lcom/felicanetworks/mfc/NodeInformation;
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 539
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 540
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/felicanetworks/mfc/Felica;->getPrivacyNodeInformation(III)Lcom/felicanetworks/mfc/NodeInformation;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 559
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 560
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;

    invoke-direct {v0, v9}, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;-><init>(Lcom/felicanetworks/mfc/NodeInformation;)V

    :goto_0
    return-object v0

    .line 543
    :catch_0
    move-exception v8

    .line 544
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "%s : Catch IllegalArgumentException message = %s"

    const-string v2, "700"

    .line 545
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 544
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 546
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;

    .line 547
    const/16 v1, 0x20

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 546
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 548
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 551
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 552
    const-string v2, "701"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 553
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 549
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 554
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;

    const/4 v1, 0x1

    .line 555
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    .line 556
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 554
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public getRFSState()Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 571
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 574
    const/4 v9, 0x0

    .line 577
    .local v9, "rfsState":Z
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 578
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 579
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Felica;->getRFSState()Z
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 592
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 593
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;-><init>(Ljava/lang/Boolean;)V

    :goto_0
    return-object v0

    .line 581
    :catch_0
    move-exception v8

    .line 583
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x2

    .line 584
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 585
    const-string v2, "700"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 586
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 582
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 587
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;

    const/4 v1, 0x1

    .line 588
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    .line 589
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 587
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public getSelectTimeout()Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 1226
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1227
    const/4 v9, 0x0

    .line 1229
    .local v9, "info":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1230
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1231
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Felica;->getSelectTimeout()I

    move-result v11

    .line 1232
    .local v11, "ret":I
    new-instance v10, Lcom/felicanetworks/mfc/FelicaResultInfoInt;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/felicanetworks/mfc/FelicaResultInfoInt;-><init>(Ljava/lang/Integer;)V
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9    # "info":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    .local v10, "info":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    move-object v9, v10

    .line 1244
    .end local v10    # "info":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    .end local v11    # "ret":I
    .restart local v9    # "info":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    move-object v0, v9

    .line 1245
    :goto_0
    return-object v0

    .line 1234
    :catch_0
    move-exception v8

    .line 1236
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x2

    .line 1237
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 1238
    const-string v2, "700"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1239
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1235
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1240
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoInt;

    const/4 v1, 0x1

    .line 1241
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    .line 1242
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 1240
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfoInt;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public getSystemCode()Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 604
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 607
    const/4 v9, 0x0

    .line 610
    .local v9, "systemCode":I
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 612
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Felica;->getSystemCode()I
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 625
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 626
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoInt;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/felicanetworks/mfc/FelicaResultInfoInt;-><init>(Ljava/lang/Integer;)V

    :goto_0
    return-object v0

    .line 614
    :catch_0
    move-exception v8

    .line 616
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x2

    .line 617
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 618
    const-string v2, "700"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 619
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 615
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 620
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoInt;

    const/4 v1, 0x1

    .line 621
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    .line 622
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 620
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfoInt;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public getSystemCodeList(II)Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;
    .locals 10
    .param p1, "timeout"    # I
    .param p2, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 642
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 645
    const/4 v9, 0x0

    .line 648
    .local v9, "systemCodeList":[I
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 649
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 650
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/felicanetworks/mfc/Felica;->getSystemCodeList(II)[I
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 663
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 664
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;

    invoke-direct {v0, v9}, Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;-><init>([I)V

    :goto_0
    return-object v0

    .line 652
    :catch_0
    move-exception v8

    .line 654
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x2

    .line 655
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 656
    const-string v2, "700"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 657
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 653
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 658
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;

    const/4 v1, 0x1

    .line 659
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    .line 660
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 658
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public inactivateFelica()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 675
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 678
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 679
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 680
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Felica;->inactivateFelica()V
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 693
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>()V

    :goto_0
    return-object v0

    .line 682
    :catch_0
    move-exception v8

    .line 684
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x2

    .line 685
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 686
    const-string v2, "700"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 687
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 683
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 688
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/4 v1, 0x1

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 689
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 688
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public open()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 704
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 706
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 707
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 708
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Felica;->open()V
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 721
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>()V

    :goto_0
    return-object v0

    .line 710
    :catch_0
    move-exception v8

    .line 712
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x2

    .line 713
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 714
    const-string v2, "700"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 715
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 711
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 716
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/4 v1, 0x1

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 717
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 716
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public push(Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 9
    .param p1, "pushSegmentParcelableWrapper"    # Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x2

    .line 995
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 998
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 999
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1000
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    invoke-virtual {p1}, Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;->getPushSegment()Lcom/felicanetworks/mfc/PushSegment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/mfc/Felica;->push(Lcom/felicanetworks/mfc/PushSegment;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1017
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1018
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>()V

    :goto_0
    return-object v0

    .line 1002
    :catch_0
    move-exception v8

    .line 1003
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "%s : Catch IllegalArgumentException message = %s"

    const-string v2, "700"

    .line 1004
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1003
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1005
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/16 v1, 0x20

    .line 1006
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1005
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 1007
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 1010
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 1011
    const-string v2, "701"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1012
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1008
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1013
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/4 v1, 0x1

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1014
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 1013
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public read(Lcom/felicanetworks/mfc/BlockList;II)Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;
    .locals 10
    .param p1, "blockList"    # Lcom/felicanetworks/mfc/BlockList;
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x2

    .line 739
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 742
    const/4 v8, 0x0

    .line 745
    .local v8, "data":[Lcom/felicanetworks/mfc/Data;
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 746
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 747
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/felicanetworks/mfc/Felica;->read(Lcom/felicanetworks/mfc/BlockList;II)[Lcom/felicanetworks/mfc/Data;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 765
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 766
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;

    invoke-direct {v0, v8}, Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;-><init>([Lcom/felicanetworks/mfc/Data;)V

    :goto_0
    return-object v0

    .line 749
    :catch_0
    move-exception v9

    .line 750
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "%s : Catch IllegalArgumentException message = %s"

    const-string v2, "700"

    .line 751
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 750
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 752
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;

    .line 753
    const/16 v1, 0x20

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 752
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 754
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v9

    .line 757
    .local v9, "e":Lcom/felicanetworks/mfc/FelicaException;
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 758
    const-string v2, "701"

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 759
    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 755
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 760
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;

    const/4 v1, 0x1

    .line 761
    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    .line 762
    invoke-virtual {v9}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 760
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public reset()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 777
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 780
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 781
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 782
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Felica;->reset()V
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 795
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>()V

    :goto_0
    return-object v0

    .line 784
    :catch_0
    move-exception v8

    .line 786
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x2

    .line 787
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 788
    const-string v2, "700"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 789
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 785
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 790
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/4 v1, 0x1

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 791
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 790
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public select(I)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 9
    .param p1, "systemCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x2

    .line 810
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 813
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 814
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 815
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/felicanetworks/mfc/Felica;->select(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_1

    .line 832
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 833
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>()V

    :goto_0
    return-object v0

    .line 817
    :catch_0
    move-exception v8

    .line 818
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "%s : Catch IllegalArgumentException message = %s"

    const-string v2, "700"

    .line 819
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 818
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 820
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/16 v1, 0x20

    .line 821
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 820
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 822
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 825
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 826
    const-string v2, "701"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 827
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 823
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 828
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/4 v1, 0x1

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 829
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 828
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public selectWithTarget(II)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 9
    .param p1, "target"    # I
    .param p2, "systemCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x2

    .line 852
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 855
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 856
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 857
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/felicanetworks/mfc/Felica;->select(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_1

    .line 874
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 875
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>()V

    :goto_0
    return-object v0

    .line 859
    :catch_0
    move-exception v8

    .line 860
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "%s : Catch IllegalArgumentException message = %s"

    const-string v2, "700"

    .line 861
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 860
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 862
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/16 v1, 0x20

    .line 863
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 862
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 864
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 867
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 868
    const-string v2, "701"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 869
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 865
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 870
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/4 v1, 0x1

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 871
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 870
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public setNodeCodeSize(III)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 9
    .param p1, "nodeCodeSize"    # I
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x2

    .line 917
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 920
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 921
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 922
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/felicanetworks/mfc/Felica;->setNodeCodeSize(III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_1

    .line 939
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 940
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>()V

    :goto_0
    return-object v0

    .line 924
    :catch_0
    move-exception v8

    .line 925
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "%s : Catch IllegalArgumentException message = %s"

    const-string v2, "700"

    .line 926
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 925
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 927
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/16 v1, 0x20

    .line 928
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 927
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 929
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 932
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 933
    const-string v2, "701"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 934
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 930
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 935
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/4 v1, 0x1

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 936
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 935
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public setPrivacy([Lcom/felicanetworks/mfc/PrivacySettingData;II)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 9
    .param p1, "privacySettingData"    # [Lcom/felicanetworks/mfc/PrivacySettingData;
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x2

    .line 1036
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1039
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1040
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1041
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/felicanetworks/mfc/Felica;->setPrivacy([Lcom/felicanetworks/mfc/PrivacySettingData;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1058
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1059
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>()V

    :goto_0
    return-object v0

    .line 1043
    :catch_0
    move-exception v8

    .line 1044
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "%s : Catch IllegalArgumentException message = %s"

    const-string v2, "700"

    .line 1045
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1044
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1046
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/16 v1, 0x20

    .line 1047
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1046
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 1048
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 1051
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 1052
    const-string v2, "701"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1053
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1049
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1054
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/4 v1, 0x1

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1055
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 1054
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public setPushNotificationListener(Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;Ljava/lang/String;)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 9
    .param p1, "listener"    # Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;
    .param p2, "appIdentificationCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x2

    .line 1130
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1133
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1134
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1135
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/felicanetworks/mfc/Felica;->setPushNotificationListener(Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1152
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1153
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>()V

    :goto_0
    return-object v0

    .line 1137
    :catch_0
    move-exception v8

    .line 1138
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "%s : Catch IllegalArgumentException message = %s"

    const-string v2, "700"

    .line 1139
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1138
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1140
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/16 v1, 0x20

    .line 1141
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1140
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 1142
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 1145
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 1146
    const-string v2, "701"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1147
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1143
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1148
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/4 v1, 0x1

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1149
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 1148
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public setSelectTimeout(I)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 9
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 1199
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1201
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1202
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1203
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfc/Felica;->setSelectTimeout(I)V
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1214
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1215
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>()V

    :goto_0
    return-object v0

    .line 1205
    :catch_0
    move-exception v8

    .line 1207
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v0, 0x2

    .line 1208
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 1209
    const-string v2, "700"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1210
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1206
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1211
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/4 v1, 0x1

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1212
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 1211
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public write(Lcom/felicanetworks/mfc/BlockDataList;II)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 9
    .param p1, "blockDataList"    # Lcom/felicanetworks/mfc/BlockDataList;
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x2

    .line 958
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 961
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 962
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 963
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/felicanetworks/mfc/Felica;->write(Lcom/felicanetworks/mfc/BlockDataList;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_1

    .line 980
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 981
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>()V

    :goto_0
    return-object v0

    .line 965
    :catch_0
    move-exception v8

    .line 966
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "%s : Catch IllegalArgumentException message = %s"

    const-string v2, "700"

    .line 967
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 966
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 968
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/16 v1, 0x20

    .line 969
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 968
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 970
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 973
    .local v8, "e":Lcom/felicanetworks/mfc/FelicaException;
    const-string v1, "%s : catch FelicaException id = %d message = %s type = %d statusFlag1 = %d statusFlag2 = %d"

    .line 974
    const-string v2, "701"

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 975
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 971
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 976
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo;

    const/4 v1, 0x1

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 977
    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/FelicaException;->getStatusFlag2()I

    move-result v6

    .line 976
    invoke-direct/range {v0 .. v6}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method
