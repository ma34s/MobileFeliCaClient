.class public Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;
.super Ljava/lang/Object;
.source "FalpPacketAnalyzer.java"


# static fields
.field private static final FALP_PACKET_HANDSHAKEREQ_PAYLOAD_MIN:I = 0x30

.field private static final FALP_PACKET_HANDSHAKERES_PAYLOAD_MIN:I = 0x2a

.field private static mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

.field private static mConvertAPacket:Lcom/felicanetworks/falp/packet/ConvertAPacket;

.field private static mConvertBPacket:Lcom/felicanetworks/falp/packet/ConvertBPacket;

.field private static mDataSendPacket:Lcom/felicanetworks/falp/packet/DataSendPacket;

.field private static mHandshakeReqPacket:Lcom/felicanetworks/falp/packet/HandshakeReqPacket;

.field private static mHandshakeResPacket:Lcom/felicanetworks/falp/packet/HandshakeResPacket;

.field private static mPrevReceivedPacketClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mPrevReceivedPacketSize:I

.field private static mPrevReceivedSequenceNum:I

.field private static mRetryReqPacket:Lcom/felicanetworks/falp/packet/RetryReqPacket;

.field private static mRetryResPacket:Lcom/felicanetworks/falp/packet/RetryResPacket;

.field private static mTerminateAdhocPacket:Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getDfalpMaxFalpRcevSize()S

    move-result v1

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    sput-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    .line 41
    new-instance v0, Lcom/felicanetworks/falp/packet/ConvertAPacket;

    invoke-direct {v0}, Lcom/felicanetworks/falp/packet/ConvertAPacket;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mConvertAPacket:Lcom/felicanetworks/falp/packet/ConvertAPacket;

    .line 43
    new-instance v0, Lcom/felicanetworks/falp/packet/ConvertBPacket;

    invoke-direct {v0}, Lcom/felicanetworks/falp/packet/ConvertBPacket;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mConvertBPacket:Lcom/felicanetworks/falp/packet/ConvertBPacket;

    .line 45
    new-instance v0, Lcom/felicanetworks/falp/packet/DataSendPacket;

    invoke-direct {v0}, Lcom/felicanetworks/falp/packet/DataSendPacket;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mDataSendPacket:Lcom/felicanetworks/falp/packet/DataSendPacket;

    .line 47
    new-instance v0, Lcom/felicanetworks/falp/packet/RetryReqPacket;

    invoke-direct {v0}, Lcom/felicanetworks/falp/packet/RetryReqPacket;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mRetryReqPacket:Lcom/felicanetworks/falp/packet/RetryReqPacket;

    .line 49
    new-instance v0, Lcom/felicanetworks/falp/packet/RetryResPacket;

    invoke-direct {v0}, Lcom/felicanetworks/falp/packet/RetryResPacket;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mRetryResPacket:Lcom/felicanetworks/falp/packet/RetryResPacket;

    .line 51
    new-instance v0, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;

    invoke-direct {v0}, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mHandshakeReqPacket:Lcom/felicanetworks/falp/packet/HandshakeReqPacket;

    .line 53
    new-instance v0, Lcom/felicanetworks/falp/packet/HandshakeResPacket;

    invoke-direct {v0}, Lcom/felicanetworks/falp/packet/HandshakeResPacket;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mHandshakeResPacket:Lcom/felicanetworks/falp/packet/HandshakeResPacket;

    .line 55
    new-instance v0, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;

    invoke-direct {v0}, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mTerminateAdhocPacket:Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;

    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mPrevReceivedPacketSize:I

    .line 70
    const/4 v0, -0x1

    sput v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mPrevReceivedSequenceNum:I

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getConvertAPacket(Lcom/felicanetworks/felica/util/ByteBuffer;I)Lcom/felicanetworks/falp/packet/ConvertAPacket;
    .locals 2
    .param p0, "payload"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p1, "len"    # I

    .prologue
    .line 411
    sget-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mConvertAPacket:Lcom/felicanetworks/falp/packet/ConvertAPacket;

    .line 412
    .local v0, "packet":Lcom/felicanetworks/falp/packet/ConvertAPacket;
    invoke-virtual {p0}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/felicanetworks/falp/packet/ConvertAPacket;->setInformation([BI)V

    .line 413
    return-object v0
.end method

.method private static getConvertBPacket(Lcom/felicanetworks/felica/util/ByteBuffer;I)Lcom/felicanetworks/falp/packet/ConvertBPacket;
    .locals 2
    .param p0, "payload"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p1, "len"    # I

    .prologue
    .line 425
    sget-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mConvertBPacket:Lcom/felicanetworks/falp/packet/ConvertBPacket;

    .line 426
    .local v0, "packet":Lcom/felicanetworks/falp/packet/ConvertBPacket;
    invoke-virtual {p0}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/felicanetworks/falp/packet/ConvertBPacket;->setInformation([BI)V

    .line 427
    return-object v0
.end method

.method private static getHandshakeReqPacket(Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/falp/packet/HandshakeReqPacket;
    .locals 1
    .param p0, "payload"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/FalpException;
        }
    .end annotation

    .prologue
    .line 368
    sget-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mHandshakeReqPacket:Lcom/felicanetworks/falp/packet/HandshakeReqPacket;

    .line 369
    .local v0, "packet":Lcom/felicanetworks/falp/packet/HandshakeReqPacket;
    invoke-virtual {v0, p0}, Lcom/felicanetworks/falp/packet/HandshakeReqPacket;->setInformation(Lcom/felicanetworks/felica/util/ByteBuffer;)V

    .line 370
    return-object v0
.end method

.method private static getHandshakeResPacket(Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/falp/packet/HandshakeResPacket;
    .locals 1
    .param p0, "payload"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/FalpException;
        }
    .end annotation

    .prologue
    .line 383
    sget-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mHandshakeResPacket:Lcom/felicanetworks/falp/packet/HandshakeResPacket;

    .line 384
    .local v0, "packet":Lcom/felicanetworks/falp/packet/HandshakeResPacket;
    invoke-virtual {v0, p0}, Lcom/felicanetworks/falp/packet/HandshakeResPacket;->setInformation(Lcom/felicanetworks/felica/util/ByteBuffer;)V

    .line 385
    return-object v0
.end method

.method public static getPrevReceivedPacketSize()I
    .locals 1

    .prologue
    .line 347
    sget v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mPrevReceivedPacketSize:I

    return v0
.end method

.method public static getPrevReceivedSequenceNum()I
    .locals 1

    .prologue
    .line 355
    sget v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mPrevReceivedSequenceNum:I

    return v0
.end method

.method private static getRetryReqPacket(Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/falp/packet/RetryReqPacket;
    .locals 2
    .param p0, "payload"    # Lcom/felicanetworks/felica/util/ByteBuffer;

    .prologue
    .line 439
    sget-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mRetryReqPacket:Lcom/felicanetworks/falp/packet/RetryReqPacket;

    .line 440
    .local v0, "packet":Lcom/felicanetworks/falp/packet/RetryReqPacket;
    invoke-virtual {p0}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/falp/packet/RetryReqPacket;->setInformation([B)V

    .line 441
    return-object v0
.end method

.method private static getRetryResPacket(Lcom/felicanetworks/felica/util/ByteBuffer;I)Lcom/felicanetworks/falp/packet/RetryResPacket;
    .locals 2
    .param p0, "payload"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p1, "len"    # I

    .prologue
    .line 453
    sget-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mRetryResPacket:Lcom/felicanetworks/falp/packet/RetryResPacket;

    .line 454
    .local v0, "packet":Lcom/felicanetworks/falp/packet/RetryResPacket;
    invoke-virtual {p0}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/felicanetworks/falp/packet/RetryResPacket;->setInformation([BI)V

    .line 455
    return-object v0
.end method

.method private static getSendDataPacket(Lcom/felicanetworks/felica/util/ByteBuffer;I)Lcom/felicanetworks/falp/packet/DataSendPacket;
    .locals 2
    .param p0, "payload"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p1, "len"    # I

    .prologue
    .line 397
    sget-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mDataSendPacket:Lcom/felicanetworks/falp/packet/DataSendPacket;

    .line 398
    .local v0, "packet":Lcom/felicanetworks/falp/packet/DataSendPacket;
    invoke-virtual {p0}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/felicanetworks/falp/packet/DataSendPacket;->setInformation([BI)V

    .line 399
    return-object v0
.end method

.method private static getTerminateAdhocPacket(Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;
    .locals 6
    .param p0, "payload"    # Lcom/felicanetworks/felica/util/ByteBuffer;

    .prologue
    .line 469
    const/4 v2, -0x1

    .line 471
    .local v2, "terminateCode":S
    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {p0, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    long-to-int v3, v4

    int-to-short v2, v3

    .line 476
    sget-object v1, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mTerminateAdhocPacket:Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;

    .line 477
    .local v1, "packet":Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;
    invoke-virtual {v1, v2}, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;->setTerminateCode(S)V

    .line 479
    .end local v1    # "packet":Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;
    :goto_0
    return-object v1

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mPrevReceivedPacketSize:I

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mPrevReceivedPacketClass:Ljava/lang/Class;

    .line 89
    const/4 v0, -0x1

    sput v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mPrevReceivedSequenceNum:I

    .line 90
    return-void
.end method

.method public static isSameKine(Lcom/felicanetworks/falp/packet/TransmitPacketBase;)Z
    .locals 2
    .param p0, "packet"    # Lcom/felicanetworks/falp/packet/TransmitPacketBase;

    .prologue
    .line 339
    sget-object v0, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mPrevReceivedPacketClass:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static recvTerminateAdhocDataRes([BILcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;)V
    .locals 6
    .param p0, "packet"    # [B
    .param p1, "len"    # I
    .param p2, "listener"    # Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;

    .prologue
    const/4 v5, 0x0

    .line 286
    const/4 v3, 0x7

    const-string v4, "FalpPacketAnalyzer#recvTerminateAdhocDataRes()"

    invoke-static {v3, v4}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 288
    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    add-int/lit8 v1, p1, -0x3

    .line 297
    .local v1, "size":I
    if-gez v1, :cond_2

    .line 298
    invoke-interface {p2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;->onRecvOtherPacket()V

    goto :goto_0

    .line 302
    :cond_2
    aget-byte v0, p0, v5

    .line 305
    .local v0, "packetCode":I
    sget-object v3, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v3, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 306
    sget-object v3, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v4, 0x3

    invoke-virtual {v3, p0, v4, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([BII)V

    .line 309
    packed-switch v0, :pswitch_data_0

    .line 326
    :cond_3
    const/4 v3, 0x1

    const-string v4, "    OTHER PACKET!"

    invoke-static {v3, v4}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 327
    invoke-interface {p2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;->onRecvOtherPacket()V

    goto :goto_0

    .line 311
    :pswitch_0
    const-string v3, "[CMD]....<- DFALP_PKTCODE_FAREWELL"

    invoke-static {v5, v3}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 313
    sget-object v3, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-static {v3}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->getTerminateAdhocPacket(Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;

    move-result-object v2

    .line 314
    .local v2, "terminateAdhoc":Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;
    if-eqz v2, :cond_3

    .line 316
    const-string v3, "[CMD]code:"

    invoke-virtual {v2}, Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;->getTerminateCode()S

    move-result v4

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 317
    invoke-interface {p2, v2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;->onRecvTerminateAdhoc(Lcom/felicanetworks/falp/packet/TerminateAdhocPacket;)V

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public static recvTransmitDataRes([BILcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;)V
    .locals 16
    .param p0, "packet"    # [B
    .param p1, "len"    # I
    .param p2, "listener"    # Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;

    .prologue
    .line 108
    const/4 v13, 0x7

    const-string v14, "FalpPacketAnalyzer#recvTransmitDataRes()"

    invoke-static {v13, v14}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 110
    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    sput p1, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mPrevReceivedPacketSize:I

    .line 118
    sget-object v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 119
    sget-object v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v14, 0x0

    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v14, v15}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([BII)V

    .line 122
    add-int/lit8 v12, p1, -0x3

    .line 125
    .local v12, "size":I
    if-gez v12, :cond_2

    .line 126
    const/4 v13, 0x1

    const-string v14, "    TOO SHORT PACKET!"

    invoke-static {v13, v14}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 127
    invoke-interface/range {p2 .. p2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;->onRecvOtherPacket()V

    goto :goto_0

    .line 132
    :cond_2
    sget-object v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v7

    .line 135
    .local v7, "packetCode":I
    sget-object v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v14, 0x1

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v14

    long-to-int v11, v14

    .line 139
    .local v11, "seqNum":I
    sget-object v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 140
    sget-object v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v14, v12}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([BII)V

    .line 143
    packed-switch v7, :pswitch_data_0

    .line 264
    :cond_3
    const/4 v13, 0x1

    const-string v14, "    OTHER PACKET!"

    invoke-static {v13, v14}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 265
    invoke-interface/range {p2 .. p2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;->onRecvOtherPacket()V

    goto :goto_0

    .line 145
    :pswitch_0
    const/4 v13, 0x0

    const-string v14, "[CMD]....<- DFALP_PKTCODE_HANDSHAKE:"

    invoke-static {v13, v14, v11}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 148
    sget-object v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v13}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v13

    const/16 v14, 0x2d

    if-ge v13, v14, :cond_4

    .line 149
    invoke-interface/range {p2 .. p2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;->onRecvPayLoadErrPacket()V

    goto :goto_0

    .line 155
    :cond_4
    :try_start_0
    sget-object v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-static {v13}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->getHandshakeReqPacket(Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/falp/packet/HandshakeReqPacket;
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/FalpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 166
    .local v5, "handshake":Lcom/felicanetworks/falp/packet/HandshakeReqPacket;
    if-eqz v5, :cond_3

    .line 167
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;->onRecvHandshakeReq(Lcom/felicanetworks/falp/packet/HandshakeReqPacket;)V

    .line 168
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sput-object v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mPrevReceivedPacketClass:Ljava/lang/Class;

    goto :goto_0

    .line 156
    .end local v5    # "handshake":Lcom/felicanetworks/falp/packet/HandshakeReqPacket;
    :catch_0
    move-exception v4

    .line 157
    .local v4, "e":Lcom/felicanetworks/felica/offlineimpl/FalpException;
    invoke-virtual {v4}, Lcom/felicanetworks/felica/offlineimpl/FalpException;->getType()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_5

    .line 158
    invoke-interface/range {p2 .. p2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;->onRecvAppCodeErrPacket()V

    goto :goto_0

    .line 160
    :cond_5
    invoke-interface/range {p2 .. p2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;->onRecvPayLoadErrPacket()V

    goto/16 :goto_0

    .line 173
    .end local v4    # "e":Lcom/felicanetworks/felica/offlineimpl/FalpException;
    :pswitch_1
    const/4 v13, 0x0

    const-string v14, "[CMD]....<- DFALP_PKTCODE_HANDSHAKERES:"

    invoke-static {v13, v14, v11}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 176
    sget-object v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-virtual {v13}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v13

    const/16 v14, 0x27

    if-ge v13, v14, :cond_6

    .line 177
    invoke-interface/range {p2 .. p2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;->onRecvPayLoadErrPacket()V

    goto/16 :goto_0

    .line 184
    :cond_6
    :try_start_1
    sget-object v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-static {v13}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->getHandshakeResPacket(Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/falp/packet/HandshakeResPacket;
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/FalpException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 194
    .local v6, "handshakeres":Lcom/felicanetworks/falp/packet/HandshakeResPacket;
    if-eqz v6, :cond_3

    .line 195
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;->onRecvHandshakeRes(Lcom/felicanetworks/falp/packet/HandshakeResPacket;)V

    .line 196
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sput-object v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mPrevReceivedPacketClass:Ljava/lang/Class;

    goto/16 :goto_0

    .line 185
    .end local v6    # "handshakeres":Lcom/felicanetworks/falp/packet/HandshakeResPacket;
    :catch_1
    move-exception v4

    .line 186
    .restart local v4    # "e":Lcom/felicanetworks/felica/offlineimpl/FalpException;
    invoke-virtual {v4}, Lcom/felicanetworks/felica/offlineimpl/FalpException;->getType()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_7

    .line 187
    invoke-interface/range {p2 .. p2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;->onRecvAppCodeErrPacket()V

    goto/16 :goto_0

    .line 189
    :cond_7
    invoke-interface/range {p2 .. p2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;->onRecvPayLoadErrPacket()V

    goto/16 :goto_0

    .line 201
    .end local v4    # "e":Lcom/felicanetworks/felica/offlineimpl/FalpException;
    :pswitch_2
    const/4 v13, 0x0

    const-string v14, "[CMD]....<- DFALP_PKTCODE_SENDDATA:"

    invoke-static {v13, v14, v11}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 203
    sget-object v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-static {v13, v12}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->getSendDataPacket(Lcom/felicanetworks/felica/util/ByteBuffer;I)Lcom/felicanetworks/falp/packet/DataSendPacket;

    move-result-object v10

    .line 204
    .local v10, "senddata":Lcom/felicanetworks/falp/packet/DataSendPacket;
    if-eqz v10, :cond_3

    .line 205
    invoke-virtual {v10, v11}, Lcom/felicanetworks/falp/packet/DataSendPacket;->setSequenceId(I)V

    .line 206
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;->onRecvData(Lcom/felicanetworks/falp/packet/DataSendPacket;)V

    .line 207
    invoke-virtual {v10}, Lcom/felicanetworks/falp/packet/DataSendPacket;->getSequenceId()I

    move-result v13

    sput v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mPrevReceivedSequenceNum:I

    .line 208
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sput-object v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mPrevReceivedPacketClass:Ljava/lang/Class;

    goto/16 :goto_0

    .line 213
    .end local v10    # "senddata":Lcom/felicanetworks/falp/packet/DataSendPacket;
    :pswitch_3
    const/4 v13, 0x0

    const-string v14, "[CMD]....<- DFALP_PKTCODE_CONVERT_A:"

    invoke-static {v13, v14, v11}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 215
    sget-object v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-static {v13, v12}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->getConvertAPacket(Lcom/felicanetworks/felica/util/ByteBuffer;I)Lcom/felicanetworks/falp/packet/ConvertAPacket;

    move-result-object v2

    .line 216
    .local v2, "convertA":Lcom/felicanetworks/falp/packet/ConvertAPacket;
    if-eqz v2, :cond_3

    .line 217
    invoke-virtual {v2, v11}, Lcom/felicanetworks/falp/packet/ConvertAPacket;->setSequenceId(I)V

    .line 218
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;->onRecvTransitionA(Lcom/felicanetworks/falp/packet/ConvertAPacket;)V

    .line 219
    invoke-virtual {v2}, Lcom/felicanetworks/falp/packet/ConvertAPacket;->getSequenceId()I

    move-result v13

    sput v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mPrevReceivedSequenceNum:I

    .line 220
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sput-object v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mPrevReceivedPacketClass:Ljava/lang/Class;

    goto/16 :goto_0

    .line 225
    .end local v2    # "convertA":Lcom/felicanetworks/falp/packet/ConvertAPacket;
    :pswitch_4
    const/4 v13, 0x0

    const-string v14, "[CMD]....<- DFALP_PKTCODE_CONVERT_B:"

    invoke-static {v13, v14, v11}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 227
    sget-object v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-static {v13, v12}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->getConvertBPacket(Lcom/felicanetworks/felica/util/ByteBuffer;I)Lcom/felicanetworks/falp/packet/ConvertBPacket;

    move-result-object v3

    .line 228
    .local v3, "convertB":Lcom/felicanetworks/falp/packet/ConvertBPacket;
    if-eqz v3, :cond_3

    .line 229
    invoke-virtual {v3, v11}, Lcom/felicanetworks/falp/packet/ConvertBPacket;->setSequenceId(I)V

    .line 230
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;->onRecvTransitionB(Lcom/felicanetworks/falp/packet/ConvertBPacket;)V

    .line 231
    invoke-virtual {v3}, Lcom/felicanetworks/falp/packet/ConvertBPacket;->getSequenceId()I

    move-result v13

    sput v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mPrevReceivedSequenceNum:I

    .line 232
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sput-object v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mPrevReceivedPacketClass:Ljava/lang/Class;

    goto/16 :goto_0

    .line 237
    .end local v3    # "convertB":Lcom/felicanetworks/falp/packet/ConvertBPacket;
    :pswitch_5
    const/4 v13, 0x0

    const-string v14, "[CMD]....<- DFALP_PKTCODE_RESENDREQ:"

    invoke-static {v13, v14, v11}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 239
    sget-object v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-static {v13}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->getRetryReqPacket(Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/falp/packet/RetryReqPacket;

    move-result-object v8

    .line 240
    .local v8, "retryReq":Lcom/felicanetworks/falp/packet/RetryReqPacket;
    if-eqz v8, :cond_3

    .line 241
    invoke-virtual {v8, v11}, Lcom/felicanetworks/falp/packet/RetryReqPacket;->setSequenceId(I)V

    .line 242
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;->onRecvRetryReq(Lcom/felicanetworks/falp/packet/RetryReqPacket;)V

    .line 243
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sput-object v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mPrevReceivedPacketClass:Ljava/lang/Class;

    goto/16 :goto_0

    .line 248
    .end local v8    # "retryReq":Lcom/felicanetworks/falp/packet/RetryReqPacket;
    :pswitch_6
    const/4 v13, 0x0

    const-string v14, "[CMD]....<- DFALP_PKTCODE_RESEND:"

    invoke-static {v13, v14, v11}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;I)V

    .line 250
    sget-object v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mBuffer:Lcom/felicanetworks/felica/util/ByteBuffer;

    invoke-static {v13, v12}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->getRetryResPacket(Lcom/felicanetworks/felica/util/ByteBuffer;I)Lcom/felicanetworks/falp/packet/RetryResPacket;

    move-result-object v9

    .line 251
    .local v9, "retryRes":Lcom/felicanetworks/falp/packet/RetryResPacket;
    if-eqz v9, :cond_3

    .line 252
    invoke-virtual {v9, v11}, Lcom/felicanetworks/falp/packet/RetryResPacket;->setSequenceId(I)V

    .line 253
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketListener;->onRecvRetryRes(Lcom/felicanetworks/falp/packet/RetryResPacket;)V

    .line 254
    invoke-virtual {v9}, Lcom/felicanetworks/falp/packet/RetryResPacket;->getSequenceId()I

    move-result v13

    sput v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mPrevReceivedSequenceNum:I

    .line 255
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sput-object v13, Lcom/felicanetworks/falp/chipdatamodel/FalpPacketAnalyzer;->mPrevReceivedPacketClass:Ljava/lang/Class;

    goto/16 :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
