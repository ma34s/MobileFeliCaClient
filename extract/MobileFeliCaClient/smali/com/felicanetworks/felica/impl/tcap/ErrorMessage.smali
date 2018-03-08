.class public Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;
.super Lcom/felicanetworks/felica/impl/tcap/Message;
.source "ErrorMessage.java"


# static fields
.field private static final MSG_CHARSET:Ljava/lang/String; = "ISO-8859-1"


# direct methods
.method public constructor <init>(BLjava/lang/String;)V
    .locals 10
    .param p1, "mt"    # B
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 51
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>()V

    .line 53
    const/4 v6, 0x0

    .line 54
    .local v6, "msgBytes":[B
    const/4 v5, 0x0

    .line 57
    .local v5, "len":I
    if-eqz p2, :cond_1

    .line 62
    :try_start_0
    invoke-static {p2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 63
    .local v2, "chbuf":Ljava/nio/CharBuffer;
    const-string v7, "ISO-8859-1"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 64
    .local v1, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    .line 65
    .local v4, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v4, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 66
    .local v0, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    new-array v6, v7, [B

    .line 67
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 70
    array-length v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v1    # "charset":Ljava/nio/charset/Charset;
    .end local v2    # "chbuf":Ljava/nio/CharBuffer;
    .end local v4    # "encoder":Ljava/nio/charset/CharsetEncoder;
    :goto_0
    invoke-virtual {p0, v9, v9, p1, v5}, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;->init(BIBI)V

    .line 86
    if-lez v5, :cond_0

    .line 88
    iget-object v7, p0, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;->data:[B

    const/4 v8, 0x6

    invoke-static {v6, v9, v7, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    :cond_0
    return-void

    .line 73
    :catch_0
    move-exception v3

    .line 75
    .local v3, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 78
    goto :goto_0

    .line 80
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/felicanetworks/felica/impl/tcap/Message;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, "msg":Ljava/lang/String;
    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;->length:I

    if-lez v2, :cond_0

    .line 140
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;->data:[B

    iget v3, p0, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;->offset:I

    add-int/lit8 v3, v3, 0x6

    iget v4, p0, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;->length:I

    const-string v5, "ISO-8859-1"

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "msg":Ljava/lang/String;
    .local v1, "msg":Ljava/lang/String;
    move-object v0, v1

    .line 148
    .end local v1    # "msg":Ljava/lang/String;
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 142
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public validateData()Z
    .locals 4

    .prologue
    .line 112
    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;->offset:I

    add-int/lit8 v1, v2, 0x6

    .line 115
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;->length:I

    if-lt v0, v2, :cond_0

    .line 123
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;->data:[B

    add-int v3, v1, v0

    aget-byte v2, v2, v3

    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;->data:[B

    add-int v3, v1, v0

    aget-byte v2, v2, v3

    const/16 v3, 0x7e

    if-le v2, v3, :cond_2

    .line 119
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 115
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public validateFormat()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method
