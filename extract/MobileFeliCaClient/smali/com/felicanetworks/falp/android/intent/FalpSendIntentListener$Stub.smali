.class public abstract Lcom/felicanetworks/falp/android/intent/FalpSendIntentListener$Stub;
.super Landroid/os/Binder;
.source "FalpSendIntentListener.java"

# interfaces
.implements Lcom/felicanetworks/falp/android/intent/FalpSendIntentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/falp/android/intent/FalpSendIntentListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/falp/android/intent/FalpSendIntentListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.felicanetworks.falp.android.intent.FalpSendIntentListener"

.field static final TRANSACTION_proposedInitiatorFalp:I = 0x1

.field static final TRANSACTION_sentFalpTerminated:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.felicanetworks.falp.android.intent.FalpSendIntentListener"

    invoke-virtual {p0, p0, v0}, Lcom/felicanetworks/falp/android/intent/FalpSendIntentListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/felicanetworks/falp/android/intent/FalpSendIntentListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.felicanetworks.falp.android.intent.FalpSendIntentListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/felicanetworks/falp/android/intent/FalpSendIntentListener;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/felicanetworks/falp/android/intent/FalpSendIntentListener;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/felicanetworks/falp/android/intent/FalpSendIntentListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/felicanetworks/falp/android/intent/FalpSendIntentListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 46
    :sswitch_0
    const-string v3, "com.felicanetworks.falp.android.intent.FalpSendIntentListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v3, "com.felicanetworks.falp.android.intent.FalpSendIntentListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/felicanetworks/falp/android/intent/FalpSendIntentListener$Stub;->proposedInitiatorFalp()V

    goto :goto_0

    .line 57
    :sswitch_2
    const-string v3, "com.felicanetworks.falp.android.intent.FalpSendIntentListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/falp/android/intent/FalpSendIntentListener$Stub;->sentFalpTerminated(II)V

    goto :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
