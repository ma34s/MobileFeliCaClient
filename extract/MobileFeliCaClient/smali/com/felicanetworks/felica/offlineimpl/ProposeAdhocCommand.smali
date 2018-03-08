.class Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;
.super Lcom/felicanetworks/felica/offlineimpl/Command;
.source "ProposeAdhocCommand.java"


# static fields
.field private static final CODE:B = -0x56t

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;


# instance fields
.field private idm:[B

.field private sessionId:S


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 49
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Command;-><init>()V

    .line 51
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 52
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 63
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 65
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 67
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;

    .line 70
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;

    return-object v0
.end method


# virtual methods
.method doSet(Lcom/felicanetworks/felica/util/ByteBuffer;)V
    .locals 7
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 85
    const-string v1, "%s : byteBuffer = %s"

    const-string v2, "000"

    invoke-static {v6, v1, v2, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    if-nez p1, :cond_0

    .line 88
    const-string v1, "%s : Throw OfflineException = %d"

    const-string v2, "700"

    .line 89
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 88
    invoke-static {v4, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v1, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 94
    :cond_0
    const/16 v1, -0x56

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 95
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;->idm:[B

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 96
    iget-short v1, p0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;->sessionId:S

    int-to-long v2, v1

    const/4 v1, 0x2

    invoke-virtual {p1, v2, v3, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 97
    const-wide/16 v2, 0x3e8

    const/4 v1, 0x2

    invoke-virtual {p1, v2, v3, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 99
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v2, v3, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 100
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v2, v3, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 108
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "%s : %s"

    const-string v2, "702"

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v1, v4}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

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

    .line 122
    const-string v1, "%s : byteBuffer = %s"

    const-string v2, "000"

    invoke-static {v3, v1, v2, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    if-nez p1, :cond_0

    .line 125
    const/4 v1, 0x2

    const-string v2, "%s : Throw OfflineException = %d"

    const-string v3, "700"

    .line 126
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 125
    invoke-static {v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v1, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 130
    :cond_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;

    move-result-object v0

    .line 131
    .local v0, "response":Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 132
    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v1

    return-object v1
.end method

.method getIDm()[B
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 143
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 144
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;->idm:[B

    return-object v0
.end method

.method setIDm([B)V
    .locals 3
    .param p1, "idm"    # [B

    .prologue
    const/4 v2, 0x6

    .line 157
    const-string v0, "%s : idm = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;->idm:[B

    .line 159
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method setSessionId(S)V
    .locals 4
    .param p1, "sessionId"    # S

    .prologue
    const/4 v3, 0x6

    .line 170
    const-string v0, "%d : sessionId = %x"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    iput-short p1, p0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;->sessionId:S

    .line 172
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 173
    return-void
.end method
