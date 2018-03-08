.class public Lcom/felicanetworks/felica/impl/tcap/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


# static fields
.field protected static final DEFAULT_MAJOR_VERSION:I = 0x2

.field protected static final DEFAULT_MINOR_VERSION:I = 0x1

.field protected static final HEADER_LENGTH:I = 0x5

.field protected static final OFFSET_TO_LENGTH_HIGH:I = 0x3

.field protected static final OFFSET_TO_LENGTH_LOW:I = 0x4

.field protected static final OFFSET_TO_MAJOR_VERSION:I = 0x0

.field protected static final OFFSET_TO_MINOR_VERSION:I = 0x1

.field protected static final OFFSET_TO_SUB_PROTOCOL_TYPE:I = 0x2

.field public static final SPT_APPLICATION_DATA_TRANSFER:B = 0x4t

.field public static final SPT_ERROR:B = 0x3t

.field public static final SPT_FAREWELL:B = 0x2t

.field public static final SPT_HANDSHAKE:B = 0x1t

.field public static final SPT_OPERATE_ENTITY:B = 0x6t

.field public static final SPT_UPDATE_ENTITY:B = 0x5t


# instance fields
.field protected data:[B

.field protected length:I

.field protected majorVersion:B

.field protected messages:Ljava/util/Vector;

.field protected minorVersion:B

.field protected offset:I

.field protected size:I

.field protected subProtocolType:B


# direct methods
.method public constructor <init>(IB)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "spt"    # B

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->majorVersion:B

    .line 242
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->minorVersion:B

    .line 244
    iput-byte p2, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->subProtocolType:B

    .line 245
    return-void
.end method

.method public constructor <init>(Lcom/felicanetworks/felica/impl/tcap/Packet;)V
    .locals 1
    .param p1, "packet"    # Lcom/felicanetworks/felica/impl/tcap/Packet;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iget-object v0, p1, Lcom/felicanetworks/felica/impl/tcap/Packet;->data:[B

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->data:[B

    .line 142
    iget v0, p1, Lcom/felicanetworks/felica/impl/tcap/Packet;->offset:I

    iput v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->offset:I

    .line 144
    iget v0, p1, Lcom/felicanetworks/felica/impl/tcap/Packet;->size:I

    iput v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->size:I

    .line 146
    iget-byte v0, p1, Lcom/felicanetworks/felica/impl/tcap/Packet;->majorVersion:B

    iput-byte v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->majorVersion:B

    .line 148
    iget-byte v0, p1, Lcom/felicanetworks/felica/impl/tcap/Packet;->minorVersion:B

    iput-byte v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->minorVersion:B

    .line 150
    iget-byte v0, p1, Lcom/felicanetworks/felica/impl/tcap/Packet;->subProtocolType:B

    iput-byte v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->subProtocolType:B

    .line 152
    iget-byte v0, p1, Lcom/felicanetworks/felica/impl/tcap/Packet;->subProtocolType:B

    iput v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->length:I

    .line 153
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x42

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    move v1, p2

    .line 173
    .local v1, "pos":I
    iput-object p1, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->data:[B

    .line 175
    iput p2, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->offset:I

    .line 178
    sub-int v2, p3, p2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 180
    new-instance v2, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    invoke-direct {v2, v4, v5}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v2

    .line 184
    :cond_0
    add-int/lit8 v2, v1, 0x0

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->majorVersion:B

    .line 186
    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->minorVersion:B

    .line 188
    add-int/lit8 v2, v1, 0x2

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->subProtocolType:B

    .line 190
    add-int/lit8 v2, v1, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    .line 191
    add-int/lit8 v3, v1, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 190
    iput v2, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->length:I

    .line 194
    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->length:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->length:I

    add-int/lit8 v2, v2, 0x5

    if-ge p3, v2, :cond_2

    .line 196
    :cond_1
    new-instance v2, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    invoke-direct {v2, v4, v5}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v2

    .line 200
    :cond_2
    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->length:I

    add-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->size:I

    .line 203
    add-int/lit8 v1, v1, 0x5

    .line 205
    :goto_0
    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->size:I

    add-int/2addr v2, p2

    if-lt v1, v2, :cond_3

    .line 222
    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->size:I

    add-int/2addr v2, p2

    if-eq v1, v2, :cond_5

    .line 224
    new-instance v2, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    invoke-direct {v2, v4, v5}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v2

    .line 208
    :cond_3
    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->size:I

    add-int/2addr v2, p2

    sub-int/2addr v2, v1

    const/4 v3, 0x6

    if-ge v2, v3, :cond_4

    .line 210
    new-instance v2, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    invoke-direct {v2, v4, v5}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v2

    .line 215
    :cond_4
    add-int/lit8 v2, v1, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v1, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 218
    .local v0, "messageLength":I
    add-int/lit8 v2, v0, 0x6

    add-int/2addr v1, v2

    goto :goto_0

    .line 227
    .end local v0    # "messageLength":I
    :cond_5
    return-void
.end method


# virtual methods
.method public addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/felicanetworks/felica/impl/tcap/Message;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->messages:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->messages:Ljava/util/Vector;

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->messages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 397
    return-void
.end method

.method public getBytes(Lcom/felicanetworks/felica/util/ByteBuffer;)V
    .locals 6
    .param p1, "buf"    # Lcom/felicanetworks/felica/util/ByteBuffer;

    .prologue
    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getLength()I

    move-result v3

    .line 410
    .local v3, "packetLen":I
    const/4 v4, 0x5

    new-array v2, v4, [B

    .line 412
    .local v2, "packetHeader":[B
    const/4 v4, 0x0

    iget-byte v5, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->majorVersion:B

    aput-byte v5, v2, v4

    .line 414
    const/4 v4, 0x1

    iget-byte v5, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->minorVersion:B

    aput-byte v5, v2, v4

    .line 416
    const/4 v4, 0x2

    iget-byte v5, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->subProtocolType:B

    aput-byte v5, v2, v4

    .line 418
    const/4 v4, 0x3

    const v5, 0xff00

    and-int/2addr v5, v3

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 420
    const/4 v4, 0x4

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 422
    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 424
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->messages:Ljava/util/Vector;

    if-eqz v4, :cond_0

    .line 426
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->messages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 433
    .end local v1    # "n":I
    :cond_0
    return-void

    .line 428
    .restart local v1    # "n":I
    :cond_1
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->messages:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 430
    .restart local v0    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0, p1}, Lcom/felicanetworks/felica/impl/tcap/Message;->getBytes(Lcom/felicanetworks/felica/util/ByteBuffer;)V

    .line 426
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getLength()I
    .locals 3

    .prologue
    .line 316
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->data:[B

    if-eqz v2, :cond_1

    .line 318
    iget v1, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->length:I

    .line 336
    :cond_0
    :goto_0
    return v1

    .line 322
    :cond_1
    const/4 v1, 0x0

    .line 324
    .local v1, "packetLen":I
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->messages:Ljava/util/Vector;

    if-eqz v2, :cond_2

    .line 326
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_1
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->messages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 328
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->messages:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/felica/impl/tcap/Message;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/Message;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 333
    .end local v0    # "n":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMajorVersion()B
    .locals 1

    .prologue
    .line 272
    iget-byte v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->majorVersion:B

    return v0
.end method

.method public getMessage(I)Lcom/felicanetworks/felica/impl/tcap/Message;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 379
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->messages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/Message;

    return-object v0
.end method

.method public getMessageNum()I
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->messages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getMinorVersion()B
    .locals 1

    .prologue
    .line 283
    iget-byte v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->minorVersion:B

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->data:[B

    if-eqz v0, :cond_0

    .line 350
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->size:I

    .line 354
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public getSubProtocolType()B
    .locals 1

    .prologue
    .line 305
    iget-byte v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->subProtocolType:B

    return v0
.end method

.method public getVersion()I
    .locals 2

    .prologue
    .line 294
    iget-byte v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->majorVersion:B

    shl-int/lit8 v0, v0, 0x8

    iget-byte v1, p0, Lcom/felicanetworks/felica/impl/tcap/Packet;->minorVersion:B

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public parseMessages(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V
    .locals 3
    .param p1, "deviceList"    # Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    const/16 v1, 0x42

    .line 261
    const/4 v2, 0x0

    .line 260
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v0
.end method
