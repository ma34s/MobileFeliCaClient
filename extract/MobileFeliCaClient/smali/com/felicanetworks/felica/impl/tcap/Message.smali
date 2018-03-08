.class public Lcom/felicanetworks/felica/impl/tcap/Message;
.super Ljava/lang/Object;
.source "Message.java"


# static fields
.field public static final DEVICE_ID_NULL:I = 0x0

.field public static final EXT_FELICA:B = 0x1t

.field public static final EXT_STANDARD:B = 0x0t

.field protected static final HEADER_LENGTH:I = 0x6

.field public static final MT_ACCEPT:B = -0x7ft

.field public static final MT_CLIENT_GOOD_BYE:B = 0x21t

.field public static final MT_CLIENT_GOOD_BYE_DONE:B = 0x22t

.field public static final MT_CLIENT_HELLO:B = 0x21t

.field public static final MT_CLIENT_HELLO_DONE:B = 0x22t

.field public static final MT_CLOSE_RW_REQUEST:B = 0x5t

.field public static final MT_CLOSE_RW_STATUS:B = 0x6t

.field public static final MT_DEVICES:B = 0x25t

.field public static final MT_DEVICE_RESPONSE:B = 0x26t

.field public static final MT_FEATURES:B = 0x26t

.field public static final MT_FELICA_COMMAND:B = 0x1t

.field public static final MT_FELICA_COMMAND_THRURW:B = 0x6t

.field public static final MT_FELICA_ERROR:B = 0x3t

.field public static final MT_FELICA_ERROR_THRURW:B = 0x8t

.field public static final MT_FELICA_EXCOMMAND:B = 0x5t

.field public static final MT_FELICA_EXCOMMAND_THRURW:B = 0xat

.field public static final MT_FELICA_PRECOMMAND:B = 0x4t

.field public static final MT_FELICA_PRECOMMAND_THRURW:B = 0x9t

.field public static final MT_FELICA_RESPONSE:B = 0x2t

.field public static final MT_FELICA_RESPONSE_THRURW:B = 0x7t

.field public static final MT_FINISHED:B = 0x0t

.field public static final MT_ILLEGAL_STATE_ERROR:B = 0x22t

.field public static final MT_OPEN_RW_REQUEST:B = 0x1t

.field public static final MT_OPEN_RW_STATUS:B = 0x2t

.field public static final MT_OPERATE_DEVICE:B = 0x25t

.field public static final MT_PACKET_FORMAT_ERROR:B = 0x21t

.field public static final MT_PLAY_SOUND:B = -0x7ft

.field public static final MT_REQUEST_ID:B = 0x30t

.field public static final MT_RETURN_CODE:B = 0x25t

.field public static final MT_SELECTED_FELICA_DEVICE:B = 0x3t

.field public static final MT_SELECT_INTERNAL_FELICA:B = 0x1t

.field public static final MT_SERVER_GOOD_BYE:B = 0x23t

.field public static final MT_SERVER_GOOD_BYE_DONE:B = 0x24t

.field public static final MT_SERVER_HELLO:B = 0x23t

.field public static final MT_SERVER_HELLO_DONE:B = 0x24t

.field public static final MT_SET_FELICA_TIMEOUT:B = -0x7ft

.field public static final MT_SET_NETWORK_TIMEOUT:B = -0x7ft

.field public static final MT_SET_RETRY_COUNT:B = -0x7et

.field public static final MT_UNEXPECTED_ERROR:B = 0x23t

.field public static final MT_WARNING:B = 0x1t

.field protected static final OFFSET_TO_DATA:I = 0x6

.field protected static final OFFSET_TO_DEVICE_ID_HIGH:I = 0x1

.field protected static final OFFSET_TO_DEVICE_ID_LOW:I = 0x2

.field protected static final OFFSET_TO_EXTENSION:I = 0x0

.field protected static final OFFSET_TO_LENGTH_HIGH:I = 0x4

.field protected static final OFFSET_TO_LENGTH_LOW:I = 0x5

.field protected static final OFFSET_TO_MESSAGE_TYPE:I = 0x3


# instance fields
.field protected data:[B

.field protected deviceID:I

.field protected extension:B

.field protected length:I

.field protected messageType:B

.field protected offset:I

.field protected size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    return-void
.end method

.method public constructor <init>(BIB)V
    .locals 1
    .param p1, "ext"    # B
    .param p2, "devid"    # I
    .param p3, "mt"    # B

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->init(BIBI)V

    .line 408
    return-void
.end method

.method public constructor <init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/felicanetworks/felica/impl/tcap/Message;

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iget-object v0, p1, Lcom/felicanetworks/felica/impl/tcap/Message;->data:[B

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->data:[B

    .line 329
    iget v0, p1, Lcom/felicanetworks/felica/impl/tcap/Message;->offset:I

    iput v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->offset:I

    .line 331
    iget v0, p1, Lcom/felicanetworks/felica/impl/tcap/Message;->size:I

    iput v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->size:I

    .line 333
    iget-byte v0, p1, Lcom/felicanetworks/felica/impl/tcap/Message;->extension:B

    iput-byte v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->extension:B

    .line 335
    iget v0, p1, Lcom/felicanetworks/felica/impl/tcap/Message;->deviceID:I

    iput v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->deviceID:I

    .line 337
    iget-byte v0, p1, Lcom/felicanetworks/felica/impl/tcap/Message;->messageType:B

    iput-byte v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->messageType:B

    .line 339
    iget v0, p1, Lcom/felicanetworks/felica/impl/tcap/Message;->length:I

    iput v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->length:I

    .line 340
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x42

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    move v0, p2

    .line 360
    .local v0, "pos":I
    const/4 v1, 0x6

    if-ge p3, v1, :cond_0

    .line 362
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    invoke-direct {v1, v3, v4}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v1

    .line 367
    :cond_0
    add-int/lit8 v1, v0, 0x0

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->extension:B

    .line 370
    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 371
    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 370
    iput v1, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->deviceID:I

    .line 374
    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->messageType:B

    .line 377
    add-int/lit8 v1, v0, 0x4

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 378
    add-int/lit8 v2, v0, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 377
    iput v1, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->length:I

    .line 381
    iget v1, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->length:I

    add-int/lit8 v1, v1, 0x6

    if-ge p3, v1, :cond_1

    .line 383
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;

    invoke-direct {v1, v3, v4}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;-><init>(B[B)V

    throw v1

    .line 387
    :cond_1
    iput-object p1, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->data:[B

    .line 389
    iput p2, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->offset:I

    .line 391
    iget v1, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->length:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->size:I

    .line 392
    return-void
.end method


# virtual methods
.method public getBytes(Lcom/felicanetworks/felica/util/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Lcom/felicanetworks/felica/util/ByteBuffer;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->data:[B

    iget v1, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->offset:I

    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->size:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([BII)V

    .line 553
    return-void
.end method

.method public getDeviceID()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->deviceID:I

    return v0
.end method

.method public getExtension()B
    .locals 1

    .prologue
    .line 485
    iget-byte v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->extension:B

    return v0
.end method

.method public getID()I
    .locals 2

    .prologue
    .line 518
    iget-byte v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->extension:B

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-byte v1, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->messageType:B

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->length:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->size:I

    return v0
.end method

.method public getType()B
    .locals 1

    .prologue
    .line 507
    iget-byte v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->messageType:B

    return v0
.end method

.method protected init(BIBI)V
    .locals 4
    .param p1, "ext"    # B
    .param p2, "devid"    # I
    .param p3, "mt"    # B
    .param p4, "len"    # I

    .prologue
    const v3, 0xff00

    .line 425
    const v0, 0xffff

    and-int/2addr v0, p4

    iput v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->length:I

    .line 427
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->length:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->size:I

    .line 429
    iput-byte p1, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->extension:B

    .line 431
    iput p2, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->deviceID:I

    .line 433
    iput-byte p3, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->messageType:B

    .line 435
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->length:I

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->data:[B

    .line 437
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->data:[B

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->extension:B

    aput-byte v2, v0, v1

    .line 439
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->data:[B

    const/4 v1, 0x1

    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->deviceID:I

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 441
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->data:[B

    const/4 v1, 0x2

    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->deviceID:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 443
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->data:[B

    const/4 v1, 0x3

    iget-byte v2, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->messageType:B

    aput-byte v2, v0, v1

    .line 445
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->data:[B

    const/4 v1, 0x4

    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->length:I

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 447
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->data:[B

    const/4 v1, 0x5

    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->length:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 448
    return-void
.end method

.method public validateData()Z
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x1

    return v0
.end method

.method public validateFormat()Z
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/Message;->length:I

    if-eqz v0, :cond_0

    .line 460
    const/4 v0, 0x0

    .line 463
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
