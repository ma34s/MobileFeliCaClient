.class Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterCommand;
.super Lcom/felicanetworks/felica/offlineimpl/Command;
.source "GetRFChipRegisterCommand.java"


# static fields
.field private static final CODE:B = -0x8t

.field private static final FCODE:B = 0x4t

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterCommand;


# instance fields
.field private RFREGISTER:B


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Command;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterCommand;->RFREGISTER:B

    .line 54
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterCommand;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterCommand;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterCommand;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterCommand;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterCommand;

    .line 67
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterCommand;

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
    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 88
    :cond_0
    const/4 v1, -0x8

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 89
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 90
    iget-byte v1, p0, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterCommand;->RFREGISTER:B

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
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
    .line 110
    if-nez p1, :cond_0

    .line 111
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 114
    :cond_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;->getInstance()Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;

    move-result-object v0

    .line 115
    .local v0, "response":Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;
    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/felica/offlineimpl/GetRfChipRegisterResponse;->get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v1

    return-object v1
.end method
