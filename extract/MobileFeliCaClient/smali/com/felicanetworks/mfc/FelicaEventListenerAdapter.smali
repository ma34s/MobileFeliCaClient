.class public Lcom/felicanetworks/mfc/FelicaEventListenerAdapter;
.super Ljava/lang/Object;
.source "FelicaEventListenerAdapter.java"

# interfaces
.implements Lcom/felicanetworks/mfc/FelicaEventListener;


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
.method public errorOccurred(ILjava/lang/String;Lcom/felicanetworks/mfc/AppInfo;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "otherAppInfo"    # Lcom/felicanetworks/mfc/AppInfo;

    .prologue
    .line 121
    return-void
.end method

.method public finished()V
    .locals 0

    .prologue
    .line 53
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
