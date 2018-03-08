.class Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;
.super Lcom/felicanetworks/felica/offlineimpl/Response;
.source "SetPrivacyFlagResponse.java"


# static fields
.field private static final CODE:B = -0x33t

.field private static final FCODE:B = 0x1t

.field private static final IDM_LENGTH:I = 0x8

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;


# instance fields
.field private idm:[B

.field private statusFlag1:B

.field private statusFlag2:B


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 51
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Response;-><init>()V

    .line 53
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 54
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 65
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;

    if-nez v0, :cond_0

    .line 67
    const-string v0, "%s"

    const-string v1, "001"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 68
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;

    .line 70
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;

    return-object v0
.end method


# virtual methods
.method get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;
    .locals 9
    .param p1, "command"    # Lcom/felicanetworks/felica/offlineimpl/Command;
    .param p2, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x6

    .line 88
    const-string v4, "%s"

    const-string v5, "000"

    invoke-static {v7, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 89
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 90
    :cond_0
    const-string v4, "%s"

    const-string v5, "700"

    invoke-static {v7, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 91
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v4, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 96
    :cond_1
    const/4 v3, 0x1

    .line 99
    .local v3, "index":I
    const/16 v4, -0x33

    :try_start_0
    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v4

    if-nez v4, :cond_2

    .line 100
    const/4 v4, 0x6

    const-string v5, "%s"

    const-string v6, "701"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 101
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const-string v4, "%s"

    const-string v5, "705"

    invoke-static {v7, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 140
    throw v2

    .line 103
    .end local v2    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 106
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v4

    if-nez v4, :cond_3

    .line 107
    const/4 v4, 0x6

    const-string v5, "%s"

    const-string v6, "702"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 108
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    :catch_1
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "%s"

    const-string v5, "705"

    invoke-static {v7, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 143
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v4, v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 110
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 113
    :try_start_2
    move-object v0, p1

    check-cast v0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;

    move-object v1, v0

    .line 114
    .local v1, "cmd":Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagCommand;->getIDm()[B

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(I[B)Z

    move-result v4

    if-nez v4, :cond_4

    .line 115
    const/4 v4, 0x6

    const-string v5, "%s"

    const-string v6, "703"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 116
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 120
    :cond_4
    const/16 v4, 0x8

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;->idm:[B

    .line 121
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;->idm:[B

    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[B)V

    .line 122
    add-int/lit8 v3, v3, 0x8

    .line 124
    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v4

    iput-byte v4, p0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;->statusFlag1:B

    .line 125
    add-int/lit8 v3, v3, 0x1

    .line 127
    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v4

    iput-byte v4, p0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;->statusFlag2:B

    .line 128
    add-int/lit8 v3, v3, 0x1

    .line 131
    invoke-virtual {p2}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 132
    const/4 v4, 0x6

    const-string v5, "%s"

    const-string v6, "704"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 133
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 136
    :cond_5
    const/4 v4, 0x6

    const-string v5, "%s"

    const-string v6, "999"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 137
    return-object p0
.end method

.method getIDm()[B
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 154
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 155
    const-string v0, "%s return=%s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;->idm:[B

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;->idm:[B

    return-object v0
.end method

.method getStatusFlag1()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 166
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 167
    const-string v0, "%s return=%d"

    const-string v1, "999"

    iget-byte v2, p0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;->statusFlag1:B

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    iget-byte v0, p0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;->statusFlag1:B

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method getStatusFlag2()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 178
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 179
    const-string v0, "%s return=%d"

    const-string v1, "999"

    iget-byte v2, p0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;->statusFlag2:B

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    iget-byte v0, p0, Lcom/felicanetworks/felica/offlineimpl/SetPrivacyFlagResponse;->statusFlag2:B

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
