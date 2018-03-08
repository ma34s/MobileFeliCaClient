.class Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterResponse;
.super Lcom/felicanetworks/felica/offlineimpl/Response;
.source "SetRFChipRegisterResponse.java"


# static fields
.field private static final CODE:B = -0x7t

.field private static final FCODE:B = 0x3t

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterResponse;


# instance fields
.field private result:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Response;-><init>()V

    .line 44
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterResponse;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterResponse;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterResponse;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterResponse;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterResponse;

    .line 57
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterResponse;

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

    .line 74
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 75
    :cond_0
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2

    .line 79
    :cond_1
    const/4 v1, 0x1

    .line 82
    .local v1, "index":I
    const/4 v2, -0x7

    :try_start_0
    invoke-virtual {p2, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v2

    if-nez v2, :cond_2

    .line 83
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    throw v0

    .line 85
    .end local v0    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 88
    const/4 v2, 0x3

    :try_start_1
    invoke-virtual {p2, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v2

    if-nez v2, :cond_3

    .line 89
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :catch_1
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v2, v4}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 94
    :try_start_2
    invoke-virtual {p2, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v2

    iput v2, p0, Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterResponse;->result:I
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 96
    return-object p0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterResponse;->result:I

    return v0
.end method
