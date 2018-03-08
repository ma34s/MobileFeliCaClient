.class Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;
.super Lcom/felicanetworks/felica/offlineimpl/Command;
.source "ReadWithoutEncryptionCommand.java"


# static fields
.field private static final CODE:B = 0x6t

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;


# instance fields
.field private blockList:Lcom/felicanetworks/mfc/BlockList;

.field private idm:[B

.field private nodeCodeSize:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Command;-><init>()V

    .line 50
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;

    .line 63
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;

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
    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 83
    :cond_0
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 84
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;->idm:[B

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 85
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->getInstance()Lcom/felicanetworks/felica/offlineimpl/DataUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;->blockList:Lcom/felicanetworks/mfc/BlockList;

    iget v3, p0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;->nodeCodeSize:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->append(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/BlockList;I)V
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    throw v0

    .line 89
    .end local v0    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :catch_1
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

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
    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 110
    :cond_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;->getInstance()Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;

    move-result-object v0

    .line 111
    .local v0, "response":Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;
    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;->get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v1

    return-object v1
.end method

.method getBlockList()Lcom/felicanetworks/mfc/BlockList;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;->blockList:Lcom/felicanetworks/mfc/BlockList;

    return-object v0
.end method

.method getIDm()[B
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;->idm:[B

    return-object v0
.end method

.method getNodeCodeSize()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;->nodeCodeSize:I

    return v0
.end method

.method setBlockList(Lcom/felicanetworks/mfc/BlockList;)V
    .locals 0
    .param p1, "blockList"    # Lcom/felicanetworks/mfc/BlockList;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;->blockList:Lcom/felicanetworks/mfc/BlockList;

    .line 181
    return-void
.end method

.method setIDm([B)V
    .locals 0
    .param p1, "idm"    # [B

    .prologue
    .line 134
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;->idm:[B

    .line 135
    return-void
.end method

.method setNodeCodeSize(I)V
    .locals 0
    .param p1, "nodeCodeSize"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;->nodeCodeSize:I

    .line 158
    return-void
.end method
