.class public interface abstract Lcom/felicanetworks/mfc/IFelicaEventListener;
.super Ljava/lang/Object;
.source "IFelicaEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfc/IFelicaEventListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract errorOccurred(ILjava/lang/String;Lcom/felicanetworks/mfc/AppInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract finished()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
