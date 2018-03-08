.class public Lcom/felicanetworks/felica/offlineimpl/ChipController;
.super Ljava/lang/Object;
.source "ChipController.java"


# static fields
.field private static final ACCESS_ALLOWED:Ljava/lang/String; = "1"

.field private static final CHIP_NAME:Ljava/lang/String; = "R/W"

.field private static final CHIP_VERSION:Ljava/lang/String; = "v20"

.field private static final EXC_ACCESS_DENIED:Ljava/lang/String; = "Access denied."

.field private static final EXC_INVALID_COMMAND:Ljava/lang/String; = "Invalid Command(null)."

.field public static final FALP_CMDCODE_TERMINATEADHOC:B = -0x52t

.field public static final FALP_CMDCODE_TRANSMITDATA:B = -0x44t

.field public static final FALP_HEADER_PACKET_NUM:I = 0x5

.field public static final INTERFACE_WIRED:I = 0x0

.field public static final INTERFACE_WIRELESS:I = 0x1

.field private static final MAX_DATA_LENGTH:I = 0xff

.field private static final TAG:Ljava/lang/String; = "ChipController"

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/ChipController;

.field private static mCmd:[B

.field private static mRecvBuf:Lcom/felicanetworks/felica/util/ByteBuffer;


# instance fields
.field private byteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

.field private chip:Lcom/felicanetworks/felica/FeliCaChip;

.field private volatile mbCancel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxSendSize()S

    move-result v0

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mCmd:[B

    .line 116
    new-instance v0, Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpMaxFalpRcevSize()S

    move-result v1

    .line 117
    add-int/lit8 v1, v1, 0x5

    .line 116
    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mRecvBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    .line 1435
    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mbCancel:Z

    .line 135
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 137
    new-instance v0, Lcom/felicanetworks/felica/util/ByteBuffer;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->byteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    .line 139
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method private doExecution(ILcom/felicanetworks/felica/offlineimpl/Command;I)Lcom/felicanetworks/felica/offlineimpl/Response;
    .locals 12
    .param p1, "target"    # I
    .param p2, "command"    # Lcom/felicanetworks/felica/offlineimpl/Command;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x6

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 704
    const-string v4, "%s"

    const-string v5, "000"

    invoke-static {v10, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 708
    :try_start_0
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->byteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 710
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->byteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 712
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->byteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {p2, v4}, Lcom/felicanetworks/felica/offlineimpl/Command;->set(Lcom/felicanetworks/felica/util/ByteBuffer;)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 714
    .local v2, "len":I
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->byteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v5, 0x0

    int-to-byte v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->set(IB)V

    .line 717
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->byteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v4

    new-array v0, v4, [B

    .line 718
    .local v0, "cmd":[B
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->byteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v4, v5, v0, v6, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[BII)V

    .line 723
    if-nez p1, :cond_0

    .line 724
    const/4 v4, 0x7

    const-string v5, "%s"

    const-string v6, "001"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 725
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v4, v0, p3}, Lcom/felicanetworks/felica/FeliCaChip;->execute([BI)[B

    move-result-object v3

    .line 732
    .local v3, "res":[B
    :goto_0
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->byteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 733
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->byteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v4, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 735
    const/4 v4, 0x6

    const-string v5, "%s"

    const-string v6, "999"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 738
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->byteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {p2, v4}, Lcom/felicanetworks/felica/offlineimpl/Command;->get(Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v4

    return-object v4

    .line 727
    .end local v3    # "res":[B
    :cond_0
    const/4 v4, 0x7

    const-string v5, "%s"

    const-string v6, "002"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 728
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v4, v0, p3}, Lcom/felicanetworks/felica/FeliCaChip;->executeThru([BI)[B
    :try_end_0
    .catch Lcom/felicanetworks/felica/FccException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .restart local v3    # "res":[B
    goto :goto_0

    .line 740
    .end local v0    # "cmd":[B
    .end local v2    # "len":I
    .end local v3    # "res":[B
    :catch_0
    move-exception v1

    .line 741
    .local v1, "e":Lcom/felicanetworks/felica/FccException;
    const-string v4, "%s"

    const-string v5, "705"

    invoke-static {v9, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 743
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    .line 744
    invoke-virtual {v1}, Lcom/felicanetworks/felica/FccException;->getExpandedMessage()Ljava/lang/String;

    move-result-object v5

    .line 743
    invoke-direct {v4, v11, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 746
    .end local v1    # "e":Lcom/felicanetworks/felica/FccException;
    :catch_1
    move-exception v1

    .line 747
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const-string v4, "%s"

    const-string v5, "700"

    invoke-static {v9, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 748
    throw v1

    .line 749
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catch_2
    move-exception v1

    .line 750
    .local v1, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/FeliCaChipException;->getType()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 759
    const-string v4, "%s"

    const-string v5, "703"

    invoke-static {v9, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 760
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v4, v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 753
    :sswitch_0
    const-string v4, "%s"

    const-string v5, "701"

    invoke-static {v9, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 754
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 756
    :sswitch_1
    const-string v4, "%s"

    const-string v5, "702"

    invoke-static {v9, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 757
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v4, v11}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 762
    .end local v1    # "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :catch_3
    move-exception v1

    .line 763
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "%s"

    const-string v5, "704"

    invoke-static {v10, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 764
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v4, v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 750
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x17 -> :sswitch_0
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method private execute(ILcom/felicanetworks/felica/offlineimpl/Command;II)Lcom/felicanetworks/felica/offlineimpl/Response;
    .locals 11
    .param p1, "target"    # I
    .param p2, "command"    # Lcom/felicanetworks/felica/offlineimpl/Command;
    .param p3, "timeout"    # I
    .param p4, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x6

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 631
    const-string v4, "%s"

    const-string v5, "000"

    invoke-static {v9, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 633
    if-nez p2, :cond_0

    .line 634
    const-string v4, "%s"

    const-string v5, "700"

    invoke-static {v6, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 635
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid Command(null)."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 639
    :cond_0
    const/4 v0, 0x0

    .line 640
    .local v0, "bProtectCancel":Z
    instance-of v4, p2, Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerCommand;

    if-eqz v4, :cond_4

    .line 641
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v4, v6}, Lcom/felicanetworks/felica/FeliCaChip;->setProtectCancel(Z)V

    .line 642
    const/4 v0, 0x1

    .line 649
    :cond_1
    const/4 v3, 0x0

    .line 652
    .local v3, "response":Lcom/felicanetworks/felica/offlineimpl/Response;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-le v2, p4, :cond_5

    .line 679
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 680
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v4, v7}, Lcom/felicanetworks/felica/FeliCaChip;->setProtectCancel(Z)V

    .line 683
    :cond_3
    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v9, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 685
    return-object v3

    .line 643
    .end local v2    # "i":I
    .end local v3    # "response":Lcom/felicanetworks/felica/offlineimpl/Response;
    :cond_4
    iget-boolean v4, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mbCancel:Z

    if-eqz v4, :cond_1

    .line 644
    const-string v4, "%s"

    const-string v5, "702"

    invoke-static {v8, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 645
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v4, v10}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 654
    .restart local v2    # "i":I
    .restart local v3    # "response":Lcom/felicanetworks/felica/offlineimpl/Response;
    :cond_5
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->doExecution(ILcom/felicanetworks/felica/offlineimpl/Command;I)Lcom/felicanetworks/felica/offlineimpl/Response;
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 670
    if-eqz v0, :cond_2

    .line 671
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v4, v7}, Lcom/felicanetworks/felica/FeliCaChip;->setProtectCancel(Z)V

    goto :goto_1

    .line 656
    :catch_0
    move-exception v1

    .line 658
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :try_start_1
    iget-boolean v4, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mbCancel:Z

    if-eqz v4, :cond_7

    if-nez v0, :cond_7

    .line 659
    const/4 v4, 0x2

    const-string v5, "%s"

    const-string v6, "703"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 660
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catchall_0
    move-exception v4

    .line 670
    if-eqz v0, :cond_6

    .line 671
    iget-object v5, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v5, v7}, Lcom/felicanetworks/felica/FeliCaChip;->setProtectCancel(Z)V

    .line 675
    :cond_6
    throw v4

    .line 664
    .restart local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :cond_7
    if-ne v2, p4, :cond_8

    .line 665
    const/4 v4, 0x1

    :try_start_2
    const-string v5, "%s"

    const-string v6, "701"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 666
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 670
    :cond_8
    if-eqz v0, :cond_9

    .line 671
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v4, v7}, Lcom/felicanetworks/felica/FeliCaChip;->setProtectCancel(Z)V

    .line 652
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/felicanetworks/felica/offlineimpl/ChipController;
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 152
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 154
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->instance:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 156
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/ChipController;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->instance:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    .line 159
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 160
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->instance:Lcom/felicanetworks/felica/offlineimpl/ChipController;

    return-object v0
.end method

.method private send(ILcom/felicanetworks/felica/offlineimpl/FalpCommand;I)V
    .locals 9
    .param p1, "target"    # I
    .param p2, "command"    # Lcom/felicanetworks/felica/offlineimpl/FalpCommand;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/FalpException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1516
    const/4 v2, 0x7

    const-string v3, "ChipController#send[in]"

    invoke-static {v2, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1518
    if-nez p2, :cond_0

    .line 1519
    const-string v2, "EXC_INVALID_COMMAND"

    invoke-static {v8, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1520
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid Command(null)."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1526
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->byteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 1528
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->byteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 1530
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->byteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {p2, v2}, Lcom/felicanetworks/felica/offlineimpl/FalpCommand;->set(Lcom/felicanetworks/felica/util/ByteBuffer;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 1532
    .local v1, "len":I
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->byteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v3, 0x0

    int-to-byte v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->set(IB)V

    .line 1535
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->byteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v3, 0x0

    sget-object v4, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mCmd:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->byteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[BII)V

    .line 1540
    if-nez p1, :cond_2

    .line 1541
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    if-eqz v2, :cond_1

    .line 1542
    const/4 v2, 0x6

    const-string v3, "[MFC][A1]write :start"

    invoke-static {v2, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1543
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    sget-object v3, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mCmd:[B

    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->byteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v4

    invoke-interface {v2, v3, p3, v4}, Lcom/felicanetworks/felica/FeliCaChip;->send([BII)V

    .line 1544
    const/4 v2, 0x6

    const-string v3, "[MFC][A1]write :end"

    invoke-static {v2, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1555
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->byteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 1562
    return-void

    .line 1547
    :cond_2
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    if-eqz v2, :cond_1

    .line 1548
    const/4 v2, 0x6

    const-string v3, "[MFC][A1]write :start"

    invoke-static {v2, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1549
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    sget-object v3, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mCmd:[B

    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->byteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v4

    invoke-interface {v2, v3, p3, v4}, Lcom/felicanetworks/felica/FeliCaChip;->send([BII)V

    .line 1550
    const/4 v2, 0x6

    const-string v3, "[MFC][A1]write :end"

    invoke-static {v2, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1557
    .end local v1    # "len":I
    :catch_0
    move-exception v0

    .line 1558
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ChipController.send():"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v2, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;Ljava/lang/String;)V

    .line 1559
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v2, v7}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v2
.end method

.method public static setCENState(Z)V
    .locals 5
    .param p0, "cenState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    .line 1401
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1403
    :try_start_0
    invoke-static {p0}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->setCENState(Z)V

    .line 1405
    const/4 v1, 0x6

    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1411
    return-void

    .line 1406
    :catch_0
    move-exception v0

    .line 1407
    .local v0, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1408
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1
.end method


# virtual methods
.method public cancelOffline()V
    .locals 1

    .prologue
    .line 1419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mbCancel:Z

    .line 1420
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v0}, Lcom/felicanetworks/felica/FeliCaChip;->cancel()V

    .line 1422
    :cond_0
    return-void
.end method

.method public changeActiveInterface([BII)V
    .locals 6
    .param p1, "idm"    # [B
    .param p2, "timeout"    # I
    .param p3, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    .line 1245
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1248
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceCommand;

    move-result-object v0

    .line 1249
    .local v0, "cmd":Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceCommand;
    invoke-virtual {v0, p1}, Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceCommand;->setIDm([B)V

    .line 1254
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, p2, p3}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->execute(ILcom/felicanetworks/felica/offlineimpl/Command;II)Lcom/felicanetworks/felica/offlineimpl/Response;
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1261
    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1262
    return-void

    .line 1256
    .end local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceCommand;
    :catch_0
    move-exception v1

    .line 1257
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const-string v2, "%s"

    const-string v3, "800"

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1258
    throw v1
.end method

.method public close()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x7

    .line 235
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 237
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    if-eqz v1, :cond_0

    .line 238
    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/felicanetworks/felica/FeliCaChip;->setProtectCancel(Z)V

    .line 241
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v1}, Lcom/felicanetworks/felica/FeliCaChip;->close()V
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    const-string v1, "%s"

    const-string v2, "002"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 246
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v1, v5}, Lcom/felicanetworks/felica/FeliCaChip;->setProtectCancel(Z)V

    .line 247
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v1}, Lcom/felicanetworks/felica/FeliCaChip;->terminate()V

    .line 248
    iput-object v6, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    .line 252
    :cond_0
    :goto_0
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 253
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    const/4 v1, 0x1

    :try_start_1
    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    const-string v1, "%s"

    const-string v2, "002"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 246
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v1, v5}, Lcom/felicanetworks/felica/FeliCaChip;->setProtectCancel(Z)V

    .line 247
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v1}, Lcom/felicanetworks/felica/FeliCaChip;->terminate()V

    .line 248
    iput-object v6, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    goto :goto_0

    .line 244
    .end local v0    # "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :catchall_0
    move-exception v1

    .line 245
    const-string v2, "%s"

    const-string v3, "002"

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 246
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v2, v5}, Lcom/felicanetworks/felica/FeliCaChip;->setProtectCancel(Z)V

    .line 247
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v2}, Lcom/felicanetworks/felica/FeliCaChip;->terminate()V

    .line 248
    iput-object v6, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    .line 249
    throw v1
.end method

.method public closeAdhoc()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x7

    const/4 v4, 0x6

    .line 1344
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1346
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    if-nez v1, :cond_0

    .line 1347
    const-string v1, "%s"

    const-string v2, "998"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1366
    :goto_0
    return-void

    .line 1354
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v1}, Lcom/felicanetworks/felica/FeliCaChip;->closeNoReset()V
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1360
    const-string v1, "%s"

    const-string v2, "002"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1361
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    check-cast v1, Lcom/felicanetworks/felica/impl/chip/v20/Chip;

    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->terminateWithoutPonCtrl()V

    .line 1362
    iput-object v6, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    .line 1365
    :goto_1
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1356
    :catch_0
    move-exception v0

    .line 1358
    .local v0, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    const/4 v1, 0x2

    :try_start_1
    const-string v2, "%s"

    const-string v3, "800"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1360
    const-string v1, "%s"

    const-string v2, "002"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1361
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    check-cast v1, Lcom/felicanetworks/felica/impl/chip/v20/Chip;

    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->terminateWithoutPonCtrl()V

    .line 1362
    iput-object v6, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    goto :goto_1

    .line 1359
    .end local v0    # "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :catchall_0
    move-exception v1

    move-object v2, v1

    .line 1360
    const-string v1, "%s"

    const-string v3, "002"

    invoke-static {v5, v1, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1361
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    check-cast v1, Lcom/felicanetworks/felica/impl/chip/v20/Chip;

    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->terminateWithoutPonCtrl()V

    .line 1362
    iput-object v6, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    .line 1363
    throw v2
.end method

.method public closeNoReset()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x7

    .line 1842
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1844
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    if-eqz v1, :cond_0

    .line 1845
    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1847
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/felicanetworks/felica/FeliCaChip;->setProtectCancel(Z)V

    .line 1848
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v1}, Lcom/felicanetworks/felica/FeliCaChip;->closeNoReset()V
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1852
    const-string v1, "%s"

    const-string v2, "002"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1853
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v1, v5}, Lcom/felicanetworks/felica/FeliCaChip;->setProtectCancel(Z)V

    .line 1854
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v1}, Lcom/felicanetworks/felica/FeliCaChip;->terminate()V

    .line 1855
    iput-object v6, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    .line 1859
    :cond_0
    :goto_0
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v7, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1860
    return-void

    .line 1849
    :catch_0
    move-exception v0

    .line 1850
    .local v0, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    const/4 v1, 0x1

    :try_start_1
    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1852
    const-string v1, "%s"

    const-string v2, "002"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1853
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v1, v5}, Lcom/felicanetworks/felica/FeliCaChip;->setProtectCancel(Z)V

    .line 1854
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v1}, Lcom/felicanetworks/felica/FeliCaChip;->terminate()V

    .line 1855
    iput-object v6, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    goto :goto_0

    .line 1851
    .end local v0    # "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :catchall_0
    move-exception v1

    .line 1852
    const-string v2, "%s"

    const-string v3, "002"

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1853
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v2, v5}, Lcom/felicanetworks/felica/FeliCaChip;->setProtectCancel(Z)V

    .line 1854
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v2}, Lcom/felicanetworks/felica/FeliCaChip;->terminate()V

    .line 1855
    iput-object v6, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    .line 1856
    throw v1
.end method

.method public executeFelicaCommand([BII)[B
    .locals 6
    .param p1, "commandPacket"    # [B
    .param p2, "timeout"    # I
    .param p3, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    .line 1813
    const-string v3, "%s"

    const-string v4, "START"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1815
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandCommand;

    move-result-object v0

    .line 1816
    .local v0, "cmd":Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandCommand;
    invoke-virtual {v0, p1}, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandCommand;->setCommand([B)V

    .line 1818
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, p2, p3}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->execute(ILcom/felicanetworks/felica/offlineimpl/Command;II)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;

    .line 1821
    .local v2, "res":Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;
    const/4 v3, 0x6

    const-string v4, "%s"

    const-string v5, "END"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1823
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;->getResponse()[B
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 1825
    .end local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandCommand;
    .end local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;
    :catch_0
    move-exception v1

    .line 1827
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/4 v3, 0x1

    const-string v4, "%s"

    const-string v5, "OfflineException"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1828
    throw v1
.end method

.method public finishCancel()V
    .locals 1

    .prologue
    .line 1429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mbCancel:Z

    .line 1430
    return-void
.end method

.method public getContainerID(III)[B
    .locals 6
    .param p1, "target"    # I
    .param p2, "timeout"    # I
    .param p3, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    .line 815
    const-string v3, "%s"

    const-string v4, "000"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 817
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/GetContainerIdCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/GetContainerIdCommand;

    move-result-object v0

    .line 819
    .local v0, "cmd":Lcom/felicanetworks/felica/offlineimpl/GetContainerIdCommand;
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->execute(ILcom/felicanetworks/felica/offlineimpl/Command;II)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/felica/offlineimpl/GetContainerIdResponse;

    .line 822
    .local v2, "res":Lcom/felicanetworks/felica/offlineimpl/GetContainerIdResponse;
    const/4 v3, 0x6

    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 824
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/GetContainerIdResponse;->getCotainerId()[B
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 826
    .end local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/GetContainerIdCommand;
    .end local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/GetContainerIdResponse;
    :catch_0
    move-exception v1

    .line 828
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/4 v3, 0x1

    const-string v4, "%s"

    const-string v5, "700"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 829
    throw v1
.end method

.method public getContainerIssueInfo(I[BII)[B
    .locals 6
    .param p1, "target"    # I
    .param p2, "idm"    # [B
    .param p3, "timeout"    # I
    .param p4, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    .line 456
    const-string v3, "%s"

    const-string v4, "000"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 459
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;

    move-result-object v0

    .line 460
    .local v0, "cmd":Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;
    invoke-virtual {v0, p2}, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;->setIDm([B)V

    .line 462
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->execute(ILcom/felicanetworks/felica/offlineimpl/Command;II)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;

    .line 465
    .local v2, "res":Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;
    const/4 v3, 0x6

    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 467
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;->getContainerIssueInfo()[B
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 468
    .end local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;
    .end local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;
    :catch_0
    move-exception v1

    .line 469
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/4 v3, 0x1

    const-string v4, "%s"

    const-string v5, "700"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 470
    throw v1
.end method

.method public getFeliCaChip()Lcom/felicanetworks/felica/FeliCaChip;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 170
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 171
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    return-object v0
.end method

.method public getRFChipRegister(II)B
    .locals 7
    .param p1, "timeout"    # I
    .param p2, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 1782
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterCommand;

    move-result-object v0

    .line 1784
    .local v0, "cmd":Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterCommand;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, p1, p2}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->execute(ILcom/felicanetworks/felica/offlineimpl/Command;II)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;

    .line 1787
    .local v2, "res":Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;->getResult()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1788
    const/4 v3, 0x4

    const-string v4, "res.getResult() = %s"

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;->getResult()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1789
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v3
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1792
    .end local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterCommand;
    .end local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;
    :catch_0
    move-exception v1

    .line 1793
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const-string v3, "%s"

    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1794
    throw v1

    .line 1791
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .restart local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterCommand;
    .restart local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;->getBaudrateInSetRfResigerCommand()B
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    return v3
.end method

.method public getRFSState()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    .line 1379
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1382
    const/4 v1, 0x6

    :try_start_0
    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1383
    invoke-static {}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->getRFSState()Z
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1384
    :catch_0
    move-exception v0

    .line 1385
    .local v0, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    const/4 v1, 0x1

    const-string v2, "%s"

    const-string v3, "701"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1386
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1
.end method

.method public open()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x0

    .line 186
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v6, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 191
    :try_start_0
    const-string v0, "115200"

    .line 193
    .local v0, "baudrate":Ljava/lang/String;
    const-string v2, "v20"

    const-string v3, "R/W"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/felica/impl/chip/ChipFactory;->create(Ljava/lang/String;Ljava/lang/String;I)Lcom/felicanetworks/felica/impl/chip/Chip;

    move-result-object v2

    iput-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    .line 195
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/felicanetworks/felica/FeliCaChip;->setProtectCancel(Z)V

    .line 197
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v2}, Lcom/felicanetworks/felica/FeliCaChip;->initialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v2, v5}, Lcom/felicanetworks/felica/FeliCaChip;->setProtectCancel(Z)V

    .line 226
    :cond_0
    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v6, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 227
    return-void

    .line 199
    .end local v0    # "baudrate":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    :try_start_1
    const-string v3, "%s"

    const-string v4, "700"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 201
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    if-eqz v2, :cond_1

    .line 202
    const/4 v2, 0x7

    const-string v3, "%s"

    const-string v4, "001"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 203
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v2}, Lcom/felicanetworks/felica/FeliCaChip;->terminate()V

    .line 205
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    .line 208
    instance-of v2, v1, Lcom/felicanetworks/felica/FeliCaChipException;

    if-eqz v2, :cond_3

    .line 209
    const/4 v2, 0x1

    const-string v3, "%s"

    const-string v4, "701"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 210
    check-cast v1, Lcom/felicanetworks/felica/FeliCaChipException;

    .end local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/FeliCaChipException;->getType()I

    move-result v2

    const/16 v3, 0x21

    if-ne v2, v3, :cond_3

    .line 211
    const/4 v2, 0x1

    const-string v3, "%s"

    const-string v4, "702"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 212
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :catchall_0
    move-exception v2

    .line 220
    iget-object v3, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    if-eqz v3, :cond_2

    .line 221
    iget-object v3, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v3, v5}, Lcom/felicanetworks/felica/FeliCaChip;->setProtectCancel(Z)V

    .line 223
    :cond_2
    throw v2

    .line 216
    :cond_3
    :try_start_2
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public openAdhoc()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    .line 1273
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1277
    :try_start_0
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    if-nez v2, :cond_0

    .line 1278
    const/4 v2, 0x7

    const-string v3, "%s"

    const-string v4, "001"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1280
    const-string v0, "115200"

    .line 1281
    .local v0, "baudrate":Ljava/lang/String;
    const-string v2, "v20"

    const-string v3, "R/W"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/felica/impl/chip/ChipFactory;->create(Ljava/lang/String;Ljava/lang/String;I)Lcom/felicanetworks/felica/impl/chip/Chip;

    move-result-object v2

    iput-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    .line 1284
    .end local v0    # "baudrate":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    check-cast v2, Lcom/felicanetworks/felica/impl/chip/v20/Chip;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->initializeWithoutPonCtrl()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1298
    const-string v2, "%s"

    const-string v3, "999"

    invoke-static {v5, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1299
    return-void

    .line 1286
    :catch_0
    move-exception v1

    .line 1287
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    const-string v3, "%s"

    const-string v4, "801"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1288
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    if-eqz v2, :cond_1

    .line 1289
    const/4 v2, 0x2

    const-string v3, "%s"

    const-string v4, "802"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1290
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    check-cast v2, Lcom/felicanetworks/felica/impl/chip/v20/Chip;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/chip/v20/Chip;->terminateWithoutPonCtrl()V

    .line 1293
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    .line 1295
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2
.end method

.method public polling(IIIIB)Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    .locals 8
    .param p1, "target"    # I
    .param p2, "systemCode"    # I
    .param p3, "timeout"    # I
    .param p4, "retryCount"    # I
    .param p5, "option"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x6

    .line 281
    const-string v4, "%s"

    const-string v5, "000"

    invoke-static {v7, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 286
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/PollingCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/PollingCommand;

    move-result-object v0

    .line 287
    .local v0, "cmd":Lcom/felicanetworks/felica/offlineimpl/PollingCommand;
    invoke-virtual {v0, p2}, Lcom/felicanetworks/felica/offlineimpl/PollingCommand;->setSystemCode(I)V

    .line 288
    invoke-virtual {v0, p5}, Lcom/felicanetworks/felica/offlineimpl/PollingCommand;->setOption(B)V

    .line 290
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->execute(ILcom/felicanetworks/felica/offlineimpl/Command;II)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v3

    check-cast v3, Lcom/felicanetworks/felica/offlineimpl/PollingResponse;

    .line 292
    .local v3, "res":Lcom/felicanetworks/felica/offlineimpl/PollingResponse;
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/offlineimpl/PollingResponse;->getIDm()[B

    move-result-object v4

    invoke-virtual {v3}, Lcom/felicanetworks/felica/offlineimpl/PollingResponse;->getPMm()[B

    move-result-object v5

    invoke-virtual {v3}, Lcom/felicanetworks/felica/offlineimpl/PollingResponse;->getSystemCode()I

    move-result v6

    invoke-direct {v2, v4, v5, v6}, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;-><init>([B[BI)V
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .local v2, "info":Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v7, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 301
    return-object v2

    .line 294
    .end local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/PollingCommand;
    .end local v2    # "info":Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
    .end local v3    # "res":Lcom/felicanetworks/felica/offlineimpl/PollingResponse;
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/4 v4, 0x1

    const-string v5, "%s"

    const-string v6, "700"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 296
    throw v1
.end method

.method public proposeAdhoc([BSII)I
    .locals 8
    .param p1, "idm"    # [B
    .param p2, "sessionId"    # S
    .param p3, "timeout"    # I
    .param p4, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    const/4 v7, 0x1

    .line 1653
    const-string v3, "%s"

    const-string v4, "000"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1656
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;

    move-result-object v0

    .line 1657
    .local v0, "cmd":Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;
    invoke-virtual {v0, p1}, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;->setIDm([B)V

    .line 1658
    invoke-virtual {v0, p2}, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;->setSessionId(S)V

    .line 1660
    const/4 v3, 0x1

    invoke-direct {p0, v3, v0, p3, p4}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->execute(ILcom/felicanetworks/felica/offlineimpl/Command;II)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;

    .line 1664
    .local v2, "res":Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->getStatusFlag1()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1665
    const/4 v3, 0x1

    const-string v4, "%s"

    const-string v5, "700"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1666
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v4, 0x6

    .line 1667
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->getStatusFlag2()I

    move-result v6

    .line 1666
    invoke-direct {v3, v4, v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(III)V

    throw v3
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1682
    .end local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;
    .end local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;
    :catch_0
    move-exception v1

    .line 1683
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const-string v3, "%s"

    const-string v4, "800"

    invoke-static {v7, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1684
    throw v1

    .line 1671
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .restart local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;
    .restart local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->byteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v4, 0x0

    const/16 v5, 0xf

    invoke-virtual {v3, v4, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1672
    const/4 v3, 0x1

    const-string v4, "%s"

    const-string v5, "701"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1675
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v4, 0x4

    .line 1676
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->getStatusFlag2()I

    move-result v6

    .line 1675
    invoke-direct {v3, v4, v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(III)V

    throw v3

    .line 1679
    :cond_1
    const/4 v3, 0x4

    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1680
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->getSendDataSize()I
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    return v3
.end method

.method public push([B[BII)I
    .locals 7
    .param p1, "idm"    # [B
    .param p2, "sendData"    # [B
    .param p3, "timeout"    # I
    .param p4, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1214
    const/4 v3, 0x6

    const-string v4, "%s"

    const-string v5, "000"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1217
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/PushCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/PushCommand;

    move-result-object v0

    .line 1218
    .local v0, "cmd":Lcom/felicanetworks/felica/offlineimpl/PushCommand;
    invoke-virtual {v0, p1}, Lcom/felicanetworks/felica/offlineimpl/PushCommand;->setIDm([B)V

    .line 1219
    invoke-virtual {v0, p2}, Lcom/felicanetworks/felica/offlineimpl/PushCommand;->setSendData([B)V

    .line 1221
    const/4 v3, 0x1

    invoke-direct {p0, v3, v0, p3, p4}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->execute(ILcom/felicanetworks/felica/offlineimpl/Command;II)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/felica/offlineimpl/PushResponse;

    .line 1223
    .local v2, "res":Lcom/felicanetworks/felica/offlineimpl/PushResponse;
    const/4 v3, 0x4

    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1224
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/PushResponse;->getSendDataSize()I
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1225
    .end local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/PushCommand;
    .end local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/PushResponse;
    :catch_0
    move-exception v1

    .line 1226
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const-string v3, "%s"

    const-string v4, "800"

    invoke-static {v6, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1227
    throw v1
.end method

.method public readWithoutEncryption(II[BLcom/felicanetworks/mfc/BlockList;II)[Lcom/felicanetworks/mfc/Data;
    .locals 8
    .param p1, "target"    # I
    .param p2, "nodeCodeSize"    # I
    .param p3, "idm"    # [B
    .param p4, "blockList"    # Lcom/felicanetworks/mfc/BlockList;
    .param p5, "timeout"    # I
    .param p6, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x6

    .line 497
    const-string v3, "%s"

    const-string v4, "000"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 500
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;

    move-result-object v0

    .line 501
    .local v0, "cmd":Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;
    invoke-virtual {v0, p2}, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;->setNodeCodeSize(I)V

    .line 502
    invoke-virtual {v0, p3}, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;->setIDm([B)V

    .line 503
    invoke-virtual {v0, p4}, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;->setBlockList(Lcom/felicanetworks/mfc/BlockList;)V

    .line 505
    invoke-direct {p0, p1, v0, p5, p6}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->execute(ILcom/felicanetworks/felica/offlineimpl/Command;II)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;

    .line 509
    .local v2, "res":Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;->getStatusFlag1()I

    move-result v3

    if-eqz v3, :cond_0

    .line 510
    const/4 v3, 0x1

    const-string v4, "%s"

    const-string v5, "700"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 511
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v4, 0x6

    .line 512
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;->getStatusFlag2()I

    move-result v6

    .line 511
    invoke-direct {v3, v4, v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(III)V

    throw v3
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .end local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;
    .end local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;
    :catch_0
    move-exception v1

    .line 518
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const-string v3, "%s"

    const-string v4, "701"

    invoke-static {v7, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 519
    throw v1

    .line 515
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .restart local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;
    .restart local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;
    :cond_0
    const/4 v3, 0x6

    :try_start_1
    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 516
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;->getDataList()[Lcom/felicanetworks/mfc/Data;
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3
.end method

.method public receiveFalpPacket([BI)Lcom/felicanetworks/felica/offlineimpl/FalpCommand;
    .locals 11
    .param p1, "sessionId"    # [B
    .param p2, "timeout"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 1581
    const/4 v6, 0x6

    :try_start_0
    const-string v7, "[MFC][A2]read :start"

    invoke-static {v6, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1582
    iget-object v6, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v6, p2}, Lcom/felicanetworks/felica/FeliCaChip;->receiveBuf(I)Lcom/felicanetworks/felica/util/ByteBuffer;

    move-result-object v1

    .line 1583
    .local v1, "data":Lcom/felicanetworks/felica/util/ByteBuffer;
    const/4 v6, 0x6

    const-string v7, "[MFC][A2]read :end"

    invoke-static {v6, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1585
    if-nez v1, :cond_0

    move-object v4, v5

    .line 1635
    .end local v1    # "data":Lcom/felicanetworks/felica/util/ByteBuffer;
    :goto_0
    return-object v4

    .line 1589
    .restart local v1    # "data":Lcom/felicanetworks/felica/util/ByteBuffer;
    :cond_0
    sget-object v6, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mRecvBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 1590
    sget-object v6, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mRecvBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([BII)V

    .line 1593
    sget-object v6, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mRecvBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v7, 0x0

    const/16 v8, -0x52

    invoke-virtual {v6, v7, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1595
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;

    move-result-object v3

    .line 1596
    .local v3, "recvCommand":Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;
    invoke-virtual {v3, p1}, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;->setSessionId([B)V

    .line 1597
    sget-object v6, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mRecvBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v3, v6}, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;->set(Lcom/felicanetworks/felica/util/ByteBuffer;)I

    move-object v4, v3

    .line 1598
    goto :goto_0

    .line 1599
    .end local v3    # "recvCommand":Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;
    :cond_1
    sget-object v6, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mRecvBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v7, 0x0

    const/16 v8, -0x44

    invoke-virtual {v6, v7, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1601
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;

    move-result-object v4

    .line 1602
    .local v4, "recvCommand2":Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;
    invoke-virtual {v4, p1}, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->setSessionId([B)V

    .line 1603
    const/4 v6, 0x6

    const-string v7, "[MFC][A2]recvCommand2 :start"

    invoke-static {v6, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1604
    sget-object v6, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mRecvBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v4, v6}, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->set(Lcom/felicanetworks/felica/util/ByteBuffer;)I

    .line 1605
    const/4 v6, 0x6

    const-string v7, "[MFC][A2]recvCommand2 :end"

    invoke-static {v6, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 1612
    .end local v1    # "data":Lcom/felicanetworks/felica/util/ByteBuffer;
    .end local v4    # "recvCommand2":Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;
    :catch_0
    move-exception v0

    .line 1614
    .local v0, "ae":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;

    move-result-object v4

    .line 1615
    .restart local v4    # "recvCommand2":Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;
    invoke-virtual {v4, p1}, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->setSessionId([B)V

    .line 1617
    :try_start_1
    sget-object v5, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mRecvBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 1618
    sget-object v5, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mRecvBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/16 v6, -0x44

    invoke-virtual {v5, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 1619
    sget-object v5, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mRecvBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v5, p1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 1620
    sget-object v5, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mRecvBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 1621
    sget-object v5, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mRecvBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 1622
    sget-object v5, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mRecvBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 1623
    sget-object v5, Lcom/felicanetworks/felica/offlineimpl/ChipController;->mRecvBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->set(Lcom/felicanetworks/felica/util/ByteBuffer;)I
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/FalpException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1624
    :catch_1
    move-exception v5

    goto/16 :goto_0

    .line 1609
    .end local v0    # "ae":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v4    # "recvCommand2":Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;
    .restart local v1    # "data":Lcom/felicanetworks/felica/util/ByteBuffer;
    :cond_2
    const/4 v6, 0x1

    :try_start_2
    const-string v7, "    received data was not supported data."

    invoke-static {v6, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v4, v5

    .line 1635
    goto/16 :goto_0

    .line 1628
    .end local v1    # "data":Lcom/felicanetworks/felica/util/ByteBuffer;
    :catch_2
    move-exception v2

    .line 1629
    .local v2, "e":Ljava/lang/NullPointerException;
    throw v2

    .line 1630
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v2

    .line 1632
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "receiveFalpPacket:"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v6, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 1633
    goto/16 :goto_0
.end method

.method public requestBlockInformationEx(II[B[III)[Lcom/felicanetworks/mfc/BlockCountInformation;
    .locals 8
    .param p1, "target"    # I
    .param p2, "nodeCodeSize"    # I
    .param p3, "idm"    # [B
    .param p4, "nodeCodeList"    # [I
    .param p5, "timeout"    # I
    .param p6, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x6

    .line 1170
    const-string v3, "%s"

    const-string v4, "000"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1173
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;

    move-result-object v0

    .line 1174
    .local v0, "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;
    invoke-virtual {v0, p2}, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;->setNodeCodeSize(I)V

    .line 1175
    invoke-virtual {v0, p3}, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;->setIDm([B)V

    .line 1176
    invoke-virtual {v0, p4}, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;->setNodeCodeList([I)V

    .line 1178
    invoke-direct {p0, p1, v0, p5, p6}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->execute(ILcom/felicanetworks/felica/offlineimpl/Command;II)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;

    .line 1182
    .local v2, "res":Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->getStatusFlag1()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1183
    const/4 v3, 0x1

    const-string v4, "%s"

    const-string v5, "700"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1184
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v4, 0x6

    .line 1185
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->getStatusFlag2()I

    move-result v6

    .line 1184
    invoke-direct {v3, v4, v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(III)V

    throw v3
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    .end local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;
    .end local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;
    :catch_0
    move-exception v1

    .line 1193
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const-string v3, "%s"

    const-string v4, "701"

    invoke-static {v7, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1194
    throw v1

    .line 1188
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .restart local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;
    .restart local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;
    :cond_0
    const/4 v3, 0x6

    :try_start_1
    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1190
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->getBlockCountInformation()[Lcom/felicanetworks/mfc/BlockCountInformation;
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3
.end method

.method public requestCodeList(II[BIII)Lcom/felicanetworks/mfc/NodeInformation;
    .locals 23
    .param p1, "target"    # I
    .param p2, "nodeCodeSize"    # I
    .param p3, "idm"    # [B
    .param p4, "parentAreaCode"    # I
    .param p5, "timeout"    # I
    .param p6, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    .line 902
    const/16 v19, 0x6

    const-string v20, "%s"

    const-string v21, "000"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 906
    :try_start_0
    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    .line 907
    .local v18, "vecNodeInfo":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/felicanetworks/mfc/NodeInformation;>;"
    move/from16 v10, p6

    .line 909
    .local v10, "nCurRetryCount":I
    const/4 v13, 0x1

    .local v13, "packetIndex":I
    :goto_0
    const/high16 v19, 0x10000

    move/from16 v0, v19

    if-lt v13, v0, :cond_0

    .line 962
    :goto_1
    const/4 v9, 0x0

    .line 963
    .local v9, "nAreaInfoCount":I
    const/4 v11, 0x0

    .line 964
    .local v11, "nSrvCodeCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v7, v0, :cond_5

    .line 973
    new-array v4, v9, [Lcom/felicanetworks/mfc/AreaInformation;

    .line 974
    .local v4, "areaCodeList":[Lcom/felicanetworks/mfc/AreaInformation;
    new-array v0, v11, [I

    move-object/from16 v16, v0

    .line 977
    .local v16, "serviceCodeList":[I
    const/4 v12, 0x0

    .line 978
    .local v12, "off":I
    const/4 v7, 0x0

    :goto_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v7, v0, :cond_7

    .line 989
    const/4 v12, 0x0

    .line 990
    const/4 v7, 0x0

    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v7, v0, :cond_9

    .line 1001
    new-instance v15, Lcom/felicanetworks/mfc/NodeInformation;

    move-object/from16 v0, v16

    invoke-direct {v15, v4, v0}, Lcom/felicanetworks/mfc/NodeInformation;-><init>([Lcom/felicanetworks/mfc/AreaInformation;[I)V

    .line 1003
    .local v15, "ret":Lcom/felicanetworks/mfc/NodeInformation;
    const/16 v19, 0x6

    const-string v20, "%s"

    const-string v21, "999"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1004
    return-object v15

    .line 911
    .end local v4    # "areaCodeList":[Lcom/felicanetworks/mfc/AreaInformation;
    .end local v7    # "i":I
    .end local v9    # "nAreaInfoCount":I
    .end local v11    # "nSrvCodeCount":I
    .end local v12    # "off":I
    .end local v15    # "ret":Lcom/felicanetworks/mfc/NodeInformation;
    .end local v16    # "serviceCodeList":[I
    :cond_0
    const/16 v19, 0x6

    const-string v20, "%s packetIndex=%d"

    const-string v21, "001"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static/range {v19 .. v22}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 913
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;

    move-result-object v5

    .line 914
    .local v5, "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;
    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->setNodeCodeSize(I)V

    .line 915
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->setIDm([B)V

    .line 916
    move/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->setParentAreaCode(I)V

    .line 917
    invoke-virtual {v5, v13}, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->setPacketIndex(I)V

    .line 920
    const/4 v14, 0x0

    .line 921
    .local v14, "res":Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    if-le v7, v10, :cond_1

    .line 940
    :goto_6
    sub-int/2addr v10, v7

    .line 943
    invoke-virtual {v14}, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->getStatusFlag1()I

    move-result v19

    if-eqz v19, :cond_3

    .line 944
    const/16 v19, 0x1

    const-string v20, "%s"

    const-string v21, "700"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 945
    new-instance v19, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/16 v20, 0x6

    .line 946
    invoke-virtual {v14}, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->getStatusFlag1()I

    move-result v21

    invoke-virtual {v14}, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->getStatusFlag2()I

    move-result v22

    .line 945
    invoke-direct/range {v19 .. v22}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(III)V

    throw v19
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    .end local v5    # "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;
    .end local v7    # "i":I
    .end local v10    # "nCurRetryCount":I
    .end local v13    # "packetIndex":I
    .end local v14    # "res":Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;
    .end local v18    # "vecNodeInfo":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/felicanetworks/mfc/NodeInformation;>;"
    :catch_0
    move-exception v6

    .line 1007
    .local v6, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/16 v19, 0x1

    const-string v20, "%s"

    const-string v21, "705"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1008
    throw v6

    .line 922
    .end local v6    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .restart local v5    # "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;
    .restart local v7    # "i":I
    .restart local v10    # "nCurRetryCount":I
    .restart local v13    # "packetIndex":I
    .restart local v14    # "res":Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;
    .restart local v18    # "vecNodeInfo":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/felicanetworks/mfc/NodeInformation;>;"
    :cond_1
    const/16 v19, 0x7

    :try_start_1
    const-string v20, "%s"

    const-string v21, "002"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0

    .line 926
    const/16 v19, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p5

    move/from16 v3, v19

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->execute(ILcom/felicanetworks/felica/offlineimpl/Command;II)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;

    move-object v14, v0
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    .line 929
    :catch_1
    move-exception v6

    .line 930
    .restart local v6    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/16 v19, 0x1

    :try_start_3
    const-string v20, "%s"

    const-string v21, "702"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 933
    if-ne v7, v10, :cond_2

    .line 934
    const/16 v19, 0x1

    const-string v20, "%s"

    const-string v21, "703"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 935
    throw v6

    .line 921
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 950
    .end local v6    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :cond_3
    invoke-virtual {v14}, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->getNodeInformation()Lcom/felicanetworks/mfc/NodeInformation;

    move-result-object v17

    .line 951
    .local v17, "tmp":Lcom/felicanetworks/mfc/NodeInformation;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 953
    invoke-virtual {v14}, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->getContinueFlag()I

    move-result v19

    if-nez v19, :cond_4

    .line 954
    const/16 v19, 0x7

    const-string v20, "%s"

    const-string v21, "004"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 910
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 965
    .end local v5    # "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;
    .end local v14    # "res":Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;
    .end local v17    # "tmp":Lcom/felicanetworks/mfc/NodeInformation;
    .restart local v9    # "nAreaInfoCount":I
    .restart local v11    # "nSrvCodeCount":I
    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/felicanetworks/mfc/NodeInformation;

    .line 966
    .restart local v17    # "tmp":Lcom/felicanetworks/mfc/NodeInformation;
    if-nez v17, :cond_6

    .line 964
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 969
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcom/felicanetworks/mfc/NodeInformation;->getAreaInformationList()[Lcom/felicanetworks/mfc/AreaInformation;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v9, v9, v19

    .line 970
    invoke-virtual/range {v17 .. v17}, Lcom/felicanetworks/mfc/NodeInformation;->getServiceCodeList()[I

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v11, v11, v19

    goto :goto_7

    .line 979
    .end local v17    # "tmp":Lcom/felicanetworks/mfc/NodeInformation;
    .restart local v4    # "areaCodeList":[Lcom/felicanetworks/mfc/AreaInformation;
    .restart local v12    # "off":I
    .restart local v16    # "serviceCodeList":[I
    :cond_7
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/felicanetworks/mfc/NodeInformation;

    .line 980
    .restart local v17    # "tmp":Lcom/felicanetworks/mfc/NodeInformation;
    if-nez v17, :cond_8

    .line 978
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 983
    :cond_8
    invoke-virtual/range {v17 .. v17}, Lcom/felicanetworks/mfc/NodeInformation;->getAreaInformationList()[Lcom/felicanetworks/mfc/AreaInformation;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v8, v0

    .line 984
    .local v8, "len":I
    invoke-virtual/range {v17 .. v17}, Lcom/felicanetworks/mfc/NodeInformation;->getAreaInformationList()[Lcom/felicanetworks/mfc/AreaInformation;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v4, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 985
    add-int/2addr v12, v8

    goto :goto_8

    .line 991
    .end local v8    # "len":I
    .end local v17    # "tmp":Lcom/felicanetworks/mfc/NodeInformation;
    :cond_9
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/felicanetworks/mfc/NodeInformation;

    .line 992
    .restart local v17    # "tmp":Lcom/felicanetworks/mfc/NodeInformation;
    if-nez v17, :cond_a

    .line 990
    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 995
    :cond_a
    invoke-virtual/range {v17 .. v17}, Lcom/felicanetworks/mfc/NodeInformation;->getServiceCodeList()[I

    move-result-object v19

    move-object/from16 v0, v19

    array-length v8, v0

    .line 996
    .restart local v8    # "len":I
    invoke-virtual/range {v17 .. v17}, Lcom/felicanetworks/mfc/NodeInformation;->getServiceCodeList()[I

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_3 .. :try_end_3} :catch_0

    .line 997
    add-int/2addr v12, v8

    goto :goto_9
.end method

.method public requestMaskedCodeList([BIII)Lcom/felicanetworks/mfc/NodeInformation;
    .locals 23
    .param p1, "idm"    # [B
    .param p2, "parentAreaCode"    # I
    .param p3, "timeout"    # I
    .param p4, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    .line 1042
    const/16 v19, 0x6

    const-string v20, "%s"

    const-string v21, "000"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1046
    :try_start_0
    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    .line 1047
    .local v18, "vecNodeInfo":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/felicanetworks/mfc/NodeInformation;>;"
    move/from16 v10, p4

    .line 1049
    .local v10, "nCurRetryCount":I
    const/4 v13, 0x1

    .local v13, "packetIndex":I
    :goto_0
    const/high16 v19, 0x10000

    move/from16 v0, v19

    if-lt v13, v0, :cond_0

    .line 1102
    :goto_1
    const/4 v9, 0x0

    .line 1103
    .local v9, "nAreaInfoCount":I
    const/4 v11, 0x0

    .line 1104
    .local v11, "nSrvCodeCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v7, v0, :cond_5

    .line 1113
    new-array v4, v9, [Lcom/felicanetworks/mfc/AreaInformation;

    .line 1114
    .local v4, "areaCodeList":[Lcom/felicanetworks/mfc/AreaInformation;
    new-array v0, v11, [I

    move-object/from16 v16, v0

    .line 1117
    .local v16, "serviceCodeList":[I
    const/4 v12, 0x0

    .line 1118
    .local v12, "off":I
    const/4 v7, 0x0

    :goto_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v7, v0, :cond_7

    .line 1129
    const/4 v12, 0x0

    .line 1130
    const/4 v7, 0x0

    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v7, v0, :cond_9

    .line 1141
    new-instance v15, Lcom/felicanetworks/mfc/NodeInformation;

    move-object/from16 v0, v16

    invoke-direct {v15, v4, v0}, Lcom/felicanetworks/mfc/NodeInformation;-><init>([Lcom/felicanetworks/mfc/AreaInformation;[I)V

    .line 1143
    .local v15, "ret":Lcom/felicanetworks/mfc/NodeInformation;
    const/16 v19, 0x6

    const-string v20, "%s"

    const-string v21, "999"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1144
    return-object v15

    .line 1051
    .end local v4    # "areaCodeList":[Lcom/felicanetworks/mfc/AreaInformation;
    .end local v7    # "i":I
    .end local v9    # "nAreaInfoCount":I
    .end local v11    # "nSrvCodeCount":I
    .end local v12    # "off":I
    .end local v15    # "ret":Lcom/felicanetworks/mfc/NodeInformation;
    .end local v16    # "serviceCodeList":[I
    :cond_0
    const/16 v19, 0x7

    const-string v20, "%s packetIndex=%d"

    const-string v21, "001"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static/range {v19 .. v22}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1053
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;

    move-result-object v5

    .line 1054
    .local v5, "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;->setIDm([B)V

    .line 1055
    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;->setParentAreaCode(I)V

    .line 1056
    invoke-virtual {v5, v13}, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;->setPacketIndex(I)V

    .line 1059
    const/4 v14, 0x0

    .line 1060
    .local v14, "res":Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    if-le v7, v10, :cond_1

    .line 1080
    :goto_6
    sub-int/2addr v10, v7

    .line 1083
    invoke-virtual {v14}, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->getStatusFlag1()I

    move-result v19

    if-eqz v19, :cond_3

    .line 1084
    const/16 v19, 0x1

    const-string v20, "%s"

    const-string v21, "700"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1085
    new-instance v19, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/16 v20, 0x6

    .line 1086
    invoke-virtual {v14}, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->getStatusFlag1()I

    move-result v21

    invoke-virtual {v14}, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->getStatusFlag2()I

    move-result v22

    .line 1085
    invoke-direct/range {v19 .. v22}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(III)V

    throw v19
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    .end local v5    # "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;
    .end local v7    # "i":I
    .end local v10    # "nCurRetryCount":I
    .end local v13    # "packetIndex":I
    .end local v14    # "res":Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;
    .end local v18    # "vecNodeInfo":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/felicanetworks/mfc/NodeInformation;>;"
    :catch_0
    move-exception v6

    .line 1147
    .local v6, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/16 v19, 0x1

    const-string v20, "%s"

    const-string v21, "705"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1148
    throw v6

    .line 1061
    .end local v6    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .restart local v5    # "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;
    .restart local v7    # "i":I
    .restart local v10    # "nCurRetryCount":I
    .restart local v13    # "packetIndex":I
    .restart local v14    # "res":Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;
    .restart local v18    # "vecNodeInfo":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/felicanetworks/mfc/NodeInformation;>;"
    :cond_1
    const/16 v19, 0x7

    :try_start_1
    const-string v20, "%s"

    const-string v21, "002"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1065
    const/16 v19, 0x0

    .line 1066
    const/16 v20, 0x0

    .line 1065
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p3

    move/from16 v3, v20

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->execute(ILcom/felicanetworks/felica/offlineimpl/Command;II)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;

    move-object v14, v0
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    .line 1069
    :catch_1
    move-exception v6

    .line 1070
    .restart local v6    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/16 v19, 0x1

    :try_start_3
    const-string v20, "%s"

    const-string v21, "702"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1073
    if-ne v7, v10, :cond_2

    .line 1074
    const/16 v19, 0x1

    const-string v20, "%s"

    const-string v21, "703"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1075
    throw v6

    .line 1060
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1090
    .end local v6    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :cond_3
    invoke-virtual {v14}, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->getNodeInformation()Lcom/felicanetworks/mfc/NodeInformation;

    move-result-object v17

    .line 1091
    .local v17, "tmp":Lcom/felicanetworks/mfc/NodeInformation;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1093
    invoke-virtual {v14}, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->getContinueFlag()I

    move-result v19

    if-nez v19, :cond_4

    .line 1094
    const/16 v19, 0x6

    const-string v20, "%s"

    const-string v21, "004"

    invoke-static/range {v19 .. v21}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1050
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1105
    .end local v5    # "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;
    .end local v14    # "res":Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;
    .end local v17    # "tmp":Lcom/felicanetworks/mfc/NodeInformation;
    .restart local v9    # "nAreaInfoCount":I
    .restart local v11    # "nSrvCodeCount":I
    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/felicanetworks/mfc/NodeInformation;

    .line 1106
    .restart local v17    # "tmp":Lcom/felicanetworks/mfc/NodeInformation;
    if-nez v17, :cond_6

    .line 1104
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 1109
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcom/felicanetworks/mfc/NodeInformation;->getAreaInformationList()[Lcom/felicanetworks/mfc/AreaInformation;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v9, v9, v19

    .line 1110
    invoke-virtual/range {v17 .. v17}, Lcom/felicanetworks/mfc/NodeInformation;->getServiceCodeList()[I

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v11, v11, v19

    goto :goto_7

    .line 1119
    .end local v17    # "tmp":Lcom/felicanetworks/mfc/NodeInformation;
    .restart local v4    # "areaCodeList":[Lcom/felicanetworks/mfc/AreaInformation;
    .restart local v12    # "off":I
    .restart local v16    # "serviceCodeList":[I
    :cond_7
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/felicanetworks/mfc/NodeInformation;

    .line 1120
    .restart local v17    # "tmp":Lcom/felicanetworks/mfc/NodeInformation;
    if-nez v17, :cond_8

    .line 1118
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 1123
    :cond_8
    invoke-virtual/range {v17 .. v17}, Lcom/felicanetworks/mfc/NodeInformation;->getAreaInformationList()[Lcom/felicanetworks/mfc/AreaInformation;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v8, v0

    .line 1124
    .local v8, "len":I
    invoke-virtual/range {v17 .. v17}, Lcom/felicanetworks/mfc/NodeInformation;->getAreaInformationList()[Lcom/felicanetworks/mfc/AreaInformation;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v4, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1125
    add-int/2addr v12, v8

    goto :goto_8

    .line 1131
    .end local v8    # "len":I
    .end local v17    # "tmp":Lcom/felicanetworks/mfc/NodeInformation;
    :cond_9
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/felicanetworks/mfc/NodeInformation;

    .line 1132
    .restart local v17    # "tmp":Lcom/felicanetworks/mfc/NodeInformation;
    if-nez v17, :cond_a

    .line 1130
    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 1135
    :cond_a
    invoke-virtual/range {v17 .. v17}, Lcom/felicanetworks/mfc/NodeInformation;->getServiceCodeList()[I

    move-result-object v19

    move-object/from16 v0, v19

    array-length v8, v0

    .line 1136
    .restart local v8    # "len":I
    invoke-virtual/range {v17 .. v17}, Lcom/felicanetworks/mfc/NodeInformation;->getServiceCodeList()[I

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1137
    add-int/2addr v12, v8

    goto :goto_9
.end method

.method public requestService(II[B[III)[I
    .locals 6
    .param p1, "target"    # I
    .param p2, "nodeCodeSize"    # I
    .param p3, "idm"    # [B
    .param p4, "serviceCodeList"    # [I
    .param p5, "timeout"    # I
    .param p6, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    .line 416
    const-string v3, "%s"

    const-string v4, "000"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 419
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;

    move-result-object v0

    .line 420
    .local v0, "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;
    invoke-virtual {v0, p2}, Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;->setNodeCodeSize(I)V

    .line 421
    invoke-virtual {v0, p3}, Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;->setIDm([B)V

    .line 422
    invoke-virtual {v0, p4}, Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;->setServiceCodeList([I)V

    .line 424
    invoke-direct {p0, p1, v0, p5, p6}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->execute(ILcom/felicanetworks/felica/offlineimpl/Command;II)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;

    .line 427
    .local v2, "res":Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;
    const/4 v3, 0x6

    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 429
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;->getServiceKeyVersionList()[I
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 431
    .end local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;
    .end local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;
    :catch_0
    move-exception v1

    .line 432
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/4 v3, 0x1

    const-string v4, "%s"

    const-string v5, "700"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 433
    throw v1
.end method

.method public requestSystemCode(I[BII)[I
    .locals 6
    .param p1, "target"    # I
    .param p2, "idm"    # [B
    .param p3, "timeout"    # I
    .param p4, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    .line 783
    const-string v3, "%s"

    const-string v4, "000"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 786
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeCommand;

    move-result-object v0

    .line 787
    .local v0, "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeCommand;
    invoke-virtual {v0, p2}, Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeCommand;->setIDm([B)V

    .line 789
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->execute(ILcom/felicanetworks/felica/offlineimpl/Command;II)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;

    .line 792
    .local v2, "res":Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;
    const/4 v3, 0x6

    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 793
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;->getSystemCodeList()[I
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 795
    .end local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeCommand;
    .end local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;
    :catch_0
    move-exception v1

    .line 796
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/4 v3, 0x1

    const-string v4, "%s"

    const-string v5, "700"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 797
    throw v1
.end method

.method public reset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 579
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 581
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/felicanetworks/felica/FeliCaChip;->setProtectCancel(Z)V

    .line 582
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v1}, Lcom/felicanetworks/felica/FeliCaChip;->reset()V
    :try_end_0
    .catch Lcom/felicanetworks/felica/FeliCaChipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v1, v4}, Lcom/felicanetworks/felica/FeliCaChip;->setProtectCancel(Z)V

    .line 607
    :cond_0
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 608
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :try_start_1
    invoke-virtual {v0}, Lcom/felicanetworks/felica/FeliCaChipException;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 593
    const/4 v1, 0x1

    const-string v2, "%s"

    const-string v3, "703"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 594
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
    .end local v0    # "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :catchall_0
    move-exception v1

    .line 602
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    if-eqz v2, :cond_1

    .line 603
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ChipController;->chip:Lcom/felicanetworks/felica/FeliCaChip;

    invoke-interface {v2, v4}, Lcom/felicanetworks/felica/FeliCaChip;->setProtectCancel(Z)V

    .line 605
    :cond_1
    throw v1

    .line 587
    .restart local v0    # "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :sswitch_0
    const/4 v1, 0x1

    :try_start_2
    const-string v2, "%s"

    const-string v3, "701"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 588
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 590
    :sswitch_1
    const/4 v1, 0x1

    const-string v2, "%s"

    const-string v3, "702"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 591
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 596
    .end local v0    # "e":Lcom/felicanetworks/felica/FeliCaChipException;
    :catch_1
    move-exception v0

    .line 597
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    const-string v2, "%s"

    const-string v3, "704"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 598
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 584
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x17 -> :sswitch_0
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method public sendTerminateAdhoc([B[BI)V
    .locals 4
    .param p1, "sessionId"    # [B
    .param p2, "sendData"    # [B
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/FalpException;
        }
    .end annotation

    .prologue
    .line 1482
    const/4 v2, 0x7

    const-string v3, "ChipController#sendTerminateAdhoc()"

    invoke-static {v2, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1486
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;

    move-result-object v0

    .line 1487
    .local v0, "cmd":Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;
    invoke-virtual {v0, p1}, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;->setSessionId([B)V

    .line 1488
    invoke-virtual {v0, p2}, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;->setSendData([B)V

    .line 1489
    invoke-virtual {v0, p3}, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;->setSendDataLen(I)V

    .line 1492
    const/4 v2, 0x0

    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpAdhCommTmData()I

    move-result v3

    invoke-direct {p0, v2, v0, v3}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->send(ILcom/felicanetworks/felica/offlineimpl/FalpCommand;I)V
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/FalpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1498
    return-void

    .line 1494
    .end local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;
    :catch_0
    move-exception v1

    .line 1495
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/FalpException;
    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/FalpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1496
    throw v1
.end method

.method public sendTransmitData([B[BI)V
    .locals 4
    .param p1, "sessionId"    # [B
    .param p2, "sendData"    # [B
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/FalpException;
        }
    .end annotation

    .prologue
    .line 1451
    const/4 v2, 0x7

    const-string v3, "ChipController#sendTransmitData()"

    invoke-static {v2, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1454
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/TransmitDataCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/TransmitDataCommand;

    move-result-object v0

    .line 1455
    .local v0, "cmd":Lcom/felicanetworks/felica/offlineimpl/TransmitDataCommand;
    invoke-virtual {v0, p1}, Lcom/felicanetworks/felica/offlineimpl/TransmitDataCommand;->setSessionId([B)V

    .line 1456
    invoke-virtual {v0, p2}, Lcom/felicanetworks/felica/offlineimpl/TransmitDataCommand;->setSendData([B)V

    .line 1457
    invoke-virtual {v0, p3}, Lcom/felicanetworks/felica/offlineimpl/TransmitDataCommand;->setDataLen(I)V

    .line 1460
    const/4 v2, 0x0

    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpAdhCommTmData()I

    move-result v3

    invoke-direct {p0, v2, v0, v3}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->send(ILcom/felicanetworks/felica/offlineimpl/FalpCommand;I)V
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/FalpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1466
    return-void

    .line 1462
    .end local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/TransmitDataCommand;
    :catch_0
    move-exception v1

    .line 1463
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/FalpException;
    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/FalpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1464
    throw v1
.end method

.method public setBaudRate(II)V
    .locals 7
    .param p1, "timeout"    # I
    .param p2, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    .line 1700
    const-string v3, "%s"

    const-string v4, "000"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1703
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/SetBaudRateCommand;

    move-result-object v0

    .line 1705
    .local v0, "cmd":Lcom/felicanetworks/felica/offlineimpl/SetBaudRateCommand;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, p1, p2}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->execute(ILcom/felicanetworks/felica/offlineimpl/Command;II)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;

    .line 1710
    .local v2, "res":Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;->getStatusFlag1()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1711
    const/4 v3, 0x2

    const-string v4, "setBaudRate is failed."

    invoke-static {v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 1712
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v4, 0x6

    .line 1713
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;->getStatusFlag2()I

    move-result v6

    .line 1712
    invoke-direct {v3, v4, v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(III)V

    throw v3
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1720
    .end local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/SetBaudRateCommand;
    .end local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;
    :catch_0
    move-exception v1

    .line 1721
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/4 v3, 0x1

    const-string v4, "%s"

    const-string v5, "800"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1722
    throw v1

    .line 1717
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .restart local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/SetBaudRateCommand;
    .restart local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;
    :cond_0
    const/4 v3, 0x4

    :try_start_1
    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1718
    return-void
.end method

.method public setParameter(I[BIII)V
    .locals 8
    .param p1, "target"    # I
    .param p2, "idm"    # [B
    .param p3, "packetType"    # I
    .param p4, "timeout"    # I
    .param p5, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x6

    const/4 v7, 0x1

    .line 360
    const-string v3, "%s"

    const-string v4, "000"

    invoke-static {v6, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 363
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;

    move-result-object v0

    .line 364
    .local v0, "cmd":Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;
    invoke-virtual {v0, p2}, Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;->setIDm([B)V

    .line 365
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;->setEncryptionType(I)V

    .line 367
    const/4 v3, 0x2

    if-ne p3, v3, :cond_1

    .line 368
    const/4 v3, 0x7

    const-string v4, "%s"

    const-string v5, "001"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 369
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;->setPacketType(I)V

    .line 375
    :goto_0
    invoke-direct {p0, p1, v0, p4, p5}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->execute(ILcom/felicanetworks/felica/offlineimpl/Command;II)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;

    .line 379
    .local v2, "res":Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;->getStatusFlag1()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;->getStatusFlag2()I

    move-result v3

    if-eqz v3, :cond_2

    .line 380
    :cond_0
    const/4 v3, 0x1

    const-string v4, "%s"

    const-string v5, "700"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 381
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v4, 0x6

    .line 382
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;->getStatusFlag2()I

    move-result v6

    .line 381
    invoke-direct {v3, v4, v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(III)V

    throw v3
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .end local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;
    .end local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;
    :catch_0
    move-exception v1

    .line 386
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const-string v3, "%s"

    const-string v4, "701"

    invoke-static {v7, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 387
    throw v1

    .line 371
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .restart local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;
    :cond_1
    const/4 v3, 0x7

    :try_start_1
    const-string v4, "%s"

    const-string v5, "002"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 372
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;->setPacketType(I)V
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 390
    .restart local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;
    :cond_2
    const-string v3, "%s"

    const-string v4, "999"

    invoke-static {v6, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 391
    return-void
.end method

.method public setPrivacyFlag([B[Lcom/felicanetworks/mfc/PrivacySettingData;II)V
    .locals 8
    .param p1, "idm"    # [B
    .param p2, "privacySettingData"    # [Lcom/felicanetworks/mfc/PrivacySettingData;
    .param p3, "timeout"    # I
    .param p4, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x6

    .line 849
    const-string v3, "%s"

    const-string v4, "000"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 852
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;

    move-result-object v0

    .line 853
    .local v0, "cmd":Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;
    invoke-virtual {v0, p1}, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;->setIDm([B)V

    .line 854
    invoke-virtual {v0, p2}, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;->setPrivacySettingData([Lcom/felicanetworks/mfc/PrivacySettingData;)V

    .line 856
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, p3, p4}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->execute(ILcom/felicanetworks/felica/offlineimpl/Command;II)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;

    .line 860
    .local v2, "res":Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;->getStatusFlag1()I

    move-result v3

    if-eqz v3, :cond_0

    .line 861
    const/4 v3, 0x1

    const-string v4, "%s"

    const-string v5, "700"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 862
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v4, 0x6

    .line 863
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;->getStatusFlag2()I

    move-result v6

    .line 862
    invoke-direct {v3, v4, v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(III)V

    throw v3
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    .end local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;
    .end local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;
    :catch_0
    move-exception v1

    .line 867
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const-string v3, "%s"

    const-string v4, "701"

    invoke-static {v7, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 868
    throw v1

    .line 871
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .restart local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;
    .restart local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;
    :cond_0
    const-string v3, "%s"

    const-string v4, "999"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 872
    return-void
.end method

.method public setRFChipRegister(BII)V
    .locals 7
    .param p1, "registerNum"    # B
    .param p2, "timeout"    # I
    .param p3, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 1741
    const/16 v3, -0x7f

    if-eq p1, v3, :cond_1

    .line 1742
    const/16 v3, -0x7e

    if-eq p1, v3, :cond_1

    .line 1758
    :cond_0
    return-void

    .line 1747
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterCommand;

    move-result-object v0

    .line 1748
    .local v0, "cmd":Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterCommand;
    invoke-virtual {v0, p1}, Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterCommand;->setBpsSetting(B)V

    .line 1750
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, p2, p3}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->execute(ILcom/felicanetworks/felica/offlineimpl/Command;II)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterResponse;

    .line 1753
    .local v2, "res":Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterResponse;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterResponse;->getResult()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1754
    const/4 v3, 0x4

    const-string v4, "res.getResult() = %s"

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterResponse;->getResult()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1755
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v3
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1759
    .end local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterCommand;
    .end local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterResponse;
    :catch_0
    move-exception v1

    .line 1760
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const-string v3, "%s"

    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1761
    throw v1
.end method

.method public startAdhocMode(II)Lcom/felicanetworks/mfc/AdhocInformation;
    .locals 8
    .param p1, "timeout"    # I
    .param p2, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    const/4 v7, 0x1

    .line 1314
    const-string v3, "%s"

    const-string v4, "000"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1317
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeCommand;

    move-result-object v0

    .line 1319
    .local v0, "cmd":Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeCommand;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, p1, p2}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->execute(ILcom/felicanetworks/felica/offlineimpl/Command;II)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;

    .line 1322
    .local v2, "res":Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;->getStatusFlag1()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1323
    const/4 v3, 0x1

    const-string v4, "%s"

    const-string v5, "800"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1324
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v4, 0x6

    .line 1325
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;->getStatusFlag2()I

    move-result v6

    .line 1324
    invoke-direct {v3, v4, v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(III)V

    throw v3
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    .end local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeCommand;
    .end local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;
    :catch_0
    move-exception v1

    .line 1331
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const-string v3, "%s"

    const-string v4, "801"

    invoke-static {v7, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1332
    throw v1

    .line 1328
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .restart local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeCommand;
    .restart local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;
    :cond_0
    const/4 v3, 0x4

    :try_start_1
    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 1329
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;->getAdhocInformation()Lcom/felicanetworks/mfc/AdhocInformation;
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3
.end method

.method public turnOffRFPower(II)V
    .locals 8
    .param p1, "timeout"    # I
    .param p2, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x6

    .line 317
    const-string v3, "%s"

    const-string v4, "000"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 320
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerCommand;

    move-result-object v0

    .line 322
    .local v0, "cmd":Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerCommand;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, p1, p2}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->execute(ILcom/felicanetworks/felica/offlineimpl/Command;II)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerResponse;

    .line 326
    .local v2, "res":Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerResponse;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerResponse;->getStatusFlag1()I

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    const/4 v3, 0x1

    const-string v4, "%s"

    const-string v5, "700"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 328
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v4, 0x6

    .line 329
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerResponse;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerResponse;->getStatusFlag2()I

    move-result v6

    .line 328
    invoke-direct {v3, v4, v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(III)V

    throw v3
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerCommand;
    .end local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerResponse;
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const-string v3, "%s"

    const-string v4, "701"

    invoke-static {v7, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 334
    throw v1

    .line 337
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .restart local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerCommand;
    .restart local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerResponse;
    :cond_0
    const-string v3, "%s"

    const-string v4, "999"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 338
    return-void
.end method

.method public writeWithoutEncryption(II[BLcom/felicanetworks/mfc/BlockDataList;II)V
    .locals 8
    .param p1, "target"    # I
    .param p2, "nodeCodeSize"    # I
    .param p3, "idm"    # [B
    .param p4, "blockDataList"    # Lcom/felicanetworks/mfc/BlockDataList;
    .param p5, "timeout"    # I
    .param p6, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x6

    .line 545
    const-string v3, "%s"

    const-string v4, "000"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 548
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/WriteWithoutEncryptionCommand;->getInstance()Lcom/felicanetworks/felica/offlineimpl/WriteWithoutEncryptionCommand;

    move-result-object v0

    .line 549
    .local v0, "cmd":Lcom/felicanetworks/felica/offlineimpl/WriteWithoutEncryptionCommand;
    invoke-virtual {v0, p2}, Lcom/felicanetworks/felica/offlineimpl/WriteWithoutEncryptionCommand;->setNodeCodeSize(I)V

    .line 550
    invoke-virtual {v0, p3}, Lcom/felicanetworks/felica/offlineimpl/WriteWithoutEncryptionCommand;->setIDm([B)V

    .line 551
    invoke-virtual {v0, p4}, Lcom/felicanetworks/felica/offlineimpl/WriteWithoutEncryptionCommand;->setBlockDataList(Lcom/felicanetworks/mfc/BlockDataList;)V

    .line 553
    invoke-direct {p0, p1, v0, p5, p6}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->execute(ILcom/felicanetworks/felica/offlineimpl/Command;II)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/felica/offlineimpl/WriteWithoutEncryptionResponse;

    .line 557
    .local v2, "res":Lcom/felicanetworks/felica/offlineimpl/WriteWithoutEncryptionResponse;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/WriteWithoutEncryptionResponse;->getStatusFlag1()I

    move-result v3

    if-eqz v3, :cond_0

    .line 558
    const/4 v3, 0x1

    const-string v4, "%s"

    const-string v5, "700"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 559
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v4, 0x6

    .line 560
    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/WriteWithoutEncryptionResponse;->getStatusFlag1()I

    move-result v5

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/WriteWithoutEncryptionResponse;->getStatusFlag2()I

    move-result v6

    .line 559
    invoke-direct {v3, v4, v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(III)V

    throw v3
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    .end local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/WriteWithoutEncryptionCommand;
    .end local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/WriteWithoutEncryptionResponse;
    :catch_0
    move-exception v1

    .line 564
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const-string v3, "%s"

    const-string v4, "701"

    invoke-static {v7, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 565
    throw v1

    .line 567
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .restart local v0    # "cmd":Lcom/felicanetworks/felica/offlineimpl/WriteWithoutEncryptionCommand;
    .restart local v2    # "res":Lcom/felicanetworks/felica/offlineimpl/WriteWithoutEncryptionResponse;
    :cond_0
    const-string v3, "%s"

    const-string v4, "999"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 568
    return-void
.end method
