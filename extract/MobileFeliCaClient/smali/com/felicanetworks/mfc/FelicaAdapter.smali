.class public Lcom/felicanetworks/mfc/FelicaAdapter;
.super Landroid/app/Service;
.source "FelicaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;,
        Lcom/felicanetworks/mfc/FelicaAdapter$PackageReceiver;
    }
.end annotation


# instance fields
.field private felicaEntity:Lcom/felicanetworks/mfc/Felica;

.field felicaEventListener:Lcom/felicanetworks/mfc/FelicaEventListener;

.field private final mBinder:Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;

.field private packageReceiver:Lcom/felicanetworks/mfc/FelicaAdapter$PackageReceiver;

.field pushAppNotificationListener:Lcom/felicanetworks/mfc/PushAppNotificationListener;

.field private statusFlag1:I

.field private statusFlag2:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    new-instance v0, Lcom/felicanetworks/mfc/FelicaAdapter$PackageReceiver;

    invoke-direct {v0, p0}, Lcom/felicanetworks/mfc/FelicaAdapter$PackageReceiver;-><init>(Lcom/felicanetworks/mfc/FelicaAdapter;)V

    iput-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter;->packageReceiver:Lcom/felicanetworks/mfc/FelicaAdapter$PackageReceiver;

    .line 152
    new-instance v0, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;

    invoke-direct {v0, p0}, Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;-><init>(Lcom/felicanetworks/mfc/FelicaAdapter;)V

    iput-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter;->mBinder:Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;

    .line 155
    new-instance v0, Lcom/felicanetworks/mfc/FelicaEventListenerAdapter;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaEventListenerAdapter;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEventListener:Lcom/felicanetworks/mfc/FelicaEventListener;

    .line 157
    new-instance v0, Lcom/felicanetworks/mfc/FelicaPushAppNotificationListenerAdapter;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaPushAppNotificationListenerAdapter;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter;->pushAppNotificationListener:Lcom/felicanetworks/mfc/PushAppNotificationListener;

    .line 56
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Lcom/felicanetworks/mfc/Felica;->getInstance()Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;

    .line 58
    const-string v0, "%s : felicaEntity = %s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/felicanetworks/mfc/FelicaAdapter;)Lcom/felicanetworks/mfc/Felica;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x4

    .line 69
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 70
    const-string v0, "%s : mBinder = %s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/FelicaAdapter;->mBinder:Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaAdapter;->mBinder:Lcom/felicanetworks/mfc/FelicaAdapter$IFelicaConnecter;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 134
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 136
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v1, p0}, Lcom/felicanetworks/mfc/Felica;->setContext(Landroid/content/Context;)V

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, "packageFilt":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter;->packageReceiver:Lcom/felicanetworks/mfc/FelicaAdapter$PackageReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/felicanetworks/mfc/FelicaAdapter;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 109
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;

    if-eqz v1, :cond_0

    .line 112
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 113
    iget-object v2, p0, Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :try_start_1
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 115
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/felicanetworks/mfc/Felica;->doClose(Z)V

    .line 116
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/felicanetworks/mfc/Felica;->doInactivateFelica(Z)V

    .line 113
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter;->packageReceiver:Lcom/felicanetworks/mfc/FelicaAdapter$PackageReceiver;

    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfc/FelicaAdapter;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 128
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 129
    return-void

    .line 113
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x2

    const-string v2, "%s : catch Exception = "

    const-string v3, "700"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x4

    .line 82
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;

    if-eqz v1, :cond_0

    .line 85
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 86
    iget-object v2, p0, Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :try_start_1
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V

    .line 88
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/felicanetworks/mfc/Felica;->doClose(Z)V

    .line 89
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaAdapter;->felicaEntity:Lcom/felicanetworks/mfc/Felica;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/felicanetworks/mfc/Felica;->doInactivateFelica(Z)V

    .line 86
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :cond_0
    :goto_0
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 98
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v1

    return v1

    .line 86
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 92
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x2

    const-string v2, "%s : catch Exception = "

    const-string v3, "700"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
