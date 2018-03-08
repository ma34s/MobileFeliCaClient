.class public Lcom/felicanetworks/mfc/FSCAdapter;
.super Landroid/app/Service;
.source "FSCAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfc/FSCAdapter$IFSCConnecter;
    }
.end annotation


# instance fields
.field private fscEntity:Lcom/felicanetworks/mfc/FSC;

.field private final mBinder:Lcom/felicanetworks/mfc/FSCAdapter$IFSCConnecter;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 102
    new-instance v0, Lcom/felicanetworks/mfc/FSCAdapter$IFSCConnecter;

    invoke-direct {v0, p0}, Lcom/felicanetworks/mfc/FSCAdapter$IFSCConnecter;-><init>(Lcom/felicanetworks/mfc/FSCAdapter;)V

    iput-object v0, p0, Lcom/felicanetworks/mfc/FSCAdapter;->mBinder:Lcom/felicanetworks/mfc/FSCAdapter$IFSCConnecter;

    .line 37
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Lcom/felicanetworks/mfc/FSC;->getInstance()Lcom/felicanetworks/mfc/FSC;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/FSCAdapter;->fscEntity:Lcom/felicanetworks/mfc/FSC;

    .line 39
    const-string v0, "%s : fscEntry = %s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/FSCAdapter;->fscEntity:Lcom/felicanetworks/mfc/FSC;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/felicanetworks/mfc/FSCAdapter;)Lcom/felicanetworks/mfc/FSC;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSCAdapter;->fscEntity:Lcom/felicanetworks/mfc/FSC;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x4

    .line 51
    const-string v0, "%s : intent = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/felicanetworks/mfc/FSCAdapter;->mBinder:Lcom/felicanetworks/mfc/FSCAdapter$IFSCConnecter;

    return-object v0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 87
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 88
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSCAdapter;->fscEntity:Lcom/felicanetworks/mfc/FSC;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/FSC;->doStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 98
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 95
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

    .line 64
    const-string v1, "%s : intent = %s"

    const-string v2, "000"

    invoke-static {v5, v1, v2, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSCAdapter;->fscEntity:Lcom/felicanetworks/mfc/FSC;

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/FSC;->doStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 76
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v1

    return v1

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x2

    const-string v2, "%s : catch Exception = "

    const-string v3, "700"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
