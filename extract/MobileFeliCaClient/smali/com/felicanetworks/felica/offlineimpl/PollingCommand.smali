.class Lcom/felicanetworks/felica/offlineimpl/PollingCommand;
.super Lcom/felicanetworks/felica/offlineimpl/Command;
.source "PollingCommand.java"


# static fields
.field private static final CODE:B = 0x0t

.field private static final OPTION_SYSTEM:B = 0x1t

.field private static final OPTION_WIRELESS:B = 0x2t

.field private static final TIME_SLOT:B

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/PollingCommand;


# instance fields
.field private option:B

.field private systemCode:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Command;-><init>()V

    .line 59
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/PollingCommand;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/PollingCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/PollingCommand;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/PollingCommand;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/PollingCommand;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/PollingCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/PollingCommand;

    .line 72
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/PollingCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/PollingCommand;

    return-object v0
.end method


# virtual methods
.method doSet(Lcom/felicanetworks/felica/util/ByteBuffer;)V
    .locals 5
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 92
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 93
    iget v1, p0, Lcom/felicanetworks/felica/offlineimpl/PollingCommand;->systemCode:I

    int-to-long v2, v1

    const/4 v1, 0x2

    invoke-virtual {p1, v2, v3, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInBigEndian(JI)V

    .line 94
    iget-byte v1, p0, Lcom/felicanetworks/felica/offlineimpl/PollingCommand;->option:B

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 95
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v1, v4}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

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
    .line 114
    if-nez p1, :cond_0

    .line 115
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 118
    :cond_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/PollingResponse;->getInstance()Lcom/felicanetworks/felica/offlineimpl/PollingResponse;

    move-result-object v0

    .line 119
    .local v0, "response":Lcom/felicanetworks/felica/offlineimpl/PollingResponse;
    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/felica/offlineimpl/PollingResponse;->get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v1

    return-object v1
.end method

.method getSystemCode()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/PollingCommand;->systemCode:I

    return v0
.end method

.method setOption(B)V
    .locals 0
    .param p1, "option"    # B

    .prologue
    .line 155
    iput-byte p1, p0, Lcom/felicanetworks/felica/offlineimpl/PollingCommand;->option:B

    .line 156
    return-void
.end method

.method setSystemCode(I)V
    .locals 0
    .param p1, "systemCode"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/felicanetworks/felica/offlineimpl/PollingCommand;->systemCode:I

    .line 143
    return-void
.end method
