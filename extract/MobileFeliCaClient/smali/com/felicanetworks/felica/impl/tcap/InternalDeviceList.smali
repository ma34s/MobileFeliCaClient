.class public Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;
.super Ljava/lang/Object;
.source "InternalDeviceList.java"


# static fields
.field private static final ENCODING:Ljava/lang/String; = "ISO-8859-1"

.field private static final MAX_CHAR:I = 0x7e

.field public static final MAX_ID:I = 0xfffe

.field public static final MAX_ID_BUILTIN:I = 0xfff

.field private static final MAX_LENGTH:I = 0xff

.field public static final MAX_SIZE:I = 0x40

.field private static final MIN_CHAR:I = 0x21

.field public static final MIN_ID:I = 0x1000

.field public static final MIN_ID_BUILTIN:I = 0x1

.field private static final MIN_LENGTH:I = 0x1


# instance fields
.field private devices:[Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

.field private size:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/16 v0, 0x40

    new-array v0, v0, [Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->devices:[Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    .line 95
    return-void
.end method

.method private addList(Lcom/felicanetworks/felica/InternalDevice;I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    .locals 7
    .param p1, "device"    # Lcom/felicanetworks/felica/InternalDevice;
    .param p2, "deviceID"    # I

    .prologue
    .line 162
    const/4 v3, 0x0

    .line 164
    .local v3, "p":I
    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->size:I

    if-lt v3, v4, :cond_1

    .line 184
    :cond_0
    const/4 v2, 0x0

    .line 185
    .local v2, "newDevice":Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    instance-of v4, p1, Lcom/felicanetworks/felica/FeliCaChip;

    if-eqz v4, :cond_3

    .line 186
    new-instance v2, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;

    .end local v2    # "newDevice":Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    check-cast p1, Lcom/felicanetworks/felica/FeliCaChip;

    .end local p1    # "device":Lcom/felicanetworks/felica/InternalDevice;
    invoke-direct {v2, p2, p1}, Lcom/felicanetworks/felica/impl/tcap/FeliCaChipWrapper;-><init>(ILcom/felicanetworks/felica/FeliCaChip;)V

    .line 192
    .restart local v2    # "newDevice":Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    :goto_1
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->size:I

    .local v0, "i":I
    :goto_2
    if-gt v0, v3, :cond_4

    .line 195
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->devices:[Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    aput-object v2, v4, v3

    .line 197
    iget v4, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->size:I

    .line 199
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->devices:[Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    aget-object v4, v4, v3

    .end local v0    # "i":I
    .end local v2    # "newDevice":Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    :goto_3
    return-object v4

    .line 167
    .restart local p1    # "device":Lcom/felicanetworks/felica/InternalDevice;
    :cond_1
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->devices:[Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->getID()I

    move-result v1

    .line 170
    .local v1, "id":I
    if-ge v1, p2, :cond_2

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 174
    :cond_2
    if-gt v1, p2, :cond_0

    .line 179
    const/4 v4, 0x0

    goto :goto_3

    .line 188
    .end local v1    # "id":I
    .restart local v2    # "newDevice":Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    :cond_3
    new-instance v2, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    .end local v2    # "newDevice":Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    invoke-direct {v2, p2, p1}, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;-><init>(ILcom/felicanetworks/felica/InternalDevice;)V

    .restart local v2    # "newDevice":Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    goto :goto_1

    .line 193
    .end local p1    # "device":Lcom/felicanetworks/felica/InternalDevice;
    .restart local v0    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->devices:[Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    iget-object v5, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->devices:[Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    add-int/lit8 v6, v0, -0x1

    aget-object v5, v5, v6

    aput-object v5, v4, v0

    .line 192
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private checkString(Ljava/lang/String;)Z
    .locals 12
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 333
    :try_start_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 334
    .local v4, "chbuf":Ljava/nio/CharBuffer;
    const-string v10, "ISO-8859-1"

    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 335
    .local v3, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v6

    .line 336
    .local v6, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v6, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 337
    .local v0, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    new-array v1, v10, [B

    .line 338
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 340
    array-length v10, v1

    if-lt v10, v9, :cond_0

    array-length v10, v1

    const/16 v11, 0xff

    if-le v10, v11, :cond_1

    .line 351
    .end local v0    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v1    # "bytes":[B
    .end local v3    # "charset":Ljava/nio/charset/Charset;
    .end local v4    # "chbuf":Ljava/nio/CharBuffer;
    .end local v6    # "encoder":Ljava/nio/charset/CharsetEncoder;
    :cond_0
    :goto_0
    return v8

    .line 343
    .restart local v0    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local v1    # "bytes":[B
    .restart local v3    # "charset":Ljava/nio/charset/Charset;
    .restart local v4    # "chbuf":Ljava/nio/CharBuffer;
    .restart local v6    # "encoder":Ljava/nio/charset/CharsetEncoder;
    :cond_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v10, v1

    if-lt v7, v10, :cond_2

    move v8, v9

    .line 349
    goto :goto_0

    .line 344
    :cond_2
    aget-byte v10, v1, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v10, 0xff

    .line 345
    .local v2, "c":I
    const/16 v10, 0x21

    if-lt v2, v10, :cond_0

    const/16 v10, 0x7e

    if-gt v2, v10, :cond_0

    .line 343
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 350
    .end local v0    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v1    # "bytes":[B
    .end local v2    # "c":I
    .end local v3    # "charset":Ljava/nio/charset/Charset;
    .end local v4    # "chbuf":Ljava/nio/CharBuffer;
    .end local v6    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .end local v7    # "i":I
    :catch_0
    move-exception v5

    .line 351
    .local v5, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method add(Lcom/felicanetworks/felica/InternalDevice;I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    .locals 4
    .param p1, "device"    # Lcom/felicanetworks/felica/InternalDevice;
    .param p2, "deviceID"    # I

    .prologue
    const/4 v1, 0x0

    .line 113
    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->size:I

    const/16 v3, 0x40

    if-eq v2, v3, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/felicanetworks/felica/InternalDevice;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->checkString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-interface {p1}, Lcom/felicanetworks/felica/InternalDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->checkString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-object v1

    .line 118
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->size:I

    if-lt v0, v2, :cond_2

    .line 130
    invoke-interface {p1}, Lcom/felicanetworks/felica/InternalDevice;->isBuiltin()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    const/4 v2, 0x1

    if-lt p2, v2, :cond_0

    const/16 v2, 0xfff

    if-gt p2, v2, :cond_0

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->addList(Lcom/felicanetworks/felica/InternalDevice;I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v1

    goto :goto_0

    .line 120
    :cond_2
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->devices:[Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->getID()I

    move-result v2

    if-eq v2, p2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->devices:[Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->compare(Lcom/felicanetworks/felica/InternalDevice;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_3
    const/16 v2, 0x1000

    if-lt p2, v2, :cond_0

    const v2, 0xfffe

    if-gt p2, v2, :cond_0

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->addList(Lcom/felicanetworks/felica/InternalDevice;I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    move-result-object v1

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->size:I

    if-lt v0, v1, :cond_0

    .line 302
    const/4 v1, 0x0

    iput v1, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->size:I

    .line 303
    return-void

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->devices:[Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public get(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 213
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->size:I

    if-lt p1, v0, :cond_1

    .line 214
    :cond_0
    const/4 v0, 0x0

    .line 216
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->devices:[Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->size:I

    if-lt v0, v1, :cond_0

    .line 237
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->devices:[Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->devices:[Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    aget-object v1, v1, v0

    goto :goto_1

    .line 232
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getByID(I)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 251
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->size:I

    if-lt v0, v1, :cond_0

    .line 256
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->devices:[Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->getID()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->devices:[Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    aget-object v1, v1, v0

    goto :goto_1

    .line 251
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 272
    const/4 v4, 0x0

    .line 273
    .local v4, "removed":Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;
    iget v3, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->size:I

    .line 275
    .local v3, "newsize":I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget v5, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->size:I

    if-lt v0, v5, :cond_1

    .line 285
    iget v5, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->size:I

    if-eq v3, v5, :cond_0

    .line 286
    iput v3, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->size:I

    .line 289
    :cond_0
    return-object v4

    .line 276
    :cond_1
    iget-object v5, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->devices:[Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    aget-object v5, v5, v0

    invoke-virtual {v5, p1, p2}, Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 277
    iget-object v5, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->devices:[Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    aget-object v4, v5, v0

    .line 278
    iget-object v5, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->devices:[Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 279
    add-int/lit8 v3, v3, -0x1

    .line 275
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_2
    iget-object v5, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->devices:[Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    iget-object v6, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->devices:[Lcom/felicanetworks/felica/impl/tcap/DeviceWrapper;

    aget-object v6, v6, v0

    aput-object v6, v5, v1

    move v1, v2

    .end local v2    # "j":I
    .restart local v1    # "j":I
    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;->size:I

    return v0
.end method
