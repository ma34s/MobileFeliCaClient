.class Lcom/felicanetworks/felica/offlineimpl/PushCommand;
.super Lcom/felicanetworks/felica/offlineimpl/Command;
.source "PushCommand.java"


# static fields
.field private static final CODE:B = -0x50t

.field private static final MAX_SENDDATA_LENGTH:I = 0xe0

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/PushCommand;


# instance fields
.field private idm:[B

.field private sendData:[B


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 42
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Command;-><init>()V

    .line 44
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 45
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/PushCommand;
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 56
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/PushCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/PushCommand;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 60
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/PushCommand;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/PushCommand;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/PushCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/PushCommand;

    .line 63
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/PushCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/PushCommand;

    return-object v0
.end method


# virtual methods
.method doSet(Lcom/felicanetworks/felica/util/ByteBuffer;)V
    .locals 6
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 78
    const-string v1, "%s : byteBuffer = %s"

    const-string v2, "000"

    invoke-static {v3, v1, v2, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    if-nez p1, :cond_0

    .line 81
    const-string v1, "%s : Throw OfflineException = %d"

    const-string v2, "700"

    .line 82
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 81
    invoke-static {v5, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v1, v4}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/PushCommand;->sendData:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/PushCommand;->sendData:[B

    array-length v1, v1

    const/16 v2, 0xe0

    if-le v1, v2, :cond_2

    .line 88
    :cond_1
    const-string v1, "%s : Throw OfflineException = %d"

    const-string v2, "701"

    .line 89
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 88
    invoke-static {v5, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v1, v4}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 94
    :cond_2
    const/16 v1, -0x50

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 95
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/PushCommand;->idm:[B

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 96
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/PushCommand;->sendData:[B

    array-length v1, v1

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 97
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/PushCommand;->sendData:[B

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 104
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "%s : %s"

    const-string v2, "702"

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v1, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1
.end method

.method get(Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;
    .locals 6
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v5, 0x1

    .line 118
    const-string v1, "%s : byteBuffer = %s"

    const-string v2, "000"

    invoke-static {v3, v1, v2, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    if-nez p1, :cond_0

    .line 121
    const/4 v1, 0x2

    const-string v2, "%s : Throw OfflineException = %d"

    const-string v3, "700"

    .line 122
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 121
    invoke-static {v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v1, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 126
    :cond_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/PushResponse;->getInstance()Lcom/felicanetworks/felica/offlineimpl/PushResponse;

    move-result-object v0

    .line 127
    .local v0, "response":Lcom/felicanetworks/felica/offlineimpl/PushResponse;
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 128
    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/felica/offlineimpl/PushResponse;->get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v1

    return-object v1
.end method

.method getIDm()[B
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 139
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 140
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/PushCommand;->idm:[B

    return-object v0
.end method

.method getSendData()[B
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 166
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 167
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/PushCommand;->sendData:[B

    return-object v0
.end method

.method setIDm([B)V
    .locals 3
    .param p1, "idm"    # [B

    .prologue
    const/4 v2, 0x6

    .line 153
    const-string v0, "%s : idm = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/PushCommand;->idm:[B

    .line 155
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method setSendData([B)V
    .locals 3
    .param p1, "sendData"    # [B

    .prologue
    const/4 v2, 0x6

    .line 179
    const-string v0, "%s : sendData = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/PushCommand;->sendData:[B

    .line 181
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 182
    return-void
.end method
