.class Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;
.super Lcom/felicanetworks/felica/offlineimpl/Response;
.source "RequestServiceResponse.java"


# static fields
.field private static final CODE:B = 0x3t

.field private static final IDM_LENGTH:I = 0x8

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;


# instance fields
.field private idm:[B

.field private serviceKeyVersionList:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Response;-><init>()V

    .line 49
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;

    .line 62
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;

    return-object v0
.end method


# virtual methods
.method get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;
    .locals 8
    .param p1, "command"    # Lcom/felicanetworks/felica/offlineimpl/Command;
    .param p2, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    .line 79
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 80
    :cond_0
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5

    .line 85
    :cond_1
    const/4 v3, 0x1

    .line 88
    .local v3, "index":I
    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {p2, v3, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v5

    if-nez v5, :cond_2

    .line 89
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    throw v2

    .line 91
    .end local v2    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 94
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;

    move-object v1, v0

    .line 95
    .local v1, "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;->getIDm()[B

    move-result-object v5

    invoke-virtual {p2, v3, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(I[B)Z

    move-result v5

    if-nez v5, :cond_3

    .line 96
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    .end local v1    # "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;
    :catch_1
    move-exception v2

    .line 117
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v5, v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5

    .line 99
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;
    :cond_3
    const/16 v5, 0x8

    :try_start_2
    new-array v5, v5, [B

    iput-object v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;->idm:[B

    .line 100
    iget-object v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;->idm:[B

    invoke-virtual {p2, v3, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[B)V

    .line 101
    add-int/lit8 v3, v3, 0x8

    .line 104
    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/RequestServiceCommand;->getServiceCodeList()[I

    move-result-object v4

    .line 105
    .local v4, "serviceCodeList":[I
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->getInstance()Lcom/felicanetworks/felica/offlineimpl/DataUtil;

    move-result-object v5

    invoke-virtual {v5, p2, v4}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->createKeyVersionList(Lcom/felicanetworks/felica/util/ByteBuffer;[I)[I

    move-result-object v5

    iput-object v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;->serviceKeyVersionList:[I

    .line 109
    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p2}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 110
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 113
    :cond_4
    return-object p0
.end method

.method getIDm()[B
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;->idm:[B

    return-object v0
.end method

.method getServiceKeyVersionList()[I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestServiceResponse;->serviceKeyVersionList:[I

    return-object v0
.end method
