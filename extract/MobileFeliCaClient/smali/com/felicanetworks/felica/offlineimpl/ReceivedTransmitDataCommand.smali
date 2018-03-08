.class public Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;
.super Lcom/felicanetworks/felica/offlineimpl/FalpCommand;
.source "ReceivedTransmitDataCommand.java"


# static fields
.field private static final CODE:B = -0x44t

.field public static final FALP_CMDCODE_TRANSMITDATA:B = -0x44t

.field private static final SESSION_ID_LENGTH:I = 0x2

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;


# instance fields
.field private mDataLen:I

.field private mSendData:[B

.field private sessionId:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/FalpCommand;-><init>()V

    .line 50
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxReceiveSize()S

    move-result v0

    .line 51
    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->mSendData:[B

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->mDataLen:I

    .line 65
    return-void
.end method

.method public static getInstance()Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;

    return-object v0
.end method


# virtual methods
.method public doSet(Lcom/felicanetworks/felica/util/ByteBuffer;)V
    .locals 7
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/FalpException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 106
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxReceiveSize()S

    move-result v2

    add-int/lit8 v1, v2, 0x5

    .line 108
    .local v1, "maxSendSize":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 109
    :cond_0
    const-string v2, "ReceivedTransmitDataCommand:buffer size is short."

    invoke-static {v4, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 110
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v2, v4}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v2

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->sessionId:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->sessionId:[B

    array-length v2, v2

    if-eq v2, v6, :cond_3

    .line 115
    :cond_2
    const-string v2, "ReceivedTransmitDataCommand:buffer sessionId size is short."

    .line 114
    invoke-static {v4, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 116
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v2, v4}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v2

    .line 120
    :cond_3
    invoke-virtual {p1, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v2

    const/16 v3, -0x44

    if-eq v2, v3, :cond_4

    .line 121
    const-string v2, "ReceivedTransmitDataCommand:buffer CODE size is short."

    invoke-static {v4, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 122
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v2, v4}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v2

    .line 125
    :cond_4
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->sessionId:[B

    invoke-virtual {p1, v4, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(I[B)Z

    move-result v2

    if-nez v2, :cond_5

    .line 126
    const-string v2, "ReceivedTransmitDataCommand:buffer sessionId is not valid."

    invoke-static {v4, v2}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 127
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v2, v4}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v2

    .line 131
    :cond_5
    invoke-virtual {p1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->mDataLen:I

    .line 133
    const/4 v2, 0x5

    :try_start_0
    iget-object v3, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->mSendData:[B

    const/4 v4, 0x0

    iget v5, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->mDataLen:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[BII)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/FalpException;

    invoke-direct {v2, v6}, Lcom/felicanetworks/felica/offlineimpl/FalpException;-><init>(I)V

    throw v2
.end method

.method public getSendData()[B
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->mSendData:[B

    return-object v0
.end method

.method getSessionId()[B
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->sessionId:[B

    return-object v0
.end method

.method public getmDataLen()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->mDataLen:I

    return v0
.end method

.method public setSendData([B)V
    .locals 3
    .param p1, "sendData"    # [B

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->mSendData:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    return-void
.end method

.method public setSessionId([B)V
    .locals 0
    .param p1, "sessionId"    # [B

    .prologue
    .line 159
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->sessionId:[B

    .line 160
    return-void
.end method

.method public setmDataLen(I)V
    .locals 0
    .param p1, "mDataLen"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/felicanetworks/felica/offlineimpl/ReceivedTransmitDataCommand;->mDataLen:I

    .line 205
    return-void
.end method
