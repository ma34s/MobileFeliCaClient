.class Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterCommand;
.super Lcom/felicanetworks/felica/offlineimpl/Command;
.source "SetRFChipRegisterCommand.java"


# static fields
.field private static final CODE:B = -0x8t

.field private static final FCODE:B = 0x3t

.field private static final RFREGISTER:B = 0x7t

.field public static final SETPOINT212:B = -0x7ft

.field public static final SETPOINT424:B = -0x7et

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterCommand;


# instance fields
.field private mCurrentBpsSetting:B


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Command;-><init>()V

    .line 47
    const/16 v0, -0x7e

    iput-byte v0, p0, Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterCommand;->mCurrentBpsSetting:B

    .line 60
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterCommand;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterCommand;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterCommand;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterCommand;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterCommand;

    .line 73
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterCommand;

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
    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 94
    :cond_0
    const/4 v1, -0x8

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 95
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 97
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 99
    iget-byte v1, p0, Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterCommand;->mCurrentBpsSetting:B

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
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
    .line 119
    if-nez p1, :cond_0

    .line 120
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 123
    :cond_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterResponse;->getInstance()Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterResponse;

    move-result-object v0

    .line 124
    .local v0, "response":Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterResponse;
    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterResponse;->get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v1

    return-object v1
.end method

.method public setBpsSetting(B)V
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 129
    const/16 v0, -0x7f

    if-eq p1, v0, :cond_0

    const/16 v0, -0x7e

    if-eq p1, v0, :cond_0

    .line 130
    const/4 v0, 0x1

    const-string v1, "SetRfChipRegisterCommand#setBpsSetting invalid param."

    invoke-static {v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    iput-byte p1, p0, Lcom/felicanetworks/felica/offlineimpl/SetRfChipRegisterCommand;->mCurrentBpsSetting:B

    goto :goto_0
.end method
