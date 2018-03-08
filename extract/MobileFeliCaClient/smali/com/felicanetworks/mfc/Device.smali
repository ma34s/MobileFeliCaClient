.class public Lcom/felicanetworks/mfc/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/Device;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODING:Ljava/lang/String; = "ISO-8859-1"

.field private static final EXC_INVALID_PARAMETER:Ljava/lang/String; = "The specified type/name is null or contains an invalid character, otherwise the length is out of range."

.field private static final MAX_CHAR:I = 0x7e

.field private static final MAX_LENGTH:I = 0xff

.field private static final MIN_CHAR:I = 0x21

.field private static final MIN_LENGTH:I = 0x1


# instance fields
.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/felicanetworks/mfc/Device$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/Device$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 211
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/Device;->readFromParcel(Landroid/os/Parcel;)V

    .line 235
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/Device;)V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/Device;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/Device;->setType(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p2}, Lcom/felicanetworks/mfc/Device;->setName(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private checkString(Ljava/lang/String;)V
    .locals 10
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 170
    :try_start_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 171
    .local v4, "chbuf":Ljava/nio/CharBuffer;
    const-string v8, "ISO-8859-1"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 172
    .local v3, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v6

    .line 173
    .local v6, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v6, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 174
    .local v0, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    new-array v1, v8, [B

    .line 175
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 177
    array-length v8, v1

    const/4 v9, 0x1

    if-lt v8, v9, :cond_0

    array-length v8, v1

    const/16 v9, 0xff

    if-le v8, v9, :cond_1

    .line 178
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "The specified type/name is null or contains an invalid character, otherwise the length is out of range."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    .end local v0    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v1    # "bytes":[B
    .end local v3    # "charset":Ljava/nio/charset/Charset;
    .end local v4    # "chbuf":Ljava/nio/CharBuffer;
    .end local v6    # "encoder":Ljava/nio/charset/CharsetEncoder;
    :catch_0
    move-exception v5

    .line 187
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    throw v5

    .line 180
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local v1    # "bytes":[B
    .restart local v3    # "charset":Ljava/nio/charset/Charset;
    .restart local v4    # "chbuf":Ljava/nio/CharBuffer;
    .restart local v6    # "encoder":Ljava/nio/charset/CharsetEncoder;
    :cond_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    :try_start_1
    array-length v8, v1

    if-lt v7, v8, :cond_2

    .line 191
    return-void

    .line 181
    :cond_2
    aget-byte v8, v1, v7

    and-int/lit16 v2, v8, 0xff

    .line 182
    .local v2, "c":I
    const/16 v8, 0x21

    if-lt v2, v8, :cond_3

    const/16 v8, 0x7e

    if-le v2, v8, :cond_4

    .line 183
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "The specified type/name is null or contains an invalid character, otherwise the length is out of range."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    .end local v0    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v1    # "bytes":[B
    .end local v2    # "c":I
    .end local v3    # "charset":Ljava/nio/charset/Charset;
    .end local v4    # "chbuf":Ljava/nio/CharBuffer;
    .end local v6    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .end local v7    # "i":I
    :catch_1
    move-exception v5

    .line 189
    .local v5, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "The specified type/name is null or contains an invalid character, otherwise the length is out of range."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 180
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local v1    # "bytes":[B
    .restart local v2    # "c":I
    .restart local v3    # "charset":Ljava/nio/charset/Charset;
    .restart local v4    # "chbuf":Ljava/nio/CharBuffer;
    .restart local v6    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .restart local v7    # "i":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/Device;->type:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/Device;->name:Ljava/lang/String;

    .line 224
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/Device;->checkString(Ljava/lang/String;)V

    .line 148
    iput-object p1, p0, Lcom/felicanetworks/mfc/Device;->name:Ljava/lang/String;

    .line 149
    return-void
.end method

.method private setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/Device;->checkString(Ljava/lang/String;)V

    .line 117
    iput-object p1, p0, Lcom/felicanetworks/mfc/Device;->type:Ljava/lang/String;

    .line 118
    return-void
.end method


# virtual methods
.method public checkFormat()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 271
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/felicanetworks/mfc/Device;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/felicanetworks/mfc/Device;->checkString(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/felicanetworks/mfc/Device;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/felicanetworks/mfc/Device;->checkString(Ljava/lang/String;)V

    .line 276
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/felicanetworks/mfc/Device;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/felicanetworks/mfc/Device;->type:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/felicanetworks/mfc/Device;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/felicanetworks/mfc/Device;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    return-void
.end method
