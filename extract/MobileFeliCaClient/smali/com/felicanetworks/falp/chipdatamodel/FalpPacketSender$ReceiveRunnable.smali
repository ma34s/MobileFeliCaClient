.class Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;
.super Ljava/lang/Object;
.source "FalpPacketSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveRunnable"
.end annotation


# instance fields
.field mListener:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;

.field mSessionId:[B

.field final synthetic this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 259
    const/4 v2, 0x7

    const-string v3, "ReceiveRunnable#run [in]"

    invoke-static {v2, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 262
    iget-object v3, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    monitor-enter v3

    .line 264
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ChipController;

    move-result-object v2

    iget-object v4, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->mSessionId:[B

    iget-object v5, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    # getter for: Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mTimeout:I
    invoke-static {v5}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->access$0(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->receiveFalpPacket([BI)Lcom/felicanetworks/felica/offlineimpl/FalpCommand;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 262
    .local v0, "c":Lcom/felicanetworks/felica/offlineimpl/FalpCommand;
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    if-nez v0, :cond_3

    .line 270
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpAckWait()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    # getter for: Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mWaitAck:Z
    invoke-static {v2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->access$1(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    # getter for: Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAckWaitCriticalSection:Ljava/lang/Object;
    invoke-static {v2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->access$2(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 294
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    # getter for: Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->isStopReceiveCalled:Z
    invoke-static {v2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->access$6(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 296
    iget-object v2, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    # getter for: Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAsyncInAnotherThreadExecuter:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;
    invoke-static {v2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->access$7(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;

    move-result-object v2

    iget-object v3, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    # getter for: Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRcvWaitRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;
    invoke-static {v3}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->access$8(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;->execute(Ljava/lang/Runnable;)V

    .line 298
    .end local v0    # "c":Lcom/felicanetworks/felica/offlineimpl/FalpCommand;
    :cond_2
    :goto_1
    return-void

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/NullPointerException;
    :try_start_3
    monitor-exit v3

    goto :goto_1

    .line 262
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 277
    .restart local v0    # "c":Lcom/felicanetworks/felica/offlineimpl/FalpCommand;
    :cond_3
    instance-of v2, v0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;

    if-eqz v2, :cond_4

    .line 280
    iget-object v2, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    # getter for: Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRcvTransmitDataRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;
    invoke-static {v2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->access$3(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;->setmCommand(Lcom/felicanetworks/felica/offlineimpl/FalpCommand;)V

    .line 281
    iget-object v2, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    # getter for: Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRcvTransmitDataRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;
    invoke-static {v2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->access$3(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;

    move-result-object v2

    iget-object v3, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->mListener:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;

    invoke-virtual {v2, v3}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;->setmListener(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;)V

    .line 282
    iget-object v2, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    # getter for: Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAsyncExecuter:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;
    invoke-static {v2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->access$4(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;

    move-result-object v2

    iget-object v3, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    # getter for: Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRcvTransmitDataRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;
    invoke-static {v3}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->access$3(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 283
    :cond_4
    instance-of v2, v0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;

    if-eqz v2, :cond_5

    .line 286
    iget-object v2, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    # getter for: Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRcvTerminateRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTerminateAdhocRunnable;
    invoke-static {v2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->access$5(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTerminateAdhocRunnable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTerminateAdhocRunnable;->setmCommand(Lcom/felicanetworks/felica/offlineimpl/FalpCommand;)V

    .line 287
    iget-object v2, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    # getter for: Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRcvTerminateRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTerminateAdhocRunnable;
    invoke-static {v2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->access$5(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTerminateAdhocRunnable;

    move-result-object v2

    iget-object v3, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->mListener:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;

    invoke-virtual {v2, v3}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTerminateAdhocRunnable;->setmListener(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;)V

    .line 288
    iget-object v2, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    # getter for: Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAsyncExecuter:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;
    invoke-static {v2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->access$4(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;

    move-result-object v2

    iget-object v3, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    # getter for: Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRcvTerminateRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTerminateAdhocRunnable;
    invoke-static {v3}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->access$5(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTerminateAdhocRunnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 290
    :cond_5
    iget-object v2, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->this$0:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    # getter for: Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->isStopReceiveCalled:Z
    invoke-static {v2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->access$6(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 291
    const/4 v2, 0x1

    const-string v3, "ReceiveRunnable#run empty data. retry."

    invoke-static {v2, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    goto :goto_0

    .line 273
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public setmListener(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;

    .prologue
    .line 308
    if-nez p1, :cond_0

    .line 312
    :goto_0
    return-void

    .line 311
    :cond_0
    iput-object p1, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->mListener:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;

    goto :goto_0
.end method

.method public setmSessionId([B)V
    .locals 0
    .param p1, "sessionId"    # [B

    .prologue
    .line 322
    iput-object p1, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->mSessionId:[B

    .line 323
    return-void
.end method
