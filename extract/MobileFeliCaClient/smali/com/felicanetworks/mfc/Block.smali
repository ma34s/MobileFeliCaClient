.class public Lcom/felicanetworks/mfc/Block;
.super Ljava/lang/Object;
.source "Block.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/Block;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_CYCLIC:I = 0x3

.field public static final TYPE_CYCLIC_READ_ONLY:I = 0x4

.field public static final TYPE_PIN_FOR_AREA:I = 0xa

.field public static final TYPE_PIN_FOR_AREA_APPENDABLE:I = 0x9

.field public static final TYPE_PIN_FOR_CYCLIC:I = 0x10

.field public static final TYPE_PIN_FOR_CYCLIC_ENCRYPTED:I = 0xf

.field public static final TYPE_PIN_FOR_CYCLIC_READ_ONLY:I = 0x12

.field public static final TYPE_PIN_FOR_CYCLIC_READ_ONLY_ENCRYPTED:I = 0x11

.field public static final TYPE_PIN_FOR_PURSE:I = 0x14

.field public static final TYPE_PIN_FOR_PURSE_CASH_BACK:I = 0x16

.field public static final TYPE_PIN_FOR_PURSE_CASH_BACK_ENCRYPTED:I = 0x15

.field public static final TYPE_PIN_FOR_PURSE_DECREMENT:I = 0x18

.field public static final TYPE_PIN_FOR_PURSE_DECREMENT_ENCRYPTED:I = 0x17

.field public static final TYPE_PIN_FOR_PURSE_ENCRYPTED:I = 0x13

.field public static final TYPE_PIN_FOR_PURSE_READ_ONLY:I = 0x1a

.field public static final TYPE_PIN_FOR_PURSE_READ_ONLY_ENCRYPTED:I = 0x19

.field public static final TYPE_PIN_FOR_RANDOM:I = 0xc

.field public static final TYPE_PIN_FOR_RANDOM_ENCRYPTED:I = 0xb

.field public static final TYPE_PIN_FOR_RANDOM_READ_ONLY:I = 0xe

.field public static final TYPE_PIN_FOR_RANDOM_READ_ONLY_ENCRYPTED:I = 0xd

.field public static final TYPE_PURSE:I = 0x5

.field public static final TYPE_PURSE_CASH_BACK:I = 0x6

.field public static final TYPE_PURSE_DECREMENT:I = 0x7

.field public static final TYPE_PURSE_READ_ONLY:I = 0x8

.field public static final TYPE_RANDOM:I = 0x1

.field public static final TYPE_RANDOM_READ_ONLY:I = 0x2


# instance fields
.field private blockNo:I

.field private serviceCode:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 272
    new-instance v0, Lcom/felicanetworks/mfc/Block$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/Block$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/Block;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 287
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "serviceCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/Block;->setServiceCode(I)V

    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfc/Block;->setBlockNo(I)V

    .line 198
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "serviceCode"    # I
    .param p2, "blockNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/Block;->setServiceCode(I)V

    .line 180
    invoke-virtual {p0, p2}, Lcom/felicanetworks/mfc/Block;->setBlockNo(I)V

    .line 182
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 318
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/Block;->readFromParcel(Landroid/os/Parcel;)V

    .line 319
    const-string v0, "999"

    invoke-static {v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 320
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/Block;)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/Block;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x6

    .line 297
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v4, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/Block;->blockNo:I

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/Block;->serviceCode:I

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/Block;->type:I

    .line 305
    const-string v0, "001 serviceCode=%d type=%d blockNo=%d"

    iget v1, p0, Lcom/felicanetworks/mfc/Block;->serviceCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/felicanetworks/mfc/Block;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/felicanetworks/mfc/Block;->blockNo:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 306
    const-string v0, "999"

    invoke-static {v4, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 307
    return-void
.end method


# virtual methods
.method public checkFormat()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 362
    const-string v1, "000"

    invoke-static {v3, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 366
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v1

    iget v2, p0, Lcom/felicanetworks/mfc/Block;->serviceCode:I

    invoke-virtual {v1, v2}, Lcom/felicanetworks/mfc/ServiceUtil;->getBlockType(I)I

    move-result v0

    .line 368
    .local v0, "type":I
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v1

    iget v2, p0, Lcom/felicanetworks/mfc/Block;->blockNo:I

    invoke-virtual {v1, v2}, Lcom/felicanetworks/mfc/ServiceUtil;->checkBlockNo(I)V

    .line 370
    iget v1, p0, Lcom/felicanetworks/mfc/Block;->type:I

    if-eq v1, v0, :cond_0

    .line 371
    const/4 v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "800 type is invalid "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/felicanetworks/mfc/Block;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 372
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 375
    :cond_0
    const-string v1, "999"

    invoke-static {v3, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 376
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public getBlockNo()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/felicanetworks/mfc/Block;->blockNo:I

    return v0
.end method

.method public getServiceCode()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/felicanetworks/mfc/Block;->serviceCode:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/felicanetworks/mfc/Block;->type:I

    return v0
.end method

.method public setBlockNo(I)V
    .locals 1
    .param p1, "blockNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfc/ServiceUtil;->checkBlockNo(I)V

    .line 261
    iput p1, p0, Lcom/felicanetworks/mfc/Block;->blockNo:I

    .line 263
    return-void
.end method

.method public setServiceCode(I)V
    .locals 1
    .param p1, "serviceCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/felicanetworks/mfc/ServiceUtil;->getBlockType(I)I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/Block;->type:I

    .line 223
    iput p1, p0, Lcom/felicanetworks/mfc/Block;->serviceCode:I

    .line 225
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v5, 0x4

    .line 342
    const-string v0, "%s : out = %s, flag = %d"

    const-string v1, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5, v0, v1, p1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 343
    const/4 v0, 0x6

    const-string v1, "001 serviceCode=%d type=%d blockNo=%d"

    iget v2, p0, Lcom/felicanetworks/mfc/Block;->serviceCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/felicanetworks/mfc/Block;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/felicanetworks/mfc/Block;->blockNo:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 346
    iget v0, p0, Lcom/felicanetworks/mfc/Block;->blockNo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget v0, p0, Lcom/felicanetworks/mfc/Block;->serviceCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget v0, p0, Lcom/felicanetworks/mfc/Block;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    const-string v0, "999"

    invoke-static {v5, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 351
    return-void
.end method
