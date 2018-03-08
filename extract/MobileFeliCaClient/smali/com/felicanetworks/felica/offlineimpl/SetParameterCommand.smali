.class Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;
.super Lcom/felicanetworks/felica/offlineimpl/Command;
.source "SetParameterCommand.java"


# static fields
.field private static final CODE:B = 0x20t

.field static final ENCRYPTION_TYPE_SRM_TYPE1:I = 0x1

.field static final ENCRYPTION_TYPE_SRM_TYPE2:I = 0x2

.field static final PACKET_TYPE_NODECODESIZE_2:I = 0x3

.field static final PACKET_TYPE_NODECODESIZE_4:I = 0x4

.field private static final RESERVED:B

.field private static instance:Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;


# instance fields
.field private encryptionType:I

.field private idm:[B

.field private packetType:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/felicanetworks/felica/offlineimpl/Command;-><init>()V

    .line 74
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;

    invoke-direct {v0}, Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;

    .line 87
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;->instance:Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;

    return-object v0
.end method


# virtual methods
.method doSet(Lcom/felicanetworks/felica/util/ByteBuffer;)V
    .locals 3
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 107
    :cond_0
    const/16 v1, 0x20

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 108
    iget-object v1, p0, Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;->idm:[B

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 109
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 110
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 111
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 112
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 114
    iget v1, p0, Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;->encryptionType:I

    if-ne v1, v2, :cond_1

    .line 115
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 120
    :goto_0
    iget v1, p0, Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;->packetType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 121
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 126
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 127
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 132
    return-void

    .line 117
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 123
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p1, v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method get(Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;
    .locals 3
    .param p1, "byteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/offlineimpl/OfflineException;
        }
    .end annotation

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    new-instance v1, Lcom/felicanetworks/felica/offlineimpl/OfflineException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/offlineimpl/OfflineException;-><init>(I)V

    throw v1

    .line 150
    :cond_0
    invoke-static {}, Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;->getInstance()Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;

    move-result-object v0

    .line 151
    .local v0, "response":Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;
    invoke-virtual {v0, p0, p1}, Lcom/felicanetworks/felica/offlineimpl/SetParameterResponse;->get(Lcom/felicanetworks/felica/offlineimpl/Command;Lcom/felicanetworks/felica/util/ByteBuffer;)Lcom/felicanetworks/felica/offlineimpl/Response;

    move-result-object v1

    return-object v1
.end method

.method getEncryptionType()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;->encryptionType:I

    return v0
.end method

.method getIDm()[B
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;->idm:[B

    return-object v0
.end method

.method getPacketType()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;->packetType:I

    return v0
.end method

.method setEncryptionType(I)V
    .locals 0
    .param p1, "encryptionType"    # I

    .prologue
    .line 215
    iput p1, p0, Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;->encryptionType:I

    .line 216
    return-void
.end method

.method setIDm([B)V
    .locals 0
    .param p1, "idm"    # [B

    .prologue
    .line 174
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;->idm:[B

    .line 175
    return-void
.end method

.method setPacketType(I)V
    .locals 0
    .param p1, "packetType"    # I

    .prologue
    .line 256
    iput p1, p0, Lcom/felicanetworks/felica/offlineimpl/SetParameterCommand;->packetType:I

    .line 257
    return-void
.end method
