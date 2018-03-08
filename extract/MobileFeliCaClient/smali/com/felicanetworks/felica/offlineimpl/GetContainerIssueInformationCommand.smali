.class Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;
.super Lcom/felicanetworks/felica/offlineimpl/Command;
.source "GetContainerIssueInformationCommand.java"


# static fields
.field private static final CODE:B = 0x22t

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;


# instance fields
.field private idm:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Command;-><init>()V

    .line 39
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;

    .line 52
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;

    return-object v0
.end method


# virtual methods
.method doSet(Lcom/felicanetworks/felica/util/ByteBuffer;)V
    .locals 3
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 72
    :cond_0
    const/16 v1, 0x22

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 73
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;->idm:[B

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
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
    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 96
    :cond_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;->getInstance()Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;

    move-result-object v0

    .line 97
    .local v0, "response":Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;
    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;->get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v1

    return-object v1
.end method

.method getIDm()[B
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;->idm:[B

    return-object v0
.end method

.method setIDm([B)V
    .locals 0
    .param p1, "idm"    # [B

    .prologue
    .line 120
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;->idm:[B

    .line 121
    return-void
.end method
