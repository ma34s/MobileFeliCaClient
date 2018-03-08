.class public Lcom/felicanetworks/felica/util/ByteBuffer;
.super Ljava/lang/Object;
.source "ByteBuffer.java"


# instance fields
.field private bytes:[B

.field private count:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-gez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 40
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->bytes:[B

    .line 41
    return-void
.end method


# virtual methods
.method public final append(B)V
    .locals 3
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 143
    iget v0, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->count:I

    iget-object v1, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v1, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->count:I

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->bytes:[B

    iget v1, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->count:I

    aput-byte p1, v0, v1

    .line 147
    return-void
.end method

.method public final append([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 197
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([BII)V

    .line 198
    return-void
.end method

.method public final append([BII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 167
    if-gez p2, :cond_0

    .line 168
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 170
    :cond_0
    if-gez p3, :cond_1

    .line 171
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 173
    :cond_1
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 174
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int v1, p2, p3

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 176
    :cond_2
    iget v0, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->count:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->bytes:[B

    array-length v1, v1

    if-le v0, v1, :cond_3

    .line 177
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget v1, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->count:I

    add-int/2addr v1, p3

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->bytes:[B

    iget v1, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iget v0, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->count:I

    .line 181
    return-void
.end method

.method public appendInBigEndian(JI)V
    .locals 5
    .param p1, "val"    # J
    .param p3, "digit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 234
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 237
    return-void

    .line 235
    :cond_0
    mul-int/lit8 v1, v0, 0x8

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 234
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public appendInLittleEndian(JI)V
    .locals 5
    .param p1, "val"    # J
    .param p3, "digit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 273
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 276
    return-void

    .line 274
    :cond_0
    mul-int/lit8 v1, v0, 0x8

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final check(IB)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "b"    # B

    .prologue
    const/4 v0, 0x0

    .line 291
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->count:I

    if-lt p1, v1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->bytes:[B

    aget-byte v1, v1, p1

    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final check(I[B)Z
    .locals 6
    .param p1, "index"    # I
    .param p2, "bytes"    # [B

    .prologue
    const/4 v2, 0x0

    .line 310
    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    array-length v3, p2

    add-int/2addr v3, p1

    iget v4, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->count:I

    if-le v3, v4, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v2

    .line 313
    :cond_1
    array-length v1, p2

    .line 314
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 319
    const/4 v2, 0x1

    goto :goto_0

    .line 315
    :cond_2
    aget-byte v3, p2, v0

    iget-object v4, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->bytes:[B

    add-int v5, p1, v0

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final copy(I[B)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 376
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[BII)V

    .line 377
    return-void
.end method

.method public final copy(I[BII)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "bytes"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 342
    if-gez p3, :cond_0

    .line 343
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 345
    :cond_0
    if-gez p4, :cond_1

    .line 346
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 348
    :cond_1
    add-int v0, p3, p4

    array-length v1, p2

    if-le v0, v1, :cond_2

    .line 349
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int v1, p3, p4

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 351
    :cond_2
    if-gez p1, :cond_3

    .line 352
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 354
    :cond_3
    add-int v0, p1, p4

    iget v1, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->count:I

    if-le v0, v1, :cond_4

    .line 355
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int v1, p4, p4

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 357
    :cond_4
    iget-object v0, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->bytes:[B

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    return-void
.end method

.method public final get(I)B
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 107
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->count:I

    if-lt p1, v0, :cond_1

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public final getBytes()[B
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->bytes:[B

    return-object v0
.end method

.method public getInBigEndian(II)J
    .locals 6
    .param p1, "index"    # I
    .param p2, "digit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 214
    const-wide/16 v2, 0x0

    .line 215
    .local v2, "val":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 218
    return-wide v2

    .line 216
    :cond_0
    add-int v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    sub-int v1, p2, v0

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x8

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getInLittleEndian(II)J
    .locals 6
    .param p1, "index"    # I
    .param p2, "digit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 253
    const-wide/16 v2, 0x0

    .line 254
    .local v2, "val":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 257
    return-wide v2

    .line 255
    :cond_0
    add-int v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    mul-int/lit8 v1, v0, 0x8

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getLength()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->count:I

    return v0
.end method

.method public final getMaxLength()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method public final set(IB)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 126
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->count:I

    if-lt p1, v0, :cond_1

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->bytes:[B

    aput-byte p2, v0, p1

    .line 130
    return-void
.end method

.method public final setLength(I)V
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 89
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->bytes:[B

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 92
    :cond_1
    iput p1, p0, Lcom/felicanetworks/felica/util/ByteBuffer;->count:I

    .line 93
    return-void
.end method
