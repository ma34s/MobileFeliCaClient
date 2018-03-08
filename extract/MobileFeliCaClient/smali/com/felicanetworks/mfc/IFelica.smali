.class public interface abstract Lcom/felicanetworks/mfc/IFelica;
.super Ljava/lang/Object;
.source "IFelica.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfc/IFelica$Stub;
    }
.end annotation


# virtual methods
.method public abstract activateFelica([Ljava/lang/String;Lcom/felicanetworks/mfc/IFelicaEventListener;)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract cancelOffline()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkOnlineAccess()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract close()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract executeFelicaCommand([BII)Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getBlockCountInformation([III)Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getContainerId(II)Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getContainerIssueInformation(II)Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getICCode()Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getIDm()Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterface()Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getKeyVersion(III)Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getNodeInformation(III)Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPrivacyNodeInformation(III)Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRFSState()Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSelectTimeout()Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSystemCode()Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSystemCodeList(II)Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract inactivateFelica()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract open()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract push(Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract read(Lcom/felicanetworks/mfc/BlockList;II)Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reset()Lcom/felicanetworks/mfc/FelicaResultInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract select(I)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract selectWithTarget(II)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setNodeCodeSize(III)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPrivacy([Lcom/felicanetworks/mfc/PrivacySettingData;II)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setPushNotificationListener(Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;Ljava/lang/String;)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setSelectTimeout(I)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract write(Lcom/felicanetworks/mfc/BlockDataList;II)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
