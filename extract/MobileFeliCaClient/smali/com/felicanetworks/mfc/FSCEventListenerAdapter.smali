.class public Lcom/felicanetworks/mfc/FSCEventListenerAdapter;
.super Ljava/lang/Object;
.source "FSCEventListenerAdapter.java"

# interfaces
.implements Lcom/felicanetworks/mfc/FSCEventListener;


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
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public errorOccurred(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 137
    return-void
.end method

.method public finished(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 59
    return-void
.end method

.method public operationRequested(ILjava/lang/String;[B)[B
    .locals 1
    .param p1, "deviceID"    # I
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerCallback(Lcom/felicanetworks/mfc/IFelicaEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/felicanetworks/mfc/IFelicaEventListener;

    .prologue
    .line 34
    return-void
.end method

.method public unregisterCallback(Lcom/felicanetworks/mfc/IFelicaEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/felicanetworks/mfc/IFelicaEventListener;

    .prologue
    .line 46
    return-void
.end method
