.class public abstract Lcom/felicanetworks/felica/impl/chip/Chip;
.super Ljava/lang/Object;
.source "Chip.java"

# interfaces
.implements Lcom/felicanetworks/felica/FeliCaChip;


# static fields
.field private static final AVAILABLE_WIRELESS:I = 0x0

.field private static final BUILTIN:Z = true

.field private static final FILEPATH_AVAILABLE_WIRELESS:Ljava/lang/String; = "/dev/felica_rws"

.field private static final NOT_AVAILABLE_WIRELESS:I = 0x1

.field private static final TURNOFFRF_COMMAND:[B

.field private static final TURNOFFRF_TIMEOUT:I = 0x3e8

.field private static final TYPE:Ljava/lang/String; = "FeliCa"

.field private static file:Ljava/io/File;

.field private static sbuf:[B

.field private static stmpbuf:[B


# instance fields
.field private baudRate:I

.field protected initialized:Z

.field protected inputStream:Ljava/io/InputStream;

.field protected interrupted:Z

.field private volatile mbProtectCancel:Z

.field private name:Ljava/lang/String;

.field protected opened:Z

.field protected outputStream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 81
    new-array v0, v1, [B

    sput-object v0, Lcom/felicanetworks/felica/impl/chip/Chip;->sbuf:[B

    .line 89
    new-array v0, v1, [B

    sput-object v0, Lcom/felicanetworks/felica/impl/chip/Chip;->stmpbuf:[B

    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/felicanetworks/felica/impl/chip/Chip;->file:Ljava/io/File;

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/felicanetworks/felica/impl/chip/Chip;->TURNOFFRF_COMMAND:[B

    .line 133
    return-void

    .line 113
    nop

    :array_0
    .array-data 1
        0x3t
        -0x34t
        0x12t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->mbProtectCancel:Z

    .line 30
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 730
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 731
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 732
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->interrupted:Z

    .line 733
    return-void
.end method

.method protected cleanup()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 1081
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1082
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 1085
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    :goto_0
    iput-object v5, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->inputStream:Ljava/io/InputStream;

    .line 1094
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->outputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 1097
    :try_start_1
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1104
    :goto_1
    iput-object v5, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->outputStream:Ljava/io/OutputStream;

    .line 1106
    :cond_1
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1107
    return-void

    .line 1087
    :catch_0
    move-exception v0

    .line 1088
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1099
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1100
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 377
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 379
    :try_start_0
    iget-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->initialized:Z

    if-nez v1, :cond_0

    .line 380
    const/4 v1, 0x1

    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 381
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v1
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 388
    throw v0

    .line 383
    .end local v0    # "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->interrupted:Z

    .line 384
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/Chip;->doClose()V

    .line 385
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->opened:Z
    :try_end_1
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 393
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 394
    return-void

    .line 389
    :catch_1
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s"

    const-string v2, "702"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 391
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public closeNoReset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1192
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1194
    iget-boolean v0, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->initialized:Z

    if-nez v0, :cond_0

    .line 1195
    const-string v0, "%s"

    const-string v1, "700"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1196
    new-instance v0, Lcom/felicanetworks/felica/FeliCaChipException;

    invoke-direct {v0, v3}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v0

    .line 1198
    :cond_0
    iput-boolean v2, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->interrupted:Z

    .line 1199
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/Chip;->doCloseNoReset()V

    .line 1200
    iput-boolean v2, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->opened:Z

    .line 1202
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1203
    return-void
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

    .line 407
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 408
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 410
    return-void
.end method

.method protected doCloseNoReset()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 1215
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1216
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1218
    return-void
.end method

.method protected doExecute([BI)[B
    .locals 3
    .param p1, "command"    # [B
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 461
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 462
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 463
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doExecuteThru([BI)[B
    .locals 3
    .param p1, "command"    # [B
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 553
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 554
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 555
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doInitialize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 280
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 281
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 283
    return-void
.end method

.method protected doOpen()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 362
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 363
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 366
    return-void
.end method

.method protected doReceive(I)[B
    .locals 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 697
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 698
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 699
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doReceiveBuf(I)Lcom/felicanetworks/felica/util/ByteBuffer;
    .locals 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 717
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 718
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 719
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doReset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 770
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 771
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 773
    return-void
.end method

.method protected doSend([BI)V
    .locals 3
    .param p1, "command"    # [B
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 608
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 609
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 611
    return-void
.end method

.method protected doSend([BII)V
    .locals 0
    .param p1, "command"    # [B
    .param p2, "timeout"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    .line 1179
    return-void
.end method

.method protected doTerminate()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 313
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 314
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 317
    return-void
.end method

.method public final execute([BI)[B
    .locals 6
    .param p1, "command"    # [B
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 425
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 427
    :try_start_0
    iget-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->opened:Z

    if-nez v1, :cond_0

    .line 428
    const/4 v1, 0x1

    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 429
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v1
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 438
    throw v0

    .line 431
    .end local v0    # "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->interrupted:Z

    .line 433
    const/4 v1, 0x6

    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 435
    invoke-virtual {p0, p1, p2}, Lcom/felicanetworks/felica/impl/chip/Chip;->doExecute([BI)[B
    :try_end_1
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    return-object v1

    .line 439
    :catch_1
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s"

    const-string v2, "702"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 441
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public final executeThru([BI)[B
    .locals 10
    .param p1, "command"    # [B
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 483
    const/4 v0, 0x0

    .line 485
    .local v0, "controlInfo":I
    const/4 v2, 0x0

    .line 488
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/dev/felica_rws"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-ne v4, v7, :cond_0

    .line 490
    const/4 v0, 0x1

    .line 495
    :cond_0
    if-eqz v3, :cond_3

    .line 497
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    .line 504
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    if-ne v0, v7, :cond_4

    .line 507
    :try_start_3
    sget-object v4, Lcom/felicanetworks/felica/impl/chip/Chip;->TURNOFFRF_COMMAND:[B

    const/16 v5, 0x3e8

    invoke-virtual {p0, v4, v5}, Lcom/felicanetworks/felica/impl/chip/Chip;->execute([BI)[B

    .line 508
    const/4 v4, 0x1

    const-string v5, "%s: execute TurnOffRFPower"

    const-string v6, "704"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 512
    :goto_1
    new-instance v4, Lcom/felicanetworks/felica/FccException;

    const/16 v5, 0x1f

    .line 513
    const-string v6, "FCC_ERROR"

    .line 512
    invoke-direct {v4, v5, v6}, Lcom/felicanetworks/felica/FccException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 492
    :catch_0
    move-exception v1

    .line 493
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v4, 0x1

    :try_start_4
    const-string v5, "%s"

    const-string v6, "703"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 495
    if-eqz v2, :cond_1

    .line 497
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 498
    :catch_1
    move-exception v1

    .line 499
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "%s"

    const-string v5, "706"

    invoke-static {v7, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 494
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 495
    :goto_3
    if-eqz v2, :cond_2

    .line 497
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 502
    :cond_2
    :goto_4
    throw v4

    .line 498
    :catch_2
    move-exception v1

    .line 499
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v5, "%s"

    const-string v6, "706"

    invoke-static {v7, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 498
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 499
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v4, "%s"

    const-string v5, "706"

    invoke-static {v7, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 509
    :catch_4
    move-exception v1

    .line 510
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "%s: execute error TurnOffRFPower"

    const-string v5, "705"

    invoke-static {v7, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 517
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v4, "%s"

    const-string v5, "000"

    invoke-static {v9, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 519
    :try_start_7
    iget-boolean v4, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->opened:Z

    if-nez v4, :cond_5

    .line 520
    const/4 v4, 0x1

    const-string v5, "%s"

    const-string v6, "700"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 521
    new-instance v4, Lcom/felicanetworks/felica/FeliCaChipException;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v4
    :try_end_7
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 528
    :catch_5
    move-exception v1

    .line 529
    .local v1, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    const-string v4, "%s"

    const-string v5, "701"

    invoke-static {v7, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 530
    throw v1

    .line 523
    .end local v1    # "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :cond_5
    const/4 v4, 0x0

    :try_start_8
    iput-boolean v4, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->interrupted:Z

    .line 525
    const/4 v4, 0x6

    const-string v5, "%s"

    const-string v6, "999"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 527
    invoke-virtual {p0, p1, p2}, Lcom/felicanetworks/felica/impl/chip/Chip;->doExecuteThru([BI)[B
    :try_end_8
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move-result-object v4

    return-object v4

    .line 531
    :catch_6
    move-exception v1

    .line 532
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "%s"

    const-string v5, "702"

    invoke-static {v7, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 533
    new-instance v4, Lcom/felicanetworks/felica/FeliCaChipException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v8, v5}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 494
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 492
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 174
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 175
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 145
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 146
    const-string v0, "%s return=%s"

    const-string v1, "999"

    const-string v2, "FeliCa"

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    const-string v0, "FeliCa"

    return-object v0
.end method

.method public initialize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    .line 242
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 245
    :try_start_0
    iget-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->initialized:Z

    if-eqz v1, :cond_1

    .line 246
    const/4 v1, 0x6

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    iget-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->initialized:Z

    if-nez v1, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/Chip;->cleanup()V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/Chip;->setup()V

    .line 250
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/Chip;->doInitialize()V

    .line 251
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->initialized:Z

    .line 253
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/Chip;->open()V
    :try_end_1
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    iget-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->initialized:Z

    if-nez v1, :cond_2

    .line 262
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/Chip;->cleanup()V

    .line 266
    :cond_2
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    const/4 v1, 0x1

    :try_start_2
    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 256
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    .end local v0    # "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :catchall_0
    move-exception v1

    .line 261
    iget-boolean v2, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->initialized:Z

    if-nez v2, :cond_3

    .line 262
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/Chip;->cleanup()V

    .line 264
    :cond_3
    throw v1

    .line 257
    :catch_1
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    :try_start_3
    const-string v2, "%s"

    const-string v3, "701"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 259
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public final isBuiltin()Z
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 188
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 189
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public final open()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v4, 0x1

    .line 330
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 332
    :try_start_0
    iget-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->initialized:Z

    if-nez v1, :cond_0

    .line 333
    const/4 v1, 0x1

    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 334
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v1
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 343
    throw v0

    .line 336
    .end local v0    # "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->opened:Z

    if-eqz v1, :cond_1

    .line 349
    :goto_0
    return-void

    .line 339
    :cond_1
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/Chip;->doOpen()V

    .line 340
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->opened:Z
    :try_end_1
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 348
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 344
    :catch_1
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s"

    const-string v2, "702"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 346
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public final operate(Ljava/lang/String;[B)[B
    .locals 3
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    const/4 v2, 0x6

    .line 208
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 209
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method protected purgeReadStream()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    .line 989
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1001
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gtz v1, :cond_0

    .line 1009
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1010
    return-void

    .line 1002
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->inputStream:Ljava/io/InputStream;

    sget-object v2, Lcom/felicanetworks/felica/impl/chip/Chip;->sbuf:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1005
    :catch_0
    move-exception v0

    .line 1006
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1007
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v2, 0xb

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method protected readByte(J)I
    .locals 7
    .param p1, "limit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    const/4 v5, 0x1

    .line 875
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 877
    const/4 v0, 0x0

    .line 880
    .local v0, "b":I
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->mbProtectCancel:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->interrupted:Z

    if-eqz v2, :cond_0

    .line 881
    const/4 v2, 0x1

    const-string v3, "%s"

    const-string v4, "700"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 882
    new-instance v2, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    :catch_0
    move-exception v1

    .line 907
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "%s"

    const-string v3, "702"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 908
    new-instance v2, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v3, 0xb

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 883
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-ltz v2, :cond_1

    .line 884
    const/4 v2, 0x1

    const-string v3, "%s"

    const-string v4, "701"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 885
    new-instance v2, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v2

    .line 888
    :cond_1
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->inputStream:Ljava/io/InputStream;

    sget-object v3, Lcom/felicanetworks/felica/impl/chip/Chip;->stmpbuf:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ltz v0, :cond_2

    .line 901
    const/4 v2, 0x6

    const-string v3, "%s"

    const-string v4, "999"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 904
    sget-object v2, Lcom/felicanetworks/felica/impl/chip/Chip;->stmpbuf:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    return v2

    .line 893
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 896
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    :try_start_2
    invoke-static {v2, v3, v4}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 897
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected readContinuousBytes([BIIJ)V
    .locals 10
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
    const/4 v2, 0x6

    const/4 v9, 0x1

    .line 930
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 934
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->mbProtectCancel:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->interrupted:Z

    if-eqz v0, :cond_0

    .line 935
    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 936
    new-instance v0, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    :catch_0
    move-exception v7

    .line 975
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "%s"

    const-string v1, "702"

    invoke-static {v9, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 976
    new-instance v0, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v1, 0xb

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 937
    .end local v7    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, p4

    if-ltz v0, :cond_1

    .line 938
    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 939
    new-instance v0, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v0

    .line 941
    :cond_1
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 949
    .local v6, "available":I
    if-lt v6, p3, :cond_2

    .line 950
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 951
    .local v8, "size":I
    const/4 v0, 0x6

    const-string v1, "%s read, expected=%d, size=%d, available=%d"

    .line 952
    const-string v2, "001"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 951
    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 956
    const/4 v0, 0x6

    const-string v1, "%s"

    const-string v2, "002"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 957
    return-void

    .line 959
    .end local v8    # "size":I
    :cond_2
    const/4 v0, 0x6

    const-string v1, "%s insufficient size, available=%d, expected=%d"

    .line 960
    const-string v2, "702"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 959
    invoke-static {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 966
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 969
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    :try_start_2
    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 970
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public final receive(I)[B
    .locals 6
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 627
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 629
    :try_start_0
    iget-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->opened:Z

    if-nez v1, :cond_0

    .line 630
    const/4 v1, 0x1

    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 631
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v1
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 640
    throw v0

    .line 633
    .end local v0    # "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->interrupted:Z

    .line 635
    const/4 v1, 0x6

    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 637
    invoke-virtual {p0, p1}, Lcom/felicanetworks/felica/impl/chip/Chip;->doReceive(I)[B
    :try_end_1
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    return-object v1

    .line 641
    :catch_1
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s"

    const-string v2, "702"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 643
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public final receiveBuf(I)Lcom/felicanetworks/felica/util/ByteBuffer;
    .locals 6
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 662
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 664
    :try_start_0
    iget-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->opened:Z

    if-nez v1, :cond_0

    .line 665
    const/4 v1, 0x1

    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 666
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v1
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 675
    throw v0

    .line 668
    .end local v0    # "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->interrupted:Z

    .line 670
    const/4 v1, 0x6

    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 672
    invoke-virtual {p0, p1}, Lcom/felicanetworks/felica/impl/chip/Chip;->doReceiveBuf(I)Lcom/felicanetworks/felica/util/ByteBuffer;
    :try_end_1
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    return-object v1

    .line 676
    :catch_1
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s"

    const-string v2, "702"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 678
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 741
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 743
    :try_start_0
    iget-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->initialized:Z

    if-nez v1, :cond_0

    .line 744
    const/4 v1, 0x1

    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 745
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v1
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 751
    throw v0

    .line 747
    .end local v0    # "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->interrupted:Z

    .line 748
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/Chip;->doReset()V
    :try_end_1
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 756
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 757
    return-void

    .line 752
    :catch_1
    move-exception v0

    .line 753
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s"

    const-string v2, "702"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 754
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public final send([BI)V
    .locals 6
    .param p1, "command"    # [B
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 573
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 575
    :try_start_0
    iget-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->opened:Z

    if-nez v1, :cond_0

    .line 576
    const/4 v1, 0x1

    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 577
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v1
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 586
    throw v0

    .line 579
    .end local v0    # "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->interrupted:Z

    .line 581
    const/4 v1, 0x6

    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 583
    invoke-virtual {p0, p1, p2}, Lcom/felicanetworks/felica/impl/chip/Chip;->doSend([BI)V
    :try_end_1
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 591
    return-void

    .line 587
    :catch_1
    move-exception v0

    .line 588
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s"

    const-string v2, "702"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 589
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public final send([BII)V
    .locals 4
    .param p1, "command"    # [B
    .param p2, "timeout"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1141
    :try_start_0
    iget-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->opened:Z

    if-nez v1, :cond_0

    .line 1143
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v1
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1148
    :catch_0
    move-exception v0

    .line 1151
    .local v0, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    throw v0

    .line 1145
    .end local v0    # "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->interrupted:Z

    .line 1147
    invoke-virtual {p0, p1, p2, p3}, Lcom/felicanetworks/felica/impl/chip/Chip;->doSend([BII)V
    :try_end_1
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1158
    return-void

    .line 1152
    :catch_1
    move-exception v0

    .line 1155
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method final setBaudRate(I)V
    .locals 4
    .param p1, "baudRate"    # I

    .prologue
    const/4 v3, 0x6

    .line 223
    const-string v0, "%s baudRate=%d"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 226
    iput p1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->baudRate:I

    .line 227
    return-void
.end method

.method final setName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x6

    .line 160
    const-string v0, "%s name=%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 163
    iput-object p1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->name:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setProtectCancel(Z)V
    .locals 0
    .param p1, "protectCancel"    # Z

    .prologue
    .line 1118
    iput-boolean p1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->mbProtectCancel:Z

    .line 1119
    return-void
.end method

.method protected setup()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    .line 1022
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1047
    :try_start_0
    sget-object v1, Lcom/felicanetworks/felica/impl/chip/Chip;->file:Ljava/io/File;

    if-nez v1, :cond_0

    .line 1048
    new-instance v1, Ljava/io/File;

    const-string v2, "SERIAL_PORT_PROPERTY_KEY"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/felicanetworks/felica/impl/chip/Chip;->file:Ljava/io/File;

    .line 1053
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/felicanetworks/felica/impl/chip/Chip;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->outputStream:Ljava/io/OutputStream;

    .line 1060
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v2, Lcom/felicanetworks/felica/impl/chip/Chip;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1071
    return-void

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1067
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/Chip;->cleanup()V

    .line 1068
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v2, 0xb

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public terminate()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 291
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 293
    :try_start_0
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/Chip;->doTerminate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/Chip;->cleanup()V

    .line 299
    iput-boolean v4, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->initialized:Z

    .line 300
    iput-boolean v4, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->opened:Z

    .line 302
    :goto_0
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 303
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    :try_start_1
    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/Chip;->cleanup()V

    .line 299
    iput-boolean v4, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->initialized:Z

    .line 300
    iput-boolean v4, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->opened:Z

    goto :goto_0

    .line 297
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 298
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/chip/Chip;->cleanup()V

    .line 299
    iput-boolean v4, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->initialized:Z

    .line 300
    iput-boolean v4, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->opened:Z

    .line 301
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
    const/4 v3, 0x6

    const/4 v4, 0x1

    .line 788
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 792
    :try_start_0
    iget-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->mbProtectCancel:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->interrupted:Z

    if-eqz v1, :cond_0

    .line 793
    const/4 v1, 0x1

    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 794
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :catch_0
    move-exception v0

    .line 813
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 814
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v2, 0xb

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 797
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 799
    if-eqz p2, :cond_1

    .line 804
    :try_start_2
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->outputStream:Ljava/io/OutputStream;

    check-cast v1, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catch Ljava/io/SyncFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 816
    :cond_1
    :goto_0
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 817
    return-void

    .line 805
    :catch_1
    move-exception v0

    .line 807
    .local v0, "e":Ljava/io/SyncFailedException;
    const/4 v1, 0x2

    :try_start_3
    const-string v2, "SyncFailedException"

    invoke-static {v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method protected writeContinuousBytes([BII)V
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/FeliCaChipException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v4, 0x1

    .line 834
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 838
    :try_start_0
    iget-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->mbProtectCancel:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->interrupted:Z

    if-eqz v1, :cond_0

    .line 839
    const/4 v1, 0x1

    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 840
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 858
    new-instance v1, Lcom/felicanetworks/felica/FeliCaChipException;

    const/16 v2, 0xb

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 843
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 849
    :try_start_2
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/chip/Chip;->outputStream:Ljava/io/OutputStream;

    check-cast v1, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catch Ljava/io/SyncFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 860
    :goto_0
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 861
    return-void

    .line 850
    :catch_1
    move-exception v0

    .line 852
    .local v0, "e":Ljava/io/SyncFailedException;
    const/4 v1, 0x2

    :try_start_3
    const-string v2, "SyncFailedException"

    invoke-static {v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method
