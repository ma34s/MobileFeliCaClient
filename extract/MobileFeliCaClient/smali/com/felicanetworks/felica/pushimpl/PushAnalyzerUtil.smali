.class Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;
.super Ljava/lang/Object;
.source "PushAnalyzerUtil.java"


# static fields
.field public static final APP_ACTIVATE_TYPE:B = 0x1t

.field public static final BROWSER_ACTIVATE_TYPE:B = 0x2t

.field public static final ENCODING_TYPE_ASCII:Ljava/lang/String; = "US-ASCII"

.field public static final ENCODING_TYPE_SJIS:Ljava/lang/String; = "Shift_JIS"

.field protected static final EXC_INVALID_PARAMETER:Ljava/lang/String; = "The spefified parameter is empty."

.field public static final MAILER_ACTIVATE_TYPE:B = 0x3t

.field public static final MAX_PUSH_SEGMENT_PARAMETER_SIZE:I = 0xba

.field public static final MAX_PUSH_SEGMENT_SIZE:I = 0xbd

.field public static final NOTIFICATION_ACTIVATE_TYPE:B = 0x6t

.field private static instance:Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 51
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 52
    sget-object v0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->instance:Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 54
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    invoke-direct {v0}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->instance:Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    .line 56
    :cond_0
    const-string v0, "%s return instance %s"

    const-string v1, "999"

    sget-object v2, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->instance:Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    sget-object v0, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->instance:Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;

    return-object v0
.end method


# virtual methods
.method checkAsciiCode([B)V
    .locals 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 235
    const-string v1, "%s In rcvData = %s"

    const-string v2, "000"

    invoke-static {v4, v1, v2, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    if-nez p1, :cond_0

    .line 238
    const-string v1, "%s data null"

    const-string v2, "800"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 239
    new-instance v1, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v2, "The spefified parameter is empty."

    invoke-direct {v1, v3, v2}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 242
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 249
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 250
    return-void

    .line 243
    :cond_1
    aget-byte v1, p1, v0

    const/16 v2, 0x20

    if-lt v1, v2, :cond_2

    aget-byte v1, p1, v0

    const/16 v2, 0x7e

    if-le v1, v2, :cond_3

    .line 244
    :cond_2
    const-string v1, "%s not ASCII code"

    const-string v2, "801"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 245
    new-instance v1, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    .line 246
    const-string v2, "The spefified parameter is empty."

    .line 245
    invoke-direct {v1, v3, v2}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 242
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method checkConvert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "formatData"    # Ljava/lang/String;
    .param p2, "checkData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 125
    const-string v0, "%s In formatData = %s : checkData = %s"

    const-string v1, "000"

    invoke-static {v3, v0, v1, p1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "%s code chenge error"

    const-string v1, "800"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 130
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v1, "The spefified parameter is empty."

    invoke-direct {v0, v2, v1}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method convertByteToString([BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "byteData"    # [B
    .param p2, "encodingType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v5, 0x1

    .line 148
    const-string v1, "%s In byteData = %s : encodingType = %s"

    const-string v2, "000"

    invoke-static {v3, v1, v2, p1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    const/4 v1, 0x4

    :try_start_0
    const-string v2, "%s return data "

    const-string v3, "999"

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s Exception"

    const-string v2, "800"

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 155
    new-instance v1, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v2, "The spefified parameter is empty."

    invoke-direct {v1, v5, v2}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method convertStringToByte(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10
    .param p1, "stringData"    # Ljava/lang/String;
    .param p2, "encodingType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v9, 0x1

    .line 172
    const-string v6, "%s In stringData = %s : encodingType = %s"

    const-string v7, "000"

    invoke-static {v8, v6, v7, p1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    :try_start_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 177
    .local v2, "chbuf":Ljava/nio/CharBuffer;
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 178
    .local v1, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    .line 179
    .local v4, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v4, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 180
    .local v0, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    new-array v5, v6, [B

    .line 181
    .local v5, "ret":[B
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 182
    const/4 v6, 0x4

    const-string v7, "%s return data : %s"

    const-string v8, "999"

    invoke-static {v6, v7, v8, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    return-object v5

    .line 187
    .end local v0    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v1    # "charset":Ljava/nio/charset/Charset;
    .end local v2    # "chbuf":Ljava/nio/CharBuffer;
    .end local v4    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .end local v5    # "ret":[B
    :catch_0
    move-exception v3

    .line 189
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "%s Exception %s"

    const-string v7, "800"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v6, v7, v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    new-instance v6, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v7, "The spefified parameter is empty."

    invoke-direct {v6, v9, v7}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v6
.end method

.method getData(ILcom/felicanetworks/felica/util/ByteBuffer;I)[B
    .locals 8
    .param p1, "index"    # I
    .param p2, "rcvByteBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x4

    const/4 v7, 0x1

    .line 210
    const-string v1, "%s In index = %s : rcvByteBuffer = %s : size = %s"

    const-string v2, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 211
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v4, p2

    .line 210
    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    if-nez p2, :cond_0

    .line 214
    const-string v0, "%s rcvByteBuffer null"

    const-string v1, "800"

    invoke-static {v7, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 215
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v1, "The spefified parameter is empty."

    invoke-direct {v0, v7, v1}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    new-array v6, p3, [B

    .line 219
    .local v6, "data":[B
    const/4 v1, 0x0

    invoke-virtual {p2, p1, v6, v1, p3}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[BII)V

    .line 221
    const-string v1, "%s return data : %s"

    const-string v2, "999"

    invoke-static {v0, v1, v2, v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    return-object v6
.end method

.method makeSerializeData(Lcom/felicanetworks/felica/util/ByteBuffer;B)[B
    .locals 8
    .param p1, "dataBuffer"    # Lcom/felicanetworks/felica/util/ByteBuffer;
    .param p2, "activateType"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 73
    const-string v3, "%s In byteBuffer = %s"

    const-string v4, "000"

    invoke-static {v7, v3, v4, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v3

    const/16 v4, 0xba

    if-le v3, v4, :cond_1

    .line 78
    :cond_0
    const-string v3, "%s code chenge error"

    const-string v4, "800"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 79
    new-instance v3, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v4, "The spefified parameter is empty."

    invoke-direct {v3, v5, v4}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 82
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 90
    :pswitch_0
    const-string v3, "%s activate type error"

    const-string v4, "801"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 91
    new-instance v3, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const-string v4, "The spefified parameter is empty."

    invoke-direct {v3, v5, v4}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 87
    :pswitch_1
    const/4 v3, 0x7

    const-string v4, "%s"

    const-string v5, "001"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 94
    new-instance v1, Lcom/felicanetworks/felica/util/ByteBuffer;

    const/16 v3, 0xbd

    invoke-direct {v1, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    .line 95
    .local v1, "serializeBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    invoke-virtual {v1, v6}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 98
    invoke-virtual {v1, p2}, Lcom/felicanetworks/felica/util/ByteBuffer;->append(B)V

    .line 100
    invoke-virtual {p1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v3

    int-to-long v4, v3

    const/4 v3, 0x2

    invoke-virtual {v1, v4, v5, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->appendInLittleEndian(JI)V

    .line 102
    invoke-virtual {p1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v3

    new-array v0, v3, [B

    .line 103
    .local v0, "data":[B
    invoke-virtual {p1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v3

    invoke-virtual {p1, v6, v0, v6, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[BII)V

    .line 104
    invoke-virtual {v1, v0}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 106
    invoke-virtual {v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v3

    new-array v2, v3, [B

    .line 107
    .local v2, "serializeData":[B
    invoke-virtual {v1}, Lcom/felicanetworks/felica/util/ByteBuffer;->getLength()I

    move-result v3

    invoke-virtual {v1, v6, v2, v6, v3}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[BII)V

    .line 109
    const-string v3, "%s return serializeData %s"

    const-string v4, "999"

    invoke-static {v7, v3, v4, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    return-object v2

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method resolveData([BB)[Ljava/lang/String;
    .locals 11
    .param p1, "rcvData"    # [B
    .param p2, "separater"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v7, 0x4

    const-string v8, "%s In rcvData = %s : separater = %s"

    const-string v9, "000"

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-static {v7, v8, v9, p1, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 267
    if-nez p1, :cond_0

    .line 268
    const/4 v7, 0x1

    const-string v8, "%s rcvData null"

    const-string v9, "801"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 269
    new-instance v7, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v8, 0x1

    const-string v9, "The spefified parameter is empty."

    invoke-direct {v7, v8, v9}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 274
    :cond_0
    new-instance v2, Lcom/felicanetworks/felica/util/ByteBuffer;

    array-length v7, p1

    invoke-direct {v2, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;-><init>(I)V

    .line 275
    .local v2, "dataByteBuffer":Lcom/felicanetworks/felica/util/ByteBuffer;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/felicanetworks/felica/util/ByteBuffer;->setLength(I)V

    .line 276
    invoke-virtual {v2, p1}, Lcom/felicanetworks/felica/util/ByteBuffer;->append([B)V

    .line 278
    array-length v7, p1

    if-nez v7, :cond_2

    .line 279
    const/4 v7, 0x7

    const-string v8, "%s"

    const-string v9, "001"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 280
    const/4 v7, 0x0

    new-array v5, v7, [Ljava/lang/String;

    .line 321
    .local v5, "resolveData":[Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v7, 0x4

    const-string v8, "%s return resolveData "

    const-string v9, "999"

    invoke-static {v7, v8, v9, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 322
    return-object v5

    .line 282
    .end local v5    # "resolveData":[Ljava/lang/String;
    :cond_2
    const/4 v7, 0x7

    const-string v8, "%s"

    const-string v9, "002"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 283
    const/4 v6, 0x0

    .line 284
    .local v6, "spaceCnt":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, p1

    if-lt v3, v7, :cond_3

    .line 290
    const/4 v4, 0x0

    .line 291
    .local v4, "num":I
    const/4 v0, 0x0

    .line 293
    .local v0, "check":I
    add-int/lit8 v7, v6, 0x1

    new-array v5, v7, [Ljava/lang/String;

    .line 295
    .restart local v5    # "resolveData":[Ljava/lang/String;
    if-nez v6, :cond_5

    .line 296
    const/4 v7, 0x7

    const-string v8, "%s"

    const-string v9, "004"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 297
    array-length v7, p1

    new-array v1, v7, [B

    .line 298
    .local v1, "data":[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, p1

    invoke-virtual {v2, v7, v1, v8, v9}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[BII)V

    .line 299
    const/4 v7, 0x0

    const-string v8, "US-ASCII"

    invoke-virtual {p0, v1, v8}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertByteToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    goto :goto_0

    .line 285
    .end local v0    # "check":I
    .end local v1    # "data":[B
    .end local v4    # "num":I
    .end local v5    # "resolveData":[Ljava/lang/String;
    :cond_3
    aget-byte v7, p1, v3

    if-ne v7, p2, :cond_4

    .line 286
    const/4 v7, 0x7

    const-string v8, "%s"

    const-string v9, "003"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 287
    add-int/lit8 v6, v6, 0x1

    .line 284
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 301
    .restart local v0    # "check":I
    .restart local v4    # "num":I
    .restart local v5    # "resolveData":[Ljava/lang/String;
    :cond_5
    const/4 v7, 0x7

    const-string v8, "%s"

    const-string v9, "005"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 302
    const/4 v3, 0x0

    :goto_2
    array-length v7, p1

    if-ge v3, v7, :cond_1

    .line 303
    aget-byte v7, p1, v3

    if-ne v7, p2, :cond_6

    .line 304
    const/4 v7, 0x7

    const-string v8, "%s"

    const-string v9, "006"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 305
    sub-int v7, v3, v0

    new-array v1, v7, [B

    .line 306
    .restart local v1    # "data":[B
    const/4 v7, 0x0

    array-length v8, v1

    invoke-virtual {v2, v0, v1, v7, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[BII)V

    .line 307
    const-string v7, "US-ASCII"

    invoke-virtual {p0, v1, v7}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertByteToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    .line 308
    add-int/lit8 v0, v3, 0x1

    .line 309
    add-int/lit8 v4, v4, 0x1

    .line 310
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_6

    .line 311
    const/4 v7, 0x7

    const-string v8, "%s"

    const-string v9, "007"

    invoke-static {v7, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 312
    array-length v7, p1

    sub-int/2addr v7, v0

    new-array v1, v7, [B

    .line 313
    const/4 v7, 0x0

    array-length v8, v1

    invoke-virtual {v2, v0, v1, v7, v8}, Lcom/felicanetworks/felica/util/ByteBuffer;->copy(I[BII)V

    .line 314
    const-string v7, "US-ASCII"

    invoke-virtual {p0, v1, v7}, Lcom/felicanetworks/felica/pushimpl/PushAnalyzerUtil;->convertByteToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    .line 302
    .end local v1    # "data":[B
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
