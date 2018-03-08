.class Lcom/felicanetworks/mfc/FSC$2;
.super Ljava/lang/Object;
.source "FSC.java"

# interfaces
.implements Lcom/felicanetworks/mfc/FSCEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/FSC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/mfc/FSC;


# direct methods
.method constructor <init>(Lcom/felicanetworks/mfc/FSC;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/felicanetworks/mfc/FSC$2;->this$0:Lcom/felicanetworks/mfc/FSC;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public errorOccurred(ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x6

    .line 251
    const-string v1, "%s type=%d,message=%s"

    const-string v2, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v1, v2, v3, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC$2;->this$0:Lcom/felicanetworks/mfc/FSC;

    # getter for: Lcom/felicanetworks/mfc/FSC;->fscEventListener:Lcom/felicanetworks/mfc/IFSCEventListener;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FSC;->access$3(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/IFSCEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/felicanetworks/mfc/IFSCEventListener;->errorOccurred(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC$2;->this$0:Lcom/felicanetworks/mfc/FSC;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/felicanetworks/mfc/FSC;->access$4(Lcom/felicanetworks/mfc/FSC;Z)V

    .line 262
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 263
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    const-string v2, "%s"

    const-string v3, "800"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public finished(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x6

    .line 230
    const-string v1, "%s status=%d"

    const-string v2, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC$2;->this$0:Lcom/felicanetworks/mfc/FSC;

    # getter for: Lcom/felicanetworks/mfc/FSC;->fscEventListener:Lcom/felicanetworks/mfc/IFSCEventListener;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FSC;->access$3(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/IFSCEventListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/felicanetworks/mfc/IFSCEventListener;->finished(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC$2;->this$0:Lcom/felicanetworks/mfc/FSC;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/felicanetworks/mfc/FSC;->access$4(Lcom/felicanetworks/mfc/FSC;Z)V

    .line 241
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 242
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    const-string v2, "%s"

    const-string v3, "800"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public operationRequested(ILjava/lang/String;[B)[B
    .locals 6
    .param p1, "deviceID"    # I
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x6

    .line 280
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC$2;->this$0:Lcom/felicanetworks/mfc/FSC;

    # getter for: Lcom/felicanetworks/mfc/FSC;->fscEventListener:Lcom/felicanetworks/mfc/IFSCEventListener;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FSC;->access$3(Lcom/felicanetworks/mfc/FSC;)Lcom/felicanetworks/mfc/IFSCEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/felicanetworks/mfc/IFSCEventListener;->operationRequested(ILjava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC$2;->this$0:Lcom/felicanetworks/mfc/FSC;

    # getter for: Lcom/felicanetworks/mfc/FSC;->operationRequestLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FSC;->access$5(Lcom/felicanetworks/mfc/FSC;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 291
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC$2;->this$0:Lcom/felicanetworks/mfc/FSC;

    # getter for: Lcom/felicanetworks/mfc/FSC;->killed:Z
    invoke-static {v1}, Lcom/felicanetworks/mfc/FSC;->access$6(Lcom/felicanetworks/mfc/FSC;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC$2;->this$0:Lcom/felicanetworks/mfc/FSC;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/felicanetworks/mfc/FSC;->access$7(Lcom/felicanetworks/mfc/FSC;Z)V

    .line 289
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC$2;->this$0:Lcom/felicanetworks/mfc/FSC;

    # getter for: Lcom/felicanetworks/mfc/FSC;->operationRequestSuccessed:Z
    invoke-static {v1}, Lcom/felicanetworks/mfc/FSC;->access$8(Lcom/felicanetworks/mfc/FSC;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 305
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC$2;->this$0:Lcom/felicanetworks/mfc/FSC;

    # getter for: Lcom/felicanetworks/mfc/FSC;->operationRequestResult:[B
    invoke-static {v1}, Lcom/felicanetworks/mfc/FSC;->access$9(Lcom/felicanetworks/mfc/FSC;)[B

    move-result-object v1

    return-object v1

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "%s"

    const-string v2, "800"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 293
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/felicanetworks/mfc/FSC$2;->this$0:Lcom/felicanetworks/mfc/FSC;

    # getter for: Lcom/felicanetworks/mfc/FSC;->operationRequestLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/felicanetworks/mfc/FSC;->access$5(Lcom/felicanetworks/mfc/FSC;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 294
    :catch_1
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    :try_start_3
    const-string v3, "%s"

    const-string v4, "801"

    invoke-static {v1, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 289
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 307
    :cond_1
    const-string v1, "%s"

    const-string v2, "998"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 308
    new-instance v1, Ljava/lang/Exception;

    iget-object v2, p0, Lcom/felicanetworks/mfc/FSC$2;->this$0:Lcom/felicanetworks/mfc/FSC;

    # getter for: Lcom/felicanetworks/mfc/FSC;->operationRequestErrMsg:Ljava/lang/String;
    invoke-static {v2}, Lcom/felicanetworks/mfc/FSC;->access$10(Lcom/felicanetworks/mfc/FSC;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method
