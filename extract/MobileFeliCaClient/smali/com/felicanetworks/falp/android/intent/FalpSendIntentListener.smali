.class public interface abstract Lcom/felicanetworks/falp/android/intent/FalpSendIntentListener;
.super Ljava/lang/Object;
.source "FalpSendIntentListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/falp/android/intent/FalpSendIntentListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract proposedInitiatorFalp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sentFalpTerminated(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
