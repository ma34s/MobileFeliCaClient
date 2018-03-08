.class Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceCommand;
.super Lcom/felicanetworks/felica/offlineimpl/Command;
.source "ChangeActiveInterfaceCommand.java"


# static fields
.field private static final CODE:B = -0x5ct

.field private static final RESERVE:B

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceCommand;


# instance fields
.field private idm:[B


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 43
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Command;-><init>()V

    .line 45
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 46
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceCommand;
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 57
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceCommand;

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 61
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceCommand;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceCommand;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceCommand;

    .line 64
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 65
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceCommand;

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

    .line 79
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 81
    if-nez p1, :cond_0

    .line 82
    const-string v1, "%s : Throw OfflineException = %d"

    const-string v2, "700"

    .line 83
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 82
    invoke-static {v4, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v1, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 88
    :cond_0
    const/16 v1, -0x5c

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 89
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceCommand;->idm:[B

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 90
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 97
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "%s : %s"

    const-string v2, "701"

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
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
    const/4 v4, 0x5

    const/4 v5, 0x1

    .line 111
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 113
    if-nez p1, :cond_0

    .line 114
    const/4 v1, 0x2

    const-string v2, "%s : Throw OfflineException = %d"

    const-string v3, "700"

    .line 115
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 114
    invoke-static {v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v1, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 119
    :cond_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceResponse;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceResponse;

    move-result-object v0

    .line 120
    .local v0, "response":Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceResponse;
    const-string v1, "%s : byteBuffer = %s"

    const-string v2, "999"

    invoke-virtual {p1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v3

    invoke-static {v4, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceResponse;->get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v1

    return-object v1
.end method

.method getIDm()[B
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 132
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 133
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceCommand;->idm:[B

    return-object v0
.end method

.method setIDm([B)V
    .locals 3
    .param p1, "idm"    # [B

    .prologue
    const/4 v2, 0x6

    .line 146
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 147
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 148
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/ChangeActiveInterfaceCommand;->idm:[B

    .line 149
    return-void
.end method
