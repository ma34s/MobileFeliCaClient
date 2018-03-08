.class Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;
.super Lcom/felicanetworks/felica/offlineimpl/Response;
.source "RequestSystemCodeResponse.java"


# static fields
.field private static final CODE:B = 0xdt

.field private static final IDM_LENGTH:I = 0x8

.field private static final SYSTEM_CODE_LIST_MIN:I = 0x1

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;


# instance fields
.field private idm:[B

.field private systemCodeList:[I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 48
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Response;-><init>()V

    .line 50
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 51
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 62
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;

    if-nez v0, :cond_0

    .line 65
    const-string v0, "%s"

    const-string v1, "001"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 66
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;

    .line 69
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;

    return-object v0
.end method


# virtual methods
.method get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;
    .locals 10
    .param p1, "command"    # Lcom/felicanetworks/felica/offlineimpl/Command;
    .param p2, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    .line 87
    const-string v4, "%s"

    const-string v5, "000"

    invoke-static {v9, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 88
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 89
    :cond_0
    const-string v4, "%s"

    const-string v5, "700"

    invoke-static {v8, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 90
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v4, v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 95
    :cond_1
    const/4 v3, 0x1

    .line 98
    .local v3, "index":I
    const/16 v4, 0xd

    :try_start_0
    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v4

    if-nez v4, :cond_2

    .line 99
    const/4 v4, 0x1

    const-string v5, "%s"

    const-string v6, "701"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 100
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const-string v4, "%s"

    const-string v5, "704"

    invoke-static {v8, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 134
    throw v2

    .line 102
    .end local v2    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 105
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeCommand;

    move-object v1, v0

    .line 106
    .local v1, "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeCommand;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeCommand;->getIDm()[B

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(I[B)Z

    move-result v4

    if-nez v4, :cond_3

    .line 107
    const/4 v4, 0x1

    const-string v5, "%s"

    const-string v6, "702"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 108
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    .end local v1    # "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeCommand;
    :catch_1
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "%s"

    const-string v5, "705"

    invoke-static {v8, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 137
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v4, v9}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 111
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeCommand;
    :cond_3
    const/16 v4, 0x8

    :try_start_2
    new-array v4, v4, [B

    iput-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;->idm:[B

    .line 112
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;->idm:[B

    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[B)V

    .line 113
    add-int/lit8 v3, v3, 0x8

    .line 116
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->getInstance()Lcom/felicanetworks/felica/offlineimpl/DataUtil;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->createSystemCode(Lcom/felicanetworks/felica/util/ByteBuffer;)[I

    move-result-object v4

    iput-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;->systemCodeList:[I

    .line 117
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;->systemCodeList:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v4, 0xa

    .line 119
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;->systemCodeList:[I

    array-length v4, v4

    if-ge v4, v8, :cond_4

    .line 120
    const/4 v4, 0x1

    const-string v5, "%s"

    const-string v6, "706"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 121
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 125
    :cond_4
    invoke-virtual {p2}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 126
    const/4 v4, 0x1

    const-string v5, "%s"

    const-string v6, "703"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 127
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 130
    :cond_5
    const/4 v4, 0x4

    const-string v5, "%s systemCodeList=%s"

    const-string v6, "999"

    iget-object v7, p0, Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;->systemCodeList:[I

    invoke-static {v4, v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 131
    return-object p0
.end method

.method getIDm()[B
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 149
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 150
    const-string v0, "%s idm=%s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;->idm:[B

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;->idm:[B

    return-object v0
.end method

.method getSystemCodeList()[I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 162
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 163
    const-string v0, "%s systemCodeList=%s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;->systemCodeList:[I

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestSystemCodeResponse;->systemCodeList:[I

    return-object v0
.end method
