.class Lcom/felicanetworks/felica/offlineimpl/DataUtil;
.super Ljava/lang/Object;
.source "DataUtil.java"


# static fields
.field private static final BLOCK_DATA_LENGTH:I = 0x10

.field private static final USERDATA_LENGTH:I = 0x6

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/DataUtil;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private append(Lcom/felicanetworks/felica/util/ByteBuffer;ILcom/felicanetworks/mfc/Block;)V
    .locals 5
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p2, "order"    # I
    .param p3, "block"    # Lcom/felicanetworks/mfc/Block;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 401
    and-int/lit8 v2, p2, 0xf

    int-to-byte v0, v2

    .line 402
    .local v0, "b":I
    invoke-virtual {p3}, Lcom/felicanetworks/mfc/Block;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 424
    :goto_0
    invoke-virtual {p3}, Lcom/felicanetworks/mfc/Block;->getBlockNo()I

    move-result v1

    .line 425
    .local v1, "no":I
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 426
    or-int/lit16 v2, v0, 0x80

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 427
    int-to-byte v2, v1

    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 432
    :goto_1
    return-void

    .line 421
    .end local v1    # "no":I
    :pswitch_0
    or-int/lit8 v0, v0, 0x20

    goto :goto_0

    .line 429
    .restart local v1    # "no":I
    :cond_0
    int-to-byte v2, v0

    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 430
    int-to-long v2, v1

    const/4 v4, 0x2

    invoke-virtual {p1, v2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    goto :goto_1

    .line 402
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private append(Lcom/felicanetworks/felica/util/ByteBuffer;ILcom/felicanetworks/mfc/BlockData;)V
    .locals 5
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p2, "order"    # I
    .param p3, "blockData"    # Lcom/felicanetworks/mfc/BlockData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 451
    and-int/lit8 v2, p2, 0xf

    int-to-byte v0, v2

    .line 452
    .local v0, "b":I
    invoke-virtual {p3}, Lcom/felicanetworks/mfc/BlockData;->getData()Lcom/felicanetworks/mfc/Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/felicanetworks/mfc/Data;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 461
    :goto_0
    :pswitch_0
    invoke-virtual {p3}, Lcom/felicanetworks/mfc/BlockData;->getBlock()Lcom/felicanetworks/mfc/Block;

    move-result-object v2

    invoke-virtual {v2}, Lcom/felicanetworks/mfc/Block;->getBlockNo()I

    move-result v1

    .line 462
    .local v1, "no":I
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 463
    or-int/lit16 v2, v0, 0x80

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 464
    int-to-byte v2, v1

    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 469
    :goto_1
    return-void

    .line 455
    .end local v1    # "no":I
    :pswitch_1
    or-int/lit8 v0, v0, 0x10

    .line 456
    goto :goto_0

    .line 458
    :pswitch_2
    or-int/lit8 v0, v0, 0x20

    goto :goto_0

    .line 466
    .restart local v1    # "no":I
    :cond_0
    int-to-byte v2, v0

    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 467
    int-to-long v2, v1

    const/4 v4, 0x2

    invoke-virtual {p1, v2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    goto :goto_1

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/Block;I)V
    .locals 3
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p2, "block"    # Lcom/felicanetworks/mfc/Block;
    .param p3, "nodeCodeSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 377
    if-ne p3, v2, :cond_0

    .line 378
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/Block;->getServiceCode()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/Block;->getServiceCode()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    goto :goto_0
.end method

.method private append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/CyclicData;)V
    .locals 1
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p2, "data"    # Lcom/felicanetworks/mfc/CyclicData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/CyclicData;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 552
    return-void
.end method

.method private append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/Data;)V
    .locals 1
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p2, "data"    # Lcom/felicanetworks/mfc/Data;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/Data;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 490
    check-cast p2, Lcom/felicanetworks/mfc/RandomData;

    .end local p2    # "data":Lcom/felicanetworks/mfc/Data;
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/RandomData;)V

    .line 514
    :goto_0
    return-void

    .line 493
    .restart local p2    # "data":Lcom/felicanetworks/mfc/Data;
    :pswitch_0
    check-cast p2, Lcom/felicanetworks/mfc/CyclicData;

    .end local p2    # "data":Lcom/felicanetworks/mfc/Data;
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/CyclicData;)V

    goto :goto_0

    .line 496
    .restart local p2    # "data":Lcom/felicanetworks/mfc/Data;
    :pswitch_1
    check-cast p2, Lcom/felicanetworks/mfc/PurseData;

    .end local p2    # "data":Lcom/felicanetworks/mfc/Data;
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/PurseData;)V

    goto :goto_0

    .line 499
    .restart local p2    # "data":Lcom/felicanetworks/mfc/Data;
    :pswitch_2
    check-cast p2, Lcom/felicanetworks/mfc/PurseCashBackData;

    .end local p2    # "data":Lcom/felicanetworks/mfc/Data;
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/PurseCashBackData;)V

    goto :goto_0

    .line 502
    .restart local p2    # "data":Lcom/felicanetworks/mfc/Data;
    :pswitch_3
    check-cast p2, Lcom/felicanetworks/mfc/PurseDecrementData;

    .end local p2    # "data":Lcom/felicanetworks/mfc/Data;
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/PurseDecrementData;)V

    goto :goto_0

    .line 505
    .restart local p2    # "data":Lcom/felicanetworks/mfc/Data;
    :pswitch_4
    check-cast p2, Lcom/felicanetworks/mfc/PINCheckData;

    .end local p2    # "data":Lcom/felicanetworks/mfc/Data;
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/PINCheckData;)V

    goto :goto_0

    .line 508
    .restart local p2    # "data":Lcom/felicanetworks/mfc/Data;
    :pswitch_5
    check-cast p2, Lcom/felicanetworks/mfc/PINChangeData;

    .end local p2    # "data":Lcom/felicanetworks/mfc/Data;
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/PINChangeData;)V

    goto :goto_0

    .line 511
    .restart local p2    # "data":Lcom/felicanetworks/mfc/Data;
    :pswitch_6
    check-cast p2, Lcom/felicanetworks/mfc/PINEnableData;

    .end local p2    # "data":Lcom/felicanetworks/mfc/Data;
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/PINEnableData;)V

    goto :goto_0

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/PINChangeData;)V
    .locals 4
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p2, "data"    # Lcom/felicanetworks/mfc/PINChangeData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    .line 652
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/PINChangeData;->getPIN()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInBigEndian(JI)V

    .line 653
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/PINChangeData;->getNewPIN()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInBigEndian(JI)V

    .line 654
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 657
    return-void

    .line 655
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/PINCheckData;)V
    .locals 4
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p2, "data"    # Lcom/felicanetworks/mfc/PINCheckData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 632
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/PINCheckData;->getPIN()J

    move-result-wide v2

    const/4 v1, 0x4

    invoke-virtual {p1, v2, v3, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInBigEndian(JI)V

    .line 633
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 636
    return-void

    .line 634
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 633
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/PINEnableData;)V
    .locals 5
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p2, "data"    # Lcom/felicanetworks/mfc/PINEnableData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 673
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/PINEnableData;->getPIN()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInBigEndian(JI)V

    .line 674
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 677
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/PINEnableData;->isEnabling()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 679
    const/16 v1, -0x44

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 684
    :goto_1
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x7

    if-lt v0, v1, :cond_2

    .line 687
    return-void

    .line 675
    :cond_0
    invoke-virtual {p1, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 682
    :cond_1
    const/16 v1, 0x3c

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    goto :goto_1

    .line 685
    :cond_2
    invoke-virtual {p1, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 684
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/PurseCashBackData;)V
    .locals 4
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p2, "data"    # Lcom/felicanetworks/mfc/PurseCashBackData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 590
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/PurseCashBackData;->getCashBackData()J

    move-result-wide v2

    const/4 v1, 0x4

    invoke-virtual {p1, v2, v3, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 591
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 594
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/PurseCashBackData;->getExecID()I

    move-result v1

    int-to-long v2, v1

    const/4 v1, 0x2

    invoke-virtual {p1, v2, v3, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInBigEndian(JI)V

    .line 595
    return-void

    .line 592
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/PurseData;)V
    .locals 3
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p2, "data"    # Lcom/felicanetworks/mfc/PurseData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 570
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/PurseData;->getPurseData()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 571
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/PurseData;->getCashBackData()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 572
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/PurseData;->getUserData()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 573
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/PurseData;->getExecID()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInBigEndian(JI)V

    .line 574
    return-void
.end method

.method private append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/PurseDecrementData;)V
    .locals 4
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p2, "data"    # Lcom/felicanetworks/mfc/PurseDecrementData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 611
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/PurseDecrementData;->getDecrementData()J

    move-result-wide v2

    const/4 v1, 0x4

    invoke-virtual {p1, v2, v3, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 612
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 615
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/PurseDecrementData;->getExecID()I

    move-result v1

    int-to-long v2, v1

    const/4 v1, 0x2

    invoke-virtual {p1, v2, v3, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInBigEndian(JI)V

    .line 616
    return-void

    .line 613
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/RandomData;)V
    .locals 1
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p2, "data"    # Lcom/felicanetworks/mfc/RandomData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 532
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/RandomData;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 533
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/DataUtil;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->instance:Lcom/felicanetworks/felica/offlineimpl/DataUtil;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/DataUtil;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->instance:Lcom/felicanetworks/felica/offlineimpl/DataUtil;

    .line 75
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->instance:Lcom/felicanetworks/felica/offlineimpl/DataUtil;

    return-object v0
.end method


# virtual methods
.method append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/BlockDataList;I)V
    .locals 9
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p2, "blockDataList"    # Lcom/felicanetworks/mfc/BlockDataList;
    .param p3, "nodeCodeSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 225
    if-nez p1, :cond_0

    .line 226
    new-instance v6, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v6, v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v6

    .line 228
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/felicanetworks/mfc/BlockDataList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 229
    :cond_1
    new-instance v6, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v6, v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v6

    .line 231
    :cond_2
    if-eq p3, v8, :cond_3

    const/4 v6, 0x4

    if-eq p3, v6, :cond_3

    .line 232
    new-instance v6, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v6, v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v6

    .line 236
    :cond_3
    :try_start_0
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/BlockDataList;->size()I

    move-result v2

    .line 239
    .local v2, "cnt":I
    move v5, v2

    .line 243
    .local v5, "service_cnt":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-lt v4, v2, :cond_4

    .line 253
    int-to-byte v6, v5

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 258
    const/4 v4, 0x0

    :goto_1
    if-lt v4, v2, :cond_6

    .line 269
    int-to-byte v6, v2

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 275
    const/4 v0, -0x1

    .line 276
    .local v0, "accord_cnt":I
    const/4 v4, 0x0

    :goto_2
    if-lt v4, v2, :cond_9

    .line 290
    const/4 v4, 0x0

    :goto_3
    if-lt v4, v2, :cond_c

    .line 296
    return-void

    .line 244
    .end local v0    # "accord_cnt":I
    :cond_4
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p2, v6}, Lcom/felicanetworks/mfc/BlockDataList;->get(I)Lcom/felicanetworks/mfc/BlockData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/BlockData;->getBlock()Lcom/felicanetworks/mfc/Block;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/Block;->getServiceCode()I

    move-result v6

    invoke-virtual {p2, v4}, Lcom/felicanetworks/mfc/BlockDataList;->get(I)Lcom/felicanetworks/mfc/BlockData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/BlockData;->getBlock()Lcom/felicanetworks/mfc/Block;

    move-result-object v7

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/Block;->getServiceCode()I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 245
    add-int/lit8 v5, v5, -0x1

    .line 243
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 259
    :cond_6
    if-nez v4, :cond_8

    .line 260
    invoke-virtual {p2, v4}, Lcom/felicanetworks/mfc/BlockDataList;->get(I)Lcom/felicanetworks/mfc/BlockData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/BlockData;->getBlock()Lcom/felicanetworks/mfc/Block;

    move-result-object v6

    invoke-direct {p0, p1, v6, p3}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/Block;I)V

    .line 258
    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 261
    :cond_8
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p2, v6}, Lcom/felicanetworks/mfc/BlockDataList;->get(I)Lcom/felicanetworks/mfc/BlockData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/BlockData;->getBlock()Lcom/felicanetworks/mfc/Block;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/Block;->getServiceCode()I

    move-result v6

    invoke-virtual {p2, v4}, Lcom/felicanetworks/mfc/BlockDataList;->get(I)Lcom/felicanetworks/mfc/BlockData;

    move-result-object v7

    .line 262
    invoke-virtual {v7}, Lcom/felicanetworks/mfc/BlockData;->getBlock()Lcom/felicanetworks/mfc/Block;

    move-result-object v7

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/Block;->getServiceCode()I

    move-result v7

    if-eq v6, v7, :cond_7

    .line 263
    invoke-virtual {p2, v4}, Lcom/felicanetworks/mfc/BlockDataList;->get(I)Lcom/felicanetworks/mfc/BlockData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/BlockData;->getBlock()Lcom/felicanetworks/mfc/Block;

    move-result-object v6

    invoke-direct {p0, p1, v6, p3}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/Block;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 293
    .end local v2    # "cnt":I
    .end local v4    # "i":I
    .end local v5    # "service_cnt":I
    :catch_0
    move-exception v3

    .line 294
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v6, v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v6

    .line 277
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "accord_cnt":I
    .restart local v2    # "cnt":I
    .restart local v4    # "i":I
    .restart local v5    # "service_cnt":I
    :cond_9
    :try_start_1
    invoke-virtual {p2, v4}, Lcom/felicanetworks/mfc/BlockDataList;->get(I)Lcom/felicanetworks/mfc/BlockData;

    move-result-object v1

    .line 278
    .local v1, "blockData":Lcom/felicanetworks/mfc/BlockData;
    if-eqz v4, :cond_a

    .line 279
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p2, v6}, Lcom/felicanetworks/mfc/BlockDataList;->get(I)Lcom/felicanetworks/mfc/BlockData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/BlockData;->getBlock()Lcom/felicanetworks/mfc/Block;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/Block;->getServiceCode()I

    move-result v6

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/BlockData;->getBlock()Lcom/felicanetworks/mfc/Block;

    move-result-object v7

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/Block;->getServiceCode()I

    move-result v7

    if-eq v6, v7, :cond_b

    .line 282
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 285
    :cond_b
    invoke-direct {p0, p1, v0, v1}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->append(Lcom/felicanetworks/felica/util/ByteBuffer;ILcom/felicanetworks/mfc/BlockData;)V

    .line 276
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 291
    .end local v1    # "blockData":Lcom/felicanetworks/mfc/BlockData;
    :cond_c
    invoke-virtual {p2, v4}, Lcom/felicanetworks/mfc/BlockDataList;->get(I)Lcom/felicanetworks/mfc/BlockData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/BlockData;->getData()Lcom/felicanetworks/mfc/Data;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/Data;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 290
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3
.end method

.method append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/BlockList;I)V
    .locals 9
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p2, "blockList"    # Lcom/felicanetworks/mfc/BlockList;
    .param p3, "nodeCodeSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 141
    if-nez p1, :cond_0

    .line 142
    new-instance v6, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v6, v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v6

    .line 144
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/felicanetworks/mfc/BlockList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 145
    :cond_1
    new-instance v6, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v6, v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v6

    .line 147
    :cond_2
    if-eq p3, v8, :cond_3

    const/4 v6, 0x4

    if-eq p3, v6, :cond_3

    .line 148
    new-instance v6, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v6, v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v6

    .line 152
    :cond_3
    :try_start_0
    invoke-virtual {p2}, Lcom/felicanetworks/mfc/BlockList;->size()I

    move-result v2

    .line 155
    .local v2, "blockListSize":I
    move v5, v2

    .line 159
    .local v5, "service_cnt":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-lt v4, v2, :cond_4

    .line 169
    int-to-byte v6, v5

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 174
    const/4 v4, 0x0

    :goto_1
    if-lt v4, v2, :cond_6

    .line 184
    int-to-byte v6, v2

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 190
    const/4 v0, -0x1

    .line 191
    .local v0, "accord_cnt":I
    const/4 v4, 0x0

    :goto_2
    if-lt v4, v2, :cond_9

    .line 207
    return-void

    .line 160
    .end local v0    # "accord_cnt":I
    :cond_4
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p2, v6}, Lcom/felicanetworks/mfc/BlockList;->get(I)Lcom/felicanetworks/mfc/Block;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/Block;->getServiceCode()I

    move-result v6

    invoke-virtual {p2, v4}, Lcom/felicanetworks/mfc/BlockList;->get(I)Lcom/felicanetworks/mfc/Block;

    move-result-object v7

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/Block;->getServiceCode()I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 161
    add-int/lit8 v5, v5, -0x1

    .line 159
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 175
    :cond_6
    if-nez v4, :cond_8

    .line 176
    invoke-virtual {p2, v4}, Lcom/felicanetworks/mfc/BlockList;->get(I)Lcom/felicanetworks/mfc/Block;

    move-result-object v6

    invoke-direct {p0, p1, v6, p3}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/Block;I)V

    .line 174
    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 177
    :cond_8
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p2, v6}, Lcom/felicanetworks/mfc/BlockList;->get(I)Lcom/felicanetworks/mfc/Block;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/Block;->getServiceCode()I

    move-result v6

    invoke-virtual {p2, v4}, Lcom/felicanetworks/mfc/BlockList;->get(I)Lcom/felicanetworks/mfc/Block;

    move-result-object v7

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/Block;->getServiceCode()I

    move-result v7

    if-eq v6, v7, :cond_7

    .line 178
    invoke-virtual {p2, v4}, Lcom/felicanetworks/mfc/BlockList;->get(I)Lcom/felicanetworks/mfc/Block;

    move-result-object v6

    invoke-direct {p0, p1, v6, p3}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/Block;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 203
    .end local v2    # "blockListSize":I
    .end local v4    # "i":I
    .end local v5    # "service_cnt":I
    :catch_0
    move-exception v3

    .line 204
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v6, v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v6

    .line 192
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "accord_cnt":I
    .restart local v2    # "blockListSize":I
    .restart local v4    # "i":I
    .restart local v5    # "service_cnt":I
    :cond_9
    :try_start_1
    invoke-virtual {p2, v4}, Lcom/felicanetworks/mfc/BlockList;->get(I)Lcom/felicanetworks/mfc/Block;

    move-result-object v1

    .line 193
    .local v1, "block":Lcom/felicanetworks/mfc/Block;
    if-eqz v4, :cond_a

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p2, v6}, Lcom/felicanetworks/mfc/BlockList;->get(I)Lcom/felicanetworks/mfc/Block;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/Block;->getServiceCode()I

    move-result v6

    invoke-virtual {v1}, Lcom/felicanetworks/mfc/Block;->getServiceCode()I

    move-result v7

    if-eq v6, v7, :cond_b

    .line 196
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 199
    :cond_b
    invoke-direct {p0, p1, v0, v1}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->append(Lcom/felicanetworks/felica/util/ByteBuffer;ILcom/felicanetworks/mfc/Block;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method append(Lcom/felicanetworks/felica/util/ByteBuffer;[II)V
    .locals 6
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p2, "serviceCodeList"    # [I
    .param p3, "nodeCodeSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2

    .line 97
    :cond_0
    if-eqz p2, :cond_1

    array-length v2, p2

    if-nez v2, :cond_2

    .line 98
    :cond_1
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2

    .line 100
    :cond_2
    if-eq p3, v5, :cond_3

    if-eq p3, v4, :cond_3

    .line 101
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2

    .line 106
    :cond_3
    :try_start_0
    array-length v2, p2

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 109
    if-ne p3, v4, :cond_6

    .line 111
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-lt v1, v2, :cond_5

    .line 123
    :cond_4
    return-void

    .line 112
    :cond_5
    aget v2, p2, v1

    int-to-long v2, v2

    const/4 v4, 0x4

    invoke-virtual {p1, v2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "i":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_4

    .line 117
    aget v2, p2, v1

    int-to-long v2, v2

    const/4 v4, 0x2

    invoke-virtual {p1, v2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 120
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v2, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2
.end method

.method append(Lcom/felicanetworks/felica/util/ByteBuffer;[Lcom/felicanetworks/mfc/PrivacySettingData;)V
    .locals 9
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p2, "privacySettingDataList"    # [Lcom/felicanetworks/mfc/PrivacySettingData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    .line 312
    const-string v4, "%s In byteBuffer = %s : PrivacySettingData[] = %s"

    const-string v5, "000"

    invoke-static {v8, v4, v5, p1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    if-nez p1, :cond_0

    .line 316
    const-string v4, "%s byteBuffer == null"

    const-string v5, "800"

    invoke-static {v7, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 317
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v4, v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 320
    :cond_0
    if-nez p2, :cond_1

    .line 321
    const-string v4, "%s privacySettingDataList == null"

    const-string v5, "801"

    invoke-static {v7, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 322
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v4, v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 324
    :cond_1
    array-length v0, p2

    .line 325
    .local v0, "cnt":I
    if-lt v0, v7, :cond_2

    const/16 v4, 0xf

    if-le v0, v4, :cond_3

    .line 326
    :cond_2
    const-string v4, "%s privacySettingDataList.length == %d"

    const-string v5, "802"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7, v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 327
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v4, v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 333
    :cond_3
    int-to-byte v4, v0

    :try_start_0
    invoke-virtual {p1, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v0, :cond_4

    .line 341
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v0, :cond_5

    .line 357
    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v8, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 359
    return-void

    .line 337
    :cond_4
    :try_start_1
    aget-object v4, p2, v3

    invoke-virtual {v4}, Lcom/felicanetworks/mfc/PrivacySettingData;->getNodeCode()I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x4

    invoke-virtual {p1, v4, v5, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 336
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 343
    :cond_5
    aget-object v4, p2, v3

    invoke-virtual {v4}, Lcom/felicanetworks/mfc/PrivacySettingData;->getPrivacySetting()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 344
    const/4 v4, 0x7

    const-string v5, "%s"

    const-string v6, "001"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 345
    const/4 v2, 0x1

    .line 350
    .local v2, "flag":B
    :goto_2
    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 341
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 347
    .end local v2    # "flag":B
    :cond_6
    const/4 v4, 0x7

    const-string v5, "%s"

    const-string v6, "002"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 348
    const/4 v2, 0x0

    .restart local v2    # "flag":B
    goto :goto_2

    .line 352
    .end local v2    # "flag":B
    .end local v3    # "i":I
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "%s %s"

    const/16 v5, 0x320

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 354
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4
.end method

.method createAdhocInformation(Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/mfc/AdhocInformation;
    .locals 13
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    .line 1024
    const-string v7, "%s In byteBuffer = %s"

    const-string v8, "000"

    invoke-static {v12, v7, v8, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1027
    :try_start_0
    new-instance v0, Lcom/felicanetworks/mfc/AdhocInformation;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/AdhocInformation;-><init>()V

    .line 1029
    .local v0, "adhocInfo":Lcom/felicanetworks/mfc/AdhocInformation;
    const/4 v4, 0x4

    .line 1032
    .local v4, "index":I
    invoke-virtual {p1, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v1, v7, 0xff

    .line 1033
    .local v1, "adhocMode":I
    invoke-virtual {v0, v1}, Lcom/felicanetworks/mfc/AdhocInformation;->setAdhocMode(I)V

    .line 1034
    add-int/lit8 v4, v4, 0x1

    .line 1037
    const/4 v7, 0x2

    invoke-virtual {p1, v4, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInLittleEndian(II)J

    move-result-wide v8

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    long-to-int v6, v8

    .line 1038
    .local v6, "sessionID":I
    invoke-virtual {v0, v6}, Lcom/felicanetworks/mfc/AdhocInformation;->setSessionID(I)V

    .line 1039
    add-int/lit8 v4, v4, 0x2

    .line 1042
    invoke-virtual {p1, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v2, v7, 0xff

    .line 1043
    .local v2, "dataSize":I
    add-int/lit8 v4, v4, 0x1

    .line 1046
    new-array v5, v2, [B

    .line 1047
    .local v5, "receiveData":[B
    const/4 v7, 0x0

    invoke-virtual {p1, v4, v5, v7, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[BII)V

    .line 1048
    invoke-virtual {v0, v5}, Lcom/felicanetworks/mfc/AdhocInformation;->setReceiveData([B)V

    .line 1050
    const/4 v7, 0x4

    const-string v8, "%s return adhocInfo = %s"

    const-string v9, "999"

    invoke-static {v7, v8, v9, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    return-object v0

    .line 1053
    .end local v0    # "adhocInfo":Lcom/felicanetworks/mfc/AdhocInformation;
    .end local v1    # "adhocMode":I
    .end local v2    # "dataSize":I
    .end local v4    # "index":I
    .end local v5    # "receiveData":[B
    .end local v6    # "sessionID":I
    :catch_0
    move-exception v3

    .line 1054
    .local v3, "e":Ljava/lang/Exception;
    const/4 v7, 0x1

    const-string v8, "%s %s"

    const-string v9, "800"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1055
    new-instance v7, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v7, v12}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v7
.end method

.method createBlockCountInformation(Lcom/felicanetworks/felica/util/ByteBuffer;[I)[Lcom/felicanetworks/mfc/BlockCountInformation;
    .locals 12
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p2, "nodeCodeList"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    .line 905
    const/4 v7, 0x4

    const-string v8, "%s In byteBuffer = %s : nodeCodeList = %s"

    const-string v9, "000"

    invoke-static {v7, v8, v9, p1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 909
    const/16 v6, 0xc

    .line 911
    .local v6, "index":I
    :try_start_0
    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v2, v7, 0xff

    .line 913
    .local v2, "cnt":I
    array-length v7, p2

    if-eq v2, v7, :cond_0

    .line 914
    const/4 v7, 0x1

    const-string v8, "%s INVALID node length"

    const-string v9, "800"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 915
    new-instance v7, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    .end local v2    # "cnt":I
    :catch_0
    move-exception v3

    .line 940
    .local v3, "e":Ljava/lang/Exception;
    const/4 v7, 0x1

    const-string v8, "%s %s"

    const-string v9, "801"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 941
    new-instance v7, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v7

    .line 917
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "cnt":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 919
    :try_start_1
    new-array v1, v2, [Lcom/felicanetworks/mfc/BlockCountInformation;

    .line 922
    .local v1, "blockCountInfo":[Lcom/felicanetworks/mfc/BlockCountInformation;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v2, :cond_1

    .line 936
    const/4 v7, 0x4

    const-string v8, "%s return blockCountInfo = %s"

    const-string v9, "999"

    invoke-static {v7, v8, v9, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 937
    return-object v1

    .line 925
    :cond_1
    const/4 v7, 0x2

    invoke-virtual {p1, v6, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInLittleEndian(II)J

    move-result-wide v8

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    long-to-int v0, v8

    .line 926
    .local v0, "assignedBlocks":I
    add-int/lit8 v6, v6, 0x2

    .line 929
    const/4 v7, 0x2

    invoke-virtual {p1, v6, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInLittleEndian(II)J

    move-result-wide v8

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    long-to-int v4, v8

    .line 930
    .local v4, "freeBlocks":I
    add-int/lit8 v6, v6, 0x2

    .line 932
    new-instance v7, Lcom/felicanetworks/mfc/BlockCountInformation;

    invoke-direct {v7, v0, v4}, Lcom/felicanetworks/mfc/BlockCountInformation;-><init>(II)V

    aput-object v7, v1, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 922
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method createDataList(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/BlockList;)[Lcom/felicanetworks/mfc/Data;
    .locals 24
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p2, "blockList"    # Lcom/felicanetworks/mfc/BlockList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    .line 739
    const/4 v5, 0x4

    const-string v21, "%s In byteBuffer = %s"

    const-string v22, "000"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-static {v5, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 742
    const/16 v16, 0xc

    .line 743
    .local v16, "index":I
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v4

    .line 744
    .local v4, "cnt":I
    invoke-virtual/range {p2 .. p2}, Lcom/felicanetworks/mfc/BlockList;->size()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 745
    const/4 v5, 0x1

    const-string v21, "%s %s"

    const-string v22, "800"

    const-string v23, "INVALID block size"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v5, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 746
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-direct {v5, v0}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 842
    .end local v4    # "cnt":I
    :catch_0
    move-exception v14

    .line 843
    .local v14, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const/4 v5, 0x1

    const-string v21, "%s %s"

    const-string v22, "802"

    invoke-virtual {v14}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v5, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 844
    throw v14

    .line 748
    .end local v14    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .restart local v4    # "cnt":I
    :cond_0
    add-int/lit8 v16, v16, 0x1

    .line 750
    :try_start_1
    new-array v13, v4, [Lcom/felicanetworks/mfc/Data;

    .line 752
    .local v13, "dataList":[Lcom/felicanetworks/mfc/Data;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-lt v15, v4, :cond_1

    .line 840
    const/4 v5, 0x4

    const-string v21, "%s return dataList = %s"

    const-string v22, "999"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v5, v0, v1, v13}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 841
    return-object v13

    .line 754
    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/felicanetworks/mfc/BlockList;->get(I)Lcom/felicanetworks/mfc/Block;

    move-result-object v5

    invoke-virtual {v5}, Lcom/felicanetworks/mfc/Block;->getServiceCode()I

    move-result v20

    .line 756
    .local v20, "serviceCode":I
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/felicanetworks/mfc/ServiceUtil;->getBlockType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 834
    const/4 v5, 0x1

    const-string v21, "%s %s"

    const-string v22, "801"

    const-string v23, "INVALID block type"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v5, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 835
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-direct {v5, v0}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 845
    .end local v4    # "cnt":I
    .end local v13    # "dataList":[Lcom/felicanetworks/mfc/Data;
    .end local v15    # "i":I
    .end local v20    # "serviceCode":I
    :catch_1
    move-exception v14

    .line 846
    .local v14, "e":Ljava/lang/Exception;
    const/4 v5, 0x1

    const-string v21, "%s %s"

    const-string v22, "803"

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v5, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 847
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-direct {v5, v0}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5

    .line 760
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v4    # "cnt":I
    .restart local v13    # "dataList":[Lcom/felicanetworks/mfc/Data;
    .restart local v15    # "i":I
    .restart local v20    # "serviceCode":I
    :pswitch_0
    const/16 v5, 0x10

    :try_start_2
    new-array v0, v5, [B

    move-object/from16 v19, v0

    .line 761
    .local v19, "randomdata":[B
    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[B)V

    .line 762
    new-instance v5, Lcom/felicanetworks/mfc/RandomData;

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lcom/felicanetworks/mfc/RandomData;-><init>([B)V

    aput-object v5, v13, v15

    .line 763
    add-int/lit8 v16, v16, 0x10

    .line 752
    .end local v19    # "randomdata":[B
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 770
    :pswitch_1
    const/16 v5, 0x10

    new-array v12, v5, [B

    .line 771
    .local v12, "cyclicData":[B
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v12}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[B)V

    .line 772
    new-instance v5, Lcom/felicanetworks/mfc/CyclicData;

    invoke-direct {v5, v12}, Lcom/felicanetworks/mfc/CyclicData;-><init>([B)V

    aput-object v5, v13, v15

    .line 773
    add-int/lit8 v16, v16, 0x10

    .line 775
    goto :goto_1

    .line 782
    .end local v12    # "cyclicData":[B
    :pswitch_2
    const/4 v5, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInLittleEndian(II)J

    move-result-wide v6

    .line 783
    .local v6, "purseData":J
    add-int/lit8 v16, v16, 0x4

    .line 784
    const/4 v5, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInLittleEndian(II)J

    move-result-wide v8

    .line 785
    .local v8, "cashBackData":J
    add-int/lit8 v16, v16, 0x4

    .line 786
    const/4 v5, 0x6

    new-array v10, v5, [B

    .line 787
    .local v10, "userData":[B
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[B)V

    .line 788
    add-int/lit8 v16, v16, 0x6

    .line 789
    const/4 v5, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v11, v0

    .line 790
    .local v11, "execID":I
    add-int/lit8 v16, v16, 0x2

    .line 791
    new-instance v5, Lcom/felicanetworks/mfc/PurseData;

    invoke-direct/range {v5 .. v11}, Lcom/felicanetworks/mfc/PurseData;-><init>(JJ[BI)V

    aput-object v5, v13, v15

    goto :goto_1

    .line 814
    .end local v6    # "purseData":J
    .end local v8    # "cashBackData":J
    .end local v10    # "userData":[B
    .end local v11    # "execID":I
    :pswitch_3
    const/16 v5, 0x10

    new-array v0, v5, [B

    move-object/from16 v18, v0

    .line 815
    .local v18, "pinData":[B
    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[B)V

    .line 816
    add-int/lit8 v16, v16, 0x10

    .line 818
    const/16 v5, 0x8

    aget-byte v17, v18, v5

    .line 821
    .local v17, "pinAttribute":B
    move/from16 v0, v17

    and-int/lit16 v5, v0, 0x80

    if-nez v5, :cond_2

    .line 822
    const/4 v5, 0x7

    const-string v21, "%s"

    const-string v22, "001"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 824
    new-instance v5, Lcom/felicanetworks/mfc/PINEnableData;

    const-wide/16 v22, 0x0

    const/16 v21, 0x0

    move-wide/from16 v0, v22

    move/from16 v2, v21

    invoke-direct {v5, v0, v1, v2}, Lcom/felicanetworks/mfc/PINEnableData;-><init>(JZ)V

    aput-object v5, v13, v15

    goto/16 :goto_1

    .line 826
    :cond_2
    const/4 v5, 0x7

    const-string v21, "%s"

    const-string v22, "002"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v5, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 828
    new-instance v5, Lcom/felicanetworks/mfc/PINEnableData;

    const-wide/16 v22, 0x0

    const/16 v21, 0x1

    move-wide/from16 v0, v22

    move/from16 v2, v21

    invoke-direct {v5, v0, v1, v2}, Lcom/felicanetworks/mfc/PINEnableData;-><init>(JZ)V

    aput-object v5, v13, v15
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 756
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method createKeyVersionList(Lcom/felicanetworks/felica/util/ByteBuffer;[I)[I
    .locals 9
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p2, "serviceCodeList"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    .line 705
    const/16 v3, 0xa

    .line 706
    .local v3, "index":I
    :try_start_0
    invoke-virtual {p1, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v0

    .line 707
    .local v0, "cnt":I
    array-length v5, p2

    if-eq v0, v5, :cond_0

    .line 708
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 718
    .end local v0    # "cnt":I
    :catch_0
    move-exception v1

    .line 719
    .local v1, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    throw v1

    .line 711
    .end local v1    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    .restart local v0    # "cnt":I
    :cond_0
    :try_start_1
    new-array v4, v0, [I

    .line 713
    .local v4, "keyVersionList":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 717
    return-object v4

    .line 714
    :cond_1
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0xb

    const/4 v6, 0x2

    invoke-virtual {p1, v5, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInLittleEndian(II)J

    move-result-wide v6

    long-to-int v5, v6

    aput v5, v4, v2
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 713
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 720
    .end local v0    # "cnt":I
    .end local v2    # "i":I
    .end local v4    # "keyVersionList":[I
    :catch_1
    move-exception v1

    .line 721
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v5, v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5
.end method

.method createNodeInformation(Lcom/felicanetworks/felica/util/ByteBuffer;II)Lcom/felicanetworks/mfc/NodeInformation;
    .locals 18
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p2, "nodeCodeSize"    # I
    .param p3, "nodeStartIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    .line 964
    const/4 v2, 0x4

    const-string v3, "%s In byteBuffer = %s : nodeCodeSize = %s : nodeStartIndex = %s"

    .line 965
    const-string v4, "000"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v5, p1

    .line 964
    invoke-static/range {v2 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 968
    move/from16 v14, p3

    .line 970
    .local v14, "index":I
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v8, v2, 0xff

    .line 971
    .local v8, "areaCnt":I
    add-int/lit8 v14, v14, 0x1

    .line 973
    new-array v10, v8, [Lcom/felicanetworks/mfc/AreaInformation;

    .line 976
    .local v10, "areaInfo":[Lcom/felicanetworks/mfc/AreaInformation;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-lt v13, v8, :cond_0

    .line 989
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v16, v0

    .line 990
    .local v16, "serviceCnt":I
    add-int/lit8 v14, v14, 0x1

    .line 992
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 995
    .local v17, "serviceCodeList":[I
    const/4 v13, 0x0

    :goto_1
    move/from16 v0, v16

    if-lt v13, v0, :cond_1

    .line 1002
    new-instance v15, Lcom/felicanetworks/mfc/NodeInformation;

    move-object/from16 v0, v17

    invoke-direct {v15, v10, v0}, Lcom/felicanetworks/mfc/NodeInformation;-><init>([Lcom/felicanetworks/mfc/AreaInformation;[I)V

    .line 1004
    .local v15, "nodeInformation":Lcom/felicanetworks/mfc/NodeInformation;
    const/4 v2, 0x4

    const-string v3, "%s return nodeInformation = %s"

    const-string v4, "999"

    invoke-static {v2, v3, v4, v15}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1005
    return-object v15

    .line 978
    .end local v15    # "nodeInformation":Lcom/felicanetworks/mfc/NodeInformation;
    .end local v16    # "serviceCnt":I
    .end local v17    # "serviceCodeList":[I
    :cond_0
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInLittleEndian(II)J

    move-result-wide v2

    long-to-int v9, v2

    .line 979
    .local v9, "areaCode":I
    add-int v14, v14, p2

    .line 981
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInLittleEndian(II)J

    move-result-wide v2

    long-to-int v12, v2

    .line 982
    .local v12, "endServiceCode":I
    add-int v14, v14, p2

    .line 984
    new-instance v2, Lcom/felicanetworks/mfc/AreaInformation;

    invoke-direct {v2, v9, v12}, Lcom/felicanetworks/mfc/AreaInformation;-><init>(II)V

    aput-object v2, v10, v13

    .line 976
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 997
    .end local v9    # "areaCode":I
    .end local v12    # "endServiceCode":I
    .restart local v16    # "serviceCnt":I
    .restart local v17    # "serviceCodeList":[I
    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInLittleEndian(II)J

    move-result-wide v2

    long-to-int v2, v2

    aput v2, v17, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    add-int v14, v14, p2

    .line 995
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1007
    .end local v8    # "areaCnt":I
    .end local v10    # "areaInfo":[Lcom/felicanetworks/mfc/AreaInformation;
    .end local v13    # "i":I
    .end local v16    # "serviceCnt":I
    .end local v17    # "serviceCodeList":[I
    :catch_0
    move-exception v11

    .line 1008
    .local v11, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    const-string v3, "%s %s"

    const-string v4, "800"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1009
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2
.end method

.method createSystemCode(Lcom/felicanetworks/felica/util/ByteBuffer;)[I
    .locals 11
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    .line 863
    const-string v5, "%s In byteBuffer = %s"

    const-string v6, "000"

    invoke-static {v10, v5, v6, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 866
    const/16 v3, 0xa

    .line 868
    .local v3, "index":I
    :try_start_0
    invoke-virtual {p1, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 869
    .local v0, "cnt":I
    add-int/lit8 v3, v3, 0x1

    .line 871
    new-array v4, v0, [I

    .line 874
    .local v4, "systemCodeList":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 880
    const/4 v5, 0x4

    const-string v6, "%s return systemCodeList = %s"

    const-string v7, "999"

    invoke-static {v5, v6, v7, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 881
    return-object v4

    .line 876
    :cond_0
    const/4 v5, 0x2

    invoke-virtual {p1, v3, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v6

    const-wide/32 v8, 0xffff

    and-long/2addr v6, v8

    long-to-int v5, v6

    aput v5, v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    add-int/lit8 v3, v3, 0x2

    .line 874
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 883
    .end local v0    # "cnt":I
    .end local v2    # "i":I
    .end local v4    # "systemCodeList":[I
    :catch_0
    move-exception v1

    .line 884
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x1

    const-string v6, "%s %s"

    const-string v7, "800"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 885
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v5, v10}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5
.end method
