.class Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;
.super Lcom/felicanetworks/felica/offlineimpl/Command;
.source "SetPrivacyFlagCommand.java"


# static fields
.field private static final CODE:B = -0x34t

.field private static final FCODE:B = 0x1t

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;


# instance fields
.field private idm:[B

.field private privacySettingData:[Lcom/felicanetworks/mfc/PrivacySettingData;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 49
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Command;-><init>()V

    .line 51
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 52
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 63
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;

    if-nez v0, :cond_0

    .line 65
    const-string v0, "%s"

    const-string v1, "001"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 66
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;

    .line 68
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;

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
    const/4 v4, 0x1

    const/4 v3, 0x6

    .line 83
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 84
    if-nez p1, :cond_0

    .line 85
    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 86
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v1, v4}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 90
    :cond_0
    const/16 v1, -0x34

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 91
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 92
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;->idm:[B

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 93
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->getInstance()Lcom/felicanetworks/felica/offlineimpl/DataUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;->privacySettingData:[Lcom/felicanetworks/mfc/PrivacySettingData;

    invoke-virtual {v1, p1, v2}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->append(Lcom/felicanetworks/felica/util/ByteBuffer;[Lcom/felicanetworks/mfc/PrivacySettingData;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 99
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "%s"

    const-string v2, "701"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 96
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1
.end method

.method get(Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;
    .locals 5
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    .line 113
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 114
    if-nez p1, :cond_0

    .line 115
    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 116
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 118
    :cond_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;->getInstance()Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;

    move-result-object v0

    .line 119
    .local v0, "response":Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;
    const-string v1, "%s return=%s"

    const-string v2, "999"

    invoke-virtual {p1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getBytes()[B

    move-result-object v3

    invoke-static {v4, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;->get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v1

    return-object v1
.end method

.method getIDm()[B
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 131
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 132
    const-string v0, "%s return=%s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;->idm:[B

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;->idm:[B

    return-object v0
.end method

.method getPrivacySettingData()[Lcom/felicanetworks/mfc/PrivacySettingData;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 158
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 159
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;->privacySettingData:[Lcom/felicanetworks/mfc/PrivacySettingData;

    return-object v0
.end method

.method setIDm([B)V
    .locals 3
    .param p1, "idm"    # [B

    .prologue
    const/4 v2, 0x6

    .line 145
    const-string v0, "%s idm=%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 147
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;->idm:[B

    .line 148
    return-void
.end method

.method setPrivacySettingData([Lcom/felicanetworks/mfc/PrivacySettingData;)V
    .locals 3
    .param p1, "privacySettingData"    # [Lcom/felicanetworks/mfc/PrivacySettingData;

    .prologue
    const/4 v2, 0x6

    .line 172
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 173
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 174
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;->privacySettingData:[Lcom/felicanetworks/mfc/PrivacySettingData;

    .line 175
    return-void
.end method
