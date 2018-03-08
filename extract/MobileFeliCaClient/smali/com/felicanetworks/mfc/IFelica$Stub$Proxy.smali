.class Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFelica.java"

# interfaces
.implements Lcom/felicanetworks/mfc/IFelica;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/IFelica$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput-object p1, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 577
    return-void
.end method


# virtual methods
.method public activateFelica([Ljava/lang/String;Lcom/felicanetworks/mfc/IFelicaEventListener;)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .param p1, "permitList"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/felicanetworks/mfc/IFelicaEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 622
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 625
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 627
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/felicanetworks/mfc/IFelicaEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 628
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 629
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 630
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 631
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 641
    return-object v2

    .line 627
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 634
    :cond_1
    const/4 v2, 0x0

    .line 636
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_1

    .line 637
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 638
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 640
    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancelOffline()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2624
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2625
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2628
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2629
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2630
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2631
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2632
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2639
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2642
    return-object v2

    .line 2635
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v2, 0x0

    .line 2637
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_0

    .line 2638
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 2639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2641
    throw v3
.end method

.method public checkOnlineAccess()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2493
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2496
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2497
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2498
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2499
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2500
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2507
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2510
    return-object v2

    .line 2503
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v2, 0x0

    .line 2505
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_0

    .line 2506
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 2507
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2509
    throw v3
.end method

.method public close()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 670
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 673
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 674
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 675
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 676
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 677
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 687
    return-object v2

    .line 680
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v2, 0x0

    .line 682
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_0

    .line 683
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 684
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 686
    throw v3
.end method

.method public executeFelicaCommand([BII)Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .locals 6
    .param p1, "commandPacket"    # [B
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2708
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2711
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2712
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2713
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2714
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2715
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2716
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2717
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2718
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2725
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2728
    return-object v2

    .line 2721
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :cond_0
    const/4 v2, 0x0

    .line 2723
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    goto :goto_0

    .line 2724
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :catchall_0
    move-exception v3

    .line 2725
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2727
    throw v3
.end method

.method public getBlockCountInformation([III)Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;
    .locals 6
    .param p1, "nodeCodeList"    # [I
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 753
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 754
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 757
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 758
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 759
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 762
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 763
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 764
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 774
    return-object v2

    .line 767
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;
    :cond_0
    const/4 v2, 0x0

    .line 769
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;
    goto :goto_0

    .line 770
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;
    :catchall_0
    move-exception v3

    .line 771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 773
    throw v3
.end method

.method public getContainerId(II)Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .locals 6
    .param p1, "timeout"    # I
    .param p2, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 829
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 830
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 833
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 837
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 838
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 839
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 849
    return-object v2

    .line 842
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :cond_0
    const/4 v2, 0x0

    .line 844
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    goto :goto_0

    .line 845
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :catchall_0
    move-exception v3

    .line 846
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 848
    throw v3
.end method

.method public getContainerIssueInformation(II)Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .locals 6
    .param p1, "timeout"    # I
    .param p2, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 900
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 901
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 904
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 905
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 908
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 909
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 910
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 917
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 920
    return-object v2

    .line 913
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :cond_0
    const/4 v2, 0x0

    .line 915
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    goto :goto_0

    .line 916
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :catchall_0
    move-exception v3

    .line 917
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 918
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 919
    throw v3
.end method

.method public getICCode()Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 958
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 961
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 962
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 963
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 964
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 965
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 972
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 975
    return-object v2

    .line 968
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :cond_0
    const/4 v2, 0x0

    .line 970
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    goto :goto_0

    .line 971
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :catchall_0
    move-exception v3

    .line 972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 974
    throw v3
.end method

.method public getIDm()Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1013
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1016
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1017
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1018
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1019
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1020
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1030
    return-object v2

    .line 1023
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :cond_0
    const/4 v2, 0x0

    .line 1025
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    goto :goto_0

    .line 1026
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :catchall_0
    move-exception v3

    .line 1027
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1029
    throw v3
.end method

.method public getInterface()Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1084
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1087
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1088
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1089
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1090
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1091
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoInt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1098
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1101
    return-object v2

    .line 1094
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :cond_0
    const/4 v2, 0x0

    .line 1096
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    goto :goto_0

    .line 1097
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :catchall_0
    move-exception v3

    .line 1098
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1099
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1100
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    const-string v0, "com.felicanetworks.mfc.IFelica"

    return-object v0
.end method

.method public getKeyVersion(III)Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    .locals 6
    .param p1, "serviceCode"    # I
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1167
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1170
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1171
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1172
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1173
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1174
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1175
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1176
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1177
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoInt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1184
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1187
    return-object v2

    .line 1180
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :cond_0
    const/4 v2, 0x0

    .line 1182
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    goto :goto_0

    .line 1183
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :catchall_0
    move-exception v3

    .line 1184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1186
    throw v3
.end method

.method public getNodeInformation(III)Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    .locals 6
    .param p1, "parentAreaCode"    # I
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1258
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1261
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1264
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1265
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1266
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1267
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1268
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1275
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1278
    return-object v2

    .line 1271
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    :cond_0
    const/4 v2, 0x0

    .line 1273
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    goto :goto_0

    .line 1274
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    :catchall_0
    move-exception v3

    .line 1275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1277
    throw v3
.end method

.method public getPrivacyNodeInformation(III)Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    .locals 6
    .param p1, "parentAreaCode"    # I
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1354
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1357
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1358
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1359
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1360
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1361
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1362
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1363
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1364
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1371
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1374
    return-object v2

    .line 1367
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    :cond_0
    const/4 v2, 0x0

    .line 1369
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    goto :goto_0

    .line 1370
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    :catchall_0
    move-exception v3

    .line 1371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1373
    throw v3
.end method

.method public getRFSState()Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1404
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1407
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1408
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1409
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1410
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1411
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1418
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1421
    return-object v2

    .line 1414
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;
    :cond_0
    const/4 v2, 0x0

    .line 1416
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;
    goto :goto_0

    .line 1417
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;
    :catchall_0
    move-exception v3

    .line 1418
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1420
    throw v3
.end method

.method public getSelectTimeout()Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2578
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2581
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2582
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2583
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2584
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2585
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoInt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2592
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2595
    return-object v2

    .line 2588
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :cond_0
    const/4 v2, 0x0

    .line 2590
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    goto :goto_0

    .line 2591
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :catchall_0
    move-exception v3

    .line 2592
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2594
    throw v3
.end method

.method public getSystemCode()Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1455
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1458
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1459
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1460
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1461
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1462
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoInt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1469
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1472
    return-object v2

    .line 1465
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :cond_0
    const/4 v2, 0x0

    .line 1467
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    goto :goto_0

    .line 1468
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :catchall_0
    move-exception v3

    .line 1469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1471
    throw v3
.end method

.method public getSystemCodeList(II)Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;
    .locals 6
    .param p1, "timeout"    # I
    .param p2, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1528
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1531
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1532
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1533
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1534
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1535
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1536
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1537
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1544
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1547
    return-object v2

    .line 1540
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;
    :cond_0
    const/4 v2, 0x0

    .line 1542
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;
    goto :goto_0

    .line 1543
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;
    :catchall_0
    move-exception v3

    .line 1544
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1546
    throw v3
.end method

.method public inactivateFelica()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1572
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1575
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1576
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1577
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1578
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1579
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1586
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1589
    return-object v2

    .line 1582
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v2, 0x0

    .line 1584
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_0

    .line 1585
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 1586
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1588
    throw v3
.end method

.method public open()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1634
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1637
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1638
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1639
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1640
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1641
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1648
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1651
    return-object v2

    .line 1644
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v2, 0x0

    .line 1646
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_0

    .line 1647
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 1648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1650
    throw v3
.end method

.method public push(Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .param p1, "pushSegmentParcelableWrapper"    # Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1697
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1698
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1701
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1702
    if-eqz p1, :cond_0

    .line 1703
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1704
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1709
    :goto_0
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1710
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1711
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1712
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1719
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1722
    return-object v2

    .line 1707
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1718
    :catchall_0
    move-exception v3

    .line 1719
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1721
    throw v3

    .line 1715
    :cond_1
    const/4 v2, 0x0

    .line 1717
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_1
.end method

.method public read(Lcom/felicanetworks/mfc/BlockList;II)Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;
    .locals 6
    .param p1, "blockList"    # Lcom/felicanetworks/mfc/BlockList;
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1804
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1807
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1808
    if-eqz p1, :cond_0

    .line 1809
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1810
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/felicanetworks/mfc/BlockList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1815
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1816
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1817
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1818
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1819
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1820
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1827
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1830
    return-object v2

    .line 1813
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1826
    :catchall_0
    move-exception v3

    .line 1827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1829
    throw v3

    .line 1823
    :cond_1
    const/4 v2, 0x0

    .line 1825
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;
    goto :goto_1
.end method

.method public reset()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1880
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1881
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1884
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1885
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1886
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1887
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1888
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1895
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1898
    return-object v2

    .line 1891
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v2, 0x0

    .line 1893
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_0

    .line 1894
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 1895
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1897
    throw v3
.end method

.method public select(I)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .param p1, "systemCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1954
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1957
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1958
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1959
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1960
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1961
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1962
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1969
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1972
    return-object v2

    .line 1965
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v2, 0x0

    .line 1967
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_0

    .line 1968
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 1969
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1971
    throw v3
.end method

.method public selectWithTarget(II)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .param p1, "target"    # I
    .param p2, "systemCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2048
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2051
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2052
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2053
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2054
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2055
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2056
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2057
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2064
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2067
    return-object v2

    .line 2060
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v2, 0x0

    .line 2062
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_0

    .line 2063
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 2064
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2066
    throw v3
.end method

.method public setNodeCodeSize(III)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .param p1, "nodeCodeSize"    # I
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2447
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2450
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2451
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2452
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2453
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2454
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2455
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2456
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2457
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2464
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2467
    return-object v2

    .line 2460
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v2, 0x0

    .line 2462
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_0

    .line 2463
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 2464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2466
    throw v3
.end method

.method public setPrivacy([Lcom/felicanetworks/mfc/PrivacySettingData;II)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .param p1, "privacySettingData"    # [Lcom/felicanetworks/mfc/PrivacySettingData;
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2166
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2169
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2170
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2171
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2172
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2173
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2174
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2175
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2176
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2183
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2186
    return-object v2

    .line 2179
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v2, 0x0

    .line 2181
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_0

    .line 2182
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 2183
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2185
    throw v3
.end method

.method public setPushNotificationListener(Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;Ljava/lang/String;)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .param p1, "listener"    # Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;
    .param p2, "appIdentificationCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2354
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2357
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2358
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2359
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2360
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2361
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2362
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2363
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2370
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2373
    return-object v2

    .line 2358
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 2366
    :cond_1
    const/4 v2, 0x0

    .line 2368
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_1

    .line 2369
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 2370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2372
    throw v3
.end method

.method public setSelectTimeout(I)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2533
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2536
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2537
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2538
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2539
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2540
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2541
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2548
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2551
    return-object v2

    .line 2544
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v2, 0x0

    .line 2546
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_0

    .line 2547
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :catchall_0
    move-exception v3

    .line 2548
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2550
    throw v3
.end method

.method public write(Lcom/felicanetworks/mfc/BlockDataList;II)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .locals 6
    .param p1, "blockDataList"    # Lcom/felicanetworks/mfc/BlockDataList;
    .param p2, "timeout"    # I
    .param p3, "retry"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2290
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2293
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2294
    if-eqz p1, :cond_0

    .line 2295
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2296
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/felicanetworks/mfc/BlockDataList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2301
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2302
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2303
    iget-object v3, p0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2304
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2305
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2306
    sget-object v3, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/mfc/FelicaResultInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2313
    .local v2, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2316
    return-object v2

    .line 2299
    .end local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2312
    :catchall_0
    move-exception v3

    .line 2313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2315
    throw v3

    .line 2309
    :cond_1
    const/4 v2, 0x0

    .line 2311
    .restart local v2    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    goto :goto_1
.end method
