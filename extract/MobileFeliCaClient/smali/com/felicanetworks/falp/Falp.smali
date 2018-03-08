.class public Lcom/felicanetworks/falp/Falp;
.super Ljava/lang/Object;
.source "Falp.java"

# interfaces
.implements Lcom/felicanetworks/falp/apldatamodel/AplDataBufferListener;
.implements Lcom/felicanetworks/falp/state/StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/falp/Falp$TimeoutHandler;
    }
.end annotation


# static fields
.field private static final ADDED_TIMER_KEEP_CPU_POWER:I = 0x96

.field private static final ALLOWED_PACKET_LOSS_PARCENTAGE:I = 0x3

.field private static final INTENT_ACTION_PREFIX:Ljava/lang/String; = "felicafalpid://"

.field public static final PACKET_LOSS_MIN_THRESHOLD:I = 0x3

.field private static final RETRY_TO_RESEND_MAX:I = 0x3

.field private static final RETRY_TO_SEND_MAX:I = 0x2

.field public static final RET_PACKET_CHECK_ERROE_CODE_OVER:I = -0x3

.field public static final RET_PACKET_CHECK_NO_LOST_PACKET:I = -0x2

.field public static final RET_PACKET_CHECK_TOO_MANY_LOST_PACKETS:I = -0x1

.field private static final TIMER_INITIAL_KEEP_CPU_POWER:I = 0x2af8

.field private static final TIME_FOR_READING_APP_BUF:I = 0xa

.field private static mRecvNotifyOrPollingThread:Landroid/os/HandlerThread;

.field private static sMe:Lcom/felicanetworks/falp/Falp;


# instance fields
.field private mAllowToRecvData:Z

.field private mAnotherThreadHandler:Landroid/os/Handler;

.field private mAppListener:Lcom/felicanetworks/falp/FalpListener;

.field private mAppReceiveListener:Lcom/felicanetworks/falp/FalpListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:J

.field private mFalpCaller:[Ljava/lang/String;

.field private mFalpParam:Lcom/felicanetworks/falp/FalpProtocolParameter;

.field private mFwKind:S

.field private mHandler:Landroid/os/Handler;

.field private mListeningAppCode:[B

.field private mLocalPowerManager:Lcom/felicanetworks/felica/util/LocalPowerManager;

.field private mNowTerminating:Z

.field private mOneTimePswd:I

.field private mRcvSeqNum:I

.field private mRecvBufferForApp:[B

.field private mRecvingPackets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;",
            ">;"
        }
    .end annotation
.end field

.field private mRecvingPacketsData:[Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;

.field private mRetryReqSequenceNo:I

.field private mRetrySequenceNo:I

.field private mRetryToResendCount:I

.field private mRetryToSendCount:I

.field mRunnable:Ljava/lang/Runnable;

.field private mSendDataBuf:[B

.field private mSendDataBufSize:I

.field private mSeqNum:I

.field private mSeqNumWhenSendStart:I

.field private mState:Lcom/felicanetworks/falp/state/FalpState;

.field private mTimeoutHandler:Lcom/felicanetworks/falp/Falp$TimeoutHandler;

.field private mWrkBuf:[B

.field private mWrkByteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 298
    new-instance v0, Landroid/os/HandlerThread;

    .line 299
    const-string v1, "FalpRecvNotifyThread"

    .line 298
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/felicanetworks/falp/Falp;->mRecvNotifyOrPollingThread:Landroid/os/HandlerThread;

    .line 309
    new-instance v0, Lcom/felicanetworks/falp/Falp;

    invoke-direct {v0}, Lcom/felicanetworks/falp/Falp;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/Falp;->sMe:Lcom/felicanetworks/falp/Falp;

    return-void
.end method

.method protected constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object v5, p0, Lcom/felicanetworks/falp/Falp;->mHandler:Landroid/os/Handler;

    .line 134
    iput-object v5, p0, Lcom/felicanetworks/falp/Falp;->mAnotherThreadHandler:Landroid/os/Handler;

    .line 139
    iput-object v5, p0, Lcom/felicanetworks/falp/Falp;->mRunnable:Ljava/lang/Runnable;

    .line 144
    iput-object v5, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    .line 159
    new-instance v1, Lcom/felicanetworks/falp/FalpProtocolParameter;

    invoke-direct {v1}, Lcom/felicanetworks/falp/FalpProtocolParameter;-><init>()V

    iput-object v1, p0, Lcom/felicanetworks/falp/Falp;->mFalpParam:Lcom/felicanetworks/falp/FalpProtocolParameter;

    .line 168
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpMaxFalpSendPacketSequence()S

    move-result v1

    .line 169
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxSendSize()S

    move-result v2

    add-int/lit8 v2, v2, -0x3

    mul-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBuf:[B

    .line 174
    iput v4, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBufSize:I

    .line 180
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxSendSize()S

    move-result v1

    .line 181
    add-int/lit8 v1, v1, -0x3

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/felicanetworks/falp/Falp;->mWrkBuf:[B

    .line 187
    new-instance v1, Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxSendSize()S

    move-result v2

    .line 188
    add-int/lit8 v2, v2, -0x3

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/felicanetworks/falp/Falp;->mWrkByteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    .line 193
    iput v4, p0, Lcom/felicanetworks/falp/Falp;->mSeqNum:I

    .line 198
    iput v4, p0, Lcom/felicanetworks/falp/Falp;->mSeqNumWhenSendStart:I

    .line 204
    iput v4, p0, Lcom/felicanetworks/falp/Falp;->mRcvSeqNum:I

    .line 216
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxReceivePacketSequence()I

    move-result v1

    new-array v1, v1, [Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;

    iput-object v1, p0, Lcom/felicanetworks/falp/Falp;->mRecvingPacketsData:[Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/felicanetworks/falp/Falp;->mRecvingPacketsData:[Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    .line 223
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpMaxFalpRcevPacketSequence()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/felicanetworks/falp/Falp;->mRecvingPackets:Ljava/util/ArrayList;

    .line 228
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxReceivePacketSequence()I

    move-result v1

    .line 229
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxReceiveSize()S

    move-result v2

    add-int/lit8 v2, v2, -0x3

    mul-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/felicanetworks/falp/Falp;->mRecvBufferForApp:[B

    .line 235
    iput-short v4, p0, Lcom/felicanetworks/falp/Falp;->mFwKind:S

    .line 241
    iput v4, p0, Lcom/felicanetworks/falp/Falp;->mRetryReqSequenceNo:I

    .line 246
    iput v4, p0, Lcom/felicanetworks/falp/Falp;->mRetrySequenceNo:I

    .line 251
    iput v4, p0, Lcom/felicanetworks/falp/Falp;->mRetryToSendCount:I

    .line 256
    iput v4, p0, Lcom/felicanetworks/falp/Falp;->mRetryToResendCount:I

    .line 261
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/felicanetworks/falp/Falp;->mCurrentTime:J

    .line 267
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/felicanetworks/falp/Falp;->mAllowToRecvData:Z

    .line 272
    iput-boolean v4, p0, Lcom/felicanetworks/falp/Falp;->mNowTerminating:Z

    .line 277
    const/4 v1, -0x1

    iput v1, p0, Lcom/felicanetworks/falp/Falp;->mOneTimePswd:I

    .line 293
    iput-object v5, p0, Lcom/felicanetworks/falp/Falp;->mListeningAppCode:[B

    .line 304
    new-instance v1, Lcom/felicanetworks/felica/util/LocalPowerManager;

    invoke-direct {v1}, Lcom/felicanetworks/felica/util/LocalPowerManager;-><init>()V

    iput-object v1, p0, Lcom/felicanetworks/falp/Falp;->mLocalPowerManager:Lcom/felicanetworks/felica/util/LocalPowerManager;

    .line 324
    invoke-virtual {p0}, Lcom/felicanetworks/falp/Falp;->checkRecvData()S

    .line 325
    invoke-virtual {p0, v4}, Lcom/felicanetworks/falp/Falp;->saveRecvPacketToBuffer(Z)Z

    .line 328
    invoke-direct {p0}, Lcom/felicanetworks/falp/Falp;->init()V

    .line 329
    sget-object v1, Lcom/felicanetworks/falp/Falp;->mRecvNotifyOrPollingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 330
    return-void

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/falp/Falp;->mRecvingPacketsData:[Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;

    new-instance v2, Lcom/felicanetworks/falp/packet/DataSendPacket;

    invoke-direct {v2}, Lcom/felicanetworks/falp/packet/DataSendPacket;-><init>()V

    aput-object v2, v1, v0

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/felicanetworks/falp/Falp;)Lcom/felicanetworks/felica/util/LocalPowerManager;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mLocalPowerManager:Lcom/felicanetworks/felica/util/LocalPowerManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/felicanetworks/falp/Falp;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/felicanetworks/falp/Falp;)Lcom/felicanetworks/falp/FalpProtocolParameter;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mFalpParam:Lcom/felicanetworks/falp/FalpProtocolParameter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/felicanetworks/falp/Falp;)Lcom/felicanetworks/falp/state/FalpState;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    return-object v0
.end method

.method static synthetic access$4(Lcom/felicanetworks/falp/Falp;)[B
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mRecvBufferForApp:[B

    return-object v0
.end method

.method static synthetic access$5(Lcom/felicanetworks/falp/Falp;)Lcom/felicanetworks/falp/FalpListener;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mAppListener:Lcom/felicanetworks/falp/FalpListener;

    return-object v0
.end method

.method private checkAppCode([B)I
    .locals 13
    .param p1, "appCode"    # [B

    .prologue
    const/4 v7, 0x0

    const/16 v6, -0xf

    const/4 v12, 0x1

    .line 1800
    invoke-virtual {p0}, Lcom/felicanetworks/falp/Falp;->getPeerParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v2

    .line 1801
    .local v2, "hs":Lcom/felicanetworks/falp/HandshakeParameter;
    invoke-virtual {v2, p1}, Lcom/felicanetworks/falp/HandshakeParameter;->setAppid([B)V

    .line 1802
    array-length v8, p1

    int-to-char v8, v8

    invoke-virtual {v2, v8}, Lcom/felicanetworks/falp/HandshakeParameter;->setAppid_len(C)V

    .line 1804
    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppCodeKind()I

    move-result v0

    .line 1805
    .local v0, "appKind":I
    const/4 v8, 0x7

    const-string v9, "Falp#checkAppCode(Listener)[in] appKind:%x"

    invoke-static {v8, v9, v0}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 1806
    packed-switch v0, :pswitch_data_0

    .line 1854
    const-string v7, "\tinvalid param."

    invoke-static {v12, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1858
    :goto_0
    return v6

    .line 1808
    :pswitch_0
    new-instance v1, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;

    invoke-direct {v1}, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;-><init>()V

    .line 1809
    .local v1, "componentNameHolder":Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;
    invoke-virtual {v2, v1}, Lcom/felicanetworks/falp/HandshakeParameter;->checkTargetHsSvcAppCode(Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;)V

    .line 1811
    iget v8, v1, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->ret:I

    if-gez v8, :cond_0

    .line 1812
    const-string v7, "\tThe caller isn\'t registered in a white list."

    invoke-static {v12, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    goto :goto_0

    .line 1817
    :cond_0
    iget-object v8, v1, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->name:Landroid/content/ComponentName;

    if-eqz v8, :cond_4

    .line 1818
    const/4 v5, 0x0

    .line 1819
    .local v5, "samePackage":Z
    invoke-virtual {p0}, Lcom/felicanetworks/falp/Falp;->getFalpCaller()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v8, v7

    :goto_1
    if-lt v8, v10, :cond_1

    .line 1824
    if-nez v5, :cond_3

    .line 1825
    const-string v7, "\tThe caller didn\'t match the package."

    invoke-static {v12, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    goto :goto_0

    .line 1819
    :cond_1
    aget-object v4, v9, v8

    .line 1820
    .local v4, "s":Ljava/lang/String;
    iget-object v11, v1, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->name:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1821
    const/4 v5, 0x1

    .line 1819
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1828
    .end local v4    # "s":Ljava/lang/String;
    :cond_3
    new-array v6, v12, [Ljava/lang/String;

    iput-object v6, p0, Lcom/felicanetworks/falp/Falp;->mFalpCaller:[Ljava/lang/String;

    .line 1829
    iget-object v6, p0, Lcom/felicanetworks/falp/Falp;->mFalpCaller:[Ljava/lang/String;

    iget-object v8, v1, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->name:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .end local v1    # "componentNameHolder":Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;
    .end local v5    # "samePackage":Z
    :cond_4
    :pswitch_1
    move v6, v7

    .line 1858
    goto :goto_0

    .line 1840
    :pswitch_2
    const/4 v5, 0x0

    .line 1841
    .restart local v5    # "samePackage":Z
    invoke-virtual {p0}, Lcom/felicanetworks/falp/Falp;->getMyPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1842
    .local v3, "myPackage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/felicanetworks/falp/Falp;->getFalpCaller()[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v8, v7

    :goto_2
    if-lt v8, v10, :cond_5

    .line 1847
    if-nez v5, :cond_4

    .line 1848
    const-string v7, "\tThe caller isn\'t my component."

    invoke-static {v12, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    goto :goto_0

    .line 1842
    :cond_5
    aget-object v4, v9, v8

    .line 1843
    .restart local v4    # "s":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1844
    const/4 v5, 0x1

    .line 1842
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1806
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkAppCode([Ljava/lang/String;)I
    .locals 12
    .param p1, "falpCaller"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    const/16 v6, -0xf

    .line 1741
    invoke-virtual {p0}, Lcom/felicanetworks/falp/Falp;->getMyParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v2

    .line 1742
    .local v2, "hs":Lcom/felicanetworks/falp/HandshakeParameter;
    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppCodeKind()I

    move-result v0

    .line 1743
    .local v0, "appKind":I
    const/4 v8, 0x7

    const-string v9, "IdleState#startInitiatorFalp[in] appKind:%x"

    invoke-static {v8, v9, v0}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 1744
    packed-switch v0, :pswitch_data_0

    .line 1788
    const-string v7, "\tinvalid param."

    invoke-static {v11, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1792
    :goto_0
    return v6

    .line 1746
    :pswitch_0
    new-instance v1, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;

    invoke-direct {v1}, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;-><init>()V

    .line 1747
    .local v1, "componentNameHolder":Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;
    invoke-virtual {v2, v1}, Lcom/felicanetworks/falp/HandshakeParameter;->checkInitiatorHrSvcAppCode(Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;)V

    .line 1749
    iget v8, v1, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->ret:I

    if-gez v8, :cond_0

    .line 1750
    const-string v7, "\tThe caller isn\'t registered in a white list."

    invoke-static {v11, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    goto :goto_0

    .line 1755
    :cond_0
    iget-object v8, v1, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->name:Landroid/content/ComponentName;

    if-eqz v8, :cond_5

    .line 1756
    const/4 v5, 0x0

    .line 1757
    .local v5, "samePackage":Z
    array-length v9, p1

    move v8, v7

    :goto_1
    if-lt v8, v9, :cond_1

    .line 1762
    if-nez v5, :cond_5

    .line 1763
    const-string v7, "\tThe caller didn\'t match the package."

    invoke-static {v11, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    goto :goto_0

    .line 1757
    :cond_1
    aget-object v4, p1, v8

    .line 1758
    .local v4, "s":Ljava/lang/String;
    iget-object v10, v1, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->name:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1759
    const/4 v5, 0x1

    .line 1757
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1774
    .end local v1    # "componentNameHolder":Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "samePackage":Z
    :pswitch_1
    const/4 v5, 0x0

    .line 1775
    .restart local v5    # "samePackage":Z
    invoke-virtual {p0}, Lcom/felicanetworks/falp/Falp;->getMyPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1776
    .local v3, "myPackage":Ljava/lang/String;
    array-length v9, p1

    move v8, v7

    :goto_2
    if-lt v8, v9, :cond_3

    .line 1781
    if-nez v5, :cond_5

    .line 1782
    const-string v7, "\tThe caller isn\'t my component."

    invoke-static {v11, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    goto :goto_0

    .line 1776
    :cond_3
    aget-object v4, p1, v8

    .line 1777
    .restart local v4    # "s":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1778
    const/4 v5, 0x1

    .line 1776
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v3    # "myPackage":Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "samePackage":Z
    :cond_5
    :pswitch_2
    move v6, v7

    .line 1792
    goto :goto_0

    .line 1744
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createOneTimePassword()I
    .locals 2

    .prologue
    .line 2041
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 2042
    .local v1, "generator":Ljava/util/Random;
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 2043
    .local v0, "candidate":I
    iput v0, p0, Lcom/felicanetworks/falp/Falp;->mOneTimePswd:I

    .line 2044
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/felicanetworks/falp/Falp;
    .locals 2

    .prologue
    .line 342
    const-class v0, Lcom/felicanetworks/falp/Falp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/felicanetworks/falp/Falp;->sMe:Lcom/felicanetworks/falp/Falp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getOffsetInSendingBuffer(I)I
    .locals 4
    .param p1, "seqNum"    # I

    .prologue
    .line 1656
    invoke-direct {p0}, Lcom/felicanetworks/falp/Falp;->getSendSizeInOnce()I

    move-result v1

    .line 1657
    .local v1, "sendSizeInOnce":I
    iget v2, p0, Lcom/felicanetworks/falp/Falp;->mSeqNumWhenSendStart:I

    if-lt p1, v2, :cond_0

    .line 1658
    iget v2, p0, Lcom/felicanetworks/falp/Falp;->mSeqNumWhenSendStart:I

    sub-int v2, p1, v2

    mul-int v0, v2, v1

    .line 1663
    .local v0, "offset":I
    :goto_0
    return v0

    .line 1660
    .end local v0    # "offset":I
    :cond_0
    const v2, 0xffff

    iget v3, p0, Lcom/felicanetworks/falp/Falp;->mSeqNumWhenSendStart:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p1

    mul-int v0, v2, v1

    .restart local v0    # "offset":I
    goto :goto_0
.end method

.method private getSendSequenceNumInOnce()I
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 1692
    const-string v1, "Falp#getSendSequenceNumInOnce[peer] "

    .line 1693
    invoke-virtual {p0}, Lcom/felicanetworks/falp/Falp;->getPeerParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getRecv_pkt_max()I

    move-result v2

    .line 1692
    invoke-static {v3, v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 1694
    const-string v1, "Falp#getSendSequenceNumInOnce[mine] "

    .line 1695
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxSendPacketSequence()S

    move-result v2

    .line 1694
    invoke-static {v3, v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 1696
    invoke-virtual {p0}, Lcom/felicanetworks/falp/Falp;->getPeerParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getRecv_pkt_max()I

    move-result v1

    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxSendPacketSequence()S

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1697
    invoke-virtual {p0}, Lcom/felicanetworks/falp/Falp;->getPeerParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getRecv_pkt_max()I

    move-result v0

    .line 1701
    .local v0, "sequenceNum":I
    :goto_0
    return v0

    .line 1699
    .end local v0    # "sequenceNum":I
    :cond_0
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxSendPacketSequence()S

    move-result v0

    .restart local v0    # "sequenceNum":I
    goto :goto_0
.end method

.method private getSendSizeInOnce()I
    .locals 3

    .prologue
    .line 1674
    invoke-virtual {p0}, Lcom/felicanetworks/falp/Falp;->getPeerParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getFalp_recvmax()S

    move-result v1

    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxSendSize()S

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1675
    invoke-virtual {p0}, Lcom/felicanetworks/falp/Falp;->getPeerParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getFalp_recvmax()S

    move-result v1

    add-int/lit8 v0, v1, -0x3

    .line 1681
    .local v0, "sendSizeInOnce":I
    :goto_0
    return v0

    .line 1678
    .end local v0    # "sendSizeInOnce":I
    :cond_0
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxSendSize()S

    move-result v1

    add-int/lit8 v0, v1, -0x3

    .restart local v0    # "sendSizeInOnce":I
    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 381
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mFalpParam:Lcom/felicanetworks/falp/FalpProtocolParameter;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/FalpProtocolParameter;->init()V

    .line 382
    invoke-static {}, Lcom/felicanetworks/mfc/Felica;->getInstance()Lcom/felicanetworks/mfc/Felica;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Felica;->getAllowFalpWhileUsingMfc()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    iput-object v3, p0, Lcom/felicanetworks/falp/Falp;->mFalpCaller:[Ljava/lang/String;

    .line 386
    :cond_0
    iput v2, p0, Lcom/felicanetworks/falp/Falp;->mSeqNum:I

    .line 387
    iput v2, p0, Lcom/felicanetworks/falp/Falp;->mSeqNumWhenSendStart:I

    .line 388
    iput v2, p0, Lcom/felicanetworks/falp/Falp;->mRcvSeqNum:I

    .line 389
    iput-short v2, p0, Lcom/felicanetworks/falp/Falp;->mFwKind:S

    .line 390
    iput v2, p0, Lcom/felicanetworks/falp/Falp;->mRetryReqSequenceNo:I

    .line 391
    iput v2, p0, Lcom/felicanetworks/falp/Falp;->mRetrySequenceNo:I

    .line 392
    iput v2, p0, Lcom/felicanetworks/falp/Falp;->mRetryToSendCount:I

    .line 393
    iput v2, p0, Lcom/felicanetworks/falp/Falp;->mRetryToResendCount:I

    .line 394
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/felicanetworks/falp/Falp;->mCurrentTime:J

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/falp/Falp;->mAllowToRecvData:Z

    .line 396
    iput-boolean v2, p0, Lcom/felicanetworks/falp/Falp;->mNowTerminating:Z

    .line 399
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mRecvingPackets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 400
    iput v2, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBufSize:I

    .line 403
    invoke-static {}, Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;->getInstance()Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->init()V

    .line 404
    invoke-static {}, Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;->getInstance()Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->addListener(Lcom/felicanetworks/falp/apldatamodel/AplDataBufferListener;)V

    .line 405
    invoke-static {}, Lcom/felicanetworks/falp/apldatamodel/DataFromChipToApl;->getInstance()Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->init()V

    .line 406
    invoke-static {}, Lcom/felicanetworks/falp/apldatamodel/DataFromChipToApl;->getInstance()Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->addListener(Lcom/felicanetworks/falp/apldatamodel/AplDataBufferListener;)V

    .line 407
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->init()V

    .line 410
    invoke-static {}, Lcom/felicanetworks/falp/state/IdleState;->getInstance()Lcom/felicanetworks/falp/state/IdleState;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    .line 420
    iput-object v3, p0, Lcom/felicanetworks/falp/Falp;->mAppListener:Lcom/felicanetworks/falp/FalpListener;

    .line 424
    return-void
.end method

.method private parseByteArrayToIntegerString([B)Ljava/lang/String;
    .locals 6
    .param p1, "src"    # [B

    .prologue
    .line 1933
    if-nez p1, :cond_0

    .line 1934
    const/4 v2, 0x0

    .line 1942
    :goto_0
    return-object v2

    .line 1937
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1938
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-lt v1, v2, :cond_1

    .line 1942
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1940
    :cond_1
    const-string v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p1, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1938
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public acceptAppStart(Lcom/felicanetworks/falp/FalpListener;III)I
    .locals 11
    .param p1, "listener"    # Lcom/felicanetworks/falp/FalpListener;
    .param p2, "pswd"    # I
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .prologue
    .line 606
    const/4 v5, 0x7

    const-string v6, "Falp#acceptAppStart [in]"

    invoke-static {v5, v6}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 609
    iget-object v5, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    if-nez v5, :cond_1

    const/4 v4, -0x6

    .line 640
    :cond_0
    :goto_0
    return v4

    .line 610
    :cond_1
    iget-object v5, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    invoke-static {v5, p3, p4}, Lcom/felicanetworks/felica/util/CommonSecurity;->getMfcCallerCandidate(Landroid/content/Context;II)[Ljava/lang/String;

    move-result-object v2

    .line 611
    .local v2, "candidate":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v5, v2

    if-nez v5, :cond_3

    .line 612
    :cond_2
    const/4 v5, 0x1

    const-string v6, "\tthe caller is not active or hasn\'t permission."

    invoke-static {v5, v6}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 613
    const/4 v4, -0x1

    goto :goto_0

    .line 617
    :cond_3
    iget-object v5, p0, Lcom/felicanetworks/falp/Falp;->mFalpCaller:[Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 618
    const/4 v3, 0x0

    .line 619
    .local v3, "isValid":Z
    array-length v7, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-lt v6, v7, :cond_5

    .line 633
    .end local v3    # "isValid":Z
    :cond_4
    invoke-static {}, Lcom/felicanetworks/mfc/Felica;->getInstance()Lcom/felicanetworks/mfc/Felica;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Lcom/felicanetworks/mfc/Felica;->changeFalpUser(II)V

    .line 635
    iget-object v5, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    invoke-virtual {v5, p0, p2}, Lcom/felicanetworks/falp/state/FalpState;->recvTargetFalpAccept(Lcom/felicanetworks/falp/state/StateListener;I)I

    move-result v4

    .line 636
    .local v4, "ret":I
    if-nez v4, :cond_0

    .line 637
    iput-object p1, p0, Lcom/felicanetworks/falp/Falp;->mAppListener:Lcom/felicanetworks/falp/FalpListener;

    goto :goto_0

    .line 619
    .end local v4    # "ret":I
    .restart local v3    # "isValid":Z
    :cond_5
    aget-object v0, v2, v6

    .line 620
    .local v0, "c":Ljava/lang/String;
    iget-object v8, p0, Lcom/felicanetworks/falp/Falp;->mFalpCaller:[Ljava/lang/String;

    array-length v9, v8

    const/4 v5, 0x0

    :goto_2
    if-lt v5, v9, :cond_6

    .line 625
    if-nez v3, :cond_8

    .line 626
    const/4 v5, 0x1

    const-string v6, "\tthe caller is launched application."

    invoke-static {v5, v6}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 627
    const/16 v4, -0xf

    goto :goto_0

    .line 620
    :cond_6
    aget-object v1, v8, v5

    .line 621
    .local v1, "caller":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 622
    const/4 v3, 0x1

    .line 620
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 619
    .end local v1    # "caller":Ljava/lang/String;
    :cond_8
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_1
.end method

.method public cancel()I
    .locals 2

    .prologue
    .line 682
    const/4 v0, 0x7

    const-string v1, "Falp#cancel [in]"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    invoke-virtual {v0, p0}, Lcom/felicanetworks/falp/state/FalpState;->cancelFalp(Lcom/felicanetworks/falp/state/StateListener;)I

    move-result v0

    return v0
.end method

.method public checkRecvData()S
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1302
    iget-object v8, p0, Lcom/felicanetworks/falp/Falp;->mRecvingPackets:Ljava/util/ArrayList;

    invoke-static {}, Lcom/felicanetworks/falp/DataPacketComparator;->getInstance()Lcom/felicanetworks/falp/DataPacketComparator;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1304
    iget-object v8, p0, Lcom/felicanetworks/falp/Falp;->mRecvingPackets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1305
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;>;"
    const/4 v4, -0x2

    .line 1306
    .local v4, "lostPacketNo":I
    const/4 v5, 0x0

    .line 1307
    .local v5, "nowPacketNo":I
    iget v8, p0, Lcom/felicanetworks/falp/Falp;->mRcvSeqNum:I

    add-int/lit8 v7, v8, -0x1

    .line 1308
    .local v7, "prevPacketNo":I
    const/4 v3, 0x0

    .line 1310
    .local v3, "lostCount":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1331
    if-lez v3, :cond_5

    .line 1333
    iget v8, p0, Lcom/felicanetworks/falp/Falp;->mRcvSeqNum:I

    sub-int v8, v5, v8

    add-int/lit8 v1, v8, 0x1

    .line 1334
    .local v1, "expectedTolTalNum":I
    mul-int/lit8 v8, v1, 0x3

    div-int/lit8 v0, v8, 0x64

    .line 1336
    .local v0, "allowLossCount":I
    const/4 v8, 0x3

    if-ge v0, v8, :cond_0

    .line 1337
    const/4 v0, 0x3

    .line 1339
    :cond_0
    if-le v3, v0, :cond_5

    .line 1341
    const-string v8, "-----------TOO MANY LOSS------------"

    invoke-static {v10, v8}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1342
    const/4 v8, -0x1

    .line 1345
    .end local v0    # "allowLossCount":I
    .end local v1    # "expectedTolTalNum":I
    :goto_1
    return v8

    .line 1311
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;

    .line 1312
    .local v6, "p":Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;
    invoke-virtual {v6}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getSequenceId()I

    move-result v5

    .line 1315
    iget v8, p0, Lcom/felicanetworks/falp/Falp;->mRcvSeqNum:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxReceivePacketSequence()I

    move-result v9

    add-int/2addr v8, v9

    if-ge v8, v5, :cond_2

    .line 1316
    const/4 v8, -0x3

    goto :goto_1

    .line 1320
    :cond_2
    add-int/lit8 v8, v7, 0x1

    if-eq v5, v8, :cond_4

    if-eq v5, v7, :cond_4

    .line 1321
    const-string v8, "-----------LOST PACKET FAOUND------------"

    invoke-static {v10, v8}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1323
    const/4 v8, -0x2

    if-ne v4, v8, :cond_3

    .line 1324
    add-int/lit8 v4, v7, 0x1

    .line 1326
    :cond_3
    sub-int v8, v5, v7

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v3, v8

    .line 1328
    :cond_4
    move v7, v5

    goto :goto_0

    .line 1345
    .end local v6    # "p":Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;
    :cond_5
    int-to-short v8, v4

    goto :goto_1
.end method

.method public clearAppLisnter()V
    .locals 1

    .prologue
    .line 2331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/falp/Falp;->mAppListener:Lcom/felicanetworks/falp/FalpListener;

    .line 2332
    return-void
.end method

.method public clearRecvData()V
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mRecvingPackets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1286
    return-void
.end method

.method public clearSendDataBufferInWrkArea()V
    .locals 1

    .prologue
    .line 1578
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBufSize:I

    .line 1579
    return-void
.end method

.method public copySendDataFromBufferToWrkArea()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x7

    .line 1526
    invoke-static {}, Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;->getInstance()Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;

    move-result-object v0

    .line 1527
    .local v0, "buf":Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;
    invoke-virtual {v0, v10}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->startEdit(I)I

    move-result v6

    .line 1530
    .local v6, "ret":I
    if-eqz v6, :cond_0

    .line 1531
    const/4 v7, 0x1

    const-string v8, "DataFromAplToChip can\'t edit(read)."

    invoke-static {v7, v8}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1569
    :goto_0
    return-void

    .line 1534
    :cond_0
    invoke-virtual {v0}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->getWriteBufferSize()I

    move-result v7

    invoke-virtual {v0}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->getReadBufferSize()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBufSize:I

    .line 1537
    invoke-direct {p0}, Lcom/felicanetworks/falp/Falp;->getSendSizeInOnce()I

    move-result v7

    invoke-direct {p0}, Lcom/felicanetworks/falp/Falp;->getSendSequenceNumInOnce()I

    move-result v8

    mul-int v2, v7, v8

    .line 1538
    .local v2, "maxRecvLenOfPartner":I
    iget v7, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBufSize:I

    if-ge v2, v7, :cond_1

    .line 1539
    iput v2, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBufSize:I

    .line 1541
    :cond_1
    iget v5, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBufSize:I

    .line 1542
    .local v5, "restLen":I
    const/4 v1, 0x0

    .line 1543
    .local v1, "copiedSize":I
    const/4 v4, 0x0

    .line 1544
    .local v4, "prevCopyRestLen":I
    const/4 v3, 0x0

    .line 1548
    .local v3, "offset":I
    :goto_1
    iget v7, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBufSize:I

    if-lt v3, v7, :cond_2

    .line 1561
    invoke-virtual {v0}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->commit()I

    .line 1564
    invoke-virtual {p0}, Lcom/felicanetworks/falp/Falp;->getSeqNum()I

    move-result v7

    iput v7, p0, Lcom/felicanetworks/falp/Falp;->mSeqNumWhenSendStart:I

    .line 1565
    const-string v7, "\tmSendDataBufSize:"

    iget v8, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBufSize:I

    invoke-static {v9, v7, v8}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 1566
    const-string v7, "\tmSendDataBuf:"

    iget-object v8, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBuf:[B

    array-length v8, v8

    invoke-static {v9, v7, v8}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 1567
    const-string v7, "\tmSeqNumWhenSendStart:"

    iget v8, p0, Lcom/felicanetworks/falp/Falp;->mSeqNumWhenSendStart:I

    invoke-static {v9, v7, v8}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 1568
    const-string v7, "\trestLen:"

    invoke-static {v9, v7, v5}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    goto :goto_0

    .line 1549
    :cond_2
    invoke-virtual {v0}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->getWriteBufferSize()I

    move-result v7

    invoke-virtual {v0}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->getReadBufferSize()I

    move-result v8

    sub-int v4, v7, v8

    .line 1550
    iget-object v7, p0, Lcom/felicanetworks/falp/Falp;->mWrkBuf:[B

    invoke-virtual {v0, v7}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->read([B)I

    move-result v5

    .line 1551
    sub-int v1, v4, v5

    .line 1553
    const-string v7, "\trestLen:"

    invoke-static {v9, v7, v5}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 1554
    const-string v7, "\tmSendDataBufSize:"

    iget v8, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBufSize:I

    invoke-static {v9, v7, v8}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 1555
    const-string v7, "\tmSendDataBuf:"

    iget-object v8, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBuf:[B

    array-length v8, v8

    invoke-static {v9, v7, v8}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 1556
    const-string v7, "\tmWrkBuf:"

    iget-object v8, p0, Lcom/felicanetworks/falp/Falp;->mWrkBuf:[B

    array-length v8, v8

    invoke-static {v9, v7, v8}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 1557
    iget-object v7, p0, Lcom/felicanetworks/falp/Falp;->mWrkBuf:[B

    iget-object v8, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBuf:[B

    invoke-static {v7, v10, v8, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1558
    add-int/2addr v3, v1

    goto :goto_1
.end method

.method public countupSeqNum()V
    .locals 2

    .prologue
    .line 1719
    iget v0, p0, Lcom/felicanetworks/falp/Falp;->mSeqNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/felicanetworks/falp/Falp;->mSeqNum:I

    .line 1720
    iget v0, p0, Lcom/felicanetworks/falp/Falp;->mSeqNum:I

    const v1, 0xffff

    if-le v0, v1, :cond_0

    .line 1721
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/falp/Falp;->mSeqNum:I

    .line 1723
    :cond_0
    return-void
.end method

.method public getAppLisnter()Lcom/felicanetworks/falp/FalpListener;
    .locals 1

    .prologue
    .line 2311
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mAppListener:Lcom/felicanetworks/falp/FalpListener;

    return-object v0
.end method

.method public getAppReceiveLisnter()Lcom/felicanetworks/falp/FalpListener;
    .locals 1

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mAppReceiveListener:Lcom/felicanetworks/falp/FalpListener;

    return-object v0
.end method

.method public getDifferenceFromSavedTime()J
    .locals 4

    .prologue
    .line 2276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/felicanetworks/falp/Falp;->mCurrentTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getEndRequestFlag()Z
    .locals 1

    .prologue
    .line 2252
    iget-boolean v0, p0, Lcom/felicanetworks/falp/Falp;->mNowTerminating:Z

    return v0
.end method

.method public getExpectedSeqNum()I
    .locals 1

    .prologue
    .line 1512
    iget v0, p0, Lcom/felicanetworks/falp/Falp;->mRcvSeqNum:I

    return v0
.end method

.method public getFalpCaller()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mFalpCaller:[Ljava/lang/String;

    return-object v0
.end method

.method public getFwReason()S
    .locals 1

    .prologue
    .line 2106
    iget-short v0, p0, Lcom/felicanetworks/falp/Falp;->mFwKind:S

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getIVa(II)J
    .locals 3
    .param p1, "preSend_len"    # I
    .param p2, "nowSend_len"    # I

    .prologue
    .line 1232
    const-wide/16 v0, 0x0

    .line 1234
    .local v0, "ret":J
    iget-object v2, p0, Lcom/felicanetworks/falp/Falp;->mFalpParam:Lcom/felicanetworks/falp/FalpProtocolParameter;

    invoke-virtual {v2, p1, p2}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getIVa(II)J

    move-result-wide v0

    .line 1236
    return-wide v0
.end method

.method public getIVb(IIZ)J
    .locals 3
    .param p1, "rcv_len"    # I
    .param p2, "snd_len"    # I
    .param p3, "isUseTDi"    # Z

    .prologue
    .line 1253
    const-wide/16 v0, 0x0

    .line 1256
    .local v0, "ret":J
    iget-object v2, p0, Lcom/felicanetworks/falp/Falp;->mFalpParam:Lcom/felicanetworks/falp/FalpProtocolParameter;

    invoke-virtual {v2, p1, p2, p3}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getIVb(IIZ)J

    move-result-wide v0

    .line 1258
    return-wide v0
.end method

.method public getMaxReceiveSize()I
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mRecvBufferForApp:[B

    array-length v0, v0

    return v0
.end method

.method public getMaxSendSize()I
    .locals 3

    .prologue
    .line 844
    const/4 v0, 0x1

    const-string v1, "getMaxSendSize:"

    iget-object v2, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBuf:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 845
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBuf:[B

    array-length v0, v0

    return v0
.end method

.method public getMyPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMyParams()Lcom/felicanetworks/falp/HandshakeParameter;
    .locals 1

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mFalpParam:Lcom/felicanetworks/falp/FalpProtocolParameter;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getMyParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v0

    return-object v0
.end method

.method public getOneTimePassword()I
    .locals 1

    .prologue
    .line 2052
    iget v0, p0, Lcom/felicanetworks/falp/Falp;->mOneTimePswd:I

    return v0
.end method

.method public getPacketReciveState()Z
    .locals 1

    .prologue
    .line 2234
    iget-boolean v0, p0, Lcom/felicanetworks/falp/Falp;->mAllowToRecvData:Z

    return v0
.end method

.method public getParamMng()Lcom/felicanetworks/falp/FalpProtocolParameter;
    .locals 1

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mFalpParam:Lcom/felicanetworks/falp/FalpProtocolParameter;

    return-object v0
.end method

.method public getPeerParams()Lcom/felicanetworks/falp/HandshakeParameter;
    .locals 1

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mFalpParam:Lcom/felicanetworks/falp/FalpProtocolParameter;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getPeerParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v0

    return-object v0
.end method

.method public getRecvDataLen()I
    .locals 5

    .prologue
    .line 1489
    const/4 v3, 0x7

    const-string v4, "Falp#getRecvDataLen[in]"

    invoke-static {v3, v4}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1490
    const/4 v1, 0x0

    .line 1493
    .local v1, "len":I
    iget-object v3, p0, Lcom/felicanetworks/falp/Falp;->mRecvingPackets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1494
    const/4 v3, 0x0

    .line 1504
    :goto_0
    return v3

    .line 1498
    :cond_0
    iget-object v3, p0, Lcom/felicanetworks/falp/Falp;->mRecvingPackets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1499
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    .line 1504
    goto :goto_0

    .line 1500
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;

    .line 1501
    .local v2, "packet":Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;
    invoke-virtual {v2}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getPayloadLen()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1
.end method

.method public getResendRequestSeqno()I
    .locals 1

    .prologue
    .line 2131
    iget v0, p0, Lcom/felicanetworks/falp/Falp;->mRetryReqSequenceNo:I

    return v0
.end method

.method public getResendResponseSeqno()I
    .locals 1

    .prologue
    .line 2152
    iget v0, p0, Lcom/felicanetworks/falp/Falp;->mRetrySequenceNo:I

    return v0
.end method

.method public getSendData(I)Lcom/felicanetworks/felica/util/ByteBuffer;
    .locals 5
    .param p1, "seqNum"    # I

    .prologue
    .line 1592
    invoke-direct {p0, p1}, Lcom/felicanetworks/falp/Falp;->getOffsetInSendingBuffer(I)I

    move-result v1

    .line 1593
    .local v1, "offset":I
    invoke-direct {p0}, Lcom/felicanetworks/falp/Falp;->getSendSizeInOnce()I

    move-result v2

    .line 1596
    .local v2, "sendSizeInOnce":I
    iget v3, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBufSize:I

    if-lt v1, v3, :cond_0

    .line 1598
    const/4 v3, 0x0

    .line 1612
    :goto_0
    return-object v3

    .line 1601
    :cond_0
    iget v3, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBufSize:I

    add-int v4, v1, v2

    if-le v3, v4, :cond_1

    .line 1602
    move v0, v2

    .line 1608
    .local v0, "copyLen":I
    :goto_1
    iget-object v3, p0, Lcom/felicanetworks/falp/Falp;->mWrkByteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 1609
    iget-object v3, p0, Lcom/felicanetworks/falp/Falp;->mWrkByteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    iget-object v4, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBuf:[B

    invoke-virtual {v3, v4, v1, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([BII)V

    .line 1610
    iget-object v3, p0, Lcom/felicanetworks/falp/Falp;->mWrkByteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v3, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 1612
    iget-object v3, p0, Lcom/felicanetworks/falp/Falp;->mWrkByteBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    goto :goto_0

    .line 1604
    .end local v0    # "copyLen":I
    :cond_1
    iget v3, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBufSize:I

    sub-int v0, v3, v1

    .restart local v0    # "copyLen":I
    goto :goto_1
.end method

.method public getSendDataLen(I)I
    .locals 6
    .param p1, "seqNum"    # I

    .prologue
    const/4 v5, 0x6

    .line 1624
    const-string v3, "Falp#getSendDataLen[in]"

    invoke-static {v5, v3, p1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 1627
    invoke-direct {p0, p1}, Lcom/felicanetworks/falp/Falp;->getOffsetInSendingBuffer(I)I

    move-result v1

    .line 1629
    .local v1, "offset":I
    iget v3, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBufSize:I

    if-lt v1, v3, :cond_0

    .line 1631
    const-string v3, "Falp#getSendDataLen[out] 0"

    invoke-static {v5, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1632
    const/4 v0, 0x0

    .line 1643
    :goto_0
    return v0

    .line 1635
    :cond_0
    invoke-direct {p0}, Lcom/felicanetworks/falp/Falp;->getSendSizeInOnce()I

    move-result v2

    .line 1636
    .local v2, "sendSizeInOnce":I
    iget v3, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBufSize:I

    add-int v4, v1, v2

    if-le v3, v4, :cond_1

    .line 1637
    move v0, v2

    .line 1642
    .local v0, "copyLen":I
    :goto_1
    const-string v3, "Falp#getSendDataLen[out] "

    invoke-static {v5, v3, v0}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    goto :goto_0

    .line 1639
    .end local v0    # "copyLen":I
    :cond_1
    iget v3, p0, Lcom/felicanetworks/falp/Falp;->mSendDataBufSize:I

    sub-int v0, v3, v1

    .restart local v0    # "copyLen":I
    goto :goto_1
.end method

.method public getSeqNum()I
    .locals 1

    .prologue
    .line 1711
    iget v0, p0, Lcom/felicanetworks/falp/Falp;->mSeqNum:I

    return v0
.end method

.method public getState()Lcom/felicanetworks/falp/state/FalpState;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    return-object v0
.end method

.method public getTOb(Z)J
    .locals 3
    .param p1, "isUseTDi"    # Z

    .prologue
    .line 1270
    const-wide/16 v0, 0x0

    .line 1272
    .local v0, "ret":J
    iget-object v2, p0, Lcom/felicanetworks/falp/Falp;->mFalpParam:Lcom/felicanetworks/falp/FalpProtocolParameter;

    invoke-virtual {v2, p1}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getTOb(Z)J

    move-result-wide v0

    .line 1274
    return-wide v0
.end method

.method public hasAppLisnter()Z
    .locals 1

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mAppListener:Lcom/felicanetworks/falp/FalpListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 355
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    const-string v1, "Falp#init [in]"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 364
    invoke-direct {p0}, Lcom/felicanetworks/falp/Falp;->init()V

    .line 367
    iput-object p1, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    .line 370
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/felicanetworks/falp/Falp;->mHandler:Landroid/os/Handler;

    .line 371
    new-instance v0, Lcom/felicanetworks/falp/Falp$TimeoutHandler;

    iget-object v1, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/felicanetworks/falp/Falp$TimeoutHandler;-><init>(Lcom/felicanetworks/falp/Falp;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/felicanetworks/falp/Falp;->mTimeoutHandler:Lcom/felicanetworks/falp/Falp$TimeoutHandler;

    .line 372
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getInstance()Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSameListeningAppCode([B)Z
    .locals 1
    .param p1, "appCode"    # [B

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mListeningAppCode:[B

    if-nez v0, :cond_0

    .line 2300
    const/4 v0, 0x0

    .line 2301
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mListeningAppCode:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public onCallerEnded()I
    .locals 3

    .prologue
    .line 791
    const/4 v1, 0x7

    const-string v2, "Falp#onCallerEnded [in]"

    invoke-static {v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 793
    iget-object v1, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    invoke-virtual {v1, p0}, Lcom/felicanetworks/falp/state/FalpState;->cancelFalp(Lcom/felicanetworks/falp/state/StateListener;)I

    .line 795
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.felicanetworks.falp.ACTION_INITIATOR_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 796
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.felicanetworks.falp.CATEGORY_INITIATOR_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    iget-object v1, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 798
    iget-object v1, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 800
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onRecvAppCodeErrPacket()V
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    invoke-virtual {v0, p0}, Lcom/felicanetworks/falp/state/FalpState;->recvAppCodeErrPacket(Lcom/felicanetworks/falp/state/StateListener;)I

    .line 976
    return-void
.end method

.method public onRecvData(Lcom/felicanetworks/falp/packet/DataSendPacket;)V
    .locals 1
    .param p1, "packet"    # Lcom/felicanetworks/falp/packet/DataSendPacket;

    .prologue
    .line 886
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/falp/state/FalpState;->recvPacketEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/DataSendPacket;)I

    .line 887
    return-void
.end method

.method public onRecvHandshakeReq(Lcom/felicanetworks/falp/packet/HandshakeReqPacket;)V
    .locals 1
    .param p1, "packet"    # Lcom/felicanetworks/falp/packet/HandshakeReqPacket;

    .prologue
    .line 860
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/falp/state/FalpState;->recvHandshakeEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/HandshakeReqPacket;)I

    .line 861
    return-void
.end method

.method public onRecvHandshakeRes(Lcom/felicanetworks/falp/packet/HandshakeResPacket;)V
    .locals 1
    .param p1, "packet"    # Lcom/felicanetworks/falp/packet/HandshakeResPacket;

    .prologue
    .line 872
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/falp/state/FalpState;->recvHandshakeRes(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/HandshakeResPacket;)I

    .line 873
    return-void
.end method

.method public onRecvOtherPacket()V
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    invoke-virtual {v0, p0}, Lcom/felicanetworks/falp/state/FalpState;->recvUnknownPacket(Lcom/felicanetworks/falp/state/StateListener;)I

    .line 959
    return-void
.end method

.method public onRecvPayLoadErrPacket()V
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    invoke-virtual {v0, p0}, Lcom/felicanetworks/falp/state/FalpState;->recvPayloadErrPacket(Lcom/felicanetworks/falp/state/StateListener;)I

    .line 967
    return-void
.end method

.method public onRecvRetryReq(Lcom/felicanetworks/falp/packet/RetryReqPacket;)V
    .locals 1
    .param p1, "packet"    # Lcom/felicanetworks/falp/packet/RetryReqPacket;

    .prologue
    .line 918
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/falp/state/FalpState;->recvRetryReqEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/RetryReqPacket;)I

    .line 919
    return-void
.end method

.method public onRecvRetryRes(Lcom/felicanetworks/falp/packet/RetryResPacket;)V
    .locals 1
    .param p1, "packet"    # Lcom/felicanetworks/falp/packet/RetryResPacket;

    .prologue
    .line 929
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/falp/state/FalpState;->recvRetryResEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/RetryResPacket;)I

    .line 930
    return-void
.end method

.method public onRecvTerminateAdhoc(Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;)V
    .locals 1
    .param p1, "packet"    # Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;

    .prologue
    .line 940
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/falp/state/FalpState;->recvFarewell(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;)I

    .line 941
    return-void
.end method

.method public onRecvTimeout()I
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    invoke-virtual {v0, p0}, Lcom/felicanetworks/falp/state/FalpState;->recvTimeout(Lcom/felicanetworks/falp/state/StateListener;)I

    move-result v0

    return v0
.end method

.method public onRecvTransitionA(Lcom/felicanetworks/falp/packet/ConvertAPacket;)V
    .locals 1
    .param p1, "packet"    # Lcom/felicanetworks/falp/packet/ConvertAPacket;

    .prologue
    .line 899
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/falp/state/FalpState;->recvTurnOverReadyEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/ConvertAPacket;)I

    .line 900
    return-void
.end method

.method public onRecvTransitionB(Lcom/felicanetworks/falp/packet/ConvertBPacket;)V
    .locals 1
    .param p1, "packet"    # Lcom/felicanetworks/falp/packet/ConvertBPacket;

    .prologue
    .line 907
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/falp/state/FalpState;->recvTurnOverReadyBEvt(Lcom/felicanetworks/falp/state/StateListener;Lcom/felicanetworks/falp/packet/ConvertBPacket;)I

    .line 908
    return-void
.end method

.method public onSendError(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 987
    return-void
.end method

.method public recvDataNotify()V
    .locals 2

    .prologue
    .line 2363
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/felicanetworks/falp/Falp;->mRecvNotifyOrPollingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2364
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/felicanetworks/falp/Falp$2;

    invoke-direct {v1, p0}, Lcom/felicanetworks/falp/Falp$2;-><init>(Lcom/felicanetworks/falp/Falp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2407
    return-void
.end method

.method public recvStartCheckNO()I
    .locals 2

    .prologue
    .line 823
    const/4 v0, 0x7

    const-string v1, "Falp#recvStartCheckNO [in]"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    invoke-virtual {v0, p0}, Lcom/felicanetworks/falp/state/FalpState;->recvStartCheckNO(Lcom/felicanetworks/falp/state/StateListener;)I

    move-result v0

    return v0
.end method

.method public recvStartCheckYES()I
    .locals 2

    .prologue
    .line 811
    const/4 v0, 0x7

    const-string v1, "Falp#recvStartCheckYES [in]"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    invoke-virtual {v0, p0}, Lcom/felicanetworks/falp/state/FalpState;->recvStartCheckYES(Lcom/felicanetworks/falp/state/StateListener;)I

    move-result v0

    return v0
.end method

.method public registerListener(Lcom/felicanetworks/falp/FalpListener;[BIILandroid/content/Context;)I
    .locals 8
    .param p1, "listener"    # Lcom/felicanetworks/falp/FalpListener;
    .param p2, "appCode"    # [B
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 704
    iput-object p5, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    .line 705
    invoke-static {p5, p3, p4}, Lcom/felicanetworks/felica/util/CommonSecurity;->getMfcCallerCandidate(Landroid/content/Context;II)[Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, "candidate":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v6, v0

    if-nez v6, :cond_2

    .line 707
    :cond_0
    const/4 v4, 0x1

    const-string v6, "\tthe caller is not active or hasn\'t permission."

    invoke-static {v4, v6}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    move v3, v5

    .line 781
    :cond_1
    :goto_0
    return v3

    .line 735
    :cond_2
    iput-object v0, p0, Lcom/felicanetworks/falp/Falp;->mFalpCaller:[Ljava/lang/String;

    .line 738
    invoke-direct {p0, p2}, Lcom/felicanetworks/falp/Falp;->checkAppCode([B)I

    move-result v3

    .line 739
    .local v3, "securityCheck":I
    if-nez v3, :cond_1

    .line 744
    iget-object v6, p0, Lcom/felicanetworks/falp/Falp;->mAppReceiveListener:Lcom/felicanetworks/falp/FalpListener;

    if-eq v6, p1, :cond_3

    if-nez p1, :cond_4

    .line 746
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/mfc/Felica;->getInstance()Lcom/felicanetworks/mfc/Felica;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Lcom/felicanetworks/mfc/Felica;->clearAllowFalpWhileUsingMfc(II)V
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    iput-object v7, p0, Lcom/felicanetworks/falp/Falp;->mAppReceiveListener:Lcom/felicanetworks/falp/FalpListener;

    .line 751
    iput-object v7, p0, Lcom/felicanetworks/falp/Falp;->mListeningAppCode:[B

    .line 752
    invoke-static {}, Lcom/felicanetworks/falp/FalpService;->clearPidUid()V

    move v3, v4

    .line 753
    goto :goto_0

    .line 747
    :catch_0
    move-exception v1

    .local v1, "e":Lcom/felicanetworks/mfc/FelicaException;
    move v3, v5

    .line 748
    goto :goto_0

    .line 758
    .end local v1    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/felicanetworks/mfc/Felica;->getInstance()Lcom/felicanetworks/mfc/Felica;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Lcom/felicanetworks/mfc/Felica;->setAllowFalpWhileUsingMfc(II)V
    :try_end_1
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_1 .. :try_end_1} :catch_1

    .line 765
    :try_start_2
    invoke-static {}, Lcom/felicanetworks/mfc/Felica;->getInstance()Lcom/felicanetworks/mfc/Felica;

    move-result-object v5

    invoke-virtual {v5}, Lcom/felicanetworks/mfc/Felica;->getCurrentState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 766
    invoke-static {}, Lcom/felicanetworks/mfc/Felica;->getInstance()Lcom/felicanetworks/mfc/Felica;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/felicanetworks/mfc/Felica;->doReset(Z)V
    :try_end_2
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_2 .. :try_end_2} :catch_2

    .line 778
    :cond_5
    iput-object p1, p0, Lcom/felicanetworks/falp/Falp;->mAppReceiveListener:Lcom/felicanetworks/falp/FalpListener;

    .line 779
    iput-object p2, p0, Lcom/felicanetworks/falp/Falp;->mListeningAppCode:[B

    move v3, v4

    .line 781
    goto :goto_0

    .line 759
    :catch_1
    move-exception v1

    .line 760
    .restart local v1    # "e":Lcom/felicanetworks/mfc/FelicaException;
    const/4 v3, -0x6

    goto :goto_0

    .line 768
    .end local v1    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catch_2
    move-exception v2

    .line 770
    .local v2, "e1":Lcom/felicanetworks/mfc/FelicaException;
    :try_start_3
    invoke-static {}, Lcom/felicanetworks/mfc/Felica;->getInstance()Lcom/felicanetworks/mfc/Felica;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Lcom/felicanetworks/mfc/Felica;->clearAllowFalpWhileUsingMfc(II)V
    :try_end_3
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_3 .. :try_end_3} :catch_3

    .line 774
    :goto_1
    const/16 v3, -0xa

    goto :goto_0

    .line 771
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public rejectAppStart(III)I
    .locals 11
    .param p1, "pswd"    # I
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    const/4 v5, 0x0

    .line 650
    const/4 v4, 0x7

    const-string v6, "Falp#rejectAppStart [in]"

    invoke-static {v4, v6}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 652
    iget-object v4, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    const/4 v4, -0x6

    .line 672
    :goto_0
    return v4

    .line 653
    :cond_0
    iget-object v4, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    invoke-static {v4, p2, p3}, Lcom/felicanetworks/felica/util/CommonSecurity;->getMfcCallerCandidate(Landroid/content/Context;II)[Ljava/lang/String;

    move-result-object v2

    .line 654
    .local v2, "candidate":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v4, v2

    if-nez v4, :cond_2

    .line 655
    :cond_1
    const/4 v4, -0x1

    goto :goto_0

    .line 659
    :cond_2
    iget-object v4, p0, Lcom/felicanetworks/falp/Falp;->mFalpCaller:[Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 660
    const/4 v3, 0x0

    .line 661
    .local v3, "isValid":Z
    array-length v7, v2

    move v6, v5

    :goto_1
    if-lt v6, v7, :cond_4

    .line 672
    .end local v3    # "isValid":Z
    :cond_3
    iget-object v4, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    invoke-virtual {v4, p0, p1}, Lcom/felicanetworks/falp/state/FalpState;->recvTargetFalpReject(Lcom/felicanetworks/falp/state/StateListener;I)I

    move-result v4

    goto :goto_0

    .line 661
    .restart local v3    # "isValid":Z
    :cond_4
    aget-object v0, v2, v6

    .line 662
    .local v0, "c":Ljava/lang/String;
    iget-object v8, p0, Lcom/felicanetworks/falp/Falp;->mFalpCaller:[Ljava/lang/String;

    array-length v9, v8

    move v4, v5

    :goto_2
    if-lt v4, v9, :cond_5

    .line 667
    if-nez v3, :cond_7

    .line 668
    const/16 v4, -0xf

    goto :goto_0

    .line 662
    :cond_5
    aget-object v1, v8, v4

    .line 663
    .local v1, "caller":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 664
    const/4 v3, 0x1

    .line 662
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 661
    .end local v1    # "caller":Ljava/lang/String;
    :cond_7
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1
.end method

.method public reqStartAndr01App()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2017
    const-string v3, "Falp#reqStartAndr01App[in]"

    invoke-static {v2, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 2019
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2022
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    const-class v5, Lcom/felicanetworks/falp/android/intent/FalpSendIntentService;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2023
    const-string v3, "com.felicanetworks.falp.ONE_TIME_PSWD"

    invoke-direct {p0}, Lcom/felicanetworks/falp/Falp;->createOneTimePassword()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2027
    :try_start_0
    iget-object v3, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2033
    :goto_0
    return v2

    .line 2028
    :catch_0
    move-exception v0

    .line 2030
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, -0x8

    goto :goto_0
.end method

.method public reqStartSvcApp()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1883
    invoke-virtual {p0}, Lcom/felicanetworks/falp/Falp;->getPeerParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v2

    .line 1884
    .local v2, "hs":Lcom/felicanetworks/falp/HandshakeParameter;
    new-instance v0, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;

    invoke-direct {v0}, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;-><init>()V

    .line 1885
    .local v0, "componentNameHolder":Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;
    invoke-virtual {v2, v0}, Lcom/felicanetworks/falp/HandshakeParameter;->checkTargetHsSvcAppCode(Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;)V

    .line 1886
    iget v4, v0, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->ret:I

    if-eqz v4, :cond_0

    .line 1887
    iget v4, v0, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->ret:I

    .line 1916
    :goto_0
    return v4

    .line 1889
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1892
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, v0, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->name:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    .line 1893
    iget-object v4, v0, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->name:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1894
    new-array v4, v7, [Ljava/lang/String;

    iput-object v4, p0, Lcom/felicanetworks/falp/Falp;->mFalpCaller:[Ljava/lang/String;

    .line 1895
    iget-object v4, p0, Lcom/felicanetworks/falp/Falp;->mFalpCaller:[Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->name:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1902
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "felicafalpid://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1903
    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppid()[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/felicanetworks/falp/Falp;->parseByteArrayToIntegerString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1902
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1904
    const-string v4, "com.felicanetworks.falp.ONE_TIME_PSWD"

    invoke-direct {p0}, Lcom/felicanetworks/falp/Falp;->createOneTimePassword()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1908
    const/4 v4, 0x6

    :try_start_0
    const-string v5, "reqStartSvcApp - start service."

    invoke-static {v4, v5}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1909
    iget-object v4, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1916
    iget v4, v0, Lcom/felicanetworks/falp/HandshakeParameter$ComponentNameHolder;->ret:I

    goto :goto_0

    .line 1898
    :cond_1
    const/4 v4, -0x1

    goto :goto_0

    .line 1910
    :catch_0
    move-exception v1

    .line 1912
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ServiceApp launch err."

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;Ljava/lang/String;)V

    .line 1913
    const/4 v4, -0x8

    goto :goto_0
.end method

.method public reqStartUsrApp()I
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 1980
    const-string v8, "Falp#reqStartUsrApp[in]"

    invoke-static {v7, v8}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1983
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1984
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1987
    invoke-virtual {p0}, Lcom/felicanetworks/falp/Falp;->getPeerParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v2

    .line 1988
    .local v2, "hs":Lcom/felicanetworks/falp/HandshakeParameter;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "felicafalpid://"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1989
    invoke-virtual {v2}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppid()[B

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/felicanetworks/falp/Falp;->parseByteArrayToIntegerString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1988
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1990
    const/high16 v8, 0x10000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1991
    const-string v8, "com.felicanetworks.falp.ONE_TIME_PSWD"

    invoke-direct {p0}, Lcom/felicanetworks/falp/Falp;->createOneTimePassword()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1994
    iget-object v8, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1995
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v8, 0x20

    invoke-virtual {v4, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1997
    .local v6, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lcom/felicanetworks/falp/Falp;->mFalpCaller:[Ljava/lang/String;

    .line 1998
    const/4 v0, 0x0

    .local v0, "cnt":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lt v0, v8, :cond_0

    .line 2004
    :try_start_0
    iget-object v8, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2009
    :goto_1
    return v7

    .line 1999
    :cond_0
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2000
    .local v5, "r":Landroid/content/pm/ResolveInfo;
    iget-object v8, p0, Lcom/felicanetworks/falp/Falp;->mFalpCaller:[Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v9, v8, v0

    .line 1998
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2005
    .end local v5    # "r":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .line 2007
    .local v1, "e":Ljava/lang/Exception;
    const/4 v7, -0x8

    goto :goto_1
.end method

.method public reqUserAplStartCheck()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1950
    const-string v4, "Falp#reqUserAplStartCheck[in]"

    invoke-static {v3, v4}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1953
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1954
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    const-class v5, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1955
    invoke-virtual {p0}, Lcom/felicanetworks/falp/Falp;->getPeerParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v1

    .line 1959
    .local v1, "hs":Lcom/felicanetworks/falp/HandshakeParameter;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "felicafalpid://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1960
    invoke-virtual {v1}, Lcom/felicanetworks/falp/HandshakeParameter;->getAppid()[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/felicanetworks/falp/Falp;->parseByteArrayToIntegerString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1959
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1961
    const-string v4, "com.felicanetworks.falp.ui.TargetAppLaunchActivity.TIMEOUT_MILLI_SEC"

    .line 1962
    iget-object v5, p0, Lcom/felicanetworks/falp/Falp;->mFalpParam:Lcom/felicanetworks/falp/FalpProtocolParameter;

    invoke-virtual {v5}, Lcom/felicanetworks/falp/FalpProtocolParameter;->getUserAppWaitTimerMilliSec()I

    move-result v5

    .line 1961
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1963
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1967
    :try_start_0
    iget-object v4, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1972
    :goto_0
    return v3

    .line 1968
    :catch_0
    move-exception v0

    .line 1970
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, -0x8

    goto :goto_0
.end method

.method public resendRetryCountInit()V
    .locals 1

    .prologue
    .line 2191
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/falp/Falp;->mRetryToResendCount:I

    .line 2192
    return-void
.end method

.method public resendRetryCountOverCheck()Z
    .locals 2

    .prologue
    .line 2209
    iget v0, p0, Lcom/felicanetworks/falp/Falp;->mRetryToResendCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resendRetryCountUp()V
    .locals 1

    .prologue
    .line 2199
    iget v0, p0, Lcom/felicanetworks/falp/Falp;->mRetryToResendCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/felicanetworks/falp/Falp;->mRetryToResendCount:I

    .line 2200
    return-void
.end method

.method public rollbackSeqNum()V
    .locals 1

    .prologue
    .line 1730
    iget v0, p0, Lcom/felicanetworks/falp/Falp;->mSeqNumWhenSendStart:I

    iput v0, p0, Lcom/felicanetworks/falp/Falp;->mSeqNum:I

    .line 1731
    return-void
.end method

.method public saveCurrentTime()V
    .locals 2

    .prologue
    .line 2265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/falp/Falp;->mCurrentTime:J

    .line 2266
    return-void
.end method

.method public saveRecvPacketToBuffer(Z)Z
    .locals 8
    .param p1, "notifyFlag"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1356
    const/4 v6, 0x7

    const-string v7, "Falp#saveRecvPacketToBuffer[in]"

    invoke-static {v6, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1359
    invoke-static {}, Lcom/felicanetworks/falp/apldatamodel/DataFromChipToApl;->getInstance()Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;

    move-result-object v0

    .line 1360
    .local v0, "buf":Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;
    invoke-virtual {v0, v5}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->startEdit(I)I

    move-result v3

    .line 1361
    .local v3, "ret":I
    if-eqz v3, :cond_1

    .line 1362
    const-string v6, "\tbuffer write error."

    invoke-static {v5, v6}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1363
    const/4 v5, 0x0

    .line 1401
    :cond_0
    :goto_0
    return v5

    .line 1368
    :cond_1
    iget-object v6, p0, Lcom/felicanetworks/falp/Falp;->mRecvingPackets:Ljava/util/ArrayList;

    invoke-static {}, Lcom/felicanetworks/falp/DataPacketComparator;->getInstance()Lcom/felicanetworks/falp/DataPacketComparator;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1370
    iget-object v6, p0, Lcom/felicanetworks/falp/Falp;->mRecvingPackets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1371
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1387
    invoke-virtual {v0}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->commit()I

    .line 1390
    iget-object v6, p0, Lcom/felicanetworks/falp/Falp;->mRecvingPackets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1396
    if-eqz p1, :cond_0

    .line 1397
    invoke-virtual {p0}, Lcom/felicanetworks/falp/Falp;->recvDataNotify()V

    goto :goto_0

    .line 1372
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;

    .line 1374
    .local v2, "p":Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;
    invoke-virtual {v2}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getPayload()[B

    move-result-object v6

    invoke-virtual {v2}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getPayloadLen()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->write([BI)I

    move-result v4

    .line 1376
    .local v4, "writeResult":I
    invoke-virtual {v2}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getPayloadLen()I

    move-result v6

    if-eq v4, v6, :cond_4

    .line 1377
    const/4 v6, 0x6

    const-string v7, "\tbuf.write(p.getPayload()) is failed!"

    invoke-static {v6, v7}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1380
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1382
    invoke-virtual {v2}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getSequenceId()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/felicanetworks/falp/Falp;->mRcvSeqNum:I

    goto :goto_1
.end method

.method public sendData([B)I
    .locals 2
    .param p1, "sendbyte"    # [B

    .prologue
    .line 584
    const/4 v0, 0x7

    const-string v1, "Falp#sendData [in]"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    invoke-virtual {v0, p1}, Lcom/felicanetworks/falp/state/FalpState;->sendData([B)I

    move-result v0

    return v0
.end method

.method public sendDataPrepared(I)V
    .locals 2
    .param p1, "empty"    # I

    .prologue
    .line 2343
    iget-object v1, p0, Lcom/felicanetworks/falp/Falp;->mAppListener:Lcom/felicanetworks/falp/FalpListener;

    if-eqz v1, :cond_0

    .line 2345
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/falp/Falp;->mAppListener:Lcom/felicanetworks/falp/FalpListener;

    invoke-interface {v1, p1}, Lcom/felicanetworks/falp/FalpListener;->sendDataPrepared(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2350
    :cond_0
    :goto_0
    return-void

    .line 2346
    :catch_0
    move-exception v0

    .line 2347
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/felicanetworks/falp/Falp;->cancel()I

    goto :goto_0
.end method

.method public sendRetryCountInit()V
    .locals 1

    .prologue
    .line 2164
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/falp/Falp;->mRetryToSendCount:I

    .line 2165
    return-void
.end method

.method public sendRetryCountOverCheck()Z
    .locals 2

    .prologue
    .line 2183
    iget v0, p0, Lcom/felicanetworks/falp/Falp;->mRetryToSendCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendRetryCountUp()V
    .locals 1

    .prologue
    .line 2172
    iget v0, p0, Lcom/felicanetworks/falp/Falp;->mRetryToSendCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/felicanetworks/falp/Falp;->mRetryToSendCount:I

    .line 2173
    return-void
.end method

.method public setEndRequestFlag()V
    .locals 1

    .prologue
    .line 2242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felicanetworks/falp/Falp;->mNowTerminating:Z

    .line 2243
    return-void
.end method

.method public setFwReason(S)V
    .locals 0
    .param p1, "reason"    # S

    .prologue
    .line 2096
    iput-short p1, p0, Lcom/felicanetworks/falp/Falp;->mFwKind:S

    .line 2097
    return-void
.end method

.method public setPacketReciveState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 2224
    iput-boolean p1, p0, Lcom/felicanetworks/falp/Falp;->mAllowToRecvData:Z

    .line 2225
    return-void
.end method

.method public setRecvData(Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;)I
    .locals 11
    .param p1, "packet"    # Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;

    .prologue
    const/4 v6, 0x0

    const v10, 0xffff

    const/16 v5, -0x9

    const/4 v9, 0x2

    .line 1417
    const/4 v7, 0x7

    const-string v8, "Falp#setRecvData[in]"

    invoke-static {v7, v8}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1420
    invoke-virtual {p1}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getSequenceId()I

    move-result v0

    .line 1422
    .local v0, "currentRecvSequenceId":I
    if-gt v0, v10, :cond_0

    .line 1423
    if-gez v0, :cond_1

    .line 1424
    :cond_0
    const-string v6, " out of \'short\' parameter\'s scope."

    invoke-static {v9, v6}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1478
    :goto_0
    return v5

    .line 1430
    :cond_1
    iget v7, p0, Lcom/felicanetworks/falp/Falp;->mRcvSeqNum:I

    iget-object v8, p0, Lcom/felicanetworks/falp/Falp;->mRecvingPackets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v7, v8

    if-ge v7, v10, :cond_3

    .line 1431
    iget v7, p0, Lcom/felicanetworks/falp/Falp;->mRcvSeqNum:I

    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxReceivePacketSequence()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v2, v7, -0x1

    .line 1432
    .local v2, "maxSeqNum":I
    iget v7, p0, Lcom/felicanetworks/falp/Falp;->mRcvSeqNum:I

    if-lt v0, v7, :cond_2

    if-le v0, v2, :cond_4

    .line 1433
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " out of expected sequence no.(not overflow):"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":max:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/felicanetworks/falp/Falp;->mRcvSeqNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1433
    invoke-static {v9, v6}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    goto :goto_0

    .line 1444
    .end local v2    # "maxSeqNum":I
    :cond_3
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxReceivePacketSequence()I

    move-result v7

    .line 1445
    iget v8, p0, Lcom/felicanetworks/falp/Falp;->mRcvSeqNum:I

    add-int/lit8 v8, v8, -0x1

    sub-int v8, v10, v8

    .line 1444
    sub-int v2, v7, v8

    .line 1447
    .restart local v2    # "maxSeqNum":I
    iget v7, p0, Lcom/felicanetworks/falp/Falp;->mRcvSeqNum:I

    if-gt v0, v7, :cond_4

    .line 1449
    if-lt v0, v2, :cond_4

    .line 1453
    const-string v6, " out of expected sequence no.(overflow)"

    invoke-static {v9, v6}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    goto :goto_0

    .line 1459
    :cond_4
    iget-object v7, p0, Lcom/felicanetworks/falp/Falp;->mRecvingPackets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1460
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;>;"
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1470
    iget-object v7, p0, Lcom/felicanetworks/falp/Falp;->mRecvingPackets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxReceivePacketSequence()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-gt v7, v8, :cond_7

    .line 1472
    iget-object v5, p0, Lcom/felicanetworks/falp/Falp;->mRecvingPacketsData:[Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;

    iget-object v7, p0, Lcom/felicanetworks/falp/Falp;->mRecvingPackets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    aget-object v4, v5, v7

    .line 1473
    .local v4, "wrk":Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;
    invoke-virtual {p1}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getPayload()[B

    move-result-object v5

    invoke-virtual {p1}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getPayloadLen()I

    move-result v7

    invoke-virtual {p1}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getSequenceId()I

    move-result v8

    invoke-virtual {v4, v5, v7, v8}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->setInformation([BII)V

    .line 1474
    iget-object v5, p0, Lcom/felicanetworks/falp/Falp;->mRecvingPackets:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v6

    .line 1475
    goto/16 :goto_0

    .line 1461
    .end local v4    # "wrk":Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;

    .line 1463
    .local v3, "p":Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;
    invoke-virtual {v3}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getSequenceId()I

    move-result v7

    invoke-virtual {p1}, Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;->getSequenceId()I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 1464
    const-string v5, "    received a same sequence id packet."

    invoke-static {v9, v5}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    move v5, v6

    .line 1465
    goto/16 :goto_0

    .line 1477
    .end local v3    # "p":Lcom/felicanetworks/falp/packet/DataTransmitPacketBase;
    :cond_7
    const-string v6, " out of expected packet size."

    invoke-static {v9, v6}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setResendRequestSeqno(I)V
    .locals 0
    .param p1, "seqno"    # I

    .prologue
    .line 2121
    iput p1, p0, Lcom/felicanetworks/falp/Falp;->mRetryReqSequenceNo:I

    .line 2122
    return-void
.end method

.method public setResendResponseSeqno(I)V
    .locals 0
    .param p1, "seqno"    # I

    .prologue
    .line 2142
    iput p1, p0, Lcom/felicanetworks/falp/Falp;->mRetrySequenceNo:I

    .line 2143
    return-void
.end method

.method public setState(Lcom/felicanetworks/falp/state/FalpState;I)I
    .locals 4
    .param p1, "state"    # Lcom/felicanetworks/falp/state/FalpState;
    .param p2, "param"    # I

    .prologue
    .line 1014
    const/4 v1, 0x0

    .line 1015
    .local v1, "ret":I
    instance-of v2, p1, Lcom/felicanetworks/falp/state/IdleState;

    if-eqz v2, :cond_2

    .line 1017
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "----------[Falp#setState] Falp end.-----------"

    invoke-static {v2, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1018
    invoke-static {}, Lcom/felicanetworks/falp/util/FalpLog;->commitLog()V

    .line 1019
    iget-object v2, p0, Lcom/felicanetworks/falp/Falp;->mAnotherThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/felicanetworks/falp/Falp;->mRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 1020
    iget-object v2, p0, Lcom/felicanetworks/falp/Falp;->mAnotherThreadHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/felicanetworks/falp/Falp;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1022
    :cond_0
    iget-object v2, p0, Lcom/felicanetworks/falp/Falp;->mLocalPowerManager:Lcom/felicanetworks/felica/util/LocalPowerManager;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/util/LocalPowerManager;->stopToKeepCpuPowerOn()V

    .line 1023
    invoke-static {}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->getInstance()Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketSender;->stopToReceive()V

    .line 1024
    invoke-static {}, Lcom/felicanetworks/falp/FalpService;->clearPidUid()V

    .line 1025
    invoke-static {}, Lcom/felicanetworks/mfc/Felica;->getInstance()Lcom/felicanetworks/mfc/Felica;

    move-result-object v2

    invoke-virtual {v2}, Lcom/felicanetworks/mfc/Felica;->completeFalp()Z

    move-result v0

    .line 1026
    .local v0, "b":Z
    if-nez v0, :cond_1

    .line 1027
    const/16 v1, -0xa

    .line 1029
    :cond_1
    iget-object v2, p0, Lcom/felicanetworks/falp/Falp;->mAppListener:Lcom/felicanetworks/falp/FalpListener;

    if-nez v2, :cond_2

    .line 1032
    invoke-virtual {p0}, Lcom/felicanetworks/falp/Falp;->stopService()V
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    .end local v0    # "b":Z
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    .line 1040
    invoke-virtual {p1, p2}, Lcom/felicanetworks/falp/state/FalpState;->changeState(I)V

    .line 1041
    return v1

    .line 1034
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public startInitiator(Lcom/felicanetworks/falp/FalpListener;IIIILandroid/content/Context;[B)I
    .locals 7
    .param p1, "listener"    # Lcom/felicanetworks/falp/FalpListener;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "actualPid"    # I
    .param p5, "actualUid"    # I
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "appCode"    # [B

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 444
    const/4 v4, 0x7

    const-string v5, "Falp#startInitiator [in]"

    invoke-static {v4, v5}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 448
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/mfc/Felica;->getInstance()Lcom/felicanetworks/mfc/Felica;

    move-result-object v4

    invoke-virtual {v4}, Lcom/felicanetworks/mfc/Felica;->checkNotAdhoc()V
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    invoke-static {}, Lcom/felicanetworks/falp/util/FalpLog;->startLog()V

    .line 458
    const-string v4, "----------INITIATOR START-----------"

    invoke-static {v3, v4}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 461
    invoke-virtual {p0, p6}, Lcom/felicanetworks/falp/Falp;->init(Landroid/content/Context;)V

    .line 462
    iget-object v4, p0, Lcom/felicanetworks/falp/Falp;->mHandler:Landroid/os/Handler;

    if-nez v4, :cond_1

    .line 463
    const-string v3, "\tmHandler is null."

    invoke-static {v6, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 464
    const/4 v0, -0x2

    .line 550
    :cond_0
    :goto_0
    return v0

    .line 449
    :catch_0
    move-exception v1

    .line 450
    .local v1, "e":Lcom/felicanetworks/mfc/FelicaException;
    const-string v3, "\tcheckNotAdhoc() failed."

    invoke-static {v6, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 451
    invoke-static {}, Lcom/felicanetworks/mfc/Felica;->getInstance()Lcom/felicanetworks/mfc/Felica;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/felicanetworks/mfc/Felica;->isSameFalpUser(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    const/4 v0, -0x6

    goto :goto_0

    .line 466
    .end local v1    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :cond_1
    iget-object v4, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    invoke-static {v4, p4, p5}, Lcom/felicanetworks/felica/util/CommonSecurity;->getMfcCallerCandidate(Landroid/content/Context;II)[Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "falpCaller":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-eqz v4, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/felicanetworks/falp/Falp;->getMyParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v4

    invoke-virtual {v4, p7}, Lcom/felicanetworks/falp/HandshakeParameter;->setAppid([B)V

    .line 471
    invoke-virtual {p0}, Lcom/felicanetworks/falp/Falp;->getMyParams()Lcom/felicanetworks/falp/HandshakeParameter;

    move-result-object v4

    array-length v5, p7

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Lcom/felicanetworks/falp/HandshakeParameter;->setAppid_len(C)V

    .line 473
    iput-object p1, p0, Lcom/felicanetworks/falp/Falp;->mAppListener:Lcom/felicanetworks/falp/FalpListener;

    .line 476
    iget-object v4, p0, Lcom/felicanetworks/falp/Falp;->mLocalPowerManager:Lcom/felicanetworks/felica/util/LocalPowerManager;

    iget-object v5, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    const/16 v6, 0x2af8

    invoke-virtual {v4, v5, v6}, Lcom/felicanetworks/felica/util/LocalPowerManager;->startTokeepCpuPowerOn(Landroid/content/Context;I)V

    .line 479
    invoke-direct {p0, v2}, Lcom/felicanetworks/falp/Falp;->checkAppCode([Ljava/lang/String;)I

    move-result v0

    .line 480
    .local v0, "checkAppCode":I
    if-nez v0, :cond_0

    .line 485
    new-instance v4, Landroid/os/Handler;

    sget-object v5, Lcom/felicanetworks/falp/Falp;->mRecvNotifyOrPollingThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/felicanetworks/falp/Falp;->mAnotherThreadHandler:Landroid/os/Handler;

    .line 486
    new-instance v4, Lcom/felicanetworks/falp/Falp$1;

    invoke-direct {v4, p0, p2, p3}, Lcom/felicanetworks/falp/Falp$1;-><init>(Lcom/felicanetworks/falp/Falp;II)V

    iput-object v4, p0, Lcom/felicanetworks/falp/Falp;->mRunnable:Ljava/lang/Runnable;

    .line 548
    iget-object v4, p0, Lcom/felicanetworks/falp/Falp;->mAnotherThreadHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/felicanetworks/falp/Falp;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v3

    .line 550
    goto :goto_0
.end method

.method public startMicroTimer(J)V
    .locals 3
    .param p1, "timeout"    # J

    .prologue
    .line 1094
    const/4 v0, 0x7

    const-string v1, "Falp#startMicroTimer [in]"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1097
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mTimeoutHandler:Lcom/felicanetworks/falp/Falp$TimeoutHandler;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/Falp$TimeoutHandler;->cancel()V

    .line 1100
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mTimeoutHandler:Lcom/felicanetworks/falp/Falp$TimeoutHandler;

    invoke-virtual {v0, p1, p2}, Lcom/felicanetworks/falp/Falp$TimeoutHandler;->setMicroTimer(J)V

    .line 1103
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mTimeoutHandler:Lcom/felicanetworks/falp/Falp$TimeoutHandler;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/Falp$TimeoutHandler;->start()V

    .line 1104
    return-void
.end method

.method public startMiliTimer(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 1074
    const/4 v0, 0x7

    const-string v1, "Falp#startMiliTimer [in]"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1077
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mTimeoutHandler:Lcom/felicanetworks/falp/Falp$TimeoutHandler;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/Falp$TimeoutHandler;->cancel()V

    .line 1080
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mTimeoutHandler:Lcom/felicanetworks/falp/Falp$TimeoutHandler;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/felicanetworks/falp/Falp$TimeoutHandler;->setMiliTimer(J)V

    .line 1083
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mTimeoutHandler:Lcom/felicanetworks/falp/Falp$TimeoutHandler;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/Falp$TimeoutHandler;->start()V

    .line 1084
    return-void
.end method

.method public startTargetFalp(I)I
    .locals 3
    .param p1, "sessionId"    # I

    .prologue
    .line 562
    const/4 v1, 0x7

    const-string v2, "Falp#recvFalpReq [in]"

    invoke-static {v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 563
    iget-object v1, p0, Lcom/felicanetworks/falp/Falp;->mFalpParam:Lcom/felicanetworks/falp/FalpProtocolParameter;

    int-to-short v2, p1

    invoke-virtual {v1, v2}, Lcom/felicanetworks/falp/FalpProtocolParameter;->setSession_id(S)V

    .line 566
    invoke-static {}, Lcom/felicanetworks/falp/util/FalpLog;->startLog()V

    .line 567
    const/4 v1, 0x0

    const-string v2, "----------TARGET START-----------"

    invoke-static {v1, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 568
    iget-object v1, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    invoke-virtual {v1, p0}, Lcom/felicanetworks/falp/state/FalpState;->startTargetFalp(Lcom/felicanetworks/falp/state/StateListener;)I

    move-result v0

    .line 570
    .local v0, "ret":I
    return v0
.end method

.method public stopService()V
    .locals 2

    .prologue
    .line 1050
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.felicanetworks.falp.ACTION_INITIATOR_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1051
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.felicanetworks.falp.CATEGORY_INITIATOR_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1052
    iget-object v1, p0, Lcom/felicanetworks/falp/Falp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1053
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .prologue
    .line 1111
    const/4 v0, 0x7

    const-string v1, "Falp#stopTimer [in]"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 1113
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mTimeoutHandler:Lcom/felicanetworks/falp/Falp$TimeoutHandler;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/Falp$TimeoutHandler;->cancel()V

    .line 1114
    return-void
.end method

.method public terminate()I
    .locals 2

    .prologue
    .line 595
    const/4 v0, 0x7

    const-string v1, "Falp#terminate [in]"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/felicanetworks/falp/Falp;->mState:Lcom/felicanetworks/falp/state/FalpState;

    invoke-virtual {v0, p0}, Lcom/felicanetworks/falp/state/FalpState;->terminateFalp(Lcom/felicanetworks/falp/state/StateListener;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized useShutdownListener(I)V
    .locals 4
    .param p1, "shutdownType"    # I

    .prologue
    .line 2419
    monitor-enter p0

    const/4 v0, 0x0

    .line 2421
    .local v0, "chipState":I
    :try_start_0
    invoke-static {}, Lcom/felicanetworks/falp/state/IdleState;->getInstance()Lcom/felicanetworks/falp/state/IdleState;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/felicanetworks/falp/Falp;->setState(Lcom/felicanetworks/falp/state/FalpState;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2436
    :try_start_1
    iget-object v2, p0, Lcom/felicanetworks/falp/Falp;->mAppListener:Lcom/felicanetworks/falp/FalpListener;

    if-eqz v2, :cond_0

    .line 2437
    iget-object v2, p0, Lcom/felicanetworks/falp/Falp;->mAppListener:Lcom/felicanetworks/falp/FalpListener;

    invoke-interface {v2, p1, v0}, Lcom/felicanetworks/falp/FalpListener;->shutdownFalpCompleted(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2444
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2439
    :catch_0
    move-exception v1

    .line 2440
    .local v1, "rE":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2442
    invoke-virtual {p0}, Lcom/felicanetworks/falp/Falp;->stopService()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2419
    .end local v1    # "rE":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
