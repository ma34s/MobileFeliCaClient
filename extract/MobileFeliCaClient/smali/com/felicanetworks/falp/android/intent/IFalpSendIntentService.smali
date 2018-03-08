.class public interface abstract Lcom/felicanetworks/falp/android/intent/IFalpSendIntentService;
.super Ljava/lang/Object;
.source "IFalpSendIntentService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/falp/android/intent/IFalpSendIntentService$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendIntent(Lcom/felicanetworks/falp/android/intent/FalpSendIntentListener;Landroid/content/Intent;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
