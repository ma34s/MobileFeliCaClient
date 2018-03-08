.class Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;
.super Lcom/felicanetworks/felica/offlineimpl/Response;
.source "ExecuteFelicaCommandResponse.java"


# static fields
.field private static instance:Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;


# instance fields
.field private mResponse:[B


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 33
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Response;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;->mResponse:[B

    .line 35
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 36
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 47
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 48
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;

    if-nez v0, :cond_0

    .line 49
    const-string v0, "%s"

    const-string v1, "001"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 50
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;

    .line 52
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;

    return-object v0
.end method


# virtual methods
.method get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;
    .locals 7
    .param p1, "command"    # Lcom/felicanetworks/felica/offlineimpl/Command;
    .param p2, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x6

    .line 70
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 71
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 72
    :cond_0
    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 73
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v1, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 77
    :cond_1
    invoke-virtual {p2}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v1

    if-le v1, v3, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 78
    :cond_2
    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 79
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 82
    :cond_3
    const/4 v0, 0x1

    .line 85
    .local v0, "index":I
    invoke-virtual {p2}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;->mResponse:[B

    .line 86
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;->mResponse:[B

    invoke-virtual {p2, v0, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[B)V

    .line 87
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 89
    return-object p0
.end method

.method getResponse()[B
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;->mResponse:[B

    return-object v0
.end method
