.class public Lcom/felicanetworks/mfc/RandomData;
.super Lcom/felicanetworks/mfc/Data;
.source "RandomData.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/RandomData;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE:I = 0x1


# instance fields
.field private bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/felicanetworks/mfc/RandomData$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/RandomData$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/RandomData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 112
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 141
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 143
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/RandomData;->readFromParcel(Landroid/os/Parcel;)V

    .line 145
    const-string v0, "999"

    invoke-static {v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 146
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/RandomData;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/RandomData;-><init>(Landroid/os/Parcel;)V

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
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/RandomData;->setBytes([B)V

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
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/RandomData;->getBytesLength()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    .line 128
    iget-object v1, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 130
    const-string v1, "001 bytes.length=%d bytes[]:%d %d %d ... %d"

    iget-object v2, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 131
    iget-object v3, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    iget-object v5, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    iget-object v6, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    iget-object v7, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget-byte v6, v6, v7

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    .line 130
    invoke-static/range {v0 .. v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    const-string v1, "999"

    invoke-static {v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 133
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

    .line 187
    const-string v0, "000"

    invoke-static {v1, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    invoke-virtual {p0, v0}, Lcom/felicanetworks/mfc/RandomData;->checkBytes([B)V

    .line 189
    const-string v0, "999"

    invoke-static {v1, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 190
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

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
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/RandomData;->checkBytes([B)V

    .line 86
    iput-object p1, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    .line 88
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 9
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v8, 0x4

    .line 168
    const-string v0, "%s : out = %s, flag = %d"

    const-string v1, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8, v0, v1, p1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    const/4 v0, 0x6

    const-string v1, "001 bytes.length=%d bytes[]:%d %d %d ... %d"

    iget-object v2, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 170
    iget-object v3, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    iget-object v5, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    iget-object v6, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    iget-object v7, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget-byte v6, v6, v7

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    .line 169
    invoke-static/range {v0 .. v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/felicanetworks/mfc/RandomData;->bytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 175
    const-string v0, "999"

    invoke-static {v8, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 176
    return-void
.end method
