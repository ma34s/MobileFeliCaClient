.class Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;
.super Lcom/felicanetworks/felica/offlineimpl/Command;
.source "RequestCodeListCommand.java"


# static fields
.field private static final CODE:B = 0x1at

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;


# instance fields
.field private idm:[B

.field private nodeCodeSize:I

.field private packetIndex:I

.field private parentAreaCode:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Command;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 58
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 61
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;

    .line 63
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;

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

    .line 78
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v6, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 79
    if-nez p1, :cond_0

    .line 80
    const-string v1, "%s : Throw OfflineException = %d"

    const-string v2, "700"

    .line 81
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 80
    invoke-static {v4, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v1, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 86
    :cond_0
    const/16 v1, 0x1a

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 87
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->idm:[B

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 92
    iget v1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->nodeCodeSize:I

    packed-switch v1, :pswitch_data_0

    .line 102
    :goto_0
    :pswitch_0
    iget v1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->packetIndex:I

    int-to-long v2, v1

    const/4 v1, 0x2

    invoke-virtual {p1, v2, v3, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const-string v1, "999"

    invoke-static {v6, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 108
    return-void

    .line 94
    :pswitch_1
    const/4 v1, 0x7

    :try_start_1
    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 95
    iget v1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->parentAreaCode:I

    int-to-long v2, v1

    const/4 v1, 0x2

    invoke-virtual {p1, v2, v3, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 105
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v1, v4}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 98
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :pswitch_2
    const/4 v1, 0x7

    :try_start_2
    const-string v2, "%s"

    const-string v3, "002"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 99
    iget v1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->parentAreaCode:I

    int-to-long v2, v1

    const/4 v1, 0x4

    invoke-virtual {p1, v2, v3, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
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

    .line 122
    const-string v1, "%s : byteBuffer = %s"

    const-string v2, "000"

    invoke-static {v4, v1, v2, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    if-nez p1, :cond_0

    .line 124
    const/4 v1, 0x2

    const-string v2, "%s : Throw OfflineException = %d"

    const-string v3, "700"

    .line 125
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 124
    invoke-static {v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v1, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 129
    :cond_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->getInstance()Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;

    move-result-object v0

    .line 130
    .local v0, "response":Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;
    const-string v1, "%s : byteBuffer = %s"

    const-string v2, "999"

    invoke-virtual {p1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v3

    invoke-static {v4, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v1

    return-object v1
.end method

.method getIDm()[B
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 142
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 143
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->idm:[B

    return-object v0
.end method

.method getNodeCodeSize()I
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 196
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 197
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 198
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->nodeCodeSize:I

    return v0
.end method

.method getPacketIndex()I
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 223
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 224
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 225
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->packetIndex:I

    return v0
.end method

.method getParentAreaCode()I
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 169
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 170
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 171
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->parentAreaCode:I

    return v0
.end method

.method setIDm([B)V
    .locals 3
    .param p1, "idm"    # [B

    .prologue
    const/4 v2, 0x6

    .line 156
    const-string v0, "%s : idm = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->idm:[B

    .line 158
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method setNodeCodeSize(I)V
    .locals 4
    .param p1, "nodeCodeSize"    # I

    .prologue
    const/4 v3, 0x6

    .line 210
    const-string v0, "%s : nodeCodeSize = %d"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    iput p1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->nodeCodeSize:I

    .line 212
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method setPacketIndex(I)V
    .locals 4
    .param p1, "packetIndex"    # I

    .prologue
    const/4 v3, 0x6

    .line 237
    const-string v0, "%s : packetIndex = %d"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    iput p1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->packetIndex:I

    .line 239
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method setParentAreaCode(I)V
    .locals 4
    .param p1, "parentAreaCode"    # I

    .prologue
    const/4 v3, 0x6

    .line 183
    const-string v0, "%s : parentAreaCode = %d"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    iput p1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->parentAreaCode:I

    .line 185
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 186
    return-void
.end method
