.class public abstract Lcom/felicanetworks/falp/FalpListener$Stub;
.super Landroid/os/Binder;
.source "FalpListener.java"

# interfaces
.implements Lcom/felicanetworks/falp/FalpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/falp/FalpListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/falp/FalpListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.felicanetworks.falp.FalpListener"

.field static final TRANSACTION_completedInitiatorFalp:I = 0x2

.field static final TRANSACTION_proposedInitiatorFalp:I = 0x1

.field static final TRANSACTION_receivedFalpHandshake:I = 0x4

.field static final TRANSACTION_recvDataNotify:I = 0x6

.field static final TRANSACTION_sendDataPrepared:I = 0x5

.field static final TRANSACTION_shutdownFalpCompleted:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "com.felicanetworks.falp.FalpListener"

    invoke-virtual {p0, p0, v0}, Lcom/felicanetworks/falp/FalpListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/felicanetworks/falp/FalpListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 79
    if-nez p0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    .line 82
    :cond_0
    const-string v1, "com.felicanetworks.falp.FalpListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/felicanetworks/falp/FalpListener;

    if-eqz v1, :cond_1

    .line 84
    check-cast v0, Lcom/felicanetworks/falp/FalpListener;

    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Lcom/felicanetworks/falp/FalpListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/felicanetworks/falp/FalpListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 90
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

    .line 94
    sparse-switch p1, :sswitch_data_0

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 98
    :sswitch_0
    const-string v3, "com.felicanetworks.falp.FalpListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :sswitch_1
    const-string v3, "com.felicanetworks.falp.FalpListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/felicanetworks/falp/FalpListener$Stub;->proposedInitiatorFalp()V

    goto :goto_0

    .line 109
    :sswitch_2
    const-string v3, "com.felicanetworks.falp.FalpListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/felicanetworks/falp/FalpListener$Stub;->completedInitiatorFalp()V

    goto :goto_0

    .line 115
    :sswitch_3
    const-string v3, "com.felicanetworks.falp.FalpListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 120
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/falp/FalpListener$Stub;->shutdownFalpCompleted(II)V

    goto :goto_0

    .line 125
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_4
    const-string v3, "com.felicanetworks.falp.FalpListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/felicanetworks/falp/FalpListener$Stub;->receivedFalpHandshake()V

    goto :goto_0

    .line 131
    :sswitch_5
    const-string v3, "com.felicanetworks.falp.FalpListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/felicanetworks/falp/FalpListener$Stub;->sendDataPrepared(I)V

    goto :goto_0

    .line 139
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string v3, "com.felicanetworks.falp.FalpListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 143
    .local v0, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 144
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/falp/FalpListener$Stub;->recvDataNotify([BI)V

    goto :goto_0

    .line 94
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
