.class Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;
.super Lcom/felicanetworks/felica/offlineimpl/Response;
.source "GetContainerIssueInformationResponse.java"


# static fields
.field private static final CODE:B = 0x23t

.field private static final CONTAINER_ISSUE_INFORMAITON_LENGTH:I = 0x10

.field private static final IDM_LENGTH:I = 0x8

.field private static final RESPONSE_LENGTH:B = 0x1at

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;


# instance fields
.field private containerIssueInfo:[B

.field private idm:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Response;-><init>()V

    .line 59
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;

    .line 72
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;

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
    const/4 v6, 0x4

    .line 89
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 90
    :cond_0
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 95
    :cond_1
    const/4 v3, 0x1

    .line 98
    .local v3, "index":I
    const/16 v4, 0x23

    :try_start_0
    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v4

    if-nez v4, :cond_2

    .line 99
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    throw v2

    .line 101
    .end local v2    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 104
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;

    move-object v1, v0

    .line 105
    .local v1, "cmd":Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;->getIDm()[B

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(I[B)Z

    move-result v4

    if-nez v4, :cond_3

    .line 106
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    .end local v1    # "cmd":Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;
    :catch_1
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v4, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 109
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cmd":Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationCommand;
    :cond_3
    const/16 v4, 0x8

    :try_start_2
    new-array v4, v4, [B

    iput-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;->idm:[B

    .line 110
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;->idm:[B

    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[B)V

    .line 111
    add-int/lit8 v3, v3, 0x8

    .line 114
    const/16 v4, 0x10

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;->containerIssueInfo:[B

    .line 115
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;->containerIssueInfo:[B

    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[B)V

    .line 116
    add-int/lit8 v3, v3, 0x10

    .line 119
    const/4 v4, 0x0

    const/16 v5, 0x1a

    invoke-virtual {p2, v4, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v4

    if-nez v4, :cond_4

    .line 120
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 123
    :cond_4
    return-object p0
.end method

.method getContainerIssueInfo()[B
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;->containerIssueInfo:[B

    return-object v0
.end method

.method getIDm()[B
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIssueInformationResponse;->idm:[B

    return-object v0
.end method
