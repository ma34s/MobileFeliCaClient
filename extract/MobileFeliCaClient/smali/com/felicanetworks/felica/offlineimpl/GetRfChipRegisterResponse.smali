.class Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;
.super Lcom/felicanetworks/felica/offlineimpl/Response;
.source "GetRFChipRegisterResponse.java"


# static fields
.field private static final CODE:B = -0x7t

.field private static final FCODE:B = 0x4t

.field private static final RESPONSE_LENGTH_NG:B = 0x4t

.field private static final RESPONSE_LENGTH_OK:B = 0x5t

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;


# instance fields
.field private REGISTER212:B

.field public baudrate:Z

.field private registerValue:B

.field private result:B


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Response;-><init>()V

    .line 51
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;->REGISTER212:B

    .line 69
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;

    .line 82
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;

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

    .line 99
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 100
    :cond_0
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2

    .line 104
    :cond_1
    const/4 v1, 0x1

    .line 107
    .local v1, "index":I
    const/4 v2, -0x7

    :try_start_0
    invoke-virtual {p2, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    throw v0

    .line 110
    .end local v0    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 113
    const/4 v2, 0x4

    :try_start_1
    invoke-virtual {p2, v1, v2}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v2

    if-nez v2, :cond_3

    .line 114
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    :catch_1
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v2, v4}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 119
    :try_start_2
    invoke-virtual {p2, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v2

    iput-byte v2, p0, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;->result:B

    .line 120
    add-int/lit8 v1, v1, 0x1

    .line 123
    iget-byte v2, p0, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;->result:B

    if-nez v2, :cond_4

    .line 124
    invoke-virtual {p2, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v2

    iput-byte v2, p0, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;->registerValue:B

    .line 129
    iget-byte v2, p0, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;->registerValue:B

    iget-byte v3, p0, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;->REGISTER212:B

    and-int/2addr v2, v3

    iget-byte v3, p0, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;->REGISTER212:B

    if-ne v2, v3, :cond_5

    .line 130
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;->baudrate:Z

    .line 136
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p2, v2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v2

    if-nez v2, :cond_6

    .line 137
    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v2

    if-nez v2, :cond_6

    .line 138
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2

    .line 126
    :cond_4
    new-instance v2, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v2

    .line 132
    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;->baudrate:Z
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 141
    :cond_6
    return-object p0
.end method

.method public getBaudrate()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;->baudrate:Z

    return v0
.end method

.method public getBaudrateInSetRfResigerCommand()B
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;->baudrate:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x7f

    :goto_0
    return v0

    .line 183
    :cond_0
    const/16 v0, -0x7e

    goto :goto_0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 158
    iget-byte v0, p0, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;->result:B

    return v0
.end method
