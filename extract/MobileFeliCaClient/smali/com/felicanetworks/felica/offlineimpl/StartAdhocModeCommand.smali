.class Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeCommand;
.super Lcom/felicanetworks/felica/offlineimpl/Command;
.source "StartAdhocModeCommand.java"


# static fields
.field private static final CODE:B = -0x54t

.field private static final RESERVE:B

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeCommand;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Command;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeCommand;
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 35
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 36
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeCommand;

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 38
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeCommand;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeCommand;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeCommand;

    .line 41
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeCommand;

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

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 56
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 58
    if-nez p1, :cond_0

    .line 59
    const-string v1, "%s : Throw OfflineException = %d"

    const-string v2, "700"

    .line 60
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 59
    invoke-static {v4, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v1, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 65
    :cond_0
    const/16 v1, -0x54

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 66
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "%s : %s"

    const-string v2, "701"

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
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

    .line 87
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 89
    if-nez p1, :cond_0

    .line 90
    const/4 v1, 0x2

    const-string v2, "%s : Throw OfflineException = %d"

    const-string v3, "700"

    .line 91
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 90
    invoke-static {v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v1, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 95
    :cond_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;->getInstance()Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;

    move-result-object v0

    .line 96
    .local v0, "response":Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;->get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v1

    return-object v1
.end method
