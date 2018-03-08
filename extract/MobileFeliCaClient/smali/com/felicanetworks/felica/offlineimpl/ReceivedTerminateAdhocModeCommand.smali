.class public Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;
.super Lcom/felicanetworks/felica/offlineimpl/FalpCommand;
.source "ReceivedTerminateAdhocModeCommand.java"


# static fields
.field private static final CODE:B = -0x52t

.field public static final FALP_CMDCODE_TERMINATEADHOC:B = -0x52t

.field private static final SESSION_ID_LENGTH:I = 0x2

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;


# instance fields
.field private mDataLen:I

.field private mSendData:[B

.field private sessionId:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/FalpCommand;-><init>()V

    .line 49
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxReceiveSize()S

    move-result v0

    .line 50
    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;->mSendData:[B

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;->mDataLen:I

    .line 64
    return-void
.end method

.method public static getInstance()Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;

    return-object v0
.end method


# virtual methods
.method public doSet(Lcom/felicanetworks/felica/util/ByteBuffer;)V
    .locals 8
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/FalpException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 105
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxReceiveSize()S

    move-result v2

    add-int/lit8 v1, v2, 0x5

    .line 107
    .local v1, "maxSendSize":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 108
    :cond_0
    const-string v2, "SendDataSize Error"

    invoke-static {v6, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 109
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v2, v6}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v2

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;->sessionId:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;->sessionId:[B

    array-length v2, v2

    if-eq v2, v7, :cond_3

    .line 113
    :cond_2
    const-string v2, "SessionId Length Error"

    invoke-static {v6, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 114
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v2, v6}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v2

    .line 118
    :cond_3
    invoke-virtual {p1, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v2

    const/16 v3, -0x52

    if-eq v2, v3, :cond_4

    .line 119
    const-string v2, "Code Error"

    invoke-static {v6, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 120
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v2, v6}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v2

    .line 123
    :cond_4
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;->sessionId:[B

    invoke-virtual {p1, v6, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(I[B)Z

    move-result v2

    if-nez v2, :cond_5

    .line 124
    const-string v2, "Session Id Error"

    invoke-static {v6, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 125
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v2, v6}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v2

    .line 129
    :cond_5
    invoke-virtual {p1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;->mDataLen:I

    .line 131
    const/4 v2, 0x5

    :try_start_0
    iget-object v3, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;->mSendData:[B

    const/4 v4, 0x0

    iget v5, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;->mDataLen:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[BII)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "get Payload Error"

    invoke-static {v6, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 134
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v2, v7}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v2
.end method

.method public getSendData()[B
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;->mSendData:[B

    return-object v0
.end method

.method getSessionId()[B
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;->sessionId:[B

    return-object v0
.end method

.method public getmDataLen()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;->mDataLen:I

    return v0
.end method

.method public setSendData([B)V
    .locals 0
    .param p1, "sendData"    # [B

    .prologue
    .line 181
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;->mSendData:[B

    .line 182
    return-void
.end method

.method public setSessionId([B)V
    .locals 0
    .param p1, "sessionId"    # [B

    .prologue
    .line 158
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;->sessionId:[B

    .line 159
    return-void
.end method

.method public setmDataLen(I)V
    .locals 0
    .param p1, "mDataLen"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTerminateAdhocModeCommand;->mDataLen:I

    .line 204
    return-void
.end method
