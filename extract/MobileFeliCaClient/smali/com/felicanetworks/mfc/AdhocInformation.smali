.class public Lcom/felicanetworks/mfc/AdhocInformation;
.super Ljava/lang/Object;
.source "AdhocInformation.java"


# static fields
.field private static final EXC_INVALID_ADHOC_MODE:Ljava/lang/String; = "The Adhoc Mode must be 0 or 1."

.field private static final EXC_INVALID_RECEIVE_DATA_LENGTH:Ljava/lang/String; = "The Receive Data length must be 0 to 224."

.field private static final EXC_INVALID_SESSION_ID:Ljava/lang/String; = "The Session ID must be 0 to 0xffff."

.field private static final EXC_NULL:Ljava/lang/String; = "null is not allowed."

.field public static final RECEIVE_DATA_LENGTH_MAX:I = 0xe0

.field public static final SESSION_ID_MAX:I = 0xffff

.field public static final SESSION_ID_MIN:I


# instance fields
.field private adhocMode:I

.field private receiveData:[B

.field private sessionID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdhocMode()I
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 69
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 71
    const-string v0, "%s return adhocMode = %d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/mfc/AdhocInformation;->adhocMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    iget v0, p0, Lcom/felicanetworks/mfc/AdhocInformation;->adhocMode:I

    return v0
.end method

.method public getReceiveData()[B
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 144
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 146
    const-string v0, "%s return receiveData = %d"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/AdhocInformation;->receiveData:[B

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/felicanetworks/mfc/AdhocInformation;->receiveData:[B

    return-object v0
.end method

.method public getSessionID()I
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 107
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 109
    const-string v0, "%s return sessionID = %d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/mfc/AdhocInformation;->sessionID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    iget v0, p0, Lcom/felicanetworks/mfc/AdhocInformation;->sessionID:I

    return v0
.end method

.method public setAdhocMode(I)V
    .locals 5
    .param p1, "adhocMode"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 86
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 88
    if-eqz p1, :cond_0

    if-eq p1, v3, :cond_0

    .line 89
    const-string v0, "%s byteBuffer == %d"

    const-string v1, "800"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Adhoc Mode must be 0 or 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    const/4 v0, 0x7

    const-string v1, "%s adhocMode = %s"

    const-string v2, "001"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    iput p1, p0, Lcom/felicanetworks/mfc/AdhocInformation;->adhocMode:I

    .line 96
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public setReceiveData([B)V
    .locals 4
    .param p1, "receiveData"    # [B

    .prologue
    const/4 v3, 0x4

    .line 161
    const-string v0, "%s In receiveData = %s"

    const-string v1, "000"

    invoke-static {v3, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    if-nez p1, :cond_0

    .line 165
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 166
    const/4 p1, 0x0

    .line 170
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    const/16 v1, 0xe0

    if-le v0, v1, :cond_1

    .line 171
    const/4 v0, 0x1

    const-string v1, "%s receiveData.length > %d"

    const-string v2, "800"

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Receive Data length must be 0 to 224."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_1
    iput-object p1, p0, Lcom/felicanetworks/mfc/AdhocInformation;->receiveData:[B

    .line 177
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public setSessionID(I)V
    .locals 5
    .param p1, "sessionID"    # I

    .prologue
    const/4 v4, 0x4

    .line 124
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 126
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 127
    :cond_0
    const/4 v0, 0x1

    const-string v1, "%s sessionID == %d"

    const-string v2, "800"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Session ID must be 0 to 0xffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    const/4 v0, 0x7

    const-string v1, "%s sessionID = %s"

    const-string v2, "001"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    iput p1, p0, Lcom/felicanetworks/mfc/AdhocInformation;->sessionID:I

    .line 133
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 134
    return-void
.end method
