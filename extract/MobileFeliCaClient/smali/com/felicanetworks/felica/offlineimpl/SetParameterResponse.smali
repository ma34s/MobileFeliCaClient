.class Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;
.super Lcom/felicanetworks/felica/offlineimpl/Response;
.source "SetParameterResponse.java"


# static fields
.field private static final CODE:B = 0x21t

.field private static final IDM_LENGTH:I = 0x8

.field private static final RESPONSE_LENGTH:B = 0xct

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;


# instance fields
.field private idm:[B

.field private statusFlag1:I

.field private statusFlag2:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Response;-><init>()V

    .line 59
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;

    .line 72
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;->instance:Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;

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

    .line 89
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 90
    :cond_0
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 95
    :cond_1
    const/4 v3, 0x1

    .line 98
    .local v3, "index":I
    const/16 v4, 0x21

    :try_start_0
    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v4

    if-nez v4, :cond_2

    .line 99
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
    throw v2

    .line 101
    .end local v2    # "e":Lcom/felicanetworks/felica/offlineimpl/OfflineException;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 104
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;

    move-object v1, v0

    .line 105
    .local v1, "cmd":Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;->getIDm()[B

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(I[B)Z

    move-result v4

    if-nez v4, :cond_3

    .line 106
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4
    :try_end_1
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    .end local v1    # "cmd":Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;
    :catch_1
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v4, v6}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4

    .line 109
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cmd":Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;
    :cond_3
    const/16 v4, 0x8

    :try_start_2
    new-array v4, v4, [B

    iput-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;->idm:[B

    .line 110
    iget-object v4, p0, Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;->idm:[B

    invoke-virtual {p2, v3, v4}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[B)V

    .line 111
    add-int/lit8 v3, v3, 0x8

    .line 114
    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;->statusFlag1:I

    .line 115
    add-int/lit8 v3, v3, 0x1

    .line 118
    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;->statusFlag2:I

    .line 119
    add-int/lit8 v3, v3, 0x1

    .line 122
    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-virtual {p2, v4, v5}, Lcom/felicanetworks/felica/util/ByteBuffer;->check(IB)Z

    move-result v4

    if-nez v4, :cond_4

    .line 123
    new-instance v4, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v4
    :try_end_2
    .catch Lcom/felicanetworks/felica/offlineimpl/OfflineException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 126
    :cond_4
    return-object p0
.end method

.method getIDm()[B
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;->idm:[B

    return-object v0
.end method

.method getStatusFlag1()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;->statusFlag1:I

    return v0
.end method

.method getStatusFlag2()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;->statusFlag2:I

    return v0
.end method
