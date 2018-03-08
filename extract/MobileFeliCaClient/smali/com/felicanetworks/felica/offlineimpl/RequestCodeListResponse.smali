.class Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;
.super Lcom/felicanetworks/felica/offlineimpl/Response;
.source "RequestCodeListResponse.java"


# static fields
.field private static final CODE:B = 0x1bt

.field private static final CONTINUE_FLAG_DISABLE:I = 0x0

.field private static final CONTINUE_FLAG_ENABLE:I = 0x1

.field private static final IDM_LENGTH:I = 0x8

.field private static final MAX_LIST_NUM:I = 0x18

.field private static final STATUS_FLAG1_OK:I

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;


# instance fields
.field private continueFlag:I

.field private idm:[B

.field private nodeInformation:Lcom/felicanetworks/mfc/NodeInformation;

.field private statusFlag1:I

.field private statusFlag2:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Response;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 83
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 84
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 86
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;

    .line 88
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;

    return-object v0
.end method


# virtual methods
.method get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;
    .locals 14
    .param p1, "command"    # Lcom/felicanetworks/felica/offlineimpl/Command;
    .param p2, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x5

    const/4 v10, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x4

    .line 107
    const-string v7, "%s"

    const-string v8, "000"

    invoke-static {v13, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 109
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 110
    :cond_0
    const-string v7, "%s : %s"

    const-string v8, "700"

    .line 111
    const-string v9, "Throw OfflineException.TYPE_INVALID_PARAMETER"

    .line 110
    invoke-static {v12, v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    new-instance v7, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v7, v10}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v7

    .line 117
    :cond_1
    const/4 v3, 0x1

    .line 120
    .local v3, "index":I
    const/16 v7, 0x1b

    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v7

    if-nez v7, :cond_2

    .line 121
    const/4 v7, 0x2

    const-string v8, "%s : %s"

    const-string v9, "701"

    .line 122
    const-string v10, "Throw OfflineException.TYPE_INVALID_RESPONSE"

    .line 121
    invoke-static {v7, v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    new-instance v7, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v7
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const-string v7, "%s : %s = %d"

    const-string v8, "706"

    const-string v9, "catch OfflineException"

    invoke-virtual {v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->getType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v12, v7, v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    throw v2

    .line 127
    .end local v2    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 128
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;

    move-object v1, v0

    .line 129
    .local v1, "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->getIDm()[B

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(I[B)Z

    move-result v7

    if-nez v7, :cond_3

    .line 130
    const/4 v7, 0x2

    const-string v8, "%s : %s"

    const-string v9, "702"

    .line 131
    const-string v10, "Throw OfflineException.TYPE_INVALID_RESPONSE"

    .line 130
    invoke-static {v7, v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    new-instance v7, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v7
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    .end local v1    # "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;
    :catch_1
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "%s : %s"

    const-string v8, "707"

    const-string v9, "Throw OfflineException.TYPE_INVALID_RESPONSE"

    invoke-static {v12, v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    new-instance v7, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v7, v11}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v7

    .line 136
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;
    :cond_3
    const/16 v7, 0x8

    :try_start_2
    new-array v7, v7, [B

    iput-object v7, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->idm:[B

    .line 137
    iget-object v7, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->idm:[B

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[B)V

    .line 138
    add-int/lit8 v3, v3, 0x8

    .line 141
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    iput v7, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->statusFlag1:I

    .line 142
    add-int/lit8 v3, v3, 0x1

    .line 145
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    iput v7, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->statusFlag2:I

    .line 146
    add-int/lit8 v3, v3, 0x1

    .line 148
    iget v7, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->statusFlag1:I

    if-nez v7, :cond_6

    .line 149
    const/4 v7, 0x7

    const-string v8, "%s"

    const-string v9, "001"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 152
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    iput v7, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->continueFlag:I

    .line 153
    add-int/lit8 v3, v3, 0x1

    .line 156
    iget v7, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->continueFlag:I

    if-eq v10, v7, :cond_4

    iget v7, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->continueFlag:I

    if-eqz v7, :cond_4

    .line 157
    const/4 v7, 0x2

    const-string v8, "%s : %s"

    const-string v9, "703"

    .line 158
    const-string v10, "Throw OfflineException.TYPE_INVALID_RESPONSE"

    .line 157
    invoke-static {v7, v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    new-instance v7, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v7

    .line 163
    :cond_4
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->getInstance()Lcom/felicanetworks/felica/offlineimpl/DataUtil;

    move-result-object v7

    .line 164
    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->getNodeCodeSize()I

    move-result v8

    .line 163
    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v8, v3}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->createNodeInformation(Lcom/felicanetworks/felica/util/ByteBuffer;II)Lcom/felicanetworks/mfc/NodeInformation;

    move-result-object v7

    iput-object v7, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->nodeInformation:Lcom/felicanetworks/mfc/NodeInformation;

    .line 167
    iget-object v7, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->nodeInformation:Lcom/felicanetworks/mfc/NodeInformation;

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/NodeInformation;->getAreaInformationList()[Lcom/felicanetworks/mfc/AreaInformation;

    move-result-object v7

    array-length v7, v7

    .line 168
    iget-object v8, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->nodeInformation:Lcom/felicanetworks/mfc/NodeInformation;

    invoke-virtual {v8}, Lcom/felicanetworks/mfc/NodeInformation;->getServiceCodeList()[I

    move-result-object v8

    array-length v8, v8

    .line 167
    add-int v6, v7, v8

    .line 169
    .local v6, "listNum":I
    const/16 v7, 0x18

    if-le v6, v7, :cond_5

    .line 170
    const/4 v7, 0x1

    const-string v8, "%s : List over(%d)"

    const-string v9, "806"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    new-instance v7, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v7

    .line 175
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->getNodeCodeSize()I

    move-result v8

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v7, 0xd

    .line 177
    .local v4, "length1":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v7

    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListCommand;->getNodeCodeSize()I

    move-result v8

    mul-int/2addr v7, v8

    add-int/lit8 v5, v7, 0x1

    .line 178
    .local v5, "length2":I
    add-int v7, v4, v5

    invoke-virtual/range {p2 .. p2}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v8

    if-eq v7, v8, :cond_7

    .line 179
    const/4 v7, 0x1

    const-string v8, "%s : %s"

    const-string v9, "804"

    .line 180
    const-string v10, "Throw OfflineException.TYPE_INVALID_RESPONSE"

    .line 179
    invoke-static {v7, v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    new-instance v7, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v7

    .line 184
    .end local v4    # "length1":I
    .end local v5    # "length2":I
    .end local v6    # "listNum":I
    :cond_6
    const/4 v7, 0x7

    const-string v8, "%s"

    const-string v9, "002"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 185
    new-instance v7, Lcom/felicanetworks/mfc/NodeInformation;

    const/4 v8, 0x0

    new-array v8, v8, [Lcom/felicanetworks/mfc/AreaInformation;

    const/4 v9, 0x0

    new-array v9, v9, [I

    invoke-direct {v7, v8, v9}, Lcom/felicanetworks/mfc/NodeInformation;-><init>([Lcom/felicanetworks/mfc/AreaInformation;[I)V

    iput-object v7, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->nodeInformation:Lcom/felicanetworks/mfc/NodeInformation;

    .line 187
    invoke-virtual/range {p2 .. p2}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v7

    if-eq v3, v7, :cond_7

    .line 188
    const/4 v7, 0x1

    const-string v8, "%s : %s"

    const-string v9, "805"

    .line 189
    const-string v10, "Throw OfflineException.TYPE_INVALID_RESPONSE"

    .line 188
    invoke-static {v7, v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    new-instance v7, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v7
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 202
    :cond_7
    const-string v7, "%s"

    const-string v8, "999"

    invoke-static {v13, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 203
    return-object p0
.end method

.method getContinueFlag()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 250
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 251
    const-string v0, "%s : continueFlag = %d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->continueFlag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->continueFlag:I

    return v0
.end method

.method getIDm()[B
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 213
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 214
    const-string v0, "%s : idm = %s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->idm:[B

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->idm:[B

    return-object v0
.end method

.method getNodeInformation()Lcom/felicanetworks/mfc/NodeInformation;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 263
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 264
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->nodeInformation:Lcom/felicanetworks/mfc/NodeInformation;

    return-object v0
.end method

.method getStatusFlag1()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 225
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 226
    const-string v0, "%s : statusFlag1 = %d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->statusFlag1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->statusFlag1:I

    return v0
.end method

.method getStatusFlag2()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 237
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 238
    const-string v0, "%s : statusFlag2 = %d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->statusFlag2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestCodeListResponse;->statusFlag2:I

    return v0
.end method
