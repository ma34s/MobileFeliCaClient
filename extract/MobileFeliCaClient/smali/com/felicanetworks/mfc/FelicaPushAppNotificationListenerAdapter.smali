.class public Lcom/felicanetworks/mfc/FelicaPushAppNotificationListenerAdapter;
.super Ljava/lang/Object;
.source "FelicaPushAppNotificationListenerAdapter.java"

# interfaces
.implements Lcom/felicanetworks/mfc/PushAppNotificationListener;


# instance fields
.field private callbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/felicanetworks/mfc/IFelicaEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pushAppNotified(Lcom/felicanetworks/mfc/PushNotifyAppSegment;)V
    .locals 0
    .param p1, "pushNotificationAppSegment"    # Lcom/felicanetworks/mfc/PushNotifyAppSegment;

    .prologue
    .line 58
    return-void
.end method

.method public registerCallback(Lcom/felicanetworks/mfc/IFelicaEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/felicanetworks/mfc/IFelicaEventListener;

    .prologue
    .line 33
    return-void
.end method

.method public unregisterCallback(Lcom/felicanetworks/mfc/IFelicaEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/felicanetworks/mfc/IFelicaEventListener;

    .prologue
    .line 45
    return-void
.end method
