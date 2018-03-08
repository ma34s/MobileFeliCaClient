.class Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;
.super Lcom/felicanetworks/felica/offlineimpl/Response;
.source "ProposeAdhocResponse.java"


# static fields
.field private static final ADHOC_MODE:B = 0x1t

.field private static final CODE:B = -0x55t

.field private static final IDM_LENGTH:I = 0x8

.field public static final RESPONSE_LENGTH:B = 0xft

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;


# instance fields
.field private idm:[B

.field private sendDataSize:I

.field private statusFlag1:B

.field private statusFlag2:B


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 73
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Response;-><init>()V

    .line 75
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 76
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 87
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 88
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 90
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;

    .line 93
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 94
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;

    return-object v0
.end method


# virtual methods
.method get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;
    .locals 11
    .param p1, "command"    # Lcom/felicanetworks/felica/offlineimpl/Command;
    .param p2, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x4

    .line 111
    const-string v4, "%s : command = %s, byteBuffer = %s"

    const-string v5, "000"

    invoke-static {v10, v4, v5, p1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 114
    :cond_0
    const-string v4, "%s : Throw OfflineException = %d"

    const-string v5, "700"

    .line 115
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 114
    invoke-static {v7, v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v4, v9}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 121
    :cond_1
    const/4 v3, 0x1

    .line 124
    .local v3, "index":I
    const/16 v4, -0x55

    :try_start_0
    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v4

    if-nez v4, :cond_2

    .line 125
    const/4 v4, 0x2

    const-string v5, "%s : %s"

    const-string v6, "701"

    .line 126
    const-string v7, "Throw OfflineException.TYPE_INVALID_RESPONSE"

    .line 125
    invoke-static {v4, v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const-string v4, "%s : %s = %d"

    const-string v5, "703"

    const-string v6, "catch OfflineException"

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v4, v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    throw v2

    .line 131
    .end local v2    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 132
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;

    move-object v1, v0

    .line 133
    .local v1, "cmd":Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;->getIDm()[B

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(I[B)Z

    move-result v4

    if-nez v4, :cond_3

    .line 134
    const/4 v4, 0x2

    const-string v5, "%s : %s"

    const-string v6, "702"

    .line 135
    const-string v7, "Throw OfflineException.TYPE_INVALID_RESPONSE"

    .line 134
    invoke-static {v4, v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    .end local v1    # "cmd":Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;
    :catch_1
    move-exception v2

    .line 172
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "%s : %s"

    const-string v5, "704"

    const-string v6, "Throw OfflineException.TYPE_INVALID_RESPONSE"

    invoke-static {v8, v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v4, v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 140
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cmd":Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocCommand;
    :cond_3
    const/16 v4, 0x8

    :try_start_2
    new-array v4, v4, [B

    iput-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->idm:[B

    .line 141
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->idm:[B

    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[B)V

    .line 142
    add-int/lit8 v3, v3, 0x8

    .line 145
    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v4

    iput-byte v4, p0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->statusFlag1:B

    .line 146
    add-int/lit8 v3, v3, 0x1

    .line 148
    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v4

    iput-byte v4, p0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->statusFlag2:B

    .line 149
    add-int/lit8 v3, v3, 0x1

    .line 151
    iget-byte v4, p0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->statusFlag1:B

    if-nez v4, :cond_4

    .line 152
    const/4 v4, 0x6

    const-string v5, "%s"

    const-string v6, "001"

    invoke-static {v4, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 155
    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v4

    if-nez v4, :cond_4

    .line 156
    const/4 v4, 0x2

    const-string v5, "%s : %s"

    const-string v6, "701"

    .line 157
    const-string v7, "Throw OfflineException.TYPE_INVALID_RESPONSE"

    .line 156
    invoke-static {v4, v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 176
    :cond_4
    const-string v4, "%s"

    const-string v5, "999"

    invoke-static {v10, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 177
    return-object p0
.end method

.method getIDm()[B
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 187
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 188
    const-string v0, "%s : idm = %s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->idm:[B

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->idm:[B

    return-object v0
.end method

.method getSendDataSize()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 224
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 225
    const-string v0, "%s : sendDataSize = %d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->sendDataSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->sendDataSize:I

    return v0
.end method

.method getStatusFlag1()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 199
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 200
    const-string v0, "%s return=%d"

    const-string v1, "999"

    iget-byte v2, p0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->statusFlag1:B

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    iget-byte v0, p0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->statusFlag1:B

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method getStatusFlag2()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 211
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 212
    const-string v0, "%s return=%d"

    const-string v1, "999"

    iget-byte v2, p0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->statusFlag2:B

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    iget-byte v0, p0, Lcom/felicanetworks/felica/offlineimpl/ProposeAdhocResponse;->statusFlag2:B

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
