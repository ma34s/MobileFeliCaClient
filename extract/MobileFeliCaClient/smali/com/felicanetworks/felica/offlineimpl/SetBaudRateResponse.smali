.class Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;
.super Lcom/felicanetworks/felica/offlineimpl/Response;
.source "SetBaudRateResponse.java"


# static fields
.field private static final CODE:B = -0x33t

.field private static final FCODE:B = 0x13t

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;


# instance fields
.field private statusFlag1:B

.field private statusFlag2:B


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Response;-><init>()V

    .line 54
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;

    .line 67
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;

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
    const/4 v4, 0x4

    .line 84
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 85
    :cond_0
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2

    .line 90
    :cond_1
    const/4 v1, 0x1

    .line 93
    .local v1, "index":I
    const/16 v2, -0x33

    :try_start_0
    invoke-virtual {p2, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v2

    if-nez v2, :cond_2

    .line 94
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    throw v0

    .line 96
    .end local v0    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 99
    const/16 v2, 0x13

    :try_start_1
    invoke-virtual {p2, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v2

    if-nez v2, :cond_3

    .line 100
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    :catch_1
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v2, v4}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 105
    :try_start_2
    invoke-virtual {p2, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v2

    iput-byte v2, p0, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;->statusFlag1:B

    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 108
    invoke-virtual {p2, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v2

    iput-byte v2, p0, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;->statusFlag2:B
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 109
    add-int/lit8 v1, v1, 0x1

    .line 111
    return-object p0
.end method

.method public getStatusFlag1()I
    .locals 1

    .prologue
    .line 129
    iget-byte v0, p0, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;->statusFlag1:B

    return v0
.end method

.method public getStatusFlag2()I
    .locals 1

    .prologue
    .line 141
    iget-byte v0, p0, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;->statusFlag2:B

    return v0
.end method
