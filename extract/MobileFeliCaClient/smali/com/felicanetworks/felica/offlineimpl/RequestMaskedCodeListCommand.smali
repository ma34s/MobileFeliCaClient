.class Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;
.super Lcom/felicanetworks/felica/offlineimpl/Command;
.source "RequestMaskedCodeListCommand.java"


# static fields
.field private static final CODE:B = -0x34t

.field private static final FCODE:B = 0x2t

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;


# instance fields
.field private idm:[B

.field private packetIndex:I

.field private parentAreaCode:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 46
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Command;-><init>()V

    .line 48
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 49
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 60
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 61
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;

    if-nez v0, :cond_0

    .line 62
    const-string v0, "%s"

    const-string v1, "001"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 63
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;

    .line 65
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;

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
    const/4 v5, 0x2

    const/4 v4, 0x6

    .line 80
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 81
    if-nez p1, :cond_0

    .line 82
    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 83
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 87
    :cond_0
    const/16 v1, -0x34

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 88
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 89
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;->idm:[B

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 90
    iget v1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;->parentAreaCode:I

    int-to-long v2, v1

    const/4 v1, 0x4

    invoke-virtual {p1, v2, v3, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 91
    iget v1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;->packetIndex:I

    int-to-long v2, v1

    const/4 v1, 0x2

    invoke-virtual {p1, v2, v3, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 98
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 94
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v1, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1
.end method

.method get(Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;
    .locals 5
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    .line 112
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 113
    if-nez p1, :cond_0

    .line 114
    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 115
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 117
    :cond_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->getInstance()Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;

    move-result-object v0

    .line 118
    .local v0, "response":Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;
    const-string v1, "%s return = %s"

    const-string v2, "999"

    invoke-virtual {p1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v3

    invoke-static {v4, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v1

    return-object v1
.end method

.method getIDm()[B
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 130
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string v0, "%s return=%s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;->idm:[B

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;->idm:[B

    return-object v0
.end method

.method getPacketIndex()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 184
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 185
    const-string v0, "%s return=%d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;->packetIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;->packetIndex:I

    return v0
.end method

.method getParentAreaCode()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 157
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 158
    const-string v0, "%s return=%d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;->parentAreaCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;->parentAreaCode:I

    return v0
.end method

.method setIDm([B)V
    .locals 3
    .param p1, "idm"    # [B

    .prologue
    const/4 v2, 0x6

    .line 144
    const-string v0, "%s idm=%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 146
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;->idm:[B

    .line 147
    return-void
.end method

.method setPacketIndex(I)V
    .locals 4
    .param p1, "packetIndex"    # I

    .prologue
    const/4 v3, 0x6

    .line 198
    const-string v0, "%s packetIndex=%d"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 200
    iput p1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;->packetIndex:I

    .line 201
    return-void
.end method

.method setParentAreaCode(I)V
    .locals 4
    .param p1, "parentAreaCode"    # I

    .prologue
    const/4 v3, 0x6

    .line 171
    const-string v0, "%s parentAreaCode=%d"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 173
    iput p1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;->parentAreaCode:I

    .line 174
    return-void
.end method
