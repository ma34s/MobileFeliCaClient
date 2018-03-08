.class Lcom/felicanetworks/mfc/Felica$ActivateThread;
.super Ljava/lang/Thread;
.source "Felica.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/Felica;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivateThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;
    }
.end annotation


# static fields
.field private static final ERROR_MESSAGE_UNKNOW:Ljava/lang/String; = "Unknown error."


# instance fields
.field public felicaEventListner:Lcom/felicanetworks/mfc/IFelicaEventListener;

.field public permitList:[Ljava/lang/String;

.field public permitOptrThread:Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;

.field final synthetic this$0:Lcom/felicanetworks/mfc/Felica;


# direct methods
.method constructor <init>(Lcom/felicanetworks/mfc/Felica;)V
    .locals 1

    .prologue
    .line 535
    iput-object p1, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 561
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->permitOptrThread:Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;

    return-void
.end method

.method static synthetic access$0(Lcom/felicanetworks/mfc/Felica$ActivateThread;)Lcom/felicanetworks/mfc/Felica;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;

    return-object v0
.end method


# virtual methods
.method checkInterrupted()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 571
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 572
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica$ActivateThread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    const/4 v0, 0x7

    const-string v1, "%s %s"

    const-string v2, "001"

    const-string v3, "Interruption is occured."

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 574
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "Interruption is occured."

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 577
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v11, 0x7

    .line 584
    const-string v6, "%s %s"

    const-string v7, "000"

    const-string v8, "ActivateThread"

    invoke-static {v13, v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 587
    const/4 v4, 0x0

    .line 589
    .local v4, "permitFlag":Z
    const/4 v1, 0x0

    .line 591
    .local v1, "errorType":I
    const/4 v0, 0x0

    .line 597
    .local v0, "errorMsg":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;

    iget-object v6, v6, Lcom/felicanetworks/mfc/Felica;->mFalpUser:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    if-eqz v6, :cond_0

    .line 598
    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/felicanetworks/mfc/Felica;->access$1(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/Felica$ActivateThread;)V

    .line 599
    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/felicanetworks/mfc/Felica;->access$2(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;)V

    .line 600
    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->felicaEventListner:Lcom/felicanetworks/mfc/IFelicaEventListener;

    const/4 v7, 0x7

    .line 601
    const/4 v8, 0x0

    new-instance v9, Lcom/felicanetworks/mfc/AppInfo;

    iget-object v10, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;

    iget-object v10, v10, Lcom/felicanetworks/mfc/Felica;->mFalpUser:Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;

    iget v10, v10, Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;->pid:I

    invoke-direct {v9, v10}, Lcom/felicanetworks/mfc/AppInfo;-><init>(I)V

    .line 600
    invoke-interface {v6, v7, v8, v9}, Lcom/felicanetworks/mfc/IFelicaEventListener;->errorOccurred(ILjava/lang/String;Lcom/felicanetworks/mfc/AppInfo;)V

    .line 689
    :goto_0
    return-void

    .line 606
    :cond_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica$ActivateThread;->checkInterrupted()V

    .line 609
    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->permitList:[Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->permitList:[Ljava/lang/String;

    array-length v6, v6

    if-nez v6, :cond_3

    .line 610
    :cond_1
    const/4 v6, 0x7

    const-string v7, "%s"

    const-string v8, "001"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 612
    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;

    monitor-enter v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 614
    :try_start_1
    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/felicanetworks/mfc/Felica;->access$1(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/Felica$ActivateThread;)V

    .line 616
    const/4 v4, 0x1

    .line 612
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    :goto_1
    if-eqz v4, :cond_5

    .line 664
    const/4 v6, 0x7

    :try_start_2
    const-string v7, "%s"

    const-string v8, "006"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 665
    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->felicaEventListner:Lcom/felicanetworks/mfc/IFelicaEventListener;

    invoke-interface {v6}, Lcom/felicanetworks/mfc/IFelicaEventListener;->finished()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 687
    :cond_2
    :goto_2
    const-string v6, "%s"

    const-string v7, "999"

    invoke-static {v13, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 612
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 673
    :catch_0
    move-exception v5

    .line 674
    .local v5, "re":Landroid/os/RemoteException;
    const/4 v6, 0x1

    const-string v7, "%s RemoteException"

    const-string v8, "800"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 675
    if-eqz v4, :cond_2

    .line 676
    const-string v6, "%s"

    const-string v7, "009"

    invoke-static {v11, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 677
    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;

    monitor-enter v7

    .line 678
    :try_start_5
    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/felicanetworks/mfc/Felica;->access$2(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;)V

    .line 679
    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/felicanetworks/mfc/Felica;->access$3(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfw/i/fbl/Permit;)V

    .line 677
    monitor-exit v7

    goto :goto_2

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6

    .line 619
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_3
    const/4 v6, 0x7

    :try_start_6
    const-string v7, "%s"

    const-string v8, "002"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 620
    new-instance v6, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;

    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->permitList:[Ljava/lang/String;

    invoke-direct {v6, p0, v7}, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;-><init>(Lcom/felicanetworks/mfc/Felica$ActivateThread;[Ljava/lang/String;)V

    iput-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->permitOptrThread:Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;

    .line 623
    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->permitOptrThread:Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->start()V

    .line 624
    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->permitOptrThread:Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->join()V

    .line 627
    iget-object v7, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;

    monitor-enter v7
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    .line 629
    :try_start_7
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/Felica$ActivateThread;->checkInterrupted()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 632
    :try_start_8
    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->permitOptrThread:Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->isSucceeded()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 633
    const/4 v6, 0x7

    const-string v8, "%s"

    const-string v9, "003"

    invoke-static {v6, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 635
    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;

    iget-object v8, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->permitOptrThread:Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->getPermit()Lcom/felicanetworks/mfw/i/fbl/Permit;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/felicanetworks/mfc/Felica;->access$3(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfw/i/fbl/Permit;)V

    .line 637
    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/felicanetworks/mfc/Felica;->access$1(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/Felica$ActivateThread;)V
    :try_end_8
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 639
    const/4 v4, 0x1

    .line 627
    :goto_3
    :try_start_9
    monitor-exit v7

    goto/16 :goto_1

    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v6
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    .line 682
    :catch_1
    move-exception v3

    .line 684
    .local v3, "ie":Ljava/lang/InterruptedException;
    const-string v6, "%s InterrptedException"

    const-string v7, "801"

    invoke-static {v12, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 641
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    :cond_4
    const/4 v6, 0x7

    :try_start_b
    const-string v8, "%s"

    const-string v9, "004"

    invoke-static {v6, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 643
    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->permitOptrThread:Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->getErrorType()I

    move-result v1

    .line 644
    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->permitOptrThread:Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/Felica$ActivateThread$PermitOptrThread;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 646
    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/felicanetworks/mfc/Felica;->access$1(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/Felica$ActivateThread;)V

    .line 647
    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/felicanetworks/mfc/Felica;->access$2(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;)V
    :try_end_b
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 649
    const/4 v4, 0x0

    goto :goto_3

    .line 651
    :catch_2
    move-exception v2

    .line 652
    .local v2, "fe":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v6, 0x7

    :try_start_c
    const-string v8, "%s"

    const-string v9, "005"

    invoke-static {v6, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 653
    const/4 v1, 0x1

    .line 654
    const-string v0, "Unknown error."

    .line 656
    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/felicanetworks/mfc/Felica;->access$1(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/Felica$ActivateThread;)V

    .line 657
    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->this$0:Lcom/felicanetworks/mfc/Felica;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/felicanetworks/mfc/Felica;->access$2(Lcom/felicanetworks/mfc/Felica;Lcom/felicanetworks/mfc/Felica$FelicaAppInfo;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 659
    const/4 v4, 0x0

    goto :goto_3

    .line 667
    .end local v2    # "fe":Lcom/felicanetworks/mfc/FelicaException;
    :cond_5
    const/4 v6, 0x7

    :try_start_d
    const-string v7, "%s"

    const-string v8, "007"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 668
    if-eq v1, v12, :cond_2

    .line 669
    const/4 v6, 0x7

    const-string v7, "%s"

    const-string v8, "008"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 670
    iget-object v6, p0, Lcom/felicanetworks/mfc/Felica$ActivateThread;->felicaEventListner:Lcom/felicanetworks/mfc/IFelicaEventListener;

    const/4 v7, 0x0

    invoke-interface {v6, v1, v0, v7}, Lcom/felicanetworks/mfc/IFelicaEventListener;->errorOccurred(ILjava/lang/String;Lcom/felicanetworks/mfc/AppInfo;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_2
.end method
