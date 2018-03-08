.class Lcom/felicanetworks/felica/offlineimpl/PushResponse;
.super Lcom/felicanetworks/felica/offlineimpl/Response;
.source "PushResponse.java"


# static fields
.field private static final CODE:B = -0x4ft

.field private static final IDM_LENGTH:I = 0x8

.field private static final RESPONSE_LENGTH:B = 0xbt

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/PushResponse;


# instance fields
.field private idm:[B

.field private sendDataSize:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 46
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Response;-><init>()V

    .line 48
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 49
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/PushResponse;
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 60
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 61
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/PushResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/PushResponse;

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 63
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/PushResponse;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/PushResponse;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/PushResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/PushResponse;

    .line 66
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/PushResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/PushResponse;

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
    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v9, 0x4

    const/4 v8, 0x2

    .line 84
    const-string v4, "%s : command = %s, byteBuffer = %s"

    const-string v5, "000"

    invoke-static {v6, v4, v5, p1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 87
    :cond_0
    const-string v4, "%s : Throw OfflineException = %d"

    const-string v5, "700"

    .line 88
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 87
    invoke-static {v8, v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v4, v7}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 94
    :cond_1
    const/4 v3, 0x1

    .line 97
    .local v3, "index":I
    const/16 v4, -0x4f

    :try_start_0
    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v4

    if-nez v4, :cond_2

    .line 98
    const/4 v4, 0x2

    const-string v5, "%s : %s"

    const-string v6, "701"

    .line 99
    const-string v7, "Throw OfflineException.TYPE_INVALID_RESPONSE"

    .line 98
    invoke-static {v4, v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const-string v4, "%s : %s = %d"

    const-string v5, "703"

    const-string v6, "catch OfflineException"

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v4, v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    throw v2

    .line 104
    .end local v2    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 105
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/felicanetworks/felica/offlineimpl/PushCommand;

    move-object v1, v0

    .line 106
    .local v1, "cmd":Lcom/felicanetworks/felica/offlineimpl/PushCommand;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/PushCommand;->getIDm()[B

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(I[B)Z

    move-result v4

    if-nez v4, :cond_3

    .line 107
    const/4 v4, 0x2

    const-string v5, "%s : %s"

    const-string v6, "702"

    .line 108
    const-string v7, "Throw OfflineException.TYPE_INVALID_RESPONSE"

    .line 107
    invoke-static {v4, v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    .end local v1    # "cmd":Lcom/felicanetworks/felica/offlineimpl/PushCommand;
    :catch_1
    move-exception v2

    .line 131
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "%s : %s"

    const-string v5, "704"

    const-string v6, "Throw OfflineException.TYPE_INVALID_RESPONSE"

    invoke-static {v8, v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v4, v9}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 113
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cmd":Lcom/felicanetworks/felica/offlineimpl/PushCommand;
    :cond_3
    const/16 v4, 0x8

    :try_start_2
    new-array v4, v4, [B

    iput-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/PushResponse;->idm:[B

    .line 114
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/PushResponse;->idm:[B

    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[B)V

    .line 115
    add-int/lit8 v3, v3, 0x8

    .line 118
    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/felicanetworks/felica/offlineimpl/PushResponse;->sendDataSize:I

    .line 121
    const/4 v4, 0x0

    const/16 v5, 0xb

    invoke-virtual {p2, v4, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v4

    if-nez v4, :cond_4

    .line 122
    const/4 v4, 0x2

    const-string v5, "%s : %s"

    const-string v6, "705"

    .line 123
    const-string v7, "Throw OfflineException.TYPE_INVALID_RESPONSE"

    .line 122
    invoke-static {v4, v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 135
    :cond_4
    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v6, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 136
    return-object p0
.end method

.method getIDm()[B
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 146
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 147
    const-string v0, "%s : idm = %s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/PushResponse;->idm:[B

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/PushResponse;->idm:[B

    return-object v0
.end method

.method getSendDataSize()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 159
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 160
    const-string v0, "%s : sendDataSize = %d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/felica/offlineimpl/PushResponse;->sendDataSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/PushResponse;->sendDataSize:I

    return v0
.end method
