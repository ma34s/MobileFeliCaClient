.class public abstract Lcom/felicanetworks/falp/IFalpService$Stub;
.super Landroid/os/Binder;
.source "IFalpService.java"

# interfaces
.implements Lcom/felicanetworks/falp/IFalpService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/falp/IFalpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/falp/IFalpService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.felicanetworks.falp.IFalpService"

.field static final TRANSACTION_acceptTargetFalp:I = 0x2

.field static final TRANSACTION_cancelFalp:I = 0x6

.field static final TRANSACTION_getMaxReceiveSize:I = 0x9

.field static final TRANSACTION_getMaxSendSize:I = 0x8

.field static final TRANSACTION_recvStartCheckNO:I = 0xb

.field static final TRANSACTION_recvStartCheckYES:I = 0xa

.field static final TRANSACTION_rejectTargetFalp:I = 0x5

.field static final TRANSACTION_sendData:I = 0x3

.field static final TRANSACTION_setFalpAcceptanceListener:I = 0x7

.field static final TRANSACTION_startInitiatorFalp:I = 0x1

.field static final TRANSACTION_startInitiatorFalpInner:I = 0xc

.field static final TRANSACTION_terminateFalp:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.felicanetworks.falp.IFalpService"

    invoke-virtual {p0, p0, v0}, Lcom/felicanetworks/falp/IFalpService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/felicanetworks/falp/IFalpService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    .line 44
    :cond_0
    const-string v1, "com.felicanetworks.falp.IFalpService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/felicanetworks/falp/IFalpService;

    if-eqz v1, :cond_1

    .line 46
    check-cast v0, Lcom/felicanetworks/falp/IFalpService;

    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Lcom/felicanetworks/falp/IFalpService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/felicanetworks/falp/IFalpService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 52
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

    .line 56
    sparse-switch p1, :sswitch_data_0

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 60
    :sswitch_0
    const-string v6, "com.felicanetworks.falp.IFalpService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :sswitch_1
    const-string v6, "com.felicanetworks.falp.IFalpService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/felicanetworks/falp/FalpListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/felicanetworks/falp/FalpListener;

    move-result-object v0

    .line 69
    .local v0, "_arg0":Lcom/felicanetworks/falp/FalpListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 70
    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/falp/IFalpService$Stub;->startInitiatorFalp(Lcom/felicanetworks/falp/FalpListener;[B)I

    move-result v4

    .line 71
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":Lcom/felicanetworks/falp/FalpListener;
    .end local v1    # "_arg1":[B
    .end local v4    # "_result":I
    :sswitch_2
    const-string v6, "com.felicanetworks.falp.IFalpService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/felicanetworks/falp/FalpListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/felicanetworks/falp/FalpListener;

    move-result-object v0

    .line 81
    .restart local v0    # "_arg0":Lcom/felicanetworks/falp/FalpListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 82
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/falp/IFalpService$Stub;->acceptTargetFalp(Lcom/felicanetworks/falp/FalpListener;I)I

    move-result v4

    .line 83
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v0    # "_arg0":Lcom/felicanetworks/falp/FalpListener;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_3
    const-string v6, "com.felicanetworks.falp.IFalpService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 92
    .local v0, "_arg0":[B
    invoke-virtual {p0, v0}, Lcom/felicanetworks/falp/IFalpService$Stub;->sendData([B)I

    move-result v4

    .line 93
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 99
    .end local v0    # "_arg0":[B
    .end local v4    # "_result":I
    :sswitch_4
    const-string v6, "com.felicanetworks.falp.IFalpService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/felicanetworks/falp/IFalpService$Stub;->terminateFalp()I

    move-result v4

    .line 101
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 107
    .end local v4    # "_result":I
    :sswitch_5
    const-string v6, "com.felicanetworks.falp.IFalpService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/felicanetworks/falp/IFalpService$Stub;->rejectTargetFalp(I)I

    move-result v4

    .line 111
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 117
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_6
    const-string v6, "com.felicanetworks.falp.IFalpService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/felicanetworks/falp/IFalpService$Stub;->cancelFalp()I

    move-result v4

    .line 119
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 125
    .end local v4    # "_result":I
    :sswitch_7
    const-string v6, "com.felicanetworks.falp.IFalpService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/felicanetworks/falp/FalpListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/felicanetworks/falp/FalpListener;

    move-result-object v0

    .line 129
    .local v0, "_arg0":Lcom/felicanetworks/falp/FalpListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 130
    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/falp/IFalpService$Stub;->setFalpAcceptanceListener(Lcom/felicanetworks/falp/FalpListener;[B)I

    move-result v4

    .line 131
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 137
    .end local v0    # "_arg0":Lcom/felicanetworks/falp/FalpListener;
    .end local v1    # "_arg1":[B
    .end local v4    # "_result":I
    :sswitch_8
    const-string v6, "com.felicanetworks.falp.IFalpService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/felicanetworks/falp/IFalpService$Stub;->getMaxSendSize()I

    move-result v4

    .line 139
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 145
    .end local v4    # "_result":I
    :sswitch_9
    const-string v6, "com.felicanetworks.falp.IFalpService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/felicanetworks/falp/IFalpService$Stub;->getMaxReceiveSize()I

    move-result v4

    .line 147
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 153
    .end local v4    # "_result":I
    :sswitch_a
    const-string v6, "com.felicanetworks.falp.IFalpService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/felicanetworks/falp/IFalpService$Stub;->recvStartCheckYES()I

    move-result v4

    .line 155
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 161
    .end local v4    # "_result":I
    :sswitch_b
    const-string v6, "com.felicanetworks.falp.IFalpService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/felicanetworks/falp/IFalpService$Stub;->recvStartCheckNO()I

    move-result v4

    .line 163
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 169
    .end local v4    # "_result":I
    :sswitch_c
    const-string v6, "com.felicanetworks.falp.IFalpService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/felicanetworks/falp/FalpListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/felicanetworks/falp/FalpListener;

    move-result-object v0

    .line 173
    .restart local v0    # "_arg0":Lcom/felicanetworks/falp/FalpListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 175
    .restart local v1    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 177
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 178
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/felicanetworks/falp/IFalpService$Stub;->startInitiatorFalpInner(Lcom/felicanetworks/falp/FalpListener;[BII)I

    move-result v4

    .line 179
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 56
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
