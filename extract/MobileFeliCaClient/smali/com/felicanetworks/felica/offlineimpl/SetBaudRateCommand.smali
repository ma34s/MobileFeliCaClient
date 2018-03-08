.class public Lcom/felicanetworks/felica/offlineimpl/SetBaudRateCommand;
.super Lcom/felicanetworks/felica/offlineimpl/Command;
.source "SetBaudRateCommand.java"


# static fields
.field public static final BAUDRATE_212:S = 0x81s

.field public static final BAUDRATE_424:S = 0x82s

.field private static final CODE:B = -0x34t

.field private static final FCODE:B = 0x13t

.field private static baudRate:B

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/SetBaudRateCommand;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Command;-><init>()V

    .line 54
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/SetBaudRateCommand;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/SetBaudRateCommand;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateCommand;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateCommand;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/SetBaudRateCommand;

    .line 67
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/SetBaudRateCommand;

    return-object v0
.end method

.method public static setBaudRate(B)V
    .locals 0
    .param p0, "baudratePolling"    # B

    .prologue
    .line 124
    sput-byte p0, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateCommand;->baudRate:B

    .line 126
    return-void
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
    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 86
    :cond_0
    const/16 v1, -0x34

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 87
    const/16 v1, 0x13

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 88
    sget-byte v1, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateCommand;->baudRate:B

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
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
    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 111
    :cond_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;->getInstance()Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;

    move-result-object v0

    .line 112
    .local v0, "response":Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;
    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/felica/offlineimpl/SetBaudRateResponse;->get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v1

    return-object v1
.end method
