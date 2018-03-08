.class Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;
.super Lcom/felicanetworks/felica/offlineimpl/Response;
.source "RequestMaskedCodeListResponse.java"


# static fields
.field private static final CODE:B = -0x33t

.field private static final CONTINUE_FLAG_DISABLE:I = 0x0

.field private static final CONTINUE_FLAG_ENABLE:I = 0x1

.field private static final FCODE:B = 0x2t

.field private static final IDM_LENGTH:I = 0x8

.field private static final MAX_LIST_NUM:I = 0x18

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;


# instance fields
.field private continueFlag:B

.field private idm:[B

.field private nodeInformation:Lcom/felicanetworks/mfc/NodeInformation;

.field private statusFlag1:B

.field private statusFlag2:B


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 79
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Response;-><init>()V

    .line 81
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 82
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 93
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 94
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "%s"

    const-string v1, "001"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 96
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;

    .line 98
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 99
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;

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
    const/4 v10, 0x4

    const/4 v9, 0x1

    .line 116
    const-string v5, "%s"

    const-string v6, "000"

    invoke-static {v10, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 117
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 118
    :cond_0
    const-string v5, "%s"

    const-string v6, "700"

    invoke-static {v9, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 119
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v5, v9}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5

    .line 124
    :cond_1
    const/4 v3, 0x1

    .line 127
    .local v3, "index":I
    const/16 v5, -0x33

    :try_start_0
    invoke-virtual {p2, v3, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v5

    if-nez v5, :cond_2

    .line 128
    const/4 v5, 0x1

    const-string v6, "%s"

    const-string v7, "701"

    invoke-static {v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 129
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const-string v5, "%s"

    const-string v6, "705"

    invoke-static {v9, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 201
    throw v2

    .line 131
    .end local v2    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 134
    const/4 v5, 0x2

    :try_start_1
    invoke-virtual {p2, v3, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v5

    if-nez v5, :cond_3

    .line 135
    const/4 v5, 0x1

    const-string v6, "%s"

    const-string v7, "702"

    invoke-static {v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 136
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    :catch_1
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "%s"

    const-string v6, "706"

    invoke-static {v9, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 204
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v5, v10}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5

    .line 138
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 141
    :try_start_2
    move-object v0, p1

    check-cast v0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;

    move-object v1, v0

    .line 142
    .local v1, "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListCommand;->getIDm()[B

    move-result-object v5

    invoke-virtual {p2, v3, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(I[B)Z

    move-result v5

    if-nez v5, :cond_4

    .line 143
    const/4 v5, 0x1

    const-string v6, "%s"

    const-string v7, "703"

    invoke-static {v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 144
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5

    .line 148
    :cond_4
    const/16 v5, 0x8

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->idm:[B

    .line 149
    iget-object v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->idm:[B

    invoke-virtual {p2, v3, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[B)V

    .line 150
    add-int/lit8 v3, v3, 0x8

    .line 152
    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v5

    iput-byte v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->statusFlag1:B

    .line 153
    add-int/lit8 v3, v3, 0x1

    .line 155
    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v5

    iput-byte v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->statusFlag2:B

    .line 156
    add-int/lit8 v3, v3, 0x1

    .line 158
    iget-byte v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->statusFlag1:B

    if-nez v5, :cond_6

    .line 159
    const/4 v5, 0x6

    const-string v6, "%s"

    const-string v7, "001"

    invoke-static {v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 161
    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v5

    iput-byte v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->continueFlag:B

    .line 162
    add-int/lit8 v3, v3, 0x1

    .line 165
    iget-byte v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->continueFlag:B

    if-eq v9, v5, :cond_5

    iget-byte v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->continueFlag:B

    if-eqz v5, :cond_5

    .line 166
    const/4 v5, 0x1

    const-string v6, "%s : %s"

    const-string v7, "703"

    .line 167
    const-string v8, "Throw OfflineException.TYPE_INVALID_RESPONSE"

    .line 166
    invoke-static {v5, v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5

    .line 171
    :cond_5
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->getInstance()Lcom/felicanetworks/felica/offlineimpl/DataUtil;

    move-result-object v5

    .line 172
    const/4 v6, 0x4

    .line 171
    invoke-virtual {v5, p2, v6, v3}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->createNodeInformation(Lcom/felicanetworks/felica/util/ByteBuffer;II)Lcom/felicanetworks/mfc/NodeInformation;

    move-result-object v5

    iput-object v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->nodeInformation:Lcom/felicanetworks/mfc/NodeInformation;

    .line 173
    add-int/lit8 v3, v3, 0x1

    .line 174
    iget-object v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->nodeInformation:Lcom/felicanetworks/mfc/NodeInformation;

    invoke-virtual {v5}, Lcom/felicanetworks/mfc/NodeInformation;->getAreaInformationList()[Lcom/felicanetworks/mfc/AreaInformation;

    move-result-object v5

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x8

    add-int/lit8 v3, v5, 0xf

    .line 175
    add-int/lit8 v3, v3, 0x1

    .line 176
    iget-object v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->nodeInformation:Lcom/felicanetworks/mfc/NodeInformation;

    invoke-virtual {v5}, Lcom/felicanetworks/mfc/NodeInformation;->getServiceCodeList()[I

    move-result-object v5

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v3, v5

    .line 179
    iget-object v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->nodeInformation:Lcom/felicanetworks/mfc/NodeInformation;

    invoke-virtual {v5}, Lcom/felicanetworks/mfc/NodeInformation;->getAreaInformationList()[Lcom/felicanetworks/mfc/AreaInformation;

    move-result-object v5

    array-length v5, v5

    .line 180
    iget-object v6, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->nodeInformation:Lcom/felicanetworks/mfc/NodeInformation;

    invoke-virtual {v6}, Lcom/felicanetworks/mfc/NodeInformation;->getServiceCodeList()[I

    move-result-object v6

    array-length v6, v6

    .line 179
    add-int v4, v5, v6

    .line 181
    .local v4, "listNum":I
    const/16 v5, 0x18

    if-le v4, v5, :cond_7

    .line 182
    const/4 v5, 0x1

    const-string v6, "%s : List over(%d)"

    const-string v7, "806"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5

    .line 186
    .end local v4    # "listNum":I
    :cond_6
    const/4 v5, 0x6

    const-string v6, "%s"

    const-string v7, "002"

    invoke-static {v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 187
    const/4 v5, 0x0

    iput-byte v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->continueFlag:B

    .line 188
    new-instance v5, Lcom/felicanetworks/mfc/NodeInformation;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/felicanetworks/mfc/AreaInformation;

    const/4 v7, 0x0

    new-array v7, v7, [I

    invoke-direct {v5, v6, v7}, Lcom/felicanetworks/mfc/NodeInformation;-><init>([Lcom/felicanetworks/mfc/AreaInformation;[I)V

    iput-object v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->nodeInformation:Lcom/felicanetworks/mfc/NodeInformation;

    .line 192
    :cond_7
    invoke-virtual {p2}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v5

    if-eq v3, v5, :cond_8

    .line 193
    const/4 v5, 0x1

    const-string v6, "%s"

    const-string v7, "704"

    invoke-static {v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 194
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5

    .line 197
    :cond_8
    const/4 v5, 0x4

    const-string v6, "%s"

    const-string v7, "999"

    invoke-static {v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 198
    return-object p0
.end method

.method getContinueFlag()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 253
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 254
    const-string v0, "%s return=%d"

    const-string v1, "999"

    iget-byte v2, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->continueFlag:B

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    iget-byte v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->continueFlag:B

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method getIDm()[B
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 216
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 217
    const-string v0, "%s idm=%s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->idm:[B

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->idm:[B

    return-object v0
.end method

.method getNodeInformation()Lcom/felicanetworks/mfc/NodeInformation;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 266
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 267
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->nodeInformation:Lcom/felicanetworks/mfc/NodeInformation;

    return-object v0
.end method

.method getStatusFlag1()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 228
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 229
    const-string v0, "%s return=%d"

    const-string v1, "999"

    iget-byte v2, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->statusFlag1:B

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 230
    iget-byte v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->statusFlag1:B

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method getStatusFlag2()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 240
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 241
    const-string v0, "%s return=%d"

    const-string v1, "999"

    iget-byte v2, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->statusFlag2:B

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    iget-byte v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestMaskedCodeListResponse;->statusFlag2:B

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
