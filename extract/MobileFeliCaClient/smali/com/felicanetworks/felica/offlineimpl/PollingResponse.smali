.class public Lcom/felicanetworks/felica/offlineimpl/PollingResponse;
.super Lcom/felicanetworks/felica/offlineimpl/Response;
.source "PollingResponse.java"


# static fields
.field private static final CODE:B = 0x1t

.field private static final IDM_LENGTH:I = 0x8

.field private static final PMM_LENGTH:I = 0x8

.field private static final RESPONSE_LENGTH:B = 0x14t

.field private static final RESPONSE_LENGTH_NOOPTION:B = 0x12t

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/PollingResponse; = null

.field private static final option212:S = 0x81s


# instance fields
.field private idm:[B

.field private pmm:[B

.field private systemCode:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Response;-><init>()V

    .line 77
    return-void
.end method

.method public static getInstance()Lcom/felicanetworks/felica/offlineimpl/PollingResponse;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/PollingResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/PollingResponse;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/PollingResponse;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/PollingResponse;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/PollingResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/PollingResponse;

    .line 90
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/PollingResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/PollingResponse;

    return-object v0
.end method


# virtual methods
.method get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;
    .locals 5
    .param p1, "command"    # Lcom/felicanetworks/felica/offlineimpl/Command;
    .param p2, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x4

    .line 107
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 108
    :cond_0
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2

    .line 113
    :cond_1
    const/4 v1, 0x1

    .line 116
    .local v1, "index":I
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p2, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v2

    if-nez v2, :cond_2

    .line 117
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    throw v0

    .line 119
    .end local v0    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 122
    const/16 v2, 0x8

    :try_start_1
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/PollingResponse;->idm:[B

    .line 123
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/PollingResponse;->idm:[B

    invoke-virtual {p2, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[B)V

    .line 124
    add-int/lit8 v1, v1, 0x8

    .line 127
    const/16 v2, 0x8

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/PollingResponse;->pmm:[B

    .line 128
    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/PollingResponse;->pmm:[B

    invoke-virtual {p2, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[B)V

    .line 129
    add-int/lit8 v1, v1, 0x8

    .line 132
    const/4 v2, 0x0

    const/16 v3, 0x12

    invoke-virtual {p2, v2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    const/16 v2, 0x81

    iput v2, p0, Lcom/felicanetworks/felica/offlineimpl/PollingResponse;->systemCode:I

    .line 151
    :goto_0
    return-object p0

    .line 134
    :cond_3
    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-virtual {p2, v2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 137
    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->getInBigEndian(II)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/felicanetworks/felica/offlineimpl/PollingResponse;->systemCode:I
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 154
    :catch_1
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v2, v4}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_2
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method getIDm()[B
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/PollingResponse;->idm:[B

    return-object v0
.end method

.method getPMm()[B
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/PollingResponse;->pmm:[B

    return-object v0
.end method

.method public getSystemCode()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/PollingResponse;->systemCode:I

    return v0
.end method
