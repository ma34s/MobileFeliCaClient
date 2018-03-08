.class public Lcom/felicanetworks/felica/pushimpl/PushAnalyzerFactory;
.super Ljava/lang/Object;
.source "PushAnalyzerFactory.java"


# static fields
.field private static final ANDROIDINTENTEXEC_IDCODE:[B

.field private static final APP_NOTIFY:I = 0x6

.field private static final APP_START:I = 0x1

.field private static final BROWSER_START:I = 0x2

.field private static final CHECKSUM_LENGTH:I = 0x2

.field private static final EXECINFO_LENGTH:I = 0x1

.field private static final KOBETUBU_LENGTH:I = 0x1

.field private static final MAILER_START:I = 0x3

.field private static final MAX_BYTE_DATA_LENGTH:I = 0xe0

.field private static final MAX_DATA_LENGTH:I = 0xc0

.field private static final PARTPARAM_LENGTH:I = 0x2

.field private static final POPUP_START:I = 0x5

.field private static final TYPE_INVALID_CHECKSUM:Ljava/lang/String; = "TYPE_INVALID_CHECKSUM"

.field private static final TYPE_INVALID_DATA:Ljava/lang/String; = "TYPE_INVALID_DATA"

.field private static final TYPE_NULL_ARGUMENT:Ljava/lang/String; = "TYPE_NULL_ARGUMENT"

.field private static final TYPE_OUTOF_MEMORY:Ljava/lang/String; = "TYPE_OUTOF_MEMORY"

.field private static final TYPE_UNKNOWN_ERROR:Ljava/lang/String; = "TYPE_UNKNOWN_ERROR"

.field private static final VIBRATOR_START:I = 0x4

.field private static mMaxSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerFactory;->ANDROIDINTENTEXEC_IDCODE:[B

    .line 63
    const/16 v0, 0xbd

    sput v0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerFactory;->mMaxSize:I

    .line 74
    return-void

    .line 42
    nop

    :array_0
    .array-data 1
        0x41t
        0x4et
        0x44t
        0x52t
        0x30t
        0x31t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFormat([B)V
    .locals 3
    .param p0, "rcvData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 517
    if-nez p0, :cond_0

    .line 518
    const-string v0, "%s : throw PushImplException.TYPE_NULL_ARGUMENT"

    const-string v1, "800"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 519
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v1, 0x3

    const-string v2, "TYPE_NULL_ARGUMENT"

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 523
    :cond_0
    array-length v0, p0

    if-lez v0, :cond_1

    const/16 v0, 0xe0

    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 524
    :cond_1
    const-string v0, "%s : throw PushImplException.TYPE_INVALID_DATA"

    const-string v1, "801"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 525
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v1, "TYPE_INVALID_DATA"

    invoke-direct {v0, v2, v1}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 529
    :cond_2
    invoke-static {p0}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerFactory;->checkSum([B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 530
    const-string v0, "%s : throw PushImplException.TYPE_INVALID_CHECKSUM"

    const-string v1, "802"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 531
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v1, 0x4

    .line 532
    const-string v2, "TYPE_INVALID_CHECKSUM"

    .line 531
    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 534
    :cond_3
    return-void
.end method

.method private static checkSum([B)Z
    .locals 12
    .param p0, "byteData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const v9, 0xffff

    const/4 v11, 0x5

    const/4 v10, 0x1

    .line 546
    const-string v7, "%s"

    const-string v8, "000"

    invoke-static {v11, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 548
    const/4 v6, 0x0

    .line 550
    .local v6, "retVal":Z
    :try_start_0
    array-length v7, p0

    add-int/lit8 v2, v7, -0x2

    .line 551
    .local v2, "dataLength":I
    const/4 v3, 0x0

    .line 553
    .local v3, "dataSum":I
    if-gtz v2, :cond_0

    .line 554
    const/4 v7, 0x7

    const-string v8, "%s"

    const-string v9, "001"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 555
    const/4 v7, 0x0

    .line 580
    :goto_0
    return v7

    .line 559
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-lt v5, v2, :cond_2

    .line 562
    xor-int v7, v3, v9

    add-int/lit8 v7, v7, 0x1

    and-int v0, v7, v9

    .line 565
    .local v0, "calcCheckSum":I
    const/4 v1, 0x0

    .line 566
    .local v1, "checkSum":I
    aget-byte v7, p0, v2

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v1, v7

    .line 567
    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v1, v7

    .line 570
    if-ne v0, v1, :cond_1

    .line 571
    const/4 v7, 0x7

    const-string v8, "%s"

    const-string v9, "002"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    const/4 v6, 0x1

    .line 579
    :cond_1
    const-string v7, "%s"

    const-string v8, "999"

    invoke-static {v11, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    move v7, v6

    .line 580
    goto :goto_0

    .line 560
    .end local v0    # "calcCheckSum":I
    .end local v1    # "checkSum":I
    :cond_2
    :try_start_1
    aget-byte v7, p0, v5
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    .line 559
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 574
    .end local v2    # "dataLength":I
    .end local v3    # "dataSum":I
    .end local v5    # "i":I
    :catch_0
    move-exception v4

    .line 575
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v7, "%s : throw PushImplException.TYPE_INVALID_DATA"

    const-string v8, "801"

    invoke-static {v10, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 576
    new-instance v7, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v8, "TYPE_INVALID_DATA"

    invoke-direct {v7, v10, v8}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v7
.end method

.method private static getIdentCode([B)Ljava/lang/String;
    .locals 10
    .param p0, "parameter"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 449
    const/4 v6, 0x7

    const-string v7, "%s"

    const-string v8, "000"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 451
    const/4 v3, 0x0

    .line 453
    .local v3, "identCode":Ljava/lang/String;
    const/4 v4, 0x0

    .line 455
    .local v4, "index":I
    const/4 v5, 0x0

    .line 456
    .local v5, "urlSize":I
    :try_start_0
    aget-byte v6, p0, v4

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    .line 457
    const/4 v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    .line 460
    add-int/lit8 v6, v5, 0x2

    add-int/2addr v4, v6

    .line 461
    const/4 v1, 0x0

    .line 462
    .local v1, "codeSize":I
    aget-byte v6, p0, v4

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v1, v6

    .line 463
    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v1, v6

    .line 465
    add-int/lit8 v4, v4, 0x2

    .line 466
    new-array v0, v1, [B

    .line 467
    .local v0, "code":[B
    const/4 v6, 0x0

    invoke-static {p0, v4, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    new-instance v3, Ljava/lang/String;

    .end local v3    # "identCode":Ljava/lang/String;
    const-string v6, "US-ASCII"

    invoke-direct {v3, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 478
    .restart local v3    # "identCode":Ljava/lang/String;
    const/4 v6, 0x4

    const-string v7, "%s"

    const-string v8, "999"

    invoke-static {v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 479
    return-object v3

    .line 471
    .end local v0    # "code":[B
    .end local v1    # "codeSize":I
    .end local v3    # "identCode":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 472
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v6, "%s : throw PushImplException.TYPE_INVALID_DATA"

    const-string v7, "801"

    invoke-static {v9, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 473
    new-instance v6, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v7, "TYPE_INVALID_DATA"

    invoke-direct {v6, v9, v7}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 474
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v2

    .line 475
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "%s : throw PushImplException.TYPE_INVALID_DATA"

    const-string v7, "802"

    invoke-static {v9, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 476
    new-instance v6, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v7, "TYPE_INVALID_DATA"

    invoke-direct {v6, v9, v7}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v6
.end method

.method private static getParameter([B)[B
    .locals 7
    .param p0, "partData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x1

    .line 492
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v6, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 496
    :try_start_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x3

    new-array v1, v2, [B

    .line 497
    .local v1, "parameter":[B
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 498
    array-length v4, p0

    add-int/lit8 v4, v4, -0x3

    .line 497
    invoke-static {p0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v6, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 505
    return-object v1

    .line 499
    .end local v1    # "parameter":[B
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "%s : throw PushImplException.TYPE_INVALID_DATA"

    const-string v3, "801"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 501
    new-instance v2, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v3, "TYPE_INVALID_DATA"

    invoke-direct {v2, v5, v3}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private static getPartData([B)[[B
    .locals 11
    .param p0, "rcvData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 398
    const/4 v7, 0x5

    const-string v8, "%s"

    const-string v9, "000"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 403
    const/4 v7, 0x0

    :try_start_0
    aget-byte v7, p0, v7

    and-int/lit16 v5, v7, 0xff

    .line 404
    .local v5, "partNum":I
    if-gtz v5, :cond_0

    .line 405
    const/4 v7, 0x1

    const-string v8, "%s : throw PushImplException.TYPE_INVALID_DATA"

    const-string v9, "801"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 406
    new-instance v7, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v8, 0x1

    const-string v9, "TYPE_INVALID_DATA"

    invoke-direct {v7, v8, v9}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v5    # "partNum":I
    :catch_0
    move-exception v1

    .line 433
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v7, "%s : throw PushImplException.TYPE_INVALID_DATA"

    const-string v8, "802"

    invoke-static {v10, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 434
    new-instance v7, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v8, "TYPE_INVALID_DATA"

    invoke-direct {v7, v10, v8}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 410
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v5    # "partNum":I
    :cond_0
    const/4 v2, 0x1

    .line 411
    .local v2, "index":I
    :try_start_1
    new-array v3, v5, [[B

    .line 412
    .local v3, "partData":[[B
    const/4 v4, 0x0

    .local v4, "partIndex":I
    :goto_0
    if-lt v4, v5, :cond_1

    .line 426
    add-int/lit8 v0, v2, 0x2

    .line 427
    .local v0, "checkDataSize":I
    array-length v7, p0

    if-eq v0, v7, :cond_2

    .line 428
    const/4 v7, 0x1

    const-string v8, "%s : throw PushImplException.TYPE_INVALID_DATA"

    const-string v9, "803"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 429
    new-instance v7, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v8, 0x1

    const-string v9, "TYPE_INVALID_DATA"

    invoke-direct {v7, v8, v9}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 415
    .end local v0    # "checkDataSize":I
    :cond_1
    const/4 v6, 0x0

    .line 416
    .local v6, "partParamSize":I
    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    .line 417
    add-int/lit8 v7, v2, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    .line 419
    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v7, v7, 0x2

    new-array v7, v7, [B

    aput-object v7, v3, v4

    .line 420
    aget-object v7, v3, v4

    const/4 v8, 0x0

    .line 421
    add-int/lit8 v9, v6, 0x1

    add-int/lit8 v9, v9, 0x2

    .line 420
    invoke-static {p0, v2, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 422
    add-int v7, v2, v6

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v2, v7, 0x2

    .line 412
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 437
    .end local v6    # "partParamSize":I
    .restart local v0    # "checkDataSize":I
    :cond_2
    const/4 v7, 0x4

    const-string v8, "%s"

    const-string v9, "999"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 438
    return-object v3
.end method

.method public static getPushAnalyzer(Lcom/felicanetworks/mfc/PushSegment;)Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    .locals 7
    .param p0, "pushSeg"    # Lcom/felicanetworks/mfc/PushSegment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 206
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v6, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 208
    if-nez p0, :cond_0

    .line 209
    const-string v2, "%s : throw PushImplException.TYPE_NULL_ARGUMENT"

    const-string v3, "800"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 210
    new-instance v2, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v3, 0x3

    const-string v4, "TYPE_NULL_ARGUMENT"

    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 213
    :cond_0
    const/4 v1, 0x0

    .line 215
    .local v1, "pushAnalyzer":Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    :try_start_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushSegment;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 266
    const/4 v2, 0x7

    const-string v3, "%s"

    const-string v4, "007"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 267
    new-instance v1, Lcom/felicanetworks/felica/pushimpl/PushStartExtraAnalyzer;

    .end local v1    # "pushAnalyzer":Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    check-cast p0, Lcom/felicanetworks/mfc/PushStartExtraSegment;

    .end local p0    # "pushSeg":Lcom/felicanetworks/mfc/PushSegment;
    invoke-direct {v1, p0}, Lcom/felicanetworks/felica/pushimpl/PushStartExtraAnalyzer;-><init>(Lcom/felicanetworks/mfc/PushStartExtraSegment;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 288
    .restart local v1    # "pushAnalyzer":Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    :goto_0
    :pswitch_0
    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v6, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 289
    return-object v1

    .line 219
    .restart local p0    # "pushSeg":Lcom/felicanetworks/mfc/PushSegment;
    :pswitch_1
    const/4 v2, 0x7

    :try_start_1
    const-string v3, "%s"

    const-string v4, "001"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 222
    instance-of v2, p0, Lcom/felicanetworks/mfc/PushStartAppSegment;

    if-eqz v2, :cond_1

    .line 223
    const/4 v2, 0x7

    const-string v3, "%s"

    const-string v4, "002"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 224
    new-instance v1, Lcom/felicanetworks/felica/pushimpl/PushStartAppAnalyzer;

    .end local v1    # "pushAnalyzer":Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    check-cast p0, Lcom/felicanetworks/mfc/PushStartAppSegment;

    .end local p0    # "pushSeg":Lcom/felicanetworks/mfc/PushSegment;
    invoke-direct {v1, p0}, Lcom/felicanetworks/felica/pushimpl/PushStartAppAnalyzer;-><init>(Lcom/felicanetworks/mfc/PushStartAppSegment;)V

    .line 225
    .restart local v1    # "pushAnalyzer":Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    goto :goto_0

    .restart local p0    # "pushSeg":Lcom/felicanetworks/mfc/PushSegment;
    :cond_1
    instance-of v2, p0, Lcom/felicanetworks/mfc/PushIntentSegment;

    if-eqz v2, :cond_2

    .line 226
    const/4 v2, 0x7

    const-string v3, "%s"

    const-string v4, "003"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 227
    new-instance v1, Lcom/felicanetworks/felica/pushimpl/PushIntentAnalyzer;

    .end local v1    # "pushAnalyzer":Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    check-cast p0, Lcom/felicanetworks/mfc/PushIntentSegment;

    .end local p0    # "pushSeg":Lcom/felicanetworks/mfc/PushSegment;
    invoke-direct {v1, p0}, Lcom/felicanetworks/felica/pushimpl/PushIntentAnalyzer;-><init>(Lcom/felicanetworks/mfc/PushIntentSegment;)V

    .line 228
    .restart local v1    # "pushAnalyzer":Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    goto :goto_0

    .line 229
    .restart local p0    # "pushSeg":Lcom/felicanetworks/mfc/PushSegment;
    :cond_2
    const/4 v2, 0x1

    const-string v3, "%s : throw PushImplException.TYPE_INVALID_DATA"

    const-string v4, "801"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 230
    new-instance v2, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v3, 0x1

    .line 231
    const-string v4, "TYPE_INVALID_DATA"

    .line 230
    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    .end local v1    # "pushAnalyzer":Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    .end local p0    # "pushSeg":Lcom/felicanetworks/mfc/PushSegment;
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "%s : throw PushImplException.TYPE_OUTOF_MEMORY"

    const-string v3, "803"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 282
    new-instance v2, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v3, 0x2

    const-string v4, "TYPE_OUTOF_MEMORY"

    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 237
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v1    # "pushAnalyzer":Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    .restart local p0    # "pushSeg":Lcom/felicanetworks/mfc/PushSegment;
    :pswitch_2
    const/4 v2, 0x7

    :try_start_2
    const-string v3, "%s"

    const-string v4, "004"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 238
    new-instance v1, Lcom/felicanetworks/felica/pushimpl/PushStartBrowserAnalyzer;

    .end local v1    # "pushAnalyzer":Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    check-cast p0, Lcom/felicanetworks/mfc/PushStartBrowserSegment;

    .end local p0    # "pushSeg":Lcom/felicanetworks/mfc/PushSegment;
    invoke-direct {v1, p0}, Lcom/felicanetworks/felica/pushimpl/PushStartBrowserAnalyzer;-><init>(Lcom/felicanetworks/mfc/PushStartBrowserSegment;)V

    .line 239
    .restart local v1    # "pushAnalyzer":Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    goto :goto_0

    .line 243
    .restart local p0    # "pushSeg":Lcom/felicanetworks/mfc/PushSegment;
    :pswitch_3
    const/4 v2, 0x7

    const-string v3, "%s"

    const-string v4, "005"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 244
    new-instance v1, Lcom/felicanetworks/felica/pushimpl/PushStartMailerAnalyzer;

    .end local v1    # "pushAnalyzer":Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    check-cast p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;

    .end local p0    # "pushSeg":Lcom/felicanetworks/mfc/PushSegment;
    invoke-direct {v1, p0}, Lcom/felicanetworks/felica/pushimpl/PushStartMailerAnalyzer;-><init>(Lcom/felicanetworks/mfc/PushStartMailerSegment;)V

    .line 245
    .restart local v1    # "pushAnalyzer":Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    goto :goto_0

    .line 259
    .restart local p0    # "pushSeg":Lcom/felicanetworks/mfc/PushSegment;
    :pswitch_4
    const/4 v2, 0x7

    const-string v3, "%s"

    const-string v4, "006"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 260
    new-instance v1, Lcom/felicanetworks/felica/pushimpl/PushNotifyAppAnalyzer;

    .end local v1    # "pushAnalyzer":Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    check-cast p0, Lcom/felicanetworks/mfc/PushNotifyAppSegment;

    .end local p0    # "pushSeg":Lcom/felicanetworks/mfc/PushSegment;
    invoke-direct {v1, p0}, Lcom/felicanetworks/felica/pushimpl/PushNotifyAppAnalyzer;-><init>(Lcom/felicanetworks/mfc/PushNotifyAppSegment;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 261
    .restart local v1    # "pushAnalyzer":Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    goto/16 :goto_0

    .line 283
    .end local v1    # "pushAnalyzer":Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    :catch_1
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "%s : throw PushImplException.TYPE_UNKNOWN_ERROR"

    const-string v3, "804"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 285
    new-instance v2, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v3, 0x0

    const-string v4, "TYPE_UNKNOWN_ERROR"

    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getPushAnalyzer([B)[Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    .locals 15
    .param p0, "rcvData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 85
    const-string v7, "%s : rcvData=%s"

    const-string v8, "000"

    invoke-static {v14, v7, v8, p0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    invoke-static {p0}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerFactory;->checkFormat([B)V

    .line 91
    invoke-static {p0}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerFactory;->getPartData([B)[[B

    move-result-object v4

    .line 93
    .local v4, "partData":[[B
    const/4 v0, 0x0

    .line 95
    .local v0, "analyzer":[Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v6, "pushAnalyzerList":Ljava/util/List;, "Ljava/util/List<Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;>;"
    const/4 v5, 0x0

    .local v5, "partIndex":I
    :goto_0
    array-length v7, v4

    if-lt v5, v7, :cond_1

    .line 180
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v0, v7, [Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;

    .line 181
    const/4 v2, 0x0

    .local v2, "listIndex":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-lt v2, v7, :cond_3

    .line 193
    const-string v7, "%s"

    const-string v8, "999"

    invoke-static {v14, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 194
    return-object v0

    .line 103
    .end local v2    # "listIndex":I
    :cond_1
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_0

    .line 107
    aget-object v7, v4, v5

    const/4 v8, 0x0

    aget-byte v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 164
    const/4 v7, 0x7

    const-string v8, "%s"

    const-string v9, "007"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    :try_start_2
    new-instance v7, Lcom/felicanetworks/felica/pushimpl/PushExtraIntentAnalyzer;

    aget-object v8, v4, v5

    invoke-direct {v7, v8}, Lcom/felicanetworks/felica/pushimpl/PushExtraIntentAnalyzer;-><init>([B)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/felicanetworks/felica/pushimpl/PushImplException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 96
    :goto_2
    :pswitch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 111
    :pswitch_1
    const/4 v7, 0x7

    :try_start_3
    const-string v8, "%s"

    const-string v9, "001"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 113
    aget-object v7, v4, v5

    invoke-static {v7}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerFactory;->getParameter([B)[B

    move-result-object v3

    .line 120
    .local v3, "parameter":[B
    invoke-static {v3}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerFactory;->getIdentCode([B)Ljava/lang/String;

    move-result-object v7

    .line 121
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerFactory;->ANDROIDINTENTEXEC_IDCODE:[B

    const-string v10, "US-ASCII"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 120
    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    .line 122
    const/4 v7, 0x7

    const-string v8, "%s"

    const-string v9, "002"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 123
    new-instance v7, Lcom/felicanetworks/felica/pushimpl/PushStartAppAnalyzer;

    invoke-direct {v7, v3}, Lcom/felicanetworks/felica/pushimpl/PushStartAppAnalyzer;-><init>([B)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 185
    .end local v3    # "parameter":[B
    .end local v5    # "partIndex":I
    .end local v6    # "pushAnalyzerList":Ljava/util/List;, "Ljava/util/List<Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;>;"
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v7, "%s : throw PushImplException.TYPE_OUTOF_MEMORY"

    const-string v8, "800"

    invoke-static {v12, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 187
    new-instance v7, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v8, "TYPE_OUTOF_MEMORY"

    invoke-direct {v7, v13, v8}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 125
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v3    # "parameter":[B
    .restart local v5    # "partIndex":I
    .restart local v6    # "pushAnalyzerList":Ljava/util/List;, "Ljava/util/List<Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;>;"
    :cond_2
    const/4 v7, 0x7

    :try_start_4
    const-string v8, "%s"

    const-string v9, "003"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 126
    new-instance v7, Lcom/felicanetworks/felica/pushimpl/PushIntentAnalyzer;

    invoke-direct {v7, v3}, Lcom/felicanetworks/felica/pushimpl/PushIntentAnalyzer;-><init>([B)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 188
    .end local v3    # "parameter":[B
    .end local v5    # "partIndex":I
    .end local v6    # "pushAnalyzerList":Ljava/util/List;, "Ljava/util/List<Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;>;"
    :catch_1
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "%s : throw PushImplException.TYPE_UNKNOWN_ERROR"

    const-string v8, "801"

    invoke-static {v12, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 190
    new-instance v7, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v8, "TYPE_UNKNOWN_ERROR"

    invoke-direct {v7, v11, v8}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 132
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "partIndex":I
    .restart local v6    # "pushAnalyzerList":Ljava/util/List;, "Ljava/util/List<Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;>;"
    :pswitch_2
    const/4 v7, 0x7

    :try_start_5
    const-string v8, "%s"

    const-string v9, "004"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 133
    new-instance v7, Lcom/felicanetworks/felica/pushimpl/PushStartBrowserAnalyzer;

    .line 134
    aget-object v8, v4, v5

    invoke-static {v8}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerFactory;->getParameter([B)[B

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/felicanetworks/felica/pushimpl/PushStartBrowserAnalyzer;-><init>([B)V

    .line 133
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 139
    :pswitch_3
    const/4 v7, 0x7

    const-string v8, "%s"

    const-string v9, "005"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 140
    new-instance v7, Lcom/felicanetworks/felica/pushimpl/PushStartMailerAnalyzer;

    .line 141
    aget-object v8, v4, v5

    invoke-static {v8}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerFactory;->getParameter([B)[B

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/felicanetworks/felica/pushimpl/PushStartMailerAnalyzer;-><init>([B)V

    .line 140
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 156
    :pswitch_4
    const/4 v7, 0x7

    const-string v8, "%s"

    const-string v9, "006"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 157
    new-instance v7, Lcom/felicanetworks/felica/pushimpl/PushNotifyAppAnalyzer;

    .line 158
    aget-object v8, v4, v5

    invoke-static {v8}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerFactory;->getParameter([B)[B

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/felicanetworks/felica/pushimpl/PushNotifyAppAnalyzer;-><init>([B)V

    .line 157
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 170
    :catch_2
    move-exception v1

    .line 171
    .local v1, "e":Lcom/felicanetworks/felica/pushimpl/PushImplException;
    const/4 v7, 0x2

    .line 172
    const-string v8, "%s : PushExtraIntentAnalyzer throws PushImplException"

    const-string v9, "700"

    .line 171
    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 182
    .end local v1    # "e":Lcom/felicanetworks/felica/pushimpl/PushImplException;
    .restart local v2    # "listIndex":I
    :cond_3
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;

    aput-object v7, v0, v2
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getSerializeData([Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;)[B
    .locals 15
    .param p0, "pushAnalyzerArray"    # [Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 302
    const-string v8, "%s"

    const-string v9, "000"

    invoke-static {v14, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 310
    if-nez p0, :cond_0

    .line 311
    const-string v8, "%s : throw PushImplException.TYPE_NULL_ARGUMENT"

    const-string v9, "800"

    invoke-static {v12, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 312
    new-instance v8, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v9, 0x3

    const-string v10, "TYPE_NULL_ARGUMENT"

    invoke-direct {v8, v9, v10}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 313
    :cond_0
    array-length v8, p0

    if-nez v8, :cond_1

    .line 314
    const-string v8, "%s : throw PushImplException.TYPE_INVALID_DATA"

    const-string v9, "801"

    invoke-static {v12, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 315
    new-instance v8, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v9, "TYPE_INVALID_DATA"

    invoke-direct {v8, v12, v9}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 319
    :cond_1
    const/4 v5, 0x0

    .line 322
    .local v5, "maxSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, p0

    if-lt v4, v8, :cond_2

    .line 332
    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v8, v8, 0x2

    sput v8, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerFactory;->mMaxSize:I

    .line 333
    new-instance v1, Lcom/felicanetworks/felica/util/ByteBuffer;

    sget v8, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerFactory;->mMaxSize:I

    invoke-direct {v1, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    .line 334
    .local v1, "byteBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    const/4 v2, 0x0

    .line 339
    .local v2, "bytes":[B
    const/4 v7, 0x0

    .line 342
    .local v7, "serializeDataLength":I
    const/4 v0, 0x0

    .local v0, "arrayIndex":I
    :goto_1
    :try_start_0
    array-length v8, p0

    if-lt v0, v8, :cond_5

    .line 372
    invoke-virtual {v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v8

    new-array v2, v8, [B

    .line 373
    invoke-virtual {v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v11

    invoke-static {v8, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 384
    const-string v8, "%s"

    const-string v9, "999"

    invoke-static {v14, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 385
    array-length v8, p0

    invoke-static {v2, v8}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerFactory;->serializeFormat([BI)[B

    move-result-object v8

    return-object v8

    .line 323
    .end local v0    # "arrayIndex":I
    .end local v1    # "byteBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    .end local v2    # "bytes":[B
    .end local v7    # "serializeDataLength":I
    :cond_2
    aget-object v8, p0, v4

    if-nez v8, :cond_3

    .line 324
    const-string v8, "%s : throw PushImplException.TYPE_INVALID_DATA"

    const-string v9, "803"

    invoke-static {v12, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 325
    new-instance v8, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v9, "TYPE_INVALID_DATA"

    invoke-direct {v8, v12, v9}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 327
    :cond_3
    aget-object v8, p0, v4

    invoke-virtual {v8}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->getMaxSize()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 328
    aget-object v8, p0, v4

    invoke-virtual {v8}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->getMaxSize()I

    move-result v5

    .line 322
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 344
    .restart local v0    # "arrayIndex":I
    .restart local v1    # "byteBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    .restart local v2    # "bytes":[B
    .restart local v7    # "serializeDataLength":I
    :cond_5
    const/4 v8, 0x7

    :try_start_1
    const-string v9, "%s"

    const-string v10, "001"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 346
    aget-object v8, p0, v0

    invoke-virtual {v8}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzer;->serialize()[B

    move-result-object v6

    .line 349
    .local v6, "serializeData":[B
    array-length v8, v6

    add-int/2addr v8, v7

    .line 351
    sget v9, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerFactory;->mMaxSize:I

    if-le v8, v9, :cond_6

    .line 352
    const/4 v8, 0x1

    const-string v9, "%s : throw PushImplException.TYPE_INVALID_DATA"

    const-string v10, "802"

    invoke-static {v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 353
    new-instance v8, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v9, 0x1

    .line 354
    const-string v10, "TYPE_INVALID_DATA"

    .line 353
    invoke-direct {v8, v9, v10}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 375
    .end local v6    # "serializeData":[B
    :catch_0
    move-exception v3

    .line 376
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v8, "%s : throw PushImplException.TYPE_INVALID_DATA"

    const-string v9, "804"

    invoke-static {v12, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 377
    new-instance v8, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v9, "TYPE_INVALID_DATA"

    invoke-direct {v8, v12, v9}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 358
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v6    # "serializeData":[B
    :cond_6
    :try_start_2
    array-length v8, v6

    add-int/2addr v7, v8

    .line 359
    invoke-virtual {v1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 378
    .end local v6    # "serializeData":[B
    :catch_1
    move-exception v3

    .line 379
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "%s : throw PushImplException.TYPE_INVALID_DATA"

    const-string v9, "805"

    invoke-static {v12, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 380
    new-instance v8, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v9, "TYPE_UNKNOWN_ERROR"

    invoke-direct {v8, v13, v9}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v8
.end method

.method private static serializeFormat([BI)[B
    .locals 9
    .param p0, "serializeData"    # [B
    .param p1, "segmentCnt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const v8, 0xffff

    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 597
    const-string v4, "%s"

    const-string v5, "000"

    invoke-static {v7, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 599
    array-length v4, p0

    if-eqz v4, :cond_0

    .line 604
    array-length v4, p0

    sget v5, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerFactory;->mMaxSize:I

    if-le v4, v5, :cond_1

    .line 606
    :cond_0
    const-string v4, "%s invalid serializeData"

    const-string v5, "800"

    invoke-static {v6, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 607
    new-instance v4, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v5, "TYPE_INVALID_DATA"

    invoke-direct {v4, v6, v5}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 610
    :cond_1
    move v2, p1

    .line 611
    .local v2, "dataSum":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-lt v3, v4, :cond_2

    .line 615
    xor-int v4, v2, v8

    add-int/lit8 v4, v4, 0x1

    and-int v1, v4, v8

    .line 618
    .local v1, "checkSum":I
    new-instance v0, Lcom/felicanetworks/felica/util/ByteBuffer;

    array-length v4, p0

    add-int/lit8 v4, v4, 0x1

    .line 619
    add-int/lit8 v4, v4, 0x2

    .line 618
    invoke-direct {v0, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    .line 620
    .local v0, "byteBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 622
    int-to-byte v4, p1

    invoke-virtual {v0, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 623
    invoke-virtual {v0, p0}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 624
    int-to-long v4, v1

    const/4 v6, 0x2

    invoke-virtual {v0, v4, v5, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInBigEndian(JI)V

    .line 626
    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v7, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 627
    invoke-virtual {v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v4

    return-object v4

    .line 612
    .end local v0    # "byteBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    .end local v1    # "checkSum":I
    :cond_2
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    .line 611
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
