.class Lcom/felicanetworks/felica/offlineimpl/GetContainerIdResponse;
.super Lcom/felicanetworks/felica/offlineimpl/Response;
.source "GetContainerIdResponse.java"


# static fields
.field private static final CODE:B = 0x71t

.field private static final CONTAINERID_LENGTH:I = 0x8

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/GetContainerIdResponse;


# instance fields
.field private CotainerID:[B


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 38
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Response;-><init>()V

    .line 40
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 41
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/GetContainerIdResponse;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 52
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIdResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/GetContainerIdResponse;

    if-nez v0, :cond_0

    .line 54
    const-string v0, "%s"

    const-string v1, "001"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 55
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIdResponse;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/GetContainerIdResponse;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIdResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/GetContainerIdResponse;

    .line 57
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIdResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/GetContainerIdResponse;

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

    const/4 v6, 0x6

    .line 75
    const-string v2, "%s"

    const-string v3, "000"

    invoke-static {v6, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 76
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 77
    :cond_0
    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v6, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 78
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2

    .line 83
    :cond_1
    const/4 v1, 0x1

    .line 86
    .local v1, "index":I
    const/16 v2, 0x71

    :try_start_0
    invoke-virtual {p2, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v2

    if-nez v2, :cond_2

    .line 87
    const/4 v2, 0x6

    const-string v3, "%s"

    const-string v4, "701"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 88
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const-string v2, "%s"

    const-string v3, "703"

    invoke-static {v6, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 107
    throw v0

    .line 90
    .end local v0    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 93
    const/16 v2, 0x8

    :try_start_1
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIdResponse;->CotainerID:[B

    .line 94
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIdResponse;->CotainerID:[B

    invoke-virtual {p2, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[B)V

    .line 95
    add-int/lit8 v1, v1, 0x8

    .line 98
    invoke-virtual {p2}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 99
    const/4 v2, 0x6

    const-string v3, "%s"

    const-string v4, "702"

    invoke-static {v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 100
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :catch_1
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "%s"

    const-string v3, "704"

    invoke-static {v6, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 110
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v2, v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v2, 0x6

    :try_start_2
    const-string v3, "%s CotainerID=%s"

    const-string v4, "999"

    iget-object v5, p0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIdResponse;->CotainerID:[B

    invoke-static {v2, v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 104
    return-object p0
.end method

.method getCotainerId()[B
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 122
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 123
    const-string v0, "%s CotainerID=%s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIdResponse;->CotainerID:[B

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/GetContainerIdResponse;->CotainerID:[B

    return-object v0
.end method
