.class Lcom/felicanetworks/mfc/FelicaAdapter$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FelicaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/FelicaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfc/FelicaAdapter;


# direct methods
.method constructor <init>(Lcom/felicanetworks/mfc/FelicaAdapter;)V
    .locals 0

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/felicanetworks/mfc/FelicaAdapter$PackageReceiver;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x4

    const/4 v5, 0x0

    const/4 v10, 0x6

    .line 1329
    const-string v7, "%s"

    const-string v8, "000"

    invoke-static {v12, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1331
    const/4 v0, 0x0

    .line 1332
    .local v0, "appInfo":Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 1333
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 1334
    .local v3, "pkg":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1335
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v7, "android.intent.extra.UID"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1337
    .local v5, "uid":I
    :cond_0
    const-string v7, "%s pkg=%s uid=%d"

    const-string v8, "001"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10, v7, v8, v3, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1340
    iget-object v7, p0, Lcom/felicanetworks/mfc/FelicaAdapter$PackageReceiver;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v7}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v7

    if-nez v7, :cond_2

    .line 1341
    const-string v7, "%s"

    const-string v8, "995"

    invoke-static {v10, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1380
    :goto_1
    return-void

    .line 1333
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v5    # "uid":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1345
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v5    # "uid":I
    :cond_2
    iget-object v7, p0, Lcom/felicanetworks/mfc/FelicaAdapter$PackageReceiver;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v7}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v8

    monitor-enter v8

    .line 1347
    :try_start_0
    iget-object v7, p0, Lcom/felicanetworks/mfc/FelicaAdapter$PackageReceiver;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v7}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v7

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/Felica;->getActivatedApp()Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    move-result-object v0

    .line 1348
    if-nez v0, :cond_3

    .line 1349
    const/4 v7, 0x6

    const-string v9, "%s"

    const-string v10, "996"

    invoke-static {v7, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1350
    monitor-exit v8

    goto :goto_1

    .line 1345
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1354
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->getUID()I

    move-result v7

    if-eq v7, v5, :cond_4

    .line 1355
    const/4 v7, 0x6

    const-string v9, "%s"

    const-string v10, "997"

    invoke-static {v7, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1356
    monitor-exit v8

    goto :goto_1

    .line 1360
    :cond_4
    iget-object v7, p0, Lcom/felicanetworks/mfc/FelicaAdapter$PackageReceiver;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v7}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v7

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/Felica;->isAliveProcess()Z

    move-result v4

    .line 1361
    .local v4, "res":Z
    if-eqz v4, :cond_5

    .line 1362
    const/4 v7, 0x6

    const-string v9, "%s"

    const-string v10, "998"

    invoke-static {v7, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1363
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1368
    :cond_5
    :try_start_2
    iget-object v7, p0, Lcom/felicanetworks/mfc/FelicaAdapter$PackageReceiver;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v7}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/felicanetworks/mfc/Felica;->doClose(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1373
    :goto_2
    :try_start_3
    iget-object v7, p0, Lcom/felicanetworks/mfc/FelicaAdapter$PackageReceiver;->this$0:Lcom/felicanetworks/mfc/FelicaAdapter;

    # getter for: Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;
    invoke-static {v7}, Lcom/felicanetworks/mfc/FelicaAdapter;->access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/felicanetworks/mfc/Felica;->doInactivateFelica(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1345
    :goto_3
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1379
    const-string v7, "%s"

    const-string v8, "999"

    invoke-static {v12, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1369
    :catch_0
    move-exception v2

    .line 1370
    .local v2, "e":Ljava/lang/Exception;
    const/4 v7, 0x1

    :try_start_5
    const-string v9, "%s %s"

    const-string v10, "700"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v9, v10, v11}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 1374
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1375
    .restart local v2    # "e":Ljava/lang/Exception;
    const/4 v7, 0x1

    const-string v9, "%s %s"

    const-string v10, "701"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v9, v10, v11}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method
