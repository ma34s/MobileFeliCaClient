.class Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandCommand;
.super Lcom/felicanetworks/felica/offlineimpl/Command;
.source "ExecuteFelicaCommandCommand.java"


# static fields
.field private static instance:Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandCommand;


# instance fields
.field private mFelicaCommand:[B


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 33
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Command;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandCommand;->mFelicaCommand:[B

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

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandCommand;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 47
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 48
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandCommand;

    if-nez v0, :cond_0

    .line 49
    const-string v0, "%s"

    const-string v1, "001"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 50
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandCommand;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandCommand;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandCommand;

    .line 52
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandCommand;

    return-object v0
.end method


# virtual methods
.method doSet(Lcom/felicanetworks/felica/util/ByteBuffer;)V
    .locals 4
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    .line 67
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 68
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandCommand;->mFelicaCommand:[B

    if-nez v1, :cond_1

    .line 69
    :cond_0
    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 70
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 74
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandCommand;->mFelicaCommand:[B

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 80
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 77
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1
.end method

.method get(Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;
    .locals 4
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    .line 94
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 95
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;

    move-result-object v0

    .line 96
    .local v0, "response":Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandResponse;->get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v1

    return-object v1
.end method

.method setCommand([B)V
    .locals 0
    .param p1, "felicaCommand"    # [B

    .prologue
    .line 107
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/ExecuteFelicaCommandCommand;->mFelicaCommand:[B

    .line 108
    return-void
.end method
