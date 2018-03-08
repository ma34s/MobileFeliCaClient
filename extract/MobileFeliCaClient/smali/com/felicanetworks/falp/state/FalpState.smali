.class public abstract Lcom/felicanetworks/falp/state/FalpState;
.super Ljava/lang/Object;
.source "FalpState.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final actChangeFWSendWait(Lcom/felicanetworks/falp/state/StateListener;S)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "fwans"    # S

    .prologue
    .line 736
    const/4 v0, 0x7

    const-string v1, "FalpState#actChangeFWSendWait()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 739
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->stopTimer()V

    .line 742
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getFwWaitTimer()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/felicanetworks/falp/state/StateListener;->startMiliTimer(I)V

    .line 746
    invoke-static {}, Lcom/felicanetworks/falp/state/FWSendWaitState;->getInstance()Lcom/felicanetworks/falp/state/FWSendWaitState;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    .line 747
    const/4 v0, 0x0

    return v0
.end method

.method protected final actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;S)I
    .locals 1
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "ans"    # S

    .prologue
    .line 529
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/felicanetworks/falp/state/FalpState;->actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;SZ)I

    move-result v0

    return v0
.end method

.method protected final actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;SZ)I
    .locals 10
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "ans"    # S
    .param p3, "useIVb"    # Z

    .prologue
    const/4 v3, 0x0

    .line 546
    const/4 v6, 0x7

    const-string v7, "FalpState#actFwSendChangeIDLE()"

    invoke-static {v6, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 549
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getState()Lcom/felicanetworks/falp/state/FalpState;

    move-result-object v6

    instance-of v6, v6, Lcom/felicanetworks/falp/state/IdleState;

    if-eqz v6, :cond_0

    .line 551
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ChipController;

    move-result-object v0

    .line 552
    .local v0, "c":Lcom/felicanetworks/felica/offlineimpl/ChipController;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->cancelOffline()V

    .line 553
    invoke-static {}, Lcom/felicanetworks/mfc/Felica;->getInstance()Lcom/felicanetworks/mfc/Felica;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/Felica;->getPollingLockObject()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 554
    :try_start_0
    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->finishCancel()V

    .line 553
    monitor-exit v6

    .line 612
    .end local v0    # "c":Lcom/felicanetworks/felica/offlineimpl/ChipController;
    :goto_0
    return v3

    .line 553
    .restart local v0    # "c":Lcom/felicanetworks/felica/offlineimpl/ChipController;
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 562
    .end local v0    # "c":Lcom/felicanetworks/felica/offlineimpl/ChipController;
    :cond_0
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->stopTimer()V

    .line 563
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v2

    .line 566
    .local v2, "mng":Lcom/felicanetworks/falp/FalpProtocolParameter;
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getmGetRfChipRegisterNum()B

    move-result v6

    if-eqz v6, :cond_1

    .line 567
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getInstance()Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->stopToReceive()V

    .line 569
    :try_start_1
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ChipController;

    move-result-object v6

    .line 570
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getmGetRfChipRegisterNum()B

    move-result v7

    .line 571
    const/16 v8, 0x1f4

    .line 572
    const/4 v9, 0x0

    .line 569
    invoke-virtual {v6, v7, v8, v9}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->setRFChipRegister(BII)V
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_1

    .line 579
    :cond_1
    :goto_1
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getTerminateAdhocPacket()Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;

    move-result-object v1

    .line 580
    .local v1, "fw":Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;
    invoke-virtual {v1, p2}, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;->setTerminateCode(S)V

    .line 584
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpMaxFalpRcevSize()S

    move-result v6

    add-int/lit8 v6, v6, 0x5

    .line 585
    invoke-virtual {v1}, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;->getLength()I

    move-result v7

    .line 584
    invoke-interface {p1, v6, v7, v3}, Lcom/felicanetworks/falp/state/StateListener;->getIVb(IIZ)J

    move-result-wide v4

    .line 597
    .local v4, "timer":J
    if-eqz p3, :cond_3

    .line 598
    monitor-enter p0

    .line 600
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 601
    const-wide/16 v6, 0x3e8

    :try_start_2
    div-long v6, v4, v6

    const-wide/16 v8, 0x3e8

    rem-long v8, v4, v8

    long-to-int v8, v8

    mul-int/lit16 v8, v8, 0x3e8

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/Object;->wait(JI)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 598
    :cond_2
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 609
    :cond_3
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getInstance()Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    move-result-object v6

    invoke-virtual {v2}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getSession_id()S

    move-result v7

    invoke-virtual {v6, v1, v7}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->sendTerminate(Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;S)I

    .line 612
    invoke-static {}, Lcom/felicanetworks/falp/state/IdleState;->getInstance()Lcom/felicanetworks/falp/state/IdleState;

    move-result-object v6

    invoke-interface {p1, v6, v3}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    move-result v3

    goto :goto_0

    .line 598
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 602
    :catch_0
    move-exception v6

    goto :goto_2

    .line 573
    .end local v1    # "fw":Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;
    .end local v4    # "timer":J
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method protected final actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SI)I
    .locals 1
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "ans"    # S
    .param p3, "aplerr"    # I

    .prologue
    .line 630
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/felicanetworks/falp/state/FalpState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SIZ)I

    move-result v0

    return v0
.end method

.method protected final actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SIZ)I
    .locals 3
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "ans"    # S
    .param p3, "aplerr"    # I
    .param p4, "useIVb"    # Z

    .prologue
    .line 650
    const/4 v1, 0x7

    const-string v2, "FalpState#actFwSendTermSentIDLE()"

    invoke-static {v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, "ret":I
    monitor-enter p1

    .line 656
    :try_start_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/felicanetworks/falp/state/FalpState;->actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;SZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 661
    :try_start_1
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getAppLisnter()Lcom/felicanetworks/falp/FalpListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 662
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getAppLisnter()Lcom/felicanetworks/falp/FalpListener;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lcom/felicanetworks/falp/FalpListener;->shutdownFalpCompleted(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    :goto_0
    :try_start_2
    monitor-exit p1

    .line 670
    :goto_1
    return v0

    .line 664
    :cond_0
    monitor-exit p1

    goto :goto_1

    .line 653
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 666
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected final actTermSentChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;I)I
    .locals 5
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "aplerr"    # I

    .prologue
    const/4 v2, 0x0

    .line 685
    const/4 v3, 0x7

    const-string v4, "FalpState#actTermSentChangeIDLE()"

    invoke-static {v3, v4}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 687
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getState()Lcom/felicanetworks/falp/state/FalpState;

    move-result-object v3

    instance-of v3, v3, Lcom/felicanetworks/falp/state/IdleState;

    if-eqz v3, :cond_0

    .line 689
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ChipController;

    move-result-object v0

    .line 690
    .local v0, "c":Lcom/felicanetworks/felica/offlineimpl/ChipController;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->cancelOffline()V

    .line 691
    invoke-static {}, Lcom/felicanetworks/mfc/Felica;->getInstance()Lcom/felicanetworks/mfc/Felica;

    move-result-object v3

    invoke-virtual {v3}, Lcom/felicanetworks/mfc/Felica;->getPollingLockObject()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 692
    :try_start_0
    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->finishCancel()V

    .line 691
    monitor-exit v4

    .line 721
    .end local v0    # "c":Lcom/felicanetworks/felica/offlineimpl/ChipController;
    :goto_0
    return v2

    .line 691
    .restart local v0    # "c":Lcom/felicanetworks/felica/offlineimpl/ChipController;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 701
    .end local v0    # "c":Lcom/felicanetworks/felica/offlineimpl/ChipController;
    :cond_0
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->stopTimer()V

    .line 703
    const/4 v2, 0x0

    .line 704
    .local v2, "ret":I
    monitor-enter p1

    .line 706
    :try_start_1
    invoke-static {}, Lcom/felicanetworks/falp/state/IdleState;->getInstance()Lcom/felicanetworks/falp/state/IdleState;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 710
    :try_start_2
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getAppLisnter()Lcom/felicanetworks/falp/FalpListener;

    move-result-object v1

    .line 711
    .local v1, "listener":Lcom/felicanetworks/falp/FalpListener;
    if-eqz v1, :cond_1

    .line 712
    invoke-interface {v1, p2, v2}, Lcom/felicanetworks/falp/FalpListener;->shutdownFalpCompleted(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 704
    .end local v1    # "listener":Lcom/felicanetworks/falp/FalpListener;
    :goto_1
    :try_start_3
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 714
    .restart local v1    # "listener":Lcom/felicanetworks/falp/FalpListener;
    :cond_1
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 716
    .end local v1    # "listener":Lcom/felicanetworks/falp/FalpListener;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public cancelFalp(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 432
    const/4 v0, 0x7

    const-string v1, "FalpState#recvCancelFalp()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 435
    const/4 v0, -0x6

    return v0
.end method

.method public changeState(I)V
    .locals 0
    .param p1, "param"    # I

    .prologue
    .line 515
    return-void
.end method

.method protected final getAppErrCode(S)I
    .locals 1
    .param p1, "fwCode"    # S

    .prologue
    .line 760
    const/4 v0, 0x0

    .line 761
    .local v0, "ret":I
    sparse-switch p1, :sswitch_data_0

    .line 787
    const/4 v0, -0x2

    .line 790
    :goto_0
    return v0

    .line 763
    :sswitch_0
    const/4 v0, 0x0

    .line 764
    goto :goto_0

    .line 766
    :sswitch_1
    const/4 v0, -0x2

    .line 767
    goto :goto_0

    .line 769
    :sswitch_2
    const/4 v0, -0x2

    .line 770
    goto :goto_0

    .line 772
    :sswitch_3
    const/4 v0, -0x2

    .line 773
    goto :goto_0

    .line 775
    :sswitch_4
    const/4 v0, -0x4

    .line 776
    goto :goto_0

    .line 778
    :sswitch_5
    const/4 v0, -0x2

    .line 779
    goto :goto_0

    .line 781
    :sswitch_6
    const/4 v0, -0x3

    .line 782
    goto :goto_0

    .line 784
    :sswitch_7
    const/4 v0, -0x2

    .line 785
    goto :goto_0

    .line 761
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x100 -> :sswitch_7
        0x101 -> :sswitch_3
        0x102 -> :sswitch_2
        0x103 -> :sswitch_5
        0x104 -> :sswitch_4
        0x105 -> :sswitch_6
        0x1ff -> :sswitch_1
    .end sparse-switch
.end method

.method public onCallerEnded()I
    .locals 1

    .prologue
    .line 501
    const/4 v0, -0x6

    return v0
.end method

.method public recvAppCodeErrPacket(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 335
    const/4 v0, 0x7

    const-string v1, "FalpState#recvAppCodeErrPacket()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 340
    const/16 v0, 0x105

    .line 341
    const/4 v1, -0x2

    .line 339
    invoke-virtual {p0, p1, v0, v1}, Lcom/felicanetworks/falp/state/FalpState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SI)I

    move-result v0

    return v0
.end method

.method protected recvCommonTurnOverReadyABEvt(ZZLcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;)I
    .locals 6
    .param p1, "canSend"    # Z
    .param p2, "canRecv"    # Z
    .param p3, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p4, "packet"    # Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;

    .prologue
    .line 811
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/felicanetworks/falp/state/FalpState;->recvCommonTurnOverReadyABEvt(ZZLcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;Z)I

    move-result v0

    return v0
.end method

.method protected recvCommonTurnOverReadyABEvt(ZZLcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;Z)I
    .locals 14
    .param p1, "canSend"    # Z
    .param p2, "canRecv"    # Z
    .param p3, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p4, "packet"    # Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;
    .param p5, "isUseTDi"    # Z

    .prologue
    .line 837
    invoke-interface/range {p3 .. p3}, Lcom/felicanetworks/falp/state/StateListener;->getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v4

    .line 839
    .local v4, "mng":Lcom/felicanetworks/falp/FalpProtocolParameter;
    invoke-interface/range {p3 .. p3}, Lcom/felicanetworks/falp/state/StateListener;->stopTimer()V

    .line 842
    if-nez p2, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getPayloadLen()I

    move-result v10

    if-eqz v10, :cond_0

    .line 844
    invoke-interface/range {p3 .. p3}, Lcom/felicanetworks/falp/state/StateListener;->getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getFwWaitTimer()I

    move-result v10

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Lcom/felicanetworks/falp/state/StateListener;->startMiliTimer(I)V

    .line 847
    invoke-static {}, Lcom/felicanetworks/falp/state/FWSendWaitState;->getInstance()Lcom/felicanetworks/falp/state/FWSendWaitState;

    move-result-object v10

    .line 848
    const/16 v11, 0x103

    .line 847
    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    .line 850
    const/4 v10, 0x0

    .line 1019
    :goto_0
    return v10

    .line 877
    :cond_0
    invoke-interface/range {p3 .. p4}, Lcom/felicanetworks/falp/state/StateListener;->setRecvData(Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;)I

    move-result v10

    if-eqz v10, :cond_3

    .line 880
    invoke-static/range {p4 .. p4}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->isSameKine(Lcom/felicanetworks/falp/packet/TransmitPacketBase;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 882
    invoke-interface/range {p3 .. p3}, Lcom/felicanetworks/falp/state/StateListener;->rollbackSeqNum()V

    .line 884
    invoke-virtual/range {p4 .. p4}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getPayloadLen()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getPacketLenExceptPayload()I

    move-result v11

    add-int v5, v10, v11

    .line 887
    .local v5, "rcv_len":I
    invoke-interface/range {p3 .. p3}, Lcom/felicanetworks/falp/state/StateListener;->getSeqNum()I

    move-result v10

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Lcom/felicanetworks/falp/state/StateListener;->getSendDataLen(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x5

    add-int/lit8 v10, v10, 0x3

    .line 886
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {p0, v0, v5, v10, v1}, Lcom/felicanetworks/falp/state/FalpState;->setIVb(Lcom/felicanetworks/falp/state/StateListener;IIZ)V

    .line 893
    if-eqz p1, :cond_1

    .line 895
    invoke-static {}, Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;->getInstance()Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    .line 900
    :goto_1
    const/4 v10, 0x0

    goto :goto_0

    .line 898
    :cond_1
    invoke-static {}, Lcom/felicanetworks/falp/state/TransmitDataNoSendWaitState;->getInstance()Lcom/felicanetworks/falp/state/TransmitDataNoSendWaitState;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    goto :goto_1

    .line 902
    .end local v5    # "rcv_len":I
    :cond_2
    const/4 v10, 0x1

    const-string v11, "recvCommonTurnOverReadyABEvt() packet seq err."

    invoke-static {v10, v11}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 904
    const/16 v10, 0x101

    .line 905
    const/4 v11, -0x2

    .line 903
    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v10, v11}, Lcom/felicanetworks/falp/state/FalpState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SI)I

    move-result v10

    goto :goto_0

    .line 910
    :cond_3
    invoke-interface/range {p3 .. p3}, Lcom/felicanetworks/falp/state/StateListener;->clearSendDataBufferInWrkArea()V

    .line 913
    invoke-interface/range {p3 .. p3}, Lcom/felicanetworks/falp/state/StateListener;->checkRecvData()S

    move-result v3

    .line 916
    .local v3, "checkRet":I
    const/4 v10, -0x1

    if-ne v3, v10, :cond_4

    .line 923
    const/4 v10, 0x1

    const-string v11, "recvCommonTurnOverReadyABEvt() packet loss."

    invoke-static {v10, v11}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 925
    const/16 v10, 0x104

    .line 926
    const/4 v11, -0x4

    .line 924
    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v10, v11}, Lcom/felicanetworks/falp/state/FalpState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SI)I

    move-result v10

    goto :goto_0

    .line 927
    :cond_4
    const/4 v10, -0x3

    if-ne v3, v10, :cond_5

    .line 934
    const/4 v10, 0x1

    const-string v11, "recvCommonTurnOverReadyABEvt() packet loss."

    invoke-static {v10, v11}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 935
    const/16 v10, 0x101

    .line 936
    const/4 v11, -0x4

    .line 935
    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v10, v11}, Lcom/felicanetworks/falp/state/FalpState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SI)I

    move-result v10

    goto/16 :goto_0

    .line 941
    :cond_5
    if-ltz v3, :cond_9

    .line 942
    const/4 v10, 0x2

    const-string v11, "recvCommonTurnOverReadyABEvt() packet loss. req retry."

    invoke-static {v10, v11}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 944
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getRetryReqPacket()Lcom/felicanetworks/falp/packet/RetryReqPacket;

    move-result-object v7

    .line 945
    .local v7, "retryPacket":Lcom/felicanetworks/falp/packet/RetryReqPacket;
    invoke-virtual {v7, v3}, Lcom/felicanetworks/falp/packet/RetryReqPacket;->setInformation(I)V

    .line 946
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lcom/felicanetworks/falp/state/StateListener;->setResendRequestSeqno(I)V

    .line 953
    invoke-virtual/range {p4 .. p4}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getPayloadLen()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getPacketLenExceptPayload()I

    move-result v11

    add-int/2addr v10, v11

    .line 954
    invoke-virtual {v7}, Lcom/felicanetworks/falp/packet/RetryReqPacket;->getPayloadSize()I

    move-result v11

    invoke-virtual {v7}, Lcom/felicanetworks/falp/packet/RetryReqPacket;->getPacketLenExceptPayload()I

    move-result v12

    add-int/2addr v11, v12

    .line 955
    const/4 v12, 0x0

    .line 952
    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11, v12}, Lcom/felicanetworks/falp/state/StateListener;->getIVb(IIZ)J

    move-result-wide v8

    .line 958
    .local v8, "timer":J
    monitor-enter p0

    .line 960
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_6

    .line 961
    const-wide/16 v10, 0x3e8

    :try_start_0
    div-long v10, v8, v10

    const-wide/16 v12, 0x3e8

    rem-long v12, v8, v12

    long-to-int v12, v12

    mul-int/lit16 v12, v12, 0x3e8

    invoke-virtual {p0, v10, v11, v12}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    :cond_6
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 967
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getInstance()Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    move-result-object v10

    invoke-virtual {v4}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getSession_id()S

    move-result v11

    invoke-virtual {v10, v7, v11}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->sendRetryReq(Lcom/felicanetworks/falp/packet/RetryReqPacket;S)I

    move-result v6

    .line 968
    .local v6, "ret":I
    if-eqz v6, :cond_7

    .line 973
    const/16 v10, 0x1ff

    const/4 v11, 0x0

    .line 972
    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v10, v11}, Lcom/felicanetworks/falp/state/FalpState;->actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;SZ)I

    move-result v10

    goto/16 :goto_0

    .line 958
    .end local v6    # "ret":I
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 979
    .restart local v6    # "ret":I
    :cond_7
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Lcom/felicanetworks/falp/state/StateListener;->getTOb(Z)J

    move-result-wide v10

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11}, Lcom/felicanetworks/falp/state/StateListener;->startMicroTimer(J)V

    .line 982
    invoke-interface/range {p3 .. p3}, Lcom/felicanetworks/falp/state/StateListener;->sendRetryCountInit()V

    .line 983
    invoke-interface/range {p3 .. p3}, Lcom/felicanetworks/falp/state/StateListener;->resendRetryCountInit()V

    .line 986
    if-eqz p1, :cond_8

    const/4 v2, 0x1

    .line 987
    .local v2, "canSendInt":I
    :goto_3
    invoke-static {}, Lcom/felicanetworks/falp/state/TransmitDataRetryState;->getInstance()Lcom/felicanetworks/falp/state/TransmitDataRetryState;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v2}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    .line 989
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 986
    .end local v2    # "canSendInt":I
    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    .line 993
    .end local v6    # "ret":I
    .end local v7    # "retryPacket":Lcom/felicanetworks/falp/packet/RetryReqPacket;
    .end local v8    # "timer":J
    :cond_9
    const/4 v10, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Lcom/felicanetworks/falp/state/StateListener;->saveRecvPacketToBuffer(Z)Z

    .line 996
    invoke-virtual/range {p4 .. p4}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getPayloadLen()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getPacketLenExceptPayload()I

    move-result v11

    add-int v5, v10, v11

    .line 998
    .restart local v5    # "rcv_len":I
    if-eqz p1, :cond_a

    .line 1000
    invoke-interface/range {p3 .. p3}, Lcom/felicanetworks/falp/state/StateListener;->copySendDataFromBufferToWrkArea()V

    .line 1003
    invoke-interface/range {p3 .. p3}, Lcom/felicanetworks/falp/state/StateListener;->getSeqNum()I

    move-result v10

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Lcom/felicanetworks/falp/state/StateListener;->getSendDataLen(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x5

    add-int/lit8 v10, v10, 0x3

    .line 1002
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {p0, v0, v5, v10, v1}, Lcom/felicanetworks/falp/state/FalpState;->setIVb(Lcom/felicanetworks/falp/state/StateListener;IIZ)V

    .line 1006
    invoke-static {}, Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;->getInstance()Lcom/felicanetworks/falp/state/TransmitDataSendWaitState;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    .line 1019
    :goto_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1010
    :cond_a
    invoke-interface/range {p3 .. p3}, Lcom/felicanetworks/falp/state/StateListener;->getSeqNum()I

    move-result v10

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Lcom/felicanetworks/falp/state/StateListener;->getSendDataLen(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x5

    add-int/lit8 v10, v10, 0x3

    .line 1009
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {p0, v0, v5, v10, v1}, Lcom/felicanetworks/falp/state/FalpState;->setIVb(Lcom/felicanetworks/falp/state/StateListener;IIZ)V

    .line 1014
    invoke-static {}, Lcom/felicanetworks/falp/state/TransmitDataNoSendWaitState;->getInstance()Lcom/felicanetworks/falp/state/TransmitDataNoSendWaitState;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    goto :goto_4

    .line 962
    .end local v5    # "rcv_len":I
    .restart local v7    # "retryPacket":Lcom/felicanetworks/falp/packet/RetryReqPacket;
    .restart local v8    # "timer":J
    :catch_0
    move-exception v10

    goto/16 :goto_2
.end method

.method public recvFarewell(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;)I
    .locals 4
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;

    .prologue
    .line 276
    const/4 v2, 0x7

    const-string v3, "FalpState#recvFarewellReq()"

    invoke-static {v2, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;->getTerminateCode()S

    move-result v0

    .line 279
    .local v0, "fwCode":S
    invoke-virtual {p0, v0}, Lcom/felicanetworks/falp/state/FalpState;->getAppErrCode(S)I

    move-result v1

    .line 284
    .local v1, "ret":I
    invoke-virtual {p0, p1, v1}, Lcom/felicanetworks/falp/state/FalpState;->actTermSentChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;I)I

    move-result v2

    return v2
.end method

.method public recvHandshakeEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/HandshakeReqPacket;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/HandshakeReqPacket;

    .prologue
    .line 124
    const/4 v0, 0x7

    const-string v1, "FalpState#recvHandshakeEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 126
    const/16 v0, 0x103

    .line 127
    const/4 v1, -0x2

    .line 126
    invoke-virtual {p0, p1, v0, v1}, Lcom/felicanetworks/falp/state/FalpState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SI)I

    move-result v0

    return v0
.end method

.method public recvHandshakeRes(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/HandshakeResPacket;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/HandshakeResPacket;

    .prologue
    .line 144
    const/4 v0, 0x7

    const-string v1, "FalpState#recvHandshakeRes()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 148
    const/16 v0, 0x103

    .line 149
    const/4 v1, -0x2

    .line 148
    invoke-virtual {p0, p1, v0, v1}, Lcom/felicanetworks/falp/state/FalpState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SI)I

    move-result v0

    return v0
.end method

.method public recvPacketEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/DataSendPacket;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/DataSendPacket;

    .prologue
    .line 166
    const/4 v0, 0x7

    const-string v1, "FalpState#recvPacketEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 170
    const/16 v0, 0x103

    .line 171
    const/4 v1, -0x2

    .line 170
    invoke-virtual {p0, p1, v0, v1}, Lcom/felicanetworks/falp/state/FalpState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SI)I

    move-result v0

    return v0
.end method

.method public recvPacketReadError(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 356
    const/4 v0, 0x7

    const-string v1, "FalpState#recvPacketReadError()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 362
    const/16 v0, 0x100

    .line 363
    const/4 v1, -0x2

    .line 361
    invoke-virtual {p0, p1, v0, v1}, Lcom/felicanetworks/falp/state/FalpState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SI)I

    move-result v0

    return v0
.end method

.method public recvPayloadErrPacket(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 316
    const/4 v0, 0x7

    const-string v1, "FalpState#recvPayloadErrPacket()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 321
    const/16 v0, 0x102

    .line 322
    const/4 v1, -0x2

    .line 320
    invoke-virtual {p0, p1, v0, v1}, Lcom/felicanetworks/falp/state/FalpState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SI)I

    move-result v0

    return v0
.end method

.method public recvRetryReqEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/RetryReqPacket;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/RetryReqPacket;

    .prologue
    .line 232
    const/4 v0, 0x7

    const-string v1, "FalpState#recvRetryReqEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 236
    const/16 v0, 0x103

    .line 237
    const/4 v1, -0x2

    .line 236
    invoke-virtual {p0, p1, v0, v1}, Lcom/felicanetworks/falp/state/FalpState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SI)I

    move-result v0

    return v0
.end method

.method public recvRetryResEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/RetryResPacket;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/RetryResPacket;

    .prologue
    .line 254
    const/4 v0, 0x7

    const-string v1, "FalpState#recvRetryResEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 258
    const/16 v0, 0x103

    .line 259
    const/4 v1, -0x2

    .line 258
    invoke-virtual {p0, p1, v0, v1}, Lcom/felicanetworks/falp/state/FalpState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SI)I

    move-result v0

    return v0
.end method

.method public recvStartCheckNO(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 468
    const/4 v0, 0x7

    const-string v1, "FalpState#recvStartCheckNO()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 471
    const/4 v0, -0x6

    return v0
.end method

.method public recvStartCheckYES(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 450
    const/4 v0, 0x7

    const-string v1, "FalpState#recvStartCheckYES()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 453
    const/4 v0, -0x6

    return v0
.end method

.method public recvTargetFalpAccept(Lcom/felicanetworks/falp/state/StateListener;I)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "pswd"    # I

    .prologue
    .line 378
    const/4 v0, 0x7

    const-string v1, "FalpState#recvTargetFalpAccept()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 381
    const/4 v0, -0x6

    return v0
.end method

.method public recvTargetFalpReject(Lcom/felicanetworks/falp/state/StateListener;I)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "pswd"    # I

    .prologue
    .line 396
    const/4 v0, 0x7

    const-string v1, "FalpState#recvTargetFalpReject()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 399
    const/4 v0, -0x6

    return v0
.end method

.method public recvTimeout(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 486
    const/4 v0, 0x7

    const-string v1, "FalpState#recvTimeout()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 489
    const/4 v0, -0x6

    return v0
.end method

.method public recvTurnOverReadyBEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/ConvertBPacket;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/ConvertBPacket;

    .prologue
    .line 210
    const/4 v0, 0x7

    const-string v1, "FalpState#recvTurnOverReadyBEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 214
    const/16 v0, 0x103

    .line 215
    const/4 v1, -0x2

    .line 214
    invoke-virtual {p0, p1, v0, v1}, Lcom/felicanetworks/falp/state/FalpState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SI)I

    move-result v0

    return v0
.end method

.method public recvTurnOverReadyEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/ConvertAPacket;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "packet"    # Lcom/felicanetworks/falp/packet/ConvertAPacket;

    .prologue
    .line 188
    const/4 v0, 0x7

    const-string v1, "FalpState#recvTurnOverReadyEvt()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 192
    const/16 v0, 0x103

    .line 193
    const/4 v1, -0x2

    .line 192
    invoke-virtual {p0, p1, v0, v1}, Lcom/felicanetworks/falp/state/FalpState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SI)I

    move-result v0

    return v0
.end method

.method protected recvTurnOverReadyEvtWhenSendState(ZZLcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;)I
    .locals 10
    .param p1, "canSend"    # Z
    .param p2, "canRecv"    # Z
    .param p3, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p4, "packet"    # Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;

    .prologue
    const/16 v9, 0x103

    const/4 v8, -0x2

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1113
    invoke-interface {p3}, Lcom/felicanetworks/falp/state/StateListener;->getExpectedSeqNum()I

    move-result v1

    .line 1114
    .local v1, "expected":I
    const-string v6, "recvTurnOverReadyEvtWhenSendState() expected seq="

    invoke-static {v0, v6, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 1115
    const-string v6, "    received seq="

    invoke-virtual {p4}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getSequenceId()I

    move-result v7

    invoke-static {v0, v6, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 1118
    invoke-interface {p3}, Lcom/felicanetworks/falp/state/StateListener;->stopTimer()V

    .line 1121
    invoke-static {p4}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->isSameKine(Lcom/felicanetworks/falp/packet/TransmitPacketBase;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1122
    const-string v6, "    same kind."

    invoke-static {v0, v6}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1125
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->getPrevReceivedSequenceNum()I

    move-result v6

    invoke-virtual {p4}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getSequenceId()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 1126
    const-string v6, "    same seqNum as previous received data."

    invoke-static {v0, v6}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1128
    invoke-interface {p3}, Lcom/felicanetworks/falp/state/StateListener;->rollbackSeqNum()V

    .line 1133
    invoke-virtual {p4}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getPayloadLen()I

    move-result v6

    invoke-virtual {p4}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getPacketLenExceptPayload()I

    move-result v7

    add-int/2addr v6, v7

    .line 1134
    invoke-interface {p3}, Lcom/felicanetworks/falp/state/StateListener;->getPeerParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/felicanetworks/falp/HandshakeParameter;->getFalp_recvmax()S

    move-result v7

    add-int/lit8 v7, v7, 0x5

    .line 1133
    invoke-interface {p3, v6, v7, v3}, Lcom/felicanetworks/falp/state/StateListener;->getIVb(IIZ)J

    move-result-wide v4

    .line 1138
    .local v4, "timer":J
    invoke-interface {p3, v4, v5}, Lcom/felicanetworks/falp/state/StateListener;->startMicroTimer(J)V

    .line 1184
    .end local v4    # "timer":J
    :goto_0
    return v3

    .line 1144
    :cond_0
    invoke-interface {p3}, Lcom/felicanetworks/falp/state/StateListener;->getExpectedSeqNum()I

    move-result v6

    invoke-virtual {p4}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getSequenceId()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 1145
    const-string v6, "    same seqNum as expected received data."

    invoke-static {v0, v6}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    goto :goto_0

    .line 1148
    :cond_1
    const-string v3, "    difference seqNum from expected received data."

    invoke-static {v0, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1149
    invoke-virtual {p0, p3, v9, v8}, Lcom/felicanetworks/falp/state/FalpState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SI)I

    move-result v3

    goto :goto_0

    .line 1156
    :cond_2
    invoke-interface {p3}, Lcom/felicanetworks/falp/state/StateListener;->getExpectedSeqNum()I

    move-result v6

    invoke-virtual {p4}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getSequenceId()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 1158
    const-string v6, "    same seqNum as expected received data.(different kind.)"

    .line 1157
    invoke-static {v0, v6}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1161
    invoke-interface {p3}, Lcom/felicanetworks/falp/state/StateListener;->getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getRecvWaitTimer()I

    move-result v6

    invoke-interface {p3, v6}, Lcom/felicanetworks/falp/state/StateListener;->startMiliTimer(I)V

    .line 1164
    invoke-interface {p3}, Lcom/felicanetworks/falp/state/StateListener;->sendRetryCountInit()V

    .line 1166
    invoke-static {}, Lcom/felicanetworks/falp/apldatamodel/DataFromChipToApl;->getInstance()Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->getWriteBufferSize()I

    move-result v2

    .line 1167
    .local v2, "recvSize":I
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpMaxFalpRcevSize()S

    move-result v6

    if-ge v2, v6, :cond_3

    .line 1170
    .local v0, "canRecvData":I
    :goto_1
    invoke-static {}, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->getInstance()Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;

    move-result-object v6

    invoke-interface {p3, v6, v0}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    goto :goto_0

    .end local v0    # "canRecvData":I
    :cond_3
    move v0, v3

    .line 1167
    goto :goto_1

    .line 1173
    .end local v2    # "recvSize":I
    :cond_4
    const-string v3, "recvTurnOverReadyEvtWhenSendState() expected seq="

    invoke-static {v0, v3, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 1175
    const-string v3, "    received seq="

    invoke-virtual {p4}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getSequenceId()I

    move-result v6

    invoke-static {v0, v3, v6}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 1180
    invoke-virtual {p0, p3, v9, v8}, Lcom/felicanetworks/falp/state/FalpState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SI)I

    move-result v3

    goto :goto_0
.end method

.method public recvUnknownPacket(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 297
    const/4 v0, 0x7

    const-string v1, "FalpState#recvUnknownPacket()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 302
    const/16 v0, 0x100

    .line 303
    const/4 v1, -0x2

    .line 301
    invoke-virtual {p0, p1, v0, v1}, Lcom/felicanetworks/falp/state/FalpState;->actFwSendTermSentIDLE(Lcom/felicanetworks/falp/state/StateListener;SI)I

    move-result v0

    return v0
.end method

.method public sendData([B)I
    .locals 6
    .param p1, "sendbyte"    # [B

    .prologue
    const/4 v2, -0x5

    .line 89
    const/4 v3, 0x7

    const-string v4, "FalpState#sendData()"

    invoke-static {v3, v4}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 90
    if-eqz p1, :cond_0

    .line 91
    const/4 v3, 0x2

    const-string v4, "\tlen:"

    array-length v5, p1

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 96
    :cond_0
    invoke-static {}, Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;->getInstance()Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;

    move-result-object v0

    .line 97
    .local v0, "buf":Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->startEdit(I)I

    move-result v1

    .line 98
    .local v1, "ret":I
    if-nez v1, :cond_1

    .line 99
    invoke-virtual {v0, p1}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->write([B)I

    move-result v1

    .line 100
    invoke-virtual {v0}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->commit()I

    .line 101
    if-gtz v1, :cond_2

    .line 106
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v1

    .line 104
    goto :goto_0
.end method

.method protected sendTurnOverForRecvState(Lcom/felicanetworks/falp/state/StateListener;[BI)I
    .locals 8
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "data"    # [B
    .param p3, "len"    # I

    .prologue
    const/4 v5, 0x0

    .line 1038
    invoke-static {}, Lcom/felicanetworks/falp/apldatamodel/DataFromChipToApl;->getInstance()Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->getWriteBufferSize()I

    move-result v2

    .line 1039
    .local v2, "recvSize":I
    const/4 v1, 0x0

    .line 1040
    .local v1, "packet":Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;
    const/4 v0, 0x0

    .line 1041
    .local v0, "canReceiveInt":I
    const/4 v3, 0x0

    .line 1042
    .local v3, "ret":I
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpMaxFalpRcevSize()S

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1044
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getConvertAPacket()Lcom/felicanetworks/falp/packet/ConvertAPacket;

    move-result-object v1

    .line 1045
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getSeqNum()I

    move-result v4

    invoke-virtual {v1, p2, p3, v4}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->setInformation([BII)V

    .line 1046
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->countupSeqNum()V

    .line 1048
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getInstance()Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    move-result-object v6

    move-object v4, v1

    check-cast v4, Lcom/felicanetworks/falp/packet/ConvertAPacket;

    .line 1049
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getSession_id()S

    move-result v7

    .line 1048
    invoke-virtual {v6, v4, v7}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->sendConvertA(Lcom/felicanetworks/falp/packet/ConvertAPacket;S)I

    move-result v3

    .line 1052
    const/4 v0, 0x1

    .line 1068
    :goto_0
    if-eqz v3, :cond_1

    .line 1073
    const/16 v4, 0x1ff

    .line 1072
    invoke-virtual {p0, p1, v4, v5}, Lcom/felicanetworks/falp/state/FalpState;->actFwSendChangeIDLE(Lcom/felicanetworks/falp/state/StateListener;SZ)I

    move-result v4

    .line 1093
    :goto_1
    return v4

    .line 1056
    :cond_0
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getConvertBPacket()Lcom/felicanetworks/falp/packet/ConvertBPacket;

    move-result-object v1

    .line 1057
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getSeqNum()I

    move-result v4

    invoke-virtual {v1, p2, p3, v4}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->setInformation([BII)V

    .line 1058
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->countupSeqNum()V

    .line 1060
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getInstance()Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    move-result-object v6

    move-object v4, v1

    check-cast v4, Lcom/felicanetworks/falp/packet/ConvertBPacket;

    .line 1061
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getSession_id()S

    move-result v7

    .line 1060
    invoke-virtual {v6, v4, v7}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->sendConvertB(Lcom/felicanetworks/falp/packet/ConvertBPacket;S)I

    move-result v3

    .line 1064
    const/4 v0, 0x0

    goto :goto_0

    .line 1080
    :cond_1
    if-nez p3, :cond_2

    .line 1081
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Lcom/felicanetworks/falp/state/StateListener;->getTOb(Z)J

    move-result-wide v6

    invoke-interface {p1, v6, v7}, Lcom/felicanetworks/falp/state/StateListener;->startMicroTimer(J)V

    .line 1088
    :goto_2
    invoke-interface {p1}, Lcom/felicanetworks/falp/state/StateListener;->sendRetryCountInit()V

    .line 1091
    invoke-static {}, Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;->getInstance()Lcom/felicanetworks/falp/state/TransmitDataRecvWaitState;

    move-result-object v4

    invoke-interface {p1, v4, v0}, Lcom/felicanetworks/falp/state/StateListener;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I

    move v4, v5

    .line 1093
    goto :goto_1

    .line 1083
    :cond_2
    invoke-interface {p1, v5}, Lcom/felicanetworks/falp/state/StateListener;->getTOb(Z)J

    move-result-wide v6

    invoke-interface {p1, v6, v7}, Lcom/felicanetworks/falp/state/StateListener;->startMicroTimer(J)V

    goto :goto_2
.end method

.method protected setIVb(Lcom/felicanetworks/falp/state/StateListener;IIZ)V
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;
    .param p2, "recvLen"    # I
    .param p3, "sendLen"    # I
    .param p4, "isUseTDi"    # Z

    .prologue
    const/16 v0, 0x8

    .line 1202
    if-ne p2, v0, :cond_0

    .line 1203
    if-ne p3, v0, :cond_0

    .line 1204
    if-eqz p4, :cond_0

    .line 1205
    const/4 v0, 0x1

    invoke-interface {p1, p2, p3, v0}, Lcom/felicanetworks/falp/state/StateListener;->getIVb(IIZ)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/felicanetworks/falp/state/StateListener;->startMicroTimer(J)V

    .line 1209
    :goto_0
    return-void

    .line 1207
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, p2, p3, v0}, Lcom/felicanetworks/falp/state/StateListener;->getIVb(IIZ)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/felicanetworks/falp/state/StateListener;->startMicroTimer(J)V

    goto :goto_0
.end method

.method public startInitiatorFalp(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 56
    const/4 v0, 0x7

    const-string v1, "FalpState#startInitiatorFalp()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 58
    const/4 v0, -0x6

    return v0
.end method

.method public startTargetFalp(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 73
    const/4 v0, 0x7

    const-string v1, "FalpState#recvFalpReq()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 75
    const/4 v0, -0x6

    return v0
.end method

.method public terminateFalp(Lcom/felicanetworks/falp/state/StateListener;)I
    .locals 2
    .param p1, "falpListener"    # Lcom/felicanetworks/falp/state/StateListener;

    .prologue
    .line 414
    const/4 v0, 0x7

    const-string v1, "FalpState#recvTerminateFalp()"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 417
    const/4 v0, -0x6

    return v0
.end method
