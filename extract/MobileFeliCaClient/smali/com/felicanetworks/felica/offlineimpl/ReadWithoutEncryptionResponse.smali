.class Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;
.super Lcom/felicanetworks/felica/offlineimpl/Response;
.source "ReadWithoutEncryptionResponse.java"


# static fields
.field private static final CODE:B = 0x7t

.field private static final IDM_LENGTH:I = 0x8

.field private static final STATUS_FLAG1_OK:I

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;


# instance fields
.field private dataList:[Lcom/felicanetworks/mfc/Data;

.field private idm:[B

.field private statusFlag1:I

.field private statusFlag2:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Response;-><init>()V

    .line 65
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;

    .line 78
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;

    return-object v0
.end method


# virtual methods
.method get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;
    .locals 7
    .param p1, "command"    # Lcom/felicanetworks/felica/offlineimpl/Command;
    .param p2, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 95
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 96
    :cond_0
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 101
    :cond_1
    const/4 v3, 0x1

    .line 104
    .local v3, "index":I
    const/4 v4, 0x7

    :try_start_0
    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v4

    if-nez v4, :cond_2

    .line 105
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4
    :try_end_0
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    throw v2

    .line 107
    .end local v2    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 110
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;

    move-object v1, v0

    .line 111
    .local v1, "cmd":Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;->getIDm()[B

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(I[B)Z

    move-result v4

    if-nez v4, :cond_3

    .line 112
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    .end local v1    # "cmd":Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;
    :catch_1
    move-exception v2

    .line 149
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v4, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 115
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cmd":Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;
    :cond_3
    const/16 v4, 0x8

    :try_start_2
    new-array v4, v4, [B

    iput-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;->idm:[B

    .line 116
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;->idm:[B

    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[B)V

    .line 117
    add-int/lit8 v3, v3, 0x8

    .line 120
    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;->statusFlag1:I

    .line 121
    add-int/lit8 v3, v3, 0x1

    .line 124
    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;->statusFlag2:I

    .line 125
    add-int/lit8 v3, v3, 0x1

    .line 127
    iget v4, p0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;->statusFlag1:I

    if-nez v4, :cond_4

    .line 130
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->getInstance()Lcom/felicanetworks/felica/offlineimpl/DataUtil;

    move-result-object v4

    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionCommand;->getBlockList()Lcom/felicanetworks/mfc/BlockList;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lcom/felicanetworks/felica/offlineimpl/DataUtil;->createDataList(Lcom/felicanetworks/felica/util/ByteBuffer;Lcom/felicanetworks/mfc/BlockList;)[Lcom/felicanetworks/mfc/Data;

    move-result-object v4

    iput-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;->dataList:[Lcom/felicanetworks/mfc/Data;

    .line 133
    const/16 v3, 0xc

    .line 134
    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p2}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v5

    if-eq v4, v5, :cond_5

    .line 135
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 138
    :cond_4
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/felicanetworks/mfc/Data;

    iput-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;->dataList:[Lcom/felicanetworks/mfc/Data;

    .line 140
    invoke-virtual {p2}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 141
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 145
    :cond_5
    return-object p0
.end method

.method getDataList()[Lcom/felicanetworks/mfc/Data;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;->dataList:[Lcom/felicanetworks/mfc/Data;

    return-object v0
.end method

.method getIDm()[B
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;->idm:[B

    return-object v0
.end method

.method getStatusFlag1()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;->statusFlag1:I

    return v0
.end method

.method getStatusFlag2()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/ReadWithoutEncryptionResponse;->statusFlag2:I

    return v0
.end method
