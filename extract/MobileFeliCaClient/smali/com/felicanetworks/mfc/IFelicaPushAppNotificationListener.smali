.class public interface abstract Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;
.super Ljava/lang/Object;
.source "IFelicaPushAppNotificationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract pushAppNotified(Lcom/felicanetworks/mfc/PushNotifyAppSegment;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
