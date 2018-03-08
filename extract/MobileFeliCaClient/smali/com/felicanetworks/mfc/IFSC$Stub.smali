.class public abstract Lcom/felicanetworks/mfc/IFSC$Stub;
.super Landroid/os/Binder;
.source "IFSC.java"

# interfaces
.implements Lcom/felicanetworks/mfc/IFSC;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/IFSC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfc/IFSC$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.felicanetworks.mfc.IFSC"

.field static final TRANSACTION_notifyError:I = 0x4

.field static final TRANSACTION_notifyResult:I = 0x3

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_stop:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.felicanetworks.mfc.IFSC"

    invoke-virtual {p0, p0, v0}, Lcom/felicanetworks/mfc/IFSC$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/felicanetworks/mfc/IFSC;
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
    const-string v1, "com.felicanetworks.mfc.IFSC"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/felicanetworks/mfc/IFSC;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/felicanetworks/mfc/IFSC;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/felicanetworks/mfc/IFSC$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/felicanetworks/mfc/IFSC$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v5, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 46
    :sswitch_0
    const-string v6, "com.felicanetworks.mfc.IFSC"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v6, "com.felicanetworks.mfc.IFSC"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 56
    sget-object v6, Lcom/felicanetworks/mfc/DeviceList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/felicanetworks/mfc/DeviceList;

    .line 62
    .local v1, "_arg1":Lcom/felicanetworks/mfc/DeviceList;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/felicanetworks/mfc/IFSCEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/felicanetworks/mfc/IFSCEventListener;

    move-result-object v2

    .line 64
    .local v2, "_arg2":Lcom/felicanetworks/mfc/IFSCEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/felicanetworks/mfc/IFelica$Stub;->asInterface(Landroid/os/IBinder;)Lcom/felicanetworks/mfc/IFelica;

    move-result-object v3

    .line 65
    .local v3, "_arg3":Lcom/felicanetworks/mfc/IFelica;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/felicanetworks/mfc/IFSC$Stub;->start(Ljava/lang/String;Lcom/felicanetworks/mfc/DeviceList;Lcom/felicanetworks/mfc/IFSCEventListener;Lcom/felicanetworks/mfc/IFelica;)Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v4

    .line 66
    .local v4, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v4, :cond_1

    .line 68
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    invoke-virtual {v4, p3, v5}, Lcom/felicanetworks/mfc/FelicaResultInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 59
    .end local v1    # "_arg1":Lcom/felicanetworks/mfc/DeviceList;
    .end local v2    # "_arg2":Lcom/felicanetworks/mfc/IFSCEventListener;
    .end local v3    # "_arg3":Lcom/felicanetworks/mfc/IFelica;
    .end local v4    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/felicanetworks/mfc/DeviceList;
    goto :goto_1

    .line 72
    .restart local v2    # "_arg2":Lcom/felicanetworks/mfc/IFSCEventListener;
    .restart local v3    # "_arg3":Lcom/felicanetworks/mfc/IFelica;
    .restart local v4    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/felicanetworks/mfc/DeviceList;
    .end local v2    # "_arg2":Lcom/felicanetworks/mfc/IFSCEventListener;
    .end local v3    # "_arg3":Lcom/felicanetworks/mfc/IFelica;
    .end local v4    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :sswitch_2
    const-string v6, "com.felicanetworks.mfc.IFSC"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/IFSC$Stub;->stop()V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    :sswitch_3
    const-string v6, "com.felicanetworks.mfc.IFSC"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 88
    .local v0, "_arg0":[B
    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfc/IFSC$Stub;->notifyResult([B)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 94
    .end local v0    # "_arg0":[B
    :sswitch_4
    const-string v6, "com.felicanetworks.mfc.IFSC"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfc/IFSC$Stub;->notifyError(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
