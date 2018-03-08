.class Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;
.super Lcom/felicanetworks/felica/offlineimpl/Command;
.source "RequestServiceCommand.java"


# static fields
.field private static final CODE:B = 0x2t

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;


# instance fields
.field private idm:[B

.field private nodeCodeSize:I

.field private serviceCodeList:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Command;-><init>()V

    .line 49
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;

    .line 62
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;

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
    const/4 v4, 0x2

    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 82
    :cond_0
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 83
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;->idm:[B

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 84
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->getInstance()Lcom/felicanetworks/felica/offlineimpl/DataUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;->serviceCodeList:[I

    iget v3, p0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;->nodeCodeSize:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->append(Lcom/felicanetworks/felica/util/ByteBuffer;[II)V
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    throw v0

    .line 88
    .end local v0    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v1, v4}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1
.end method

.method get(Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;
    .locals 3
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 109
    :cond_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;->getInstance()Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;

    move-result-object v0

    .line 110
    .local v0, "response":Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;
    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;->get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v1

    return-object v1
.end method

.method getIDm()[B
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;->idm:[B

    return-object v0
.end method

.method getNodeCodeSize()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;->nodeCodeSize:I

    return v0
.end method

.method getServiceCodeList()[I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;->serviceCodeList:[I

    return-object v0
.end method

.method setIDm([B)V
    .locals 0
    .param p1, "idm"    # [B

    .prologue
    .line 133
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;->idm:[B

    .line 134
    return-void
.end method

.method setNodeCodeSize(I)V
    .locals 0
    .param p1, "nodeCodeSize"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;->nodeCodeSize:I

    .line 157
    return-void
.end method

.method setServiceCodeList([I)V
    .locals 0
    .param p1, "serviceCodeList"    # [I

    .prologue
    .line 179
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;->serviceCodeList:[I

    .line 180
    return-void
.end method
