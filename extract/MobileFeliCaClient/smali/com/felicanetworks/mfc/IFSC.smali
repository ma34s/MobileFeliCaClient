.class public interface abstract Lcom/felicanetworks/mfc/IFSC;
.super Ljava/lang/Object;
.source "IFSC.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfc/IFSC$Stub;
    }
.end annotation


# virtual methods
.method public abstract notifyError(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyResult([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract start(Ljava/lang/String;Lcom/felicanetworks/mfc/DeviceList;Lcom/felicanetworks/mfc/IFSCEventListener;Lcom/felicanetworks/mfc/IFelica;)Lcom/felicanetworks/mfc/FelicaResultInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
