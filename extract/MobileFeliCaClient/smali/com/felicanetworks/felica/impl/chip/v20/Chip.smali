.class public Lcom/felicanetworks/felica/impl/chip/v20/Chip;
.super Lcom/felicanetworks/felica/impl/chip/Chip;
.source "Chip.java"


# static fields
.field private static final ADDITIONAL_TIMEOUT:I = 0xc8

.field private static final COMMAND_RESET:[B

.field private static final DEFAULT_TIMEOUT:I = 0x1f4

.field private static final RESET_TIMEOUT:I = 0x3e8

.field private static final RESPONSE_RESET:[B

.field private static final felicaFile:Ljava/io/File;

.field private static stmpbuf:[B


# instance fields
.field private packet:Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

.field protected ponOutStream:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 46
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->COMMAND_RESET:[B

    .line 51
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->RESPONSE_RESET:[B

    .line 63
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/felica"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->felicaFile:Ljava/io/File;

    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->stmpbuf:[B

    return-void

    .line 46
    :array_0
    .array-data 1
        0x2t
        -0x58t
    .end array-data

    .line 51
    nop

    :array_1
    .array-data 1
        0x2t
        -0x57t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 90
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/chip/Chip;-><init>()V

    .line 92
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 93
    new-instance v0, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

    invoke-direct {v0}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->packet:Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

    .line 94
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method private executeCommand([BI)V
    .locals 8
    .param p1, "command"    # [B
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x15

    const/4 v6, 0x6

    const/4 v5, 0x1

    .line 478
    const-string v2, "%s command=%s,timeout=%d"

    const-string v3, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6, v2, v3, p1, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 481
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->purgeReadStream()V

    .line 483
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->packet:Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

    invoke-virtual {v2, p0, p1}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->write(Lcom/felicanetworks/felica/impl/chip/v20/Chip;[B)V

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 486
    .local v0, "started":J
    invoke-direct {p0, p2, v5}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->read(IZ)V

    .line 487
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->packet:Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->isACK()Z

    move-result v2

    if-nez v2, :cond_0

    .line 488
    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 489
    new-instance v2, Lcom/felicanetworks/felica/FeliCaChipException;

    invoke-direct {v2, v7}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v2

    .line 492
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    sub-int v2, p2, v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->read(IZ)V

    .line 493
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->packet:Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->isData()Z

    move-result v2

    if-nez v2, :cond_1

    .line 494
    const-string v2, "%s"

    const-string v3, "701"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 495
    new-instance v2, Lcom/felicanetworks/felica/FeliCaChipException;

    invoke-direct {v2, v7}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v2

    .line 498
    :cond_1
    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v6, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 499
    return-void
.end method

.method private executeThruCommand([BI)V
    .locals 9
    .param p1, "command"    # [B
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x15

    const/4 v7, 0x6

    const/4 v6, 0x1

    .line 514
    const-string v1, "%s command=%s,timeout=%d"

    const-string v4, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7, v1, v4, p1, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 517
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->purgeReadStream()V

    .line 519
    add-int/lit16 v0, p2, 0xc8

    .line 521
    .local v0, "adjustedTimeout":I
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->packet:Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

    invoke-virtual {v1, p0, p1, p2}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->writeThru(Lcom/felicanetworks/felica/impl/chip/v20/Chip;[BI)V

    .line 523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 524
    .local v2, "started":J
    invoke-direct {p0, v0, v6}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->read(IZ)V

    .line 525
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->packet:Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->isACK()Z

    move-result v1

    if-nez v1, :cond_0

    .line 526
    const-string v1, "%s"

    const-string v4, "700"

    invoke-static {v6, v1, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 527
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    invoke-direct {v1, v8}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v1

    .line 530
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-int v1, v4

    sub-int v1, v0, v1

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->read(IZ)V

    .line 531
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->packet:Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->isData()Z

    move-result v1

    if-nez v1, :cond_1

    .line 532
    const-string v1, "%s"

    const-string v4, "701"

    invoke-static {v6, v1, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 533
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    invoke-direct {v1, v8}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v1

    .line 535
    :cond_1
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->packet:Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->isThruData()Z

    move-result v1

    if-nez v1, :cond_2

    .line 536
    const-string v1, "%s"

    const-string v4, "702"

    invoke-static {v6, v1, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 537
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v4, 0x17

    invoke-direct {v1, v4}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v1

    .line 539
    :cond_2
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->packet:Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->isValidThruData()Z

    move-result v1

    if-nez v1, :cond_3

    .line 540
    const-string v1, "%s"

    const-string v4, "703"

    invoke-static {v6, v1, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 541
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v4, 0x1f

    invoke-direct {v1, v4}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v1

    .line 543
    :cond_3
    const-string v1, "%s"

    const-string v4, "999"

    invoke-static {v7, v1, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 544
    return-void
.end method

.method public static getRFSState()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 894
    const-string v4, "%s"

    const-string v7, "000"

    invoke-static {v9, v4, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 899
    :try_start_0
    const-string v3, "/dev/felica_rfs"

    .line 902
    .local v3, "rfs_device_name":Ljava/lang/String;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 905
    .local v1, "inputStream":Ljava/io/FileInputStream;
    sget-object v4, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->stmpbuf:[B

    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 906
    sget-object v4, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->stmpbuf:[B

    const/4 v7, 0x0

    aget-byte v4, v4, v7

    and-int/lit16 v2, v4, 0xff

    .line 908
    .local v2, "ret":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    const/4 v1, 0x0

    .line 915
    const-string v7, "%s return=%b"

    const-string v8, "999"

    if-eqz v2, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v9, v7, v8, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 917
    if-eqz v2, :cond_1

    .line 920
    :goto_1
    return v5

    .line 910
    .end local v1    # "inputStream":Ljava/io/FileInputStream;
    .end local v2    # "ret":I
    :catch_0
    move-exception v0

    .line 911
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "%s"

    const-string v6, "700"

    invoke-static {v5, v4, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 912
    new-instance v4, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v5, 0xb

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v4

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "ret":I
    :cond_0
    move v4, v6

    .line 915
    goto :goto_0

    :cond_1
    move v5, v6

    .line 920
    goto :goto_1
.end method

.method private read(IZ)V
    .locals 10
    .param p1, "timeout"    # I
    .param p2, "skipPortReady"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x1

    .line 446
    const-string v1, "%s timeout=%d,skipPortReady=%b"

    const-string v4, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v9, v1, v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 450
    int-to-long v4, p1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v2, v4, v6

    .line 452
    .local v2, "limit":J
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->packet:Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

    invoke-virtual {v1, p0, v2, v3}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->read(Lcom/felicanetworks/felica/impl/chip/v20/Chip;J)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->packet:Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->isPortReady()Z
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    .line 462
    :cond_1
    const-string v1, "%s"

    const-string v4, "999"

    invoke-static {v9, v1, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 463
    return-void

    .line 454
    .end local v2    # "limit":J
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    const-string v1, "%s"

    const-string v4, "700"

    invoke-static {v8, v1, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 456
    throw v0

    .line 457
    .end local v0    # "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :catch_1
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s"

    const-string v4, "701"

    invoke-static {v8, v1, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 459
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public static setCENState(Z)V
    .locals 8
    .param p0, "cen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x6

    const/4 v4, 0x1

    .line 980
    const-string v3, "%s cen=%b"

    const-string v5, "000"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v7, v3, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 985
    :try_start_0
    const-string v0, "/dev/felica_cen"

    .line 988
    .local v0, "cen_device_name":Ljava/lang/String;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 989
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    if-eqz p0, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 990
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    const/4 v2, 0x0

    .line 997
    const-string v3, "%"

    const-string v4, "999"

    invoke-static {v7, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 998
    return-void

    .line 989
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 992
    .end local v0    # "cen_device_name":Ljava/lang/String;
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 993
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "%"

    const-string v5, "700"

    invoke-static {v4, v3, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 994
    new-instance v3, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v4, 0xb

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v3
.end method


# virtual methods
.method protected cleanupWithPonCtrl()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 603
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v7, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 605
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->ponOutStream:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_0

    .line 607
    const/4 v2, 0x7

    :try_start_0
    const-string v3, "%s"

    const-string v4, "001"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 610
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->setPONState(Z)V
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :goto_0
    const/4 v2, 0x7

    :try_start_1
    const-string v3, "%s"

    const-string v4, "002"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 619
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->ponOutStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 624
    :goto_1
    iput-object v6, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->ponOutStream:Ljava/io/FileOutputStream;

    .line 627
    :cond_0
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 629
    const/4 v2, 0x7

    :try_start_2
    const-string v3, "%s"

    const-string v4, "003"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 631
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 637
    :goto_2
    iput-object v6, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->inputStream:Ljava/io/InputStream;

    .line 640
    :cond_1
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->outputStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_2

    .line 642
    const/4 v2, 0x7

    :try_start_3
    const-string v3, "%s"

    const-string v4, "004"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 644
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 649
    :goto_3
    iput-object v6, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->outputStream:Ljava/io/OutputStream;

    .line 652
    :cond_2
    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v7, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 653
    return-void

    .line 612
    :catch_0
    move-exception v1

    .line 614
    .local v1, "e1":Lcom/felicanetworks/felica/FeliCaChipException;
    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 620
    .end local v1    # "e1":Lcom/felicanetworks/felica/FeliCaChipException;
    :catch_1
    move-exception v0

    .line 622
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "%s"

    const-string v3, "701"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 633
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 635
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "%s"

    const-string v3, "702"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 645
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 647
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "%s"

    const-string v3, "703"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_3
.end method

.method protected cleanupWithoutPonCtrl()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x7

    .line 700
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 702
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 704
    const/4 v1, 0x7

    :try_start_0
    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 706
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :goto_0
    iput-object v7, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->inputStream:Ljava/io/InputStream;

    .line 716
    :cond_0
    const-string v1, "%s"

    const-string v2, "002"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 718
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->outputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 720
    const/4 v1, 0x7

    :try_start_1
    const-string v2, "%s"

    const-string v3, "003"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 722
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 729
    :goto_1
    iput-object v7, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->outputStream:Ljava/io/OutputStream;

    .line 732
    :cond_1
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 733
    return-void

    .line 708
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 724
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 727
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected doClose()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 161
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 164
    sget-object v0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->COMMAND_RESET:[B

    const/16 v1, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->executeCommand([BI)V

    .line 166
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->packet:Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

    sget-object v1, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->RESPONSE_RESET:[B

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->compareData([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 168
    new-instance v0, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v0

    .line 171
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method protected doCloseNoReset()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 1064
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1065
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1067
    return-void
.end method

.method protected doExecute([BI)[B
    .locals 5
    .param p1, "command"    # [B
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    .line 238
    const-string v1, "%s command=%s,timeout=%d"

    const-string v2, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v1, v2, p1, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->executeCommand([BI)V

    .line 242
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->packet:Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->getData()[B

    move-result-object v0

    .line 244
    .local v0, "ret":[B
    const-string v1, "%s return=%s"

    const-string v2, "999"

    invoke-static {v4, v1, v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    return-object v0
.end method

.method protected doExecuteThru([BI)[B
    .locals 5
    .param p1, "command"    # [B
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    .line 263
    const-string v1, "%s command=%s,timeout=%d"

    const-string v2, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v1, v2, p1, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->executeThruCommand([BI)V

    .line 267
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->packet:Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->getThruData()[B

    move-result-object v0

    .line 269
    .local v0, "ret":[B
    const-string v1, "%s return=%s"

    const-string v2, "999"

    invoke-static {v4, v1, v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 270
    return-object v0
.end method

.method protected doInitialize()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 108
    const/16 v3, 0x1f4

    .line 109
    .local v3, "timeOut":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 111
    .local v0, "currentTime":J
    const-string v4, "%s"

    const-string v5, "000"

    invoke-static {v10, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 115
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v3, v4}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->read(IZ)V

    .line 116
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->packet:Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->isPortReady()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    const/4 v4, 0x7

    const-string v5, "%s"

    const-string v6, "001"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    :goto_0
    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v10, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 135
    return-void

    .line 120
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    const-string v4, "%s"

    const-string v5, "700"

    invoke-static {v8, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 122
    invoke-virtual {v2}, Lcom/felicanetworks/felica/FeliCaChipException;->getType()I

    move-result v4

    const/16 v5, 0x1f

    if-eq v4, v5, :cond_1

    .line 123
    const-string v4, "%s"

    const-string v5, "701"

    invoke-static {v8, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 124
    throw v2

    .line 126
    .end local v2    # "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :catch_1
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "%s"

    const-string v5, "702"

    invoke-static {v8, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 128
    new-instance v4, Lcom/felicanetworks/felica/FeliCaChipException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v9, v5}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 131
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    int-to-long v4, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    sub-long/2addr v4, v6

    long-to-int v3, v4

    .line 112
    if-gtz v3, :cond_0

    goto :goto_0
.end method

.method protected doInitializeWithoutPonCtrl()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 148
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 149
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method protected doReceive(I)[B
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doReceiveBuf(I)Lcom/felicanetworks/felica/util/ByteBuffer;
    .locals 2
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    .line 333
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->read(IZ)V

    .line 336
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->packet:Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->isACK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x0

    .line 343
    :goto_0
    return-object v0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->packet:Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->isData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    new-instance v0, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v0

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->packet:Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->getDataBuf()Lcom/felicanetworks/felica/util/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method protected doReset()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 185
    const-string v4, "%s"

    const-string v5, "000"

    invoke-static {v10, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 188
    sget-object v4, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->COMMAND_RESET:[B

    const/16 v5, 0x3e8

    invoke-direct {p0, v4, v5}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->executeCommand([BI)V

    .line 189
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->packet:Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

    sget-object v5, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->RESPONSE_RESET:[B

    invoke-virtual {v4, v5}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->compareData([B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 190
    const-string v4, "%s"

    const-string v5, "700"

    invoke-static {v8, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 191
    new-instance v4, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v5, 0x17

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v4

    .line 195
    :cond_0
    const/16 v3, 0x1f4

    .line 196
    .local v3, "timeOut":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 201
    .local v0, "currentTime":J
    :cond_1
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v3, v4}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->read(IZ)V

    .line 202
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->packet:Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->isPortReady()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 203
    const/4 v4, 0x7

    const-string v5, "%s"

    const-string v6, "001"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    :goto_0
    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v10, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 221
    return-void

    .line 206
    :catch_0
    move-exception v2

    .line 207
    .local v2, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    const-string v4, "%s"

    const-string v5, "700"

    invoke-static {v8, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 208
    invoke-virtual {v2}, Lcom/felicanetworks/felica/FeliCaChipException;->getType()I

    move-result v4

    const/16 v5, 0x1f

    if-eq v4, v5, :cond_2

    .line 209
    const-string v4, "%s"

    const-string v5, "701"

    invoke-static {v8, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 210
    throw v2

    .line 212
    .end local v2    # "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :catch_1
    move-exception v2

    .line 213
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "%s"

    const-string v5, "702"

    invoke-static {v8, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 214
    new-instance v4, Lcom/felicanetworks/felica/FeliCaChipException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v9, v5}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 217
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    int-to-long v4, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    sub-long/2addr v4, v6

    long-to-int v3, v4

    .line 198
    if-gtz v3, :cond_1

    goto :goto_0
.end method

.method protected doSend([BI)V
    .locals 0
    .param p1, "command"    # [B
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    .line 295
    return-void
.end method

.method protected doSend([BII)V
    .locals 1
    .param p1, "command"    # [B
    .param p2, "timeout"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->packet:Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;

    invoke-virtual {v0, p0, p1, p3}, Lcom/felicanetworks/felica/impl/chip/v20/ChipPacket;->write(Lcom/felicanetworks/felica/impl/chip/v20/Chip;[BI)V

    .line 1052
    return-void
.end method

.method protected doTerminateWithoutPonCtrl()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 875
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 876
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 879
    return-void
.end method

.method public getCENState()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 937
    const-string v4, "%s"

    const-string v7, "000"

    invoke-static {v9, v4, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 942
    :try_start_0
    const-string v0, "/dev/felica_cen"

    .line 945
    .local v0, "cen_device_name":Ljava/lang/String;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 948
    .local v2, "inputStream":Ljava/io/FileInputStream;
    sget-object v4, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->stmpbuf:[B

    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 949
    sget-object v4, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->stmpbuf:[B

    const/4 v7, 0x0

    aget-byte v4, v4, v7

    and-int/lit16 v3, v4, 0xff

    .line 951
    .local v3, "ret":I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    const/4 v2, 0x0

    .line 958
    const-string v7, "%s return=%b"

    const-string v8, "999"

    if-eqz v3, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v9, v7, v8, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 960
    if-eqz v3, :cond_1

    .line 963
    :goto_1
    return v5

    .line 953
    .end local v0    # "cen_device_name":Ljava/lang/String;
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .end local v3    # "ret":I
    :catch_0
    move-exception v1

    .line 954
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "%s"

    const-string v6, "700"

    invoke-static {v5, v4, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 955
    new-instance v4, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v5, 0xb

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v4

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "cen_device_name":Ljava/lang/String;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "ret":I
    :cond_0
    move v4, v6

    .line 958
    goto :goto_0

    :cond_1
    move v5, v6

    .line 963
    goto :goto_1
.end method

.method public final initialize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v4, 0x7

    .line 748
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 751
    :try_start_0
    iget-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->initialized:Z

    if-eqz v1, :cond_1

    .line 752
    const/4 v1, 0x6

    const-string v2, "%s"

    const-string v3, "998"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 768
    iget-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->initialized:Z

    if-nez v1, :cond_0

    .line 769
    const-string v1, "%s"

    const-string v2, "002"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 770
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->cleanupWithPonCtrl()V

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->setupWithPonCtrl()V

    .line 756
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->doInitialize()V

    .line 757
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->initialized:Z

    .line 759
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->open()V
    :try_end_1
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 767
    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 768
    iget-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->initialized:Z

    if-nez v1, :cond_2

    .line 769
    const-string v1, "%s"

    const-string v2, "002"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 770
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->cleanupWithPonCtrl()V

    .line 774
    :cond_2
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    const/4 v1, 0x6

    :try_start_2
    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 762
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 766
    .end local v0    # "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :catchall_0
    move-exception v1

    .line 767
    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 768
    iget-boolean v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->initialized:Z

    if-nez v2, :cond_3

    .line 769
    const-string v2, "%s"

    const-string v3, "002"

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 770
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->cleanupWithPonCtrl()V

    .line 772
    :cond_3
    throw v1

    .line 763
    :catch_1
    move-exception v0

    .line 764
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x6

    :try_start_3
    const-string v2, "%s"

    const-string v3, "701"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 765
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public final initializeWithoutPonCtrl()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v4, 0x7

    .line 812
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 815
    :try_start_0
    iget-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->initialized:Z

    if-eqz v1, :cond_1

    .line 816
    const/4 v1, 0x6

    const-string v2, "%s"

    const-string v3, "998"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 832
    iget-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->initialized:Z

    if-nez v1, :cond_0

    .line 833
    const-string v1, "%s"

    const-string v2, "002"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 834
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->cleanupWithoutPonCtrl()V

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->setupWithoutPonCtrl()V

    .line 820
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->doInitializeWithoutPonCtrl()V

    .line 821
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->initialized:Z

    .line 823
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->open()V
    :try_end_1
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 831
    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 832
    iget-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->initialized:Z

    if-nez v1, :cond_2

    .line 833
    const-string v1, "%s"

    const-string v2, "002"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 834
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->cleanupWithoutPonCtrl()V

    .line 838
    :cond_2
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    const/4 v1, 0x1

    :try_start_2
    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 826
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 830
    .end local v0    # "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :catchall_0
    move-exception v1

    .line 831
    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 832
    iget-boolean v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->initialized:Z

    if-nez v2, :cond_3

    .line 833
    const-string v2, "%s"

    const-string v3, "002"

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 834
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->cleanupWithoutPonCtrl()V

    .line 836
    :cond_3
    throw v1

    .line 827
    :catch_1
    move-exception v0

    .line 828
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    :try_start_3
    const-string v2, "%s"

    const-string v3, "701"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 829
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected readByte(J)I
    .locals 5
    .param p1, "limit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    .line 400
    const-string v1, "%s limit=%d"

    const-string v2, "000"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v4, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 401
    invoke-super {p0, p1, p2}, Lcom/felicanetworks/felica/impl/chip/Chip;->readByte(J)I

    move-result v0

    .line 402
    .local v0, "ret":I
    const-string v1, "%s return=0x%s"

    const-string v2, "999"

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 403
    return v0
.end method

.method protected readContinuousBytes([BIIJ)V
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x6

    .line 424
    const-string v1, "%s buf=\"\",off=%d,len=%d,limit=%d"

    const-string v2, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 425
    invoke-super/range {p0 .. p5}, Lcom/felicanetworks/felica/impl/chip/Chip;->readContinuousBytes([BIIJ)V

    .line 426
    const/4 v1, 0x4

    invoke-static {v1, p1, p2, p3}, Lcom/felicanetworks/mfc/util/LogMgr;->logArray(I[BII)V

    .line 427
    const-string v1, "%s buf=%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 428
    return-void
.end method

.method public setPONState(Z)V
    .locals 7
    .param p1, "pon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x6

    const/4 v3, 0x1

    .line 1011
    const-string v2, "%s pon=%b"

    const-string v4, "000"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v6, v2, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1016
    :try_start_0
    const-string v1, "/dev/felica_pon"

    .line 1018
    .local v1, "pon_device_name":Ljava/lang/String;
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->ponOutStream:Ljava/io/FileOutputStream;

    if-nez v2, :cond_0

    .line 1019
    const/4 v2, 0x7

    const-string v4, "%s"

    const-string v5, "001"

    invoke-static {v2, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1020
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->ponOutStream:Ljava/io/FileOutputStream;

    .line 1022
    :cond_0
    iget-object v4, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->ponOutStream:Ljava/io/FileOutputStream;

    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v6, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1034
    return-void

    .line 1022
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1028
    .end local v1    # "pon_device_name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1029
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "%s"

    const-string v4, "700"

    invoke-static {v3, v2, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1030
    new-instance v2, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v3, 0xb

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method protected setupWithPonCtrl()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v4, 0x1

    .line 558
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 565
    :try_start_0
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->getCENState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 566
    const/4 v1, 0x1

    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 567
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v2, 0x21

    .line 568
    const-string v3, "illigal CEN pin state."

    .line 567
    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 588
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->cleanupWithPonCtrl()V

    .line 589
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v2, 0xb

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 575
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->felicaFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->outputStream:Ljava/io/OutputStream;

    .line 578
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v2, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->felicaFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->inputStream:Ljava/io/InputStream;

    .line 584
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->setPONState(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 592
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 593
    return-void
.end method

.method protected setupWithoutPonCtrl()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    .line 665
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 676
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->felicaFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->outputStream:Ljava/io/OutputStream;

    .line 679
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v2, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->felicaFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 690
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 685
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->cleanupWithoutPonCtrl()V

    .line 686
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v2, 0xb

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public final terminate()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x7

    const/4 v4, 0x0

    .line 783
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 786
    :try_start_0
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->doTerminate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 792
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->cleanupWithPonCtrl()V

    .line 793
    iput-boolean v4, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->initialized:Z

    .line 794
    iput-boolean v4, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->opened:Z

    .line 796
    :goto_0
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 797
    return-void

    .line 787
    :catch_0
    move-exception v0

    .line 788
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    :try_start_1
    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 791
    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 792
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->cleanupWithPonCtrl()V

    .line 793
    iput-boolean v4, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->initialized:Z

    .line 794
    iput-boolean v4, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->opened:Z

    goto :goto_0

    .line 790
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 791
    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 792
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->cleanupWithPonCtrl()V

    .line 793
    iput-boolean v4, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->initialized:Z

    .line 794
    iput-boolean v4, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->opened:Z

    .line 795
    throw v1
.end method

.method public final terminateWithoutPonCtrl()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x7

    const/4 v4, 0x0

    .line 847
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 850
    :try_start_0
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->doTerminateWithoutPonCtrl()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 856
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->cleanupWithoutPonCtrl()V

    .line 857
    iput-boolean v4, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->initialized:Z

    .line 858
    iput-boolean v4, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->opened:Z

    .line 861
    :goto_0
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 862
    return-void

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    :try_start_1
    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 855
    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 856
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->cleanupWithoutPonCtrl()V

    .line 857
    iput-boolean v4, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->initialized:Z

    .line 858
    iput-boolean v4, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->opened:Z

    goto :goto_0

    .line 854
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 855
    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 856
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->cleanupWithoutPonCtrl()V

    .line 857
    iput-boolean v4, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->initialized:Z

    .line 858
    iput-boolean v4, p0, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->opened:Z

    .line 859
    throw v1
.end method

.method protected writeByte(IZ)V
    .locals 5
    .param p1, "data"    # I
    .param p2, "flush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    .line 361
    const-string v0, "%s data=%d,flush=%b"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 362
    invoke-super {p0, p1, p2}, Lcom/felicanetworks/felica/impl/chip/Chip;->writeByte(IZ)V

    .line 363
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 364
    return-void
.end method

.method protected writeContinuousBytes([BII)V
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x6

    .line 381
    const-string v1, "%s buf=%s,off=%d,len=%d"

    const-string v2, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 382
    const/4 v1, 0x4

    invoke-static {v1, p1, p2, p3}, Lcom/felicanetworks/mfc/util/LogMgr;->logArray(I[BII)V

    .line 383
    invoke-super {p0, p1, p2, p3}, Lcom/felicanetworks/felica/impl/chip/Chip;->writeContinuousBytes([BII)V

    .line 384
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 385
    return-void
.end method
