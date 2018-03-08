.class public Lcom/felicanetworks/mfc/CyclicData;
.super Lcom/felicanetworks/mfc/Data;
.source "CyclicData.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/CyclicData;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE:I = 0x2


# instance fields
.field private bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/felicanetworks/mfc/CyclicData$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/CyclicData$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/CyclicData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 112
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 147
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 149
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/CyclicData;->readFromParcel(Landroid/os/Parcel;)V

    .line 151
    const-string v0, "999"

    invoke-static {v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/CyclicData;)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/CyclicData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/CyclicData;->setBytes([B)V

    .line 47
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x6

    .line 122
    const-string v1, "%s : in = %s"

    const-string v2, "000"

    invoke-static {v0, v1, v2, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/CyclicData;->getBytesLength()I

    move-result v1

    new-array v7, v1, [B

    .line 128
    .local v7, "bytes":[B
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readByteArray([B)V

    .line 131
    invoke-virtual {p0, v7}, Lcom/felicanetworks/mfc/CyclicData;->setBytes([B)V

    .line 136
    const-string v1, "001 bytes.length=%d bytes[]:%d %d %d ... %d"

    array-length v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 137
    const/4 v3, 0x0

    aget-byte v3, v7, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v4, 0x1

    aget-byte v4, v7, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x2

    aget-byte v5, v7, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    array-length v6, v7

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, v7, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    .line 136
    invoke-static/range {v0 .. v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    const-string v1, "999"

    invoke-static {v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 139
    return-void
.end method


# virtual methods
.method public checkFormat()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    .line 193
    const-string v0, "000"

    invoke-static {v1, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/felicanetworks/mfc/CyclicData;->bytes:[B

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfc/CyclicData;->checkBytes([B)V

    .line 195
    const-string v0, "999"

    invoke-static {v1, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 197
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/felicanetworks/mfc/CyclicData;->bytes:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x2

    return v0
.end method

.method public setBytes([B)V
    .locals 0
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/CyclicData;->checkBytes([B)V

    .line 86
    iput-object p1, p0, Lcom/felicanetworks/mfc/CyclicData;->bytes:[B

    .line 88
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 9
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v8, 0x4

    .line 174
    const-string v0, "%s : out = %s, flag = %d"

    const-string v1, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8, v0, v1, p1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    const/4 v0, 0x6

    const-string v1, "001 bytes.length=%d bytes[]:%d %d %d ... %d"

    iget-object v2, p0, Lcom/felicanetworks/mfc/CyclicData;->bytes:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 176
    iget-object v3, p0, Lcom/felicanetworks/mfc/CyclicData;->bytes:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/mfc/CyclicData;->bytes:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    iget-object v5, p0, Lcom/felicanetworks/mfc/CyclicData;->bytes:[B

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    iget-object v6, p0, Lcom/felicanetworks/mfc/CyclicData;->bytes:[B

    iget-object v7, p0, Lcom/felicanetworks/mfc/CyclicData;->bytes:[B

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget-byte v6, v6, v7

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    .line 175
    invoke-static/range {v0 .. v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/felicanetworks/mfc/CyclicData;->bytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 181
    const-string v0, "999"

    invoke-static {v8, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 182
    return-void
.end method
