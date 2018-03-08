.class public Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;
.super Ljava/lang/Object;
.source "FalpPacketSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;,
        Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;,
        Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;,
        Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTerminateAdhocRunnable;,
        Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;
    }
.end annotation


# static fields
.field private static final ACK_WAITING_MAX:I = 0x32

.field public static final ERROR_CHIP:I = -0x1

.field public static final ERROR_NONE:I = 0x0

.field private static final SESSION_ID_LENGTH:I = 0x2

.field private static mConvertAPacket:Lcom/felicanetworks/falp/packet/ConvertAPacket;

.field private static mConvertBPacket:Lcom/felicanetworks/falp/packet/ConvertBPacket;

.field private static mDataSendPacket:Lcom/felicanetworks/falp/packet/DataSendPacket;

.field private static mHandshakeReqPacket:Lcom/felicanetworks/falp/packet/HandshakeReqPacket;

.field private static mHandshakeResPacket:Lcom/felicanetworks/falp/packet/HandshakeResPacket;

.field private static mPrevSentPacketSize:I

.field private static mRetryReqPacket:Lcom/felicanetworks/falp/packet/RetryReqPacket;

.field private static mRetryResPacket:Lcom/felicanetworks/falp/packet/RetryResPacket;

.field private static mTerminateAdhocPacket:Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;

.field private static sMe:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;


# instance fields
.field private isStopReceiveCalled:Z

.field private mAckWaitCriticalSection:Ljava/lang/Object;

.field private mAsyncExecuter:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;

.field private mAsyncInAnotherThreadExecuter:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;

.field private mPrevSendBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

.field private mRcvTerminateRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTerminateAdhocRunnable;

.field private mRcvTransmitDataRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;

.field private mRcvWaitRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;

.field private mSessionIdBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

.field private mTimeout:I

.field private mWaitAck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    sput v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mPrevSentPacketSize:I

    .line 381
    new-instance v0, Lcom/felicanetworks/falp/packet/ConvertAPacket;

    invoke-direct {v0}, Lcom/felicanetworks/falp/packet/ConvertAPacket;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mConvertAPacket:Lcom/felicanetworks/falp/packet/ConvertAPacket;

    .line 383
    new-instance v0, Lcom/felicanetworks/falp/packet/ConvertBPacket;

    invoke-direct {v0}, Lcom/felicanetworks/falp/packet/ConvertBPacket;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mConvertBPacket:Lcom/felicanetworks/falp/packet/ConvertBPacket;

    .line 385
    new-instance v0, Lcom/felicanetworks/falp/packet/DataSendPacket;

    invoke-direct {v0}, Lcom/felicanetworks/falp/packet/DataSendPacket;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mDataSendPacket:Lcom/felicanetworks/falp/packet/DataSendPacket;

    .line 387
    new-instance v0, Lcom/felicanetworks/falp/packet/RetryReqPacket;

    invoke-direct {v0}, Lcom/felicanetworks/falp/packet/RetryReqPacket;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRetryReqPacket:Lcom/felicanetworks/falp/packet/RetryReqPacket;

    .line 389
    new-instance v0, Lcom/felicanetworks/falp/packet/RetryResPacket;

    invoke-direct {v0}, Lcom/felicanetworks/falp/packet/RetryResPacket;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRetryResPacket:Lcom/felicanetworks/falp/packet/RetryResPacket;

    .line 391
    new-instance v0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;

    invoke-direct {v0}, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mHandshakeReqPacket:Lcom/felicanetworks/falp/packet/HandshakeReqPacket;

    .line 393
    new-instance v0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;

    invoke-direct {v0}, Lcom/felicanetworks/falp/packet/HandshakeResPacket;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mHandshakeResPacket:Lcom/felicanetworks/falp/packet/HandshakeResPacket;

    .line 395
    new-instance v0, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;

    invoke-direct {v0}, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mTerminateAdhocPacket:Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;

    .line 425
    new-instance v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    invoke-direct {v0}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->sMe:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    new-instance v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;-><init>(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;)V

    iput-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAsyncExecuter:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;

    .line 345
    new-instance v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;

    .line 346
    const-string v1, "PollingThread"

    invoke-direct {v0, p0, v1}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;-><init>(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAsyncInAnotherThreadExecuter:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;

    .line 351
    new-instance v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;

    invoke-direct {v0, p0}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;-><init>(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)V

    iput-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRcvTransmitDataRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;

    .line 356
    new-instance v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTerminateAdhocRunnable;

    invoke-direct {v0, p0}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTerminateAdhocRunnable;-><init>(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)V

    iput-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRcvTerminateRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTerminateAdhocRunnable;

    .line 361
    new-instance v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;

    invoke-direct {v0, p0}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;-><init>(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)V

    iput-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRcvWaitRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;

    .line 366
    iput v2, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mTimeout:I

    .line 371
    new-instance v0, Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mSessionIdBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    .line 400
    new-instance v0, Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxSendSize()S

    move-result v1

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mPrevSendBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    .line 405
    iput-boolean v2, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->isStopReceiveCalled:Z

    .line 410
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAckWaitCriticalSection:Ljava/lang/Object;

    .line 420
    iput-boolean v2, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mWaitAck:Z

    .line 432
    const/4 v0, 0x7

    const-string v1, "FalpPacketSender#FalpPacketSender [in]"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAsyncInAnotherThreadExecuter:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;->start()V

    .line 435
    return-void
.end method

.method static synthetic access$0(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mTimeout:I

    return v0
.end method

.method static synthetic access$1(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mWaitAck:Z

    return v0
.end method

.method static synthetic access$2(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAckWaitCriticalSection:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRcvTransmitDataRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;

    return-object v0
.end method

.method static synthetic access$4(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAsyncExecuter:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTerminateAdhocRunnable;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRcvTerminateRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTerminateAdhocRunnable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)Z
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->isStopReceiveCalled:Z

    return v0
.end method

.method static synthetic access$7(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAsyncInAnotherThreadExecuter:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;

    return-object v0
.end method

.method static synthetic access$8(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;)Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRcvWaitRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;

    return-object v0
.end method

.method private doSendPacket(Lcom/felicanetworks/falp/packet/TransmitPacketBase;S)I
    .locals 8
    .param p1, "packet"    # Lcom/felicanetworks/falp/packet/TransmitPacketBase;
    .param p2, "sessionId"    # S

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 716
    if-nez p1, :cond_0

    .line 746
    :goto_0
    return v2

    .line 720
    :cond_0
    iget-object v4, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mSessionIdBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v4, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 721
    iget-object v4, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mSessionIdBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    int-to-long v6, p2

    const/4 v5, 0x2

    invoke-virtual {v4, v6, v7, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 725
    :try_start_0
    invoke-virtual {p1}, Lcom/felicanetworks/falp/packet/TransmitPacketBase;->makeTransmitCommand()Lcom/felicanetworks/felica/util/ByteBuffer;

    move-result-object v0

    .line 726
    .local v0, "buffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    iget-object v4, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mPrevSendBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 727
    iget-object v4, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mPrevSendBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([BII)V

    .line 728
    invoke-virtual {v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v4

    sput v4, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mPrevSentPacketSize:I

    .line 729
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ChipController;

    move-result-object v4

    iget-object v5, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mSessionIdBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v5

    .line 730
    invoke-virtual {v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v7

    .line 729
    invoke-virtual {v4, v5, v6, v7}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->sendTransmitData([B[BI)V

    .line 731
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpAckWait()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 732
    iget-object v4, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAckWaitCriticalSection:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 734
    :try_start_1
    iget-object v5, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAckWaitCriticalSection:Ljava/lang/Object;

    const-wide/16 v6, 0x32

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 732
    :goto_1
    :try_start_2
    monitor-exit v4

    :cond_1
    move v2, v3

    .line 746
    goto :goto_0

    .line 735
    :catch_0
    move-exception v1

    .line 736
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x6

    const-string v6, "ACK has came."

    invoke-static {v5, v6}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    goto :goto_1

    .line 732
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 740
    .end local v0    # "buffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    :catch_1
    move-exception v1

    .line 743
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getConvertAPacket()Lcom/felicanetworks/falp/packet/ConvertAPacket;
    .locals 1

    .prologue
    .line 756
    sget-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mConvertAPacket:Lcom/felicanetworks/falp/packet/ConvertAPacket;

    return-object v0
.end method

.method public static getConvertBPacket()Lcom/felicanetworks/falp/packet/ConvertBPacket;
    .locals 1

    .prologue
    .line 766
    sget-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mConvertBPacket:Lcom/felicanetworks/falp/packet/ConvertBPacket;

    return-object v0
.end method

.method public static getDataSendPacket()Lcom/felicanetworks/falp/packet/DataSendPacket;
    .locals 1

    .prologue
    .line 776
    sget-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mDataSendPacket:Lcom/felicanetworks/falp/packet/DataSendPacket;

    return-object v0
.end method

.method public static getHandshakeReqPacket()Lcom/felicanetworks/falp/packet/HandshakeReqPacket;
    .locals 1

    .prologue
    .line 786
    sget-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mHandshakeReqPacket:Lcom/felicanetworks/falp/packet/HandshakeReqPacket;

    return-object v0
.end method

.method public static getHandshakeResPacket()Lcom/felicanetworks/falp/packet/HandshakeResPacket;
    .locals 1

    .prologue
    .line 796
    sget-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mHandshakeResPacket:Lcom/felicanetworks/falp/packet/HandshakeResPacket;

    return-object v0
.end method

.method public static getInstance()Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;
    .locals 1

    .prologue
    .line 444
    sget-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->sMe:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    return-object v0
.end method

.method public static getPrevSentPacketSize()I
    .locals 1

    .prologue
    .line 836
    sget v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mPrevSentPacketSize:I

    return v0
.end method

.method public static getRetryReqPacket()Lcom/felicanetworks/falp/packet/RetryReqPacket;
    .locals 1

    .prologue
    .line 806
    sget-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRetryReqPacket:Lcom/felicanetworks/falp/packet/RetryReqPacket;

    return-object v0
.end method

.method public static getRetryResPacket()Lcom/felicanetworks/falp/packet/RetryResPacket;
    .locals 1

    .prologue
    .line 816
    sget-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRetryResPacket:Lcom/felicanetworks/falp/packet/RetryResPacket;

    return-object v0
.end method

.method public static getTerminateAdhocPacket()Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;
    .locals 1

    .prologue
    .line 826
    sget-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mTerminateAdhocPacket:Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 452
    sput v1, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mPrevSentPacketSize:I

    .line 453
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mSessionIdBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 454
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mPrevSendBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 455
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAsyncExecuter:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;->init(Landroid/content/Context;)V

    .line 456
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRcvTransmitDataRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;

    iget-object v0, v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;->mCommand:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 457
    return-void
.end method

.method public retrySendPacket()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 692
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "[CMD]....-> DFALP_SEND_RETRY(SAME AS PREVIOUS PACKET)"

    invoke-static {v2, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 693
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ChipController;

    move-result-object v2

    iget-object v3, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mSessionIdBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v3

    .line 694
    iget-object v4, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mPrevSendBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v4

    iget-object v5, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mPrevSendBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v5

    .line 693
    invoke-virtual {v2, v3, v4, v5}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->sendTransmitData([B[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    :goto_0
    return v1

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 697
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public sendConvertA(Lcom/felicanetworks/falp/packet/ConvertAPacket;S)I
    .locals 3
    .param p1, "packet"    # Lcom/felicanetworks/falp/packet/ConvertAPacket;
    .param p2, "sessionId"    # S

    .prologue
    .line 589
    const/4 v0, 0x0

    const-string v1, "[CMD]....-> DFALP_PKTCODE_CONVERT_A:"

    invoke-virtual {p1}, Lcom/felicanetworks/falp/packet/ConvertAPacket;->getSequenceId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 590
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->doSendPacket(Lcom/felicanetworks/falp/packet/TransmitPacketBase;S)I

    move-result v0

    return v0
.end method

.method public sendConvertB(Lcom/felicanetworks/falp/packet/ConvertBPacket;S)I
    .locals 3
    .param p1, "packet"    # Lcom/felicanetworks/falp/packet/ConvertBPacket;
    .param p2, "sessionId"    # S

    .prologue
    .line 606
    const/4 v0, 0x0

    const-string v1, "[CMD]....-> DFALP_PKTCODE_CONVERT_B:"

    invoke-virtual {p1}, Lcom/felicanetworks/falp/packet/ConvertBPacket;->getSequenceId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 607
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->doSendPacket(Lcom/felicanetworks/falp/packet/TransmitPacketBase;S)I

    move-result v0

    return v0
.end method

.method public sendData(Lcom/felicanetworks/falp/packet/DataSendPacket;S)I
    .locals 3
    .param p1, "packet"    # Lcom/felicanetworks/falp/packet/DataSendPacket;
    .param p2, "sessionId"    # S

    .prologue
    .line 572
    const/4 v0, 0x0

    const-string v1, "[CMD]....-> DFALP_PKTCODE_SENDDATA:"

    invoke-virtual {p1}, Lcom/felicanetworks/falp/packet/DataSendPacket;->getSequenceId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 573
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->doSendPacket(Lcom/felicanetworks/falp/packet/TransmitPacketBase;S)I

    move-result v0

    return v0
.end method

.method public sendHandshakeReq(Lcom/felicanetworks/falp/packet/HandshakeReqPacket;S)I
    .locals 2
    .param p1, "packet"    # Lcom/felicanetworks/falp/packet/HandshakeReqPacket;
    .param p2, "sessionId"    # S

    .prologue
    .line 538
    const/4 v0, 0x0

    const-string v1, "[CMD]....-> DFALP_PKTCODE_HANDSHAKE"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 539
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->doSendPacket(Lcom/felicanetworks/falp/packet/TransmitPacketBase;S)I

    move-result v0

    return v0
.end method

.method public sendHandshakeRes(Lcom/felicanetworks/falp/packet/HandshakeResPacket;S)I
    .locals 2
    .param p1, "packet"    # Lcom/felicanetworks/falp/packet/HandshakeResPacket;
    .param p2, "sessionId"    # S

    .prologue
    .line 555
    const/4 v0, 0x0

    const-string v1, "[CMD]....-> DFALP_PKTCODE_HANDSHAKERES"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 556
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->doSendPacket(Lcom/felicanetworks/falp/packet/TransmitPacketBase;S)I

    move-result v0

    return v0
.end method

.method public sendRetryReq(Lcom/felicanetworks/falp/packet/RetryReqPacket;S)I
    .locals 3
    .param p1, "packet"    # Lcom/felicanetworks/falp/packet/RetryReqPacket;
    .param p2, "sessionId"    # S

    .prologue
    .line 623
    const/4 v0, 0x0

    const-string v1, "[CMD]....-> DFALP_PKTCODE_RETRY_REQ:"

    .line 624
    invoke-virtual {p1}, Lcom/felicanetworks/falp/packet/RetryReqPacket;->getSequenceId()I

    move-result v2

    .line 623
    invoke-static {v0, v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 625
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->doSendPacket(Lcom/felicanetworks/falp/packet/TransmitPacketBase;S)I

    move-result v0

    return v0
.end method

.method public sendRetryRes(Lcom/felicanetworks/falp/packet/RetryResPacket;S)I
    .locals 3
    .param p1, "packet"    # Lcom/felicanetworks/falp/packet/RetryResPacket;
    .param p2, "sessionId"    # S

    .prologue
    .line 641
    const/4 v0, 0x0

    const-string v1, "[CMD]....-> DFALP_PKTCODE_RETRY_RES:"

    invoke-virtual {p1}, Lcom/felicanetworks/falp/packet/RetryResPacket;->getSequenceId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 642
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->doSendPacket(Lcom/felicanetworks/falp/packet/TransmitPacketBase;S)I

    move-result v0

    return v0
.end method

.method public sendTerminate(Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;S)I
    .locals 9
    .param p1, "packet"    # Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;
    .param p2, "sessionId"    # S

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 658
    const-string v3, "[CMD]....-> DFALP_PKTCODE_FAREWELL"

    invoke-static {v2, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 660
    iget-object v3, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mSessionIdBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v3, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 661
    iget-object v3, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mSessionIdBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    int-to-long v4, p2

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 665
    :try_start_0
    invoke-virtual {p1}, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;->makeTransmitCommand()Lcom/felicanetworks/felica/util/ByteBuffer;

    move-result-object v1

    .line 666
    .local v1, "tmpbuf":Lcom/felicanetworks/felica/util/ByteBuffer;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mWaitAck:Z

    .line 667
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ChipController;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mSessionIdBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v4

    .line 668
    invoke-virtual {v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v6

    .line 667
    invoke-virtual {v3, v4, v5, v6}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->sendTerminateAdhoc([B[BI)V

    .line 669
    iget-object v3, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAckWaitCriticalSection:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/FalpException; {:try_start_0 .. :try_end_0} :catch_1

    .line 671
    :try_start_1
    iget-object v4, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAckWaitCriticalSection:Ljava/lang/Object;

    const-wide/16 v6, 0x32

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 676
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mWaitAck:Z
    :try_end_3
    .catch Lcom/felicanetworks/felica/offlineimpl/FalpException; {:try_start_3 .. :try_end_3} :catch_1

    .line 681
    .end local v1    # "tmpbuf":Lcom/felicanetworks/felica/util/ByteBuffer;
    :goto_1
    return v2

    .line 672
    .restart local v1    # "tmpbuf":Lcom/felicanetworks/felica/util/ByteBuffer;
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x6

    :try_start_4
    const-string v5, "ACK has came."

    invoke-static {v4, v5}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    goto :goto_0

    .line 669
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Lcom/felicanetworks/felica/offlineimpl/FalpException; {:try_start_5 .. :try_end_5} :catch_1

    .line 677
    .end local v1    # "tmpbuf":Lcom/felicanetworks/felica/util/ByteBuffer;
    :catch_1
    move-exception v0

    .line 678
    .local v0, "e":Lcom/felicanetworks/felica/offlineimpl/FalpException;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/FalpException;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 679
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public startToReceive(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;SI)V
    .locals 4
    .param p1, "listener"    # Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;
    .param p2, "sessionId"    # S
    .param p3, "timeout"    # I

    .prologue
    const/4 v2, 0x0

    .line 476
    const/4 v0, 0x7

    const-string v1, "FalpPacketSender#receive [in]"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAsyncInAnotherThreadExecuter:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;

    const-string v1, "PollingThread"

    invoke-direct {v0, p0, v1}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;-><init>(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAsyncInAnotherThreadExecuter:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;

    .line 481
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAsyncInAnotherThreadExecuter:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;->start()V

    .line 484
    :cond_0
    iput p3, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mTimeout:I

    .line 485
    iput-boolean v2, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->isStopReceiveCalled:Z

    .line 488
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mSessionIdBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v0, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 489
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mSessionIdBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    int-to-long v2, p2

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 492
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRcvWaitRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->setmListener(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;)V

    .line 493
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRcvWaitRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;

    iget-object v1, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mSessionIdBuf:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;->setmSessionId([B)V

    .line 495
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAsyncInAnotherThreadExecuter:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;

    iget-object v1, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRcvWaitRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;

    invoke-virtual {v0, v1}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;->execute(Ljava/lang/Runnable;)V

    .line 496
    return-void
.end method

.method public stopToReceive()V
    .locals 2

    .prologue
    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->isStopReceiveCalled:Z

    .line 507
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ChipController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->cancelOffline()V

    .line 511
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAsyncInAnotherThreadExecuter:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;

    # getter for: Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;->access$0(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAsyncInAnotherThreadExecuter:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;

    # getter for: Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;->access$0(Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuterInAnotherThread;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRcvWaitRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 513
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAsyncExecuter:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;

    iget-object v0, v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRcvTransmitDataRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTransmitDataRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 514
    iget-object v0, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mAsyncExecuter:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;

    iget-object v0, v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$AsyncExecuter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->mRcvTerminateRunnable:Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender$ReceiveTerminateAdhocRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 516
    :cond_0
    monitor-enter p0

    .line 518
    const-wide/16 v0, 0x1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ChipController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/ChipController;->finishCancel()V

    .line 523
    return-void

    .line 516
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 519
    :catch_0
    move-exception v0

    goto :goto_0
.end method
