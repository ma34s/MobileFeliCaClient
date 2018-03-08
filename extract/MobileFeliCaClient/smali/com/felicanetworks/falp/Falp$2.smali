.class Lcom/felicanetworks/falp/Falp$2;
.super Ljava/lang/Object;
.source "Falp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/felicanetworks/falp/Falp;->recvDataNotify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/falp/Falp;


# direct methods
.method constructor <init>(Lcom/felicanetworks/falp/Falp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/felicanetworks/falp/Falp$2;->this$0:Lcom/felicanetworks/falp/Falp;

    .line 2364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2371
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/falp/apldatamodel/DataFromChipToApl;->getInstance()Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;

    move-result-object v0

    .line 2374
    .local v0, "buf":Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->startEdit(I)I

    move-result v4

    .line 2375
    .local v4, "ret":I
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2376
    if-eqz v4, :cond_1

    .line 2378
    const-wide/16 v6, 0xa

    :try_start_1
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2375
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2402
    .end local v0    # "buf":Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;
    .end local v4    # "ret":I
    :catch_0
    move-exception v1

    .line 2403
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/felicanetworks/falp/Falp$2;->this$0:Lcom/felicanetworks/falp/Falp;

    invoke-virtual {v5}, Lcom/felicanetworks/falp/Falp;->cancel()I

    .line 2405
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_2
    return-void

    .line 2383
    .restart local v0    # "buf":Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;
    .restart local v4    # "ret":I
    :cond_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2388
    :try_start_5
    invoke-virtual {v0}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->getWriteBufferSize()I

    move-result v5

    invoke-virtual {v0}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->getReadBufferSize()I

    move-result v6

    sub-int v2, v5, v6

    .line 2389
    .local v2, "readSize":I
    iget-object v5, p0, Lcom/felicanetworks/falp/Falp$2;->this$0:Lcom/felicanetworks/falp/Falp;

    # getter for: Lcom/felicanetworks/falp/Falp;->mRecvBufferForApp:[B
    invoke-static {v5}, Lcom/felicanetworks/falp/Falp;->access$4(Lcom/felicanetworks/falp/Falp;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->read([B)I

    move-result v3

    .line 2390
    .local v3, "rest":I
    if-eqz v3, :cond_2

    .line 2392
    const/4 v5, 0x1

    const-string v6, "read buf size over."

    invoke-static {v5, v6}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 2394
    :cond_2
    invoke-virtual {v0}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->commit()I

    .line 2395
    iget-object v5, p0, Lcom/felicanetworks/falp/Falp$2;->this$0:Lcom/felicanetworks/falp/Falp;

    # getter for: Lcom/felicanetworks/falp/Falp;->mAppListener:Lcom/felicanetworks/falp/FalpListener;
    invoke-static {v5}, Lcom/felicanetworks/falp/Falp;->access$5(Lcom/felicanetworks/falp/Falp;)Lcom/felicanetworks/falp/FalpListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2397
    if-eqz v2, :cond_0

    .line 2398
    iget-object v5, p0, Lcom/felicanetworks/falp/Falp$2;->this$0:Lcom/felicanetworks/falp/Falp;

    # getter for: Lcom/felicanetworks/falp/Falp;->mAppListener:Lcom/felicanetworks/falp/FalpListener;
    invoke-static {v5}, Lcom/felicanetworks/falp/Falp;->access$5(Lcom/felicanetworks/falp/Falp;)Lcom/felicanetworks/falp/FalpListener;

    move-result-object v5

    iget-object v6, p0, Lcom/felicanetworks/falp/Falp$2;->this$0:Lcom/felicanetworks/falp/Falp;

    # getter for: Lcom/felicanetworks/falp/Falp;->mRecvBufferForApp:[B
    invoke-static {v6}, Lcom/felicanetworks/falp/Falp;->access$4(Lcom/felicanetworks/falp/Falp;)[B

    move-result-object v6

    invoke-interface {v5, v6, v2}, Lcom/felicanetworks/falp/FalpListener;->recvDataNotify([BI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 2379
    .end local v2    # "readSize":I
    .end local v3    # "rest":I
    :catch_1
    move-exception v5

    goto :goto_1
.end method
