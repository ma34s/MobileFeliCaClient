.class Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;
.super Lcom/felicanetworks/felica/offlineimpl/Command;
.source "RequestBlockInformationExCommand.java"


# static fields
.field private static final CODE:B = 0x1et

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;


# instance fields
.field private idm:[B

.field nodeCodeList:[I

.field private nodeCodeSize:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 41
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Command;-><init>()V

    .line 43
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 44
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 55
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 58
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;

    .line 60
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 61
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;

    return-object v0
.end method


# virtual methods
.method doSet(Lcom/felicanetworks/felica/util/ByteBuffer;)V
    .locals 5
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    .line 75
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 76
    if-nez p1, :cond_0

    .line 77
    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 78
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 82
    :cond_0
    const/16 v1, 0x1e

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 83
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;->idm:[B

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 84
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->getInstance()Lcom/felicanetworks/felica/offlineimpl/DataUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;->nodeCodeList:[I

    iget v3, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;->nodeCodeSize:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->append(Lcom/felicanetworks/felica/util/ByteBuffer;[II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 90
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 87
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

    .line 104
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 105
    if-nez p1, :cond_0

    .line 106
    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 107
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 109
    :cond_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->getInstance()Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;

    move-result-object v0

    .line 110
    .local v0, "response":Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 111
    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v1

    return-object v1
.end method

.method getIDm()[B
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 122
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 123
    const-string v0, "%s idm=%s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;->idm:[B

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;->idm:[B

    return-object v0
.end method

.method getNodeCodeList()[I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 176
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 177
    const-string v0, "%s return=%s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;->nodeCodeList:[I

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;->nodeCodeList:[I

    return-object v0
.end method

.method getNodeCodeSize()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 149
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 150
    const-string v0, "%s return=%d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;->nodeCodeSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;->nodeCodeSize:I

    return v0
.end method

.method setIDm([B)V
    .locals 3
    .param p1, "idm"    # [B

    .prologue
    const/4 v2, 0x6

    .line 136
    const-string v0, "%s idm=%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 138
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;->idm:[B

    .line 139
    return-void
.end method

.method setNodeCodeList([I)V
    .locals 3
    .param p1, "nodeCodeList"    # [I

    .prologue
    const/4 v2, 0x6

    .line 190
    const-string v0, "%s nodeCodeList=%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 192
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;->nodeCodeList:[I

    .line 193
    return-void
.end method

.method setNodeCodeSize(I)V
    .locals 4
    .param p1, "nodeCodeSize"    # I

    .prologue
    const/4 v3, 0x6

    .line 163
    const-string v0, "%s nodeCodeSize=%d"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 165
    iput p1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;->nodeCodeSize:I

    .line 166
    return-void
.end method
