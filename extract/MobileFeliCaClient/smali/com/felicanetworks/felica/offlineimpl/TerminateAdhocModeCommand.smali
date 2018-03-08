.class public Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;
.super Lcom/felicanetworks/felica/offlineimpl/FalpCommand;
.source "TerminateAdhocModeCommand.java"


# static fields
.field private static final CODE:B = -0x52t

.field public static final FALP_CMDCODE_TERMINATEADHOC:B = -0x52t

.field private static final RESERVE:B = 0x0t

.field private static final SESSION_ID_LENGTH:I = 0x2

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;


# instance fields
.field private mDataLen:I

.field private sendData:[B

.field private sessionId:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;

    .line 50
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/FalpCommand;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;->mDataLen:I

    .line 69
    return-void
.end method

.method public static getInstance()Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;

    return-object v0
.end method


# virtual methods
.method doSet(Lcom/felicanetworks/felica/util/ByteBuffer;)V
    .locals 6
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/FalpException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 108
    if-nez p1, :cond_0

    .line 109
    const-string v2, "parameter error"

    invoke-static {v3, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 110
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v2

    .line 114
    :cond_0
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxSendSize()S

    move-result v2

    add-int/lit8 v1, v2, 0x5

    .line 116
    .local v1, "maxSendSize":I
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;->sendData:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;->sendData:[B

    array-length v2, v2

    if-le v2, v1, :cond_2

    .line 117
    :cond_1
    const-string v2, "data size over!!"

    invoke-static {v3, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 118
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v2

    .line 121
    :cond_2
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;->sessionId:[B

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;->sessionId:[B

    array-length v2, v2

    if-eq v2, v5, :cond_4

    .line 122
    :cond_3
    const-string v2, "sessionId size over!!"

    invoke-static {v3, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 123
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v2

    .line 128
    :cond_4
    const/16 v2, -0x52

    :try_start_0
    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 129
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;->sessionId:[B

    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 130
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 131
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;->sendData:[B

    array-length v2, v2

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 132
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;->sendData:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;->mDataLen:I

    invoke-virtual {p1, v2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([BII)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v2, v5}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v2
.end method

.method getSendData()[B
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;->sendData:[B

    return-object v0
.end method

.method getSendDataLen()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;->mDataLen:I

    return v0
.end method

.method getSessionId()[B
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;->sessionId:[B

    return-object v0
.end method

.method public setSendData([B)V
    .locals 0
    .param p1, "sendData"    # [B

    .prologue
    .line 181
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;->sendData:[B

    .line 182
    return-void
.end method

.method public setSendDataLen(I)V
    .locals 0
    .param p1, "dataLen"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;->mDataLen:I

    .line 205
    return-void
.end method

.method public setSessionId([B)V
    .locals 0
    .param p1, "sessionId"    # [B

    .prologue
    .line 158
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/TerminateAdhocModeCommand;->sessionId:[B

    .line 159
    return-void
.end method
