.class Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerResponse;
.super Lcom/felicanetworks/felica/offlineimpl/Response;
.source "TurnOffRFPowerResponse.java"


# static fields
.field private static final CODE:B = -0x33t

.field private static final FUNCTION_CODE:B = 0x12t

.field private static final RESPONSE_LENGTH:B = 0x5t

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerResponse;


# instance fields
.field private statusFlag1:I

.field private statusFlag2:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Response;-><init>()V

    .line 54
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerResponse;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerResponse;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerResponse;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerResponse;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerResponse;

    .line 67
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerResponse;

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

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    throw v0

    .line 96
    .end local v0    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 99
    const/16 v2, 0x12

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

    .line 120
    :catch_1
    move-exception v0

    .line 121
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

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerResponse;->statusFlag1:I

    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 109
    invoke-virtual {p2, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerResponse;->statusFlag2:I

    .line 110
    add-int/lit8 v1, v1, 0x1

    .line 113
    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p2, v2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v2

    if-nez v2, :cond_4

    .line 114
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 117
    :cond_4
    return-object p0
.end method

.method getStatusFlag1()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerResponse;->statusFlag1:I

    return v0
.end method

.method getStatusFlag2()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/TurnOffRFPowerResponse;->statusFlag2:I

    return v0
.end method
