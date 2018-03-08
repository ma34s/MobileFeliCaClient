.class public abstract Lcom/felicanetworks/mfc/IFelica$Stub;
.super Landroid/os/Binder;
.source "IFelica.java"

# interfaces
.implements Lcom/felicanetworks/mfc/IFelica;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/IFelica;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.felicanetworks.mfc.IFelica"

.field static final TRANSACTION_activateFelica:I = 0x1

.field static final TRANSACTION_cancelOffline:I = 0x1d

.field static final TRANSACTION_checkOnlineAccess:I = 0x1a

.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_executeFelicaCommand:I = 0x1e

.field static final TRANSACTION_getBlockCountInformation:I = 0x3

.field static final TRANSACTION_getContainerId:I = 0x4

.field static final TRANSACTION_getContainerIssueInformation:I = 0x5

.field static final TRANSACTION_getICCode:I = 0x6

.field static final TRANSACTION_getIDm:I = 0x7

.field static final TRANSACTION_getInterface:I = 0x8

.field static final TRANSACTION_getKeyVersion:I = 0x9

.field static final TRANSACTION_getNodeInformation:I = 0xa

.field static final TRANSACTION_getPrivacyNodeInformation:I = 0xb

.field static final TRANSACTION_getRFSState:I = 0xc

.field static final TRANSACTION_getSelectTimeout:I = 0x1c

.field static final TRANSACTION_getSystemCode:I = 0xd

.field static final TRANSACTION_getSystemCodeList:I = 0xe

.field static final TRANSACTION_inactivateFelica:I = 0xf

.field static final TRANSACTION_open:I = 0x10

.field static final TRANSACTION_push:I = 0x11

.field static final TRANSACTION_read:I = 0x12

.field static final TRANSACTION_reset:I = 0x13

.field static final TRANSACTION_select:I = 0x14

.field static final TRANSACTION_selectWithTarget:I = 0x15

.field static final TRANSACTION_setNodeCodeSize:I = 0x19

.field static final TRANSACTION_setPrivacy:I = 0x16

.field static final TRANSACTION_setPushNotificationListener:I = 0x18

.field static final TRANSACTION_setSelectTimeout:I = 0x1b

.field static final TRANSACTION_write:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p0, p0, v0}, Lcom/felicanetworks/mfc/IFelica$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/felicanetworks/mfc/IFelica;
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
    const-string v1, "com.felicanetworks.mfc.IFelica"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/felicanetworks/mfc/IFelica;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/felicanetworks/mfc/IFelica;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/felicanetworks/mfc/IFelica$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 569
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 46
    :sswitch_0
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/felicanetworks/mfc/IFelicaEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/felicanetworks/mfc/IFelicaEventListener;

    move-result-object v1

    .line 56
    .local v1, "_arg1":Lcom/felicanetworks/mfc/IFelicaEventListener;
    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/mfc/IFelica$Stub;->activateFelica([Ljava/lang/String;Lcom/felicanetworks/mfc/IFelicaEventListener;)Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v3

    .line 57
    .local v3, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/felicanetworks/mfc/IFelicaEventListener;
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :sswitch_2
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/IFelica$Stub;->close()Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v3

    .line 71
    .restart local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v3, :cond_1

    .line 73
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :sswitch_3
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 87
    .local v0, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 90
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/felicanetworks/mfc/IFelica$Stub;->getBlockCountInformation([III)Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;

    move-result-object v3

    .line 91
    .local v3, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v3, :cond_2

    .line 93
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoBlockCountInformationArray;
    :sswitch_4
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 108
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/mfc/IFelica$Stub;->getContainerId(II)Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;

    move-result-object v3

    .line 109
    .local v3, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v3, :cond_3

    .line 111
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 115
    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 121
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :sswitch_5
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 125
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 126
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/mfc/IFelica$Stub;->getContainerIssueInformation(II)Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;

    move-result-object v3

    .line 127
    .restart local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v3, :cond_4

    .line 129
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 133
    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 139
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :sswitch_6
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/IFelica$Stub;->getICCode()Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;

    move-result-object v3

    .line 141
    .restart local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v3, :cond_5

    .line 143
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 147
    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 153
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :sswitch_7
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/IFelica$Stub;->getIDm()Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;

    move-result-object v3

    .line 155
    .restart local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v3, :cond_6

    .line 157
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 161
    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 167
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    :sswitch_8
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/IFelica$Stub;->getInterface()Lcom/felicanetworks/mfc/FelicaResultInfoInt;

    move-result-object v3

    .line 169
    .local v3, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v3, :cond_7

    .line 171
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfoInt;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 175
    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 181
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :sswitch_9
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 185
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 187
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 188
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/felicanetworks/mfc/IFelica$Stub;->getKeyVersion(III)Lcom/felicanetworks/mfc/FelicaResultInfoInt;

    move-result-object v3

    .line 189
    .restart local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v3, :cond_8

    .line 191
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfoInt;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 195
    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 201
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :sswitch_a
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 205
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 207
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 208
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/felicanetworks/mfc/IFelica$Stub;->getNodeInformation(III)Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;

    move-result-object v3

    .line 209
    .local v3, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v3, :cond_9

    .line 211
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 215
    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 221
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    :sswitch_b
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 225
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 227
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 228
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/felicanetworks/mfc/IFelica$Stub;->getPrivacyNodeInformation(III)Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;

    move-result-object v3

    .line 229
    .restart local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-eqz v3, :cond_a

    .line 231
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 235
    :cond_a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 241
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoNodeInformation;
    :sswitch_c
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/IFelica$Stub;->getRFSState()Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;

    move-result-object v3

    .line 243
    .local v3, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v3, :cond_b

    .line 245
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 249
    :cond_b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 255
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;
    :sswitch_d
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/IFelica$Stub;->getSystemCode()Lcom/felicanetworks/mfc/FelicaResultInfoInt;

    move-result-object v3

    .line 257
    .local v3, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    if-eqz v3, :cond_c

    .line 259
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfoInt;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 263
    :cond_c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 269
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :sswitch_e
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 273
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 274
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/mfc/IFelica$Stub;->getSystemCodeList(II)Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;

    move-result-object v3

    .line 275
    .local v3, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v3, :cond_d

    .line 277
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 281
    :cond_d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 287
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;
    :sswitch_f
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/IFelica$Stub;->inactivateFelica()Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v3

    .line 289
    .local v3, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    if-eqz v3, :cond_e

    .line 291
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 295
    :cond_e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 301
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :sswitch_10
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/IFelica$Stub;->open()Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v3

    .line 303
    .restart local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    if-eqz v3, :cond_f

    .line 305
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 309
    :cond_f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 315
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :sswitch_11
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    .line 318
    sget-object v5, Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;

    .line 323
    .local v0, "_arg0":Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfc/IFelica$Stub;->push(Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;)Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v3

    .line 324
    .restart local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    if-eqz v3, :cond_11

    .line 326
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 321
    .end local v0    # "_arg0":Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;
    goto :goto_1

    .line 330
    .restart local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_11
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 336
    .end local v0    # "_arg0":Lcom/felicanetworks/mfc/PushSegmentParcelableWrapper;
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :sswitch_12
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    .line 339
    sget-object v5, Lcom/felicanetworks/mfc/BlockList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/BlockList;

    .line 345
    .local v0, "_arg0":Lcom/felicanetworks/mfc/BlockList;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 347
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 348
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/felicanetworks/mfc/IFelica$Stub;->read(Lcom/felicanetworks/mfc/BlockList;II)Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;

    move-result-object v3

    .line 349
    .local v3, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    if-eqz v3, :cond_13

    .line 351
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 342
    .end local v0    # "_arg0":Lcom/felicanetworks/mfc/BlockList;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;
    :cond_12
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/felicanetworks/mfc/BlockList;
    goto :goto_2

    .line 355
    .restart local v1    # "_arg1":I
    .restart local v2    # "_arg2":I
    .restart local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;
    :cond_13
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 361
    .end local v0    # "_arg0":Lcom/felicanetworks/mfc/BlockList;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoDataArray;
    :sswitch_13
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/IFelica$Stub;->reset()Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v3

    .line 363
    .local v3, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v3, :cond_14

    .line 365
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 369
    :cond_14
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 375
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :sswitch_14
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 378
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfc/IFelica$Stub;->select(I)Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v3

    .line 379
    .restart local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    if-eqz v3, :cond_15

    .line 381
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 385
    :cond_15
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 391
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :sswitch_15
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 395
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 396
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/mfc/IFelica$Stub;->selectWithTarget(II)Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v3

    .line 397
    .restart local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    if-eqz v3, :cond_16

    .line 399
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 403
    :cond_16
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 409
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :sswitch_16
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    sget-object v5, Lcom/felicanetworks/mfc/PrivacySettingData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/felicanetworks/mfc/PrivacySettingData;

    .line 413
    .local v0, "_arg0":[Lcom/felicanetworks/mfc/PrivacySettingData;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 415
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 416
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/felicanetworks/mfc/IFelica$Stub;->setPrivacy([Lcom/felicanetworks/mfc/PrivacySettingData;II)Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v3

    .line 417
    .restart local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    if-eqz v3, :cond_17

    .line 419
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 423
    :cond_17
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 429
    .end local v0    # "_arg0":[Lcom/felicanetworks/mfc/PrivacySettingData;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :sswitch_17
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_18

    .line 432
    sget-object v5, Lcom/felicanetworks/mfc/BlockDataList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/BlockDataList;

    .line 438
    .local v0, "_arg0":Lcom/felicanetworks/mfc/BlockDataList;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 440
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 441
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/felicanetworks/mfc/IFelica$Stub;->write(Lcom/felicanetworks/mfc/BlockDataList;II)Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v3

    .line 442
    .restart local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    if-eqz v3, :cond_19

    .line 444
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 435
    .end local v0    # "_arg0":Lcom/felicanetworks/mfc/BlockDataList;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_18
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/felicanetworks/mfc/BlockDataList;
    goto :goto_3

    .line 448
    .restart local v1    # "_arg1":I
    .restart local v2    # "_arg2":I
    .restart local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :cond_19
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 454
    .end local v0    # "_arg0":Lcom/felicanetworks/mfc/BlockDataList;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :sswitch_18
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;

    move-result-object v0

    .line 458
    .local v0, "_arg0":Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/mfc/IFelica$Stub;->setPushNotificationListener(Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;Ljava/lang/String;)Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v3

    .line 460
    .restart local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    if-eqz v3, :cond_1a

    .line 462
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 466
    :cond_1a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 472
    .end local v0    # "_arg0":Lcom/felicanetworks/mfc/IFelicaPushAppNotificationListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :sswitch_19
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 476
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 478
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 479
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/felicanetworks/mfc/IFelica$Stub;->setNodeCodeSize(III)Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v3

    .line 480
    .restart local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    if-eqz v3, :cond_1b

    .line 482
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 486
    :cond_1b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 492
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :sswitch_1a
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/IFelica$Stub;->checkOnlineAccess()Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v3

    .line 494
    .restart local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    if-eqz v3, :cond_1c

    .line 496
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 500
    :cond_1c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 506
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :sswitch_1b
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 509
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfc/IFelica$Stub;->setSelectTimeout(I)Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v3

    .line 510
    .restart local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    if-eqz v3, :cond_1d

    .line 512
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 516
    :cond_1d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 522
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :sswitch_1c
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/IFelica$Stub;->getSelectTimeout()Lcom/felicanetworks/mfc/FelicaResultInfoInt;

    move-result-object v3

    .line 524
    .local v3, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    if-eqz v3, :cond_1e

    .line 526
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfoInt;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 530
    :cond_1e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 536
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfoInt;
    :sswitch_1d
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/IFelica$Stub;->cancelOffline()Lcom/felicanetworks/mfc/FelicaResultInfo;

    move-result-object v3

    .line 538
    .local v3, "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    if-eqz v3, :cond_1f

    .line 540
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 544
    :cond_1f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 550
    .end local v3    # "_result":Lcom/felicanetworks/mfc/FelicaResultInfo;
    :sswitch_1e
    const-string v5, "com.felicanetworks.mfc.IFelica"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 554
    .local v0, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 556
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 557
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/felicanetworks/mfc/IFelica$Stub;->executeFelicaCommand([BII)Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;

    move-result-object v3

    .line 558
    .local v3, "_result":Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    if-eqz v3, :cond_20

    .line 560
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    invoke-virtual {v3, p3, v4}, Lcom/felicanetworks/mfc/FelicaResultInfoByteArray;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 564
    :cond_20
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 42
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
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
