.class public Lcom/felicanetworks/mfw/i/cmn/Asn1Parser;
.super Ljava/lang/Object;
.source "Asn1Parser.java"


# static fields
.field private static final DEPTH_MAX:I = 0xa

.field private static final LENGTH_MASK:B = 0x7ft

.field private static final LENGTH_MASK_MULTI:B = -0x80t

.field private static final TAG_MASK:B = -0x1t


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateDataLength([BI[II)Z
    .locals 5
    .param p0, "inputData"    # [B
    .param p1, "dataIndex"    # I
    .param p2, "lengthAndOffset"    # [I
    .param p3, "inputLen"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 404
    if-ge p3, v4, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v1

    .line 409
    :cond_1
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, -0x80

    if-eqz v3, :cond_3

    .line 412
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    invoke-static {v3}, Lcom/felicanetworks/mfw/i/cmn/Asn1Parser;->toUnsignedInt(B)I

    move-result v0

    .line 415
    .local v0, "lengthOfLength":I
    if-gt v0, v4, :cond_0

    if-eqz v0, :cond_0

    .line 420
    add-int/lit8 v3, v0, 0x2

    if-lt p3, v3, :cond_0

    .line 426
    if-ne v0, v2, :cond_2

    .line 429
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/felicanetworks/mfw/i/cmn/Asn1Parser;->toUnsignedInt(B)I

    move-result v3

    aput v3, p2, v1

    .line 445
    :goto_1
    add-int/lit8 v1, v0, 0x2

    aput v1, p2, v2

    .end local v0    # "lengthOfLength":I
    :goto_2
    move v1, v2

    .line 459
    goto :goto_0

    .line 433
    .restart local v0    # "lengthOfLength":I
    :cond_2
    if-ne v0, v4, :cond_0

    .line 436
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/felicanetworks/mfw/i/cmn/Asn1Parser;->toUnsignedInt(B)I

    move-result v3

    mul-int/lit16 v3, v3, 0x100

    .line 437
    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    invoke-static {v4}, Lcom/felicanetworks/mfw/i/cmn/Asn1Parser;->toUnsignedInt(B)I

    move-result v4

    add-int/2addr v3, v4

    .line 436
    aput v3, p2, v1

    goto :goto_1

    .line 452
    .end local v0    # "lengthOfLength":I
    :cond_3
    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/felicanetworks/mfw/i/cmn/Asn1Parser;->toUnsignedInt(B)I

    move-result v3

    aput v3, p2, v1

    .line 455
    aput v4, p2, v2

    goto :goto_2
.end method

.method private static countElementNum([BI)I
    .locals 9
    .param p0, "inputData"    # [B
    .param p1, "inputLen"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 482
    const/4 v0, 0x0

    .line 485
    .local v0, "elementNum":I
    if-nez p1, :cond_0

    .line 559
    :goto_0
    return v6

    .line 490
    :cond_0
    const/4 v4, 0x0

    .line 496
    .local v4, "readLen":I
    :cond_1
    aget-byte v8, p0, v4

    invoke-static {v8}, Lcom/felicanetworks/mfw/i/cmn/Asn1Parser;->validateTargetType(B)Z

    move-result v5

    .line 497
    .local v5, "result":Z
    if-nez v5, :cond_2

    move v6, v7

    .line 506
    goto :goto_0

    .line 510
    :cond_2
    const/4 v8, 0x2

    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .line 513
    .local v2, "lengthAndOffset":[I
    sub-int v8, p1, v4

    invoke-static {p0, v4, v2, v8}, Lcom/felicanetworks/mfw/i/cmn/Asn1Parser;->calculateDataLength([BI[II)Z

    move-result v5

    .line 516
    aget v1, v2, v6

    .line 517
    .local v1, "length":I
    const/4 v8, 0x1

    aget v3, v2, v8

    .line 518
    .local v3, "offset":I
    const/4 v2, 0x0

    .line 521
    if-nez v5, :cond_3

    move v6, v7

    .line 528
    goto :goto_0

    .line 532
    :cond_3
    add-int v8, v1, v3

    add-int/2addr v4, v8

    .line 535
    if-le v4, p1, :cond_4

    move v6, v7

    .line 546
    goto :goto_0

    .line 550
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 553
    if-ne v4, p1, :cond_1

    move v6, v0

    .line 559
    goto :goto_0

    .line 510
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private static freeAsn1Object(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)V
    .locals 3
    .param p0, "current"    # Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    .prologue
    .line 590
    if-nez p0, :cond_0

    .line 607
    :goto_0
    return-void

    .line 595
    :cond_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v0

    .line 596
    .local v0, "currentChildren":[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    if-eqz v0, :cond_1

    .line 599
    const/4 v1, 0x0

    .local v1, "elementIndex":I
    :goto_1
    array-length v2, v0

    if-lt v1, v2, :cond_2

    .line 606
    .end local v1    # "elementIndex":I
    :cond_1
    const/4 p0, 0x0

    .line 607
    goto :goto_0

    .line 601
    .restart local v1    # "elementIndex":I
    :cond_2
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/felicanetworks/mfw/i/cmn/Asn1Parser;->freeAsn1Object(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)V

    .line 599
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static parse([B)Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .locals 5
    .param p0, "inputData"    # [B

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 66
    array-length v2, p0

    const v3, 0xffff

    if-le v2, v3, :cond_1

    move-object v0, v1

    .line 97
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :cond_1
    new-instance v0, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    invoke-direct {v0, v4}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;-><init>(B)V

    .line 80
    .local v0, "resultAsn1Object":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-virtual {v0, p0}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->setData([B)V

    .line 83
    invoke-static {v0, v4}, Lcom/felicanetworks/mfw/i/cmn/Asn1Parser;->parseMulti(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;I)Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 92
    goto :goto_0
.end method

.method private static parseMulti(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;I)Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .locals 13
    .param p0, "current"    # Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .param p1, "depth"    # I

    .prologue
    const/4 v12, 0x0

    .line 112
    const/16 v10, 0xa

    if-le p1, v10, :cond_0

    .line 113
    invoke-virtual {p0, v12}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->setChildren([Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)V

    .line 224
    :goto_0
    return-object p0

    .line 118
    :cond_0
    const/4 v6, 0x0

    .line 119
    .local v6, "elementNum":I
    const/4 v2, 0x0

    .line 122
    .local v2, "dataIndex":I
    invoke-virtual {p0}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v10

    invoke-virtual {p0}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v11

    array-length v11, v11

    invoke-static {v10, v11}, Lcom/felicanetworks/mfw/i/cmn/Asn1Parser;->countElementNum([BI)I

    move-result v6

    .line 123
    if-gez v6, :cond_1

    .line 130
    invoke-virtual {p0, v12}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->setChildren([Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)V

    goto :goto_0

    .line 135
    :cond_1
    new-array v1, v6, [Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    .line 145
    .local v1, "currentChildren":[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    const/4 v2, 0x0

    .line 148
    const/4 v5, 0x0

    .local v5, "elementIndex":I
    :goto_1
    if-lt v5, v6, :cond_2

    .line 223
    invoke-virtual {p0, v1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->setChildren([Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)V

    goto :goto_0

    .line 151
    :cond_2
    const/4 v10, 0x2

    new-array v4, v10, [I

    fill-array-data v4, :array_0

    .line 154
    .local v4, "eachLengthAndOffset":[I
    invoke-virtual {p0}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v10

    .line 155
    invoke-virtual {p0}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v11

    array-length v11, v11

    sub-int/2addr v11, v2

    .line 154
    invoke-static {v10, v2, v4, v11}, Lcom/felicanetworks/mfw/i/cmn/Asn1Parser;->calculateDataLength([BI[II)Z

    move-result v0

    .line 158
    .local v0, "calculateResult":Z
    const/4 v10, 0x0

    aget v3, v4, v10

    .line 159
    .local v3, "eachLength":I
    const/4 v10, 0x1

    aget v7, v4, v10

    .line 160
    .local v7, "offset":I
    const/4 v4, 0x0

    .line 163
    if-nez v0, :cond_4

    .line 171
    const/4 v8, 0x0

    .local v8, "relIndex":I
    :goto_2
    if-lt v8, v5, :cond_3

    .line 178
    const/4 v1, 0x0

    .line 181
    invoke-virtual {p0, v12}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->setChildren([Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)V

    goto :goto_0

    .line 174
    :cond_3
    aget-object v10, v1, v8

    invoke-static {v10}, Lcom/felicanetworks/mfw/i/cmn/Asn1Parser;->freeAsn1Object(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)V

    .line 171
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 186
    .end local v8    # "relIndex":I
    :cond_4
    invoke-virtual {p0}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v10

    .line 187
    add-int v11, v3, v7

    .line 186
    invoke-static {v10, v2, v11, p1}, Lcom/felicanetworks/mfw/i/cmn/Asn1Parser;->parseSingle([BIII)Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v9

    .line 194
    .local v9, "targetElement":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    if-nez v9, :cond_6

    .line 202
    const/4 v8, 0x0

    .restart local v8    # "relIndex":I
    :goto_3
    if-lt v8, v5, :cond_5

    .line 208
    const/4 v1, 0x0

    .line 211
    invoke-virtual {p0, v12}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->setChildren([Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)V

    goto :goto_0

    .line 204
    :cond_5
    aget-object v10, v1, v8

    invoke-static {v10}, Lcom/felicanetworks/mfw/i/cmn/Asn1Parser;->freeAsn1Object(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;)V

    .line 202
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 216
    .end local v8    # "relIndex":I
    :cond_6
    invoke-virtual {v9}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getData()[B

    move-result-object v10

    array-length v10, v10

    invoke-virtual {v9}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getLengthOfLengthField()I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 219
    aput-object v9, v1, v5

    .line 148
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 151
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private static parseSingle([BIII)Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    .locals 11
    .param p0, "inputData"    # [B
    .param p1, "dataIndex"    # I
    .param p2, "inputLen"    # I
    .param p3, "depth"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 244
    const/4 v4, 0x0

    .line 249
    .local v4, "singleAsn1Object":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    if-ge p2, v10, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-object v7

    .line 260
    :cond_1
    aget-byte v8, p0, p1

    invoke-static {v8}, Lcom/felicanetworks/mfw/i/cmn/Asn1Parser;->validateTargetType(B)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 272
    new-array v2, v10, [I

    fill-array-data v2, :array_0

    .line 275
    .local v2, "lengthAndOffset":[I
    invoke-static {p0, p1, v2, p2}, Lcom/felicanetworks/mfw/i/cmn/Asn1Parser;->calculateDataLength([BI[II)Z

    move-result v0

    .line 279
    .local v0, "calculateResult":Z
    aget v1, v2, v9

    .line 280
    .local v1, "length":I
    const/4 v8, 0x1

    aget v3, v2, v8

    .line 281
    .local v3, "offset":I
    const/4 v2, 0x0

    .line 284
    if-eqz v0, :cond_0

    .line 295
    add-int v8, v1, v3

    if-ne v8, p2, :cond_0

    .line 315
    new-instance v4, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    .end local v4    # "singleAsn1Object":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    aget-byte v8, p0, p1

    invoke-direct {v4, v8}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;-><init>(B)V

    .line 318
    .restart local v4    # "singleAsn1Object":Lcom/felicanetworks/mfw/i/cmn/Asn1Object;
    invoke-virtual {v4, v3}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->setLengthOfLengthField(I)V

    .line 323
    new-array v5, v1, [B

    .line 324
    .local v5, "targetData":[B
    add-int v8, p1, v3

    invoke-static {p0, v8, v5, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    invoke-virtual {v4, v5}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->setData([B)V

    .line 328
    new-array v6, v3, [B

    .line 329
    .local v6, "targetTagAndLengthData":[B
    invoke-static {p0, p1, v6, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    invoke-virtual {v4, v6}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->setTagAndLengthData([B)V

    .line 333
    invoke-virtual {v4}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getTagType()I

    move-result v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_2

    .line 336
    add-int/lit8 p3, p3, 0x1

    invoke-static {v4, p3}, Lcom/felicanetworks/mfw/i/cmn/Asn1Parser;->parseMulti(Lcom/felicanetworks/mfw/i/cmn/Asn1Object;I)Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v4

    .line 339
    invoke-virtual {v4}, Lcom/felicanetworks/mfw/i/cmn/Asn1Object;->getChildren()[Lcom/felicanetworks/mfw/i/cmn/Asn1Object;

    move-result-object v8

    if-nez v8, :cond_2

    .line 347
    const/4 v4, 0x0

    .line 348
    goto :goto_0

    :cond_2
    move-object v7, v4

    .line 353
    goto :goto_0

    .line 272
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private static toUnsignedInt(B)I
    .locals 0
    .param p0, "b"    # B

    .prologue
    .line 573
    if-gez p0, :cond_0

    .line 574
    add-int/lit16 p0, p0, 0x100

    .line 576
    .end local p0    # "b":B
    :cond_0
    return p0
.end method

.method private static validateTargetType(B)Z
    .locals 1
    .param p0, "tagType"    # B

    .prologue
    .line 367
    and-int/lit8 v0, p0, -0x1

    sparse-switch v0, :sswitch_data_0

    .line 382
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 378
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 367
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x16 -> :sswitch_0
        0x18 -> :sswitch_0
        0x30 -> :sswitch_0
    .end sparse-switch
.end method
