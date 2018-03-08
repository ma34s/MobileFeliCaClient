.class Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;
.super Lcom/felicanetworks/felica/offlineimpl/Response;
.source "StartAdhocModeResponse.java"


# static fields
.field private static final CODE:B = -0x53t

.field private static final RESPONSE_HEADER_SIZE1:I = 0x8

.field private static final RESPONSE_HEADER_SIZE2:I = 0x4

.field private static final STATUS_FLAG1_TRUE:I

.field private static adhocInformation:Lcom/felicanetworks/mfc/AdhocInformation;

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;

.field private static statusFlag1:I

.field private static statusFlag2:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 57
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Response;-><init>()V

    .line 59
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 60
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 71
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 73
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 75
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;

    .line 78
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;

    return-object v0
.end method


# virtual methods
.method get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;
    .locals 10
    .param p1, "command"    # Lcom/felicanetworks/felica/offlineimpl/Command;
    .param p2, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x2

    .line 96
    const-string v3, "%s"

    const-string v4, "000"

    invoke-static {v9, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 98
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 99
    :cond_0
    const-string v3, "%s : Throw OfflineException = %d"

    const-string v4, "700"

    .line 100
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 99
    invoke-static {v7, v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v3, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v3

    .line 105
    :cond_1
    const/4 v1, 0x1

    .line 108
    .local v1, "index":I
    const/16 v3, -0x53

    :try_start_0
    invoke-virtual {p2, v1, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v3

    if-nez v3, :cond_2

    .line 109
    const/4 v3, 0x2

    const-string v4, "%s : Throw OfflineException = %d"

    const-string v5, "701"

    .line 110
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 109
    invoke-static {v3, v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v3
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const-string v3, "%s : %s = %d"

    const-string v4, "704"

    const-string v5, "catch OfflineException"

    invoke-virtual {v0}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7, v3, v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    throw v0

    .line 113
    .end local v0    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 116
    :try_start_1
    invoke-virtual {p2, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    sput v3, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;->statusFlag1:I

    .line 117
    add-int/lit8 v1, v1, 0x1

    .line 120
    invoke-virtual {p2, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    sput v3, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;->statusFlag2:I

    .line 122
    sget v3, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;->statusFlag1:I

    if-nez v3, :cond_3

    .line 123
    const/4 v3, 0x7

    const-string v4, "%s"

    const-string v5, "001"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 125
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->getInstance()Lcom/felicanetworks/felica/offlineimpl/DataUtil;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->createAdhocInformation(Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/mfc/AdhocInformation;

    move-result-object v3

    sput-object v3, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;->adhocInformation:Lcom/felicanetworks/mfc/AdhocInformation;

    .line 127
    sget-object v3, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;->adhocInformation:Lcom/felicanetworks/mfc/AdhocInformation;

    invoke-virtual {v3}, Lcom/felicanetworks/mfc/AdhocInformation;->getReceiveData()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v2, v3, 0x8

    .line 129
    .local v2, "responseLength":I
    const/4 v3, 0x0

    int-to-byte v4, v2

    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v3

    if-nez v3, :cond_4

    .line 130
    const/4 v3, 0x2

    const-string v4, "%s : Throw OfflineException = %d"

    const-string v5, "702"

    .line 131
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 130
    invoke-static {v3, v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v3
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    .end local v2    # "responseLength":I
    :catch_1
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "%s : %s"

    const-string v4, "705"

    const-string v5, "Throw OfflineException.TYPE_INVALID_RESPONSE"

    invoke-static {v7, v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v3, v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v3

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v3, 0x7

    :try_start_2
    const-string v4, "%s"

    const-string v5, "002"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 136
    const/4 v3, 0x0

    sput-object v3, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;->adhocInformation:Lcom/felicanetworks/mfc/AdhocInformation;

    .line 137
    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v3

    if-nez v3, :cond_4

    .line 138
    const/4 v3, 0x2

    const-string v4, "%s : Throw OfflineException = %d"

    const-string v5, "703"

    .line 139
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 138
    invoke-static {v3, v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    new-instance v3, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v3
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 152
    :cond_4
    const-string v3, "%s"

    const-string v4, "999"

    invoke-static {v9, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 153
    return-object p0
.end method

.method getAdhocInformation()Lcom/felicanetworks/mfc/AdhocInformation;
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 190
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 191
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 192
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;->adhocInformation:Lcom/felicanetworks/mfc/AdhocInformation;

    return-object v0
.end method

.method getStatusFlag1()I
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 164
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 165
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 166
    sget v0, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;->statusFlag1:I

    return v0
.end method

.method getStatusFlag2()I
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 177
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 178
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 179
    sget v0, Lcom/felicanetworks/felica/offlineimpl/StartAdhocModeResponse;->statusFlag2:I

    return v0
.end method
