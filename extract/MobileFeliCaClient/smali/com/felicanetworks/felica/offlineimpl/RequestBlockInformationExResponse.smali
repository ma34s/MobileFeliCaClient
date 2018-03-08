.class Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;
.super Lcom/felicanetworks/felica/offlineimpl/Response;
.source "RequestBlockInformationExResponse.java"


# static fields
.field private static final CODE:B = 0x1ft

.field private static final IDM_LENGTH:I = 0x8

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;


# instance fields
.field blockCountInformation:[Lcom/felicanetworks/mfc/BlockCountInformation;

.field private idm:[B

.field private statusFlag1:B

.field private statusFlag2:B


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 52
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Response;-><init>()V

    .line 54
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 55
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 66
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 69
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;

    .line 71
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;

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
    const/4 v9, 0x4

    const/4 v8, 0x6

    .line 89
    const-string v5, "%s"

    const-string v6, "000"

    invoke-static {v8, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 90
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 91
    :cond_0
    const-string v5, "%s"

    const-string v6, "700"

    invoke-static {v8, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 92
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5

    .line 97
    :cond_1
    const/4 v3, 0x1

    .line 100
    .local v3, "index":I
    const/16 v5, 0x1f

    :try_start_0
    invoke-virtual {p2, v3, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v5

    if-nez v5, :cond_2

    .line 101
    const/4 v5, 0x6

    const-string v6, "%s"

    const-string v7, "701"

    invoke-static {v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 102
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    const-string v5, "%s"

    const-string v6, "705"

    invoke-static {v8, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 149
    throw v2

    .line 104
    .end local v2    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 107
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;

    move-object v1, v0

    .line 108
    .local v1, "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;->getIDm()[B

    move-result-object v5

    invoke-virtual {p2, v3, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(I[B)Z

    move-result v5

    if-nez v5, :cond_3

    .line 109
    const/4 v5, 0x6

    const-string v6, "%s"

    const-string v7, "702"

    invoke-static {v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 110
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    .end local v1    # "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;
    :catch_1
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "%s"

    const-string v6, "706"

    invoke-static {v8, v5, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 152
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v5, v9}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5

    .line 114
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cmd":Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;
    :cond_3
    const/16 v5, 0x8

    :try_start_2
    new-array v5, v5, [B

    iput-object v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->idm:[B

    .line 115
    iget-object v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->idm:[B

    invoke-virtual {p2, v3, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[B)V

    .line 116
    add-int/lit8 v3, v3, 0x8

    .line 118
    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v5

    iput-byte v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->statusFlag1:B

    .line 119
    add-int/lit8 v3, v3, 0x1

    .line 121
    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v5

    iput-byte v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->statusFlag2:B

    .line 122
    add-int/lit8 v3, v3, 0x1

    .line 124
    iget-byte v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->statusFlag1:B

    if-nez v5, :cond_4

    .line 125
    const/4 v5, 0x6

    const-string v6, "%s"

    const-string v7, "001"

    invoke-static {v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExCommand;->getNodeCodeList()[I

    move-result-object v4

    .line 128
    .local v4, "nodeCodeList":[I
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->getInstance()Lcom/felicanetworks/felica/offlineimpl/DataUtil;

    move-result-object v5

    invoke-virtual {v5, p2, v4}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->createBlockCountInformation(Lcom/felicanetworks/felica/util/ByteBuffer;[I)[Lcom/felicanetworks/mfc/BlockCountInformation;

    move-result-object v5

    iput-object v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->blockCountInformation:[Lcom/felicanetworks/mfc/BlockCountInformation;

    .line 131
    add-int/lit8 v3, v3, 0x1

    .line 132
    iget-object v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->blockCountInformation:[Lcom/felicanetworks/mfc/BlockCountInformation;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v3, v5, 0xd

    .line 140
    .end local v4    # "nodeCodeList":[I
    :goto_0
    invoke-virtual {p2}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v5

    if-eq v3, v5, :cond_5

    .line 141
    const/4 v5, 0x6

    const-string v6, "%s"

    const-string v7, "704"

    invoke-static {v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 142
    new-instance v5, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v5

    .line 134
    :cond_4
    const/4 v5, 0x6

    const-string v6, "%s"

    const-string v7, "002"

    invoke-static {v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 136
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->blockCountInformation:[Lcom/felicanetworks/mfc/BlockCountInformation;

    goto :goto_0

    .line 145
    :cond_5
    const/4 v5, 0x6

    const-string v6, "%s"

    const-string v7, "999"

    invoke-static {v5, v6, v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 146
    return-object p0
.end method

.method getBlockCountInformation()[Lcom/felicanetworks/mfc/BlockCountInformation;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 199
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 200
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->blockCountInformation:[Lcom/felicanetworks/mfc/BlockCountInformation;

    return-object v0
.end method

.method getIDm()[B
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 163
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 164
    const-string v0, "%s return=%s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->idm:[B

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->idm:[B

    return-object v0
.end method

.method getStatusFlag1()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 175
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 176
    const-string v0, "%s return=%d"

    const-string v1, "999"

    iget-byte v2, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->statusFlag1:B

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    iget-byte v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->statusFlag1:B

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method getStatusFlag2()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 187
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 188
    const-string v0, "%s return=%d"

    const-string v1, "999"

    iget-byte v2, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->statusFlag2:B

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    iget-byte v0, p0, Lcom/felicanetworks/felica/offlineimpl/RequestBlockInformationExResponse;->statusFlag2:B

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
