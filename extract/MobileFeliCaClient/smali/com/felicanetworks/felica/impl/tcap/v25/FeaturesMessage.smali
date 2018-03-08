.class Lcom/felicanetworks/felica/impl/tcap/v25/FeaturesMessage;
.super Lcom/felicanetworks/felica/impl/tcap/Message;
.source "FeaturesMessage.java"


# static fields
.field private static final OPTION_CHARSET:Ljava/lang/String; = "ISO-8859-1"


# direct methods
.method constructor <init>(Lcom/felicanetworks/felica/impl/tcap/v25/Feature;)V
    .locals 13
    .param p1, "feature"    # Lcom/felicanetworks/felica/impl/tcap/v25/Feature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/TCAPException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>()V

    .line 41
    const/4 v7, 0x0

    .line 44
    .local v7, "opt":[B
    const/4 v5, 0x3

    .line 47
    .local v5, "len":I
    const/4 v2, 0x0

    .line 48
    .local v2, "chbuf":Ljava/nio/CharBuffer;
    const-string v10, "ISO-8859-1"

    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 49
    .local v1, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    .line 50
    .local v4, "encoder":Ljava/nio/charset/CharsetEncoder;
    const/4 v0, 0x0

    .line 54
    .local v0, "byteBuf":Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/v25/Feature;->getOptionNum()I

    move-result v10

    if-lt v6, v10, :cond_0

    .line 70
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x26

    invoke-virtual {p0, v10, v11, v12, v5}, Lcom/felicanetworks/felica/impl/tcap/v25/FeaturesMessage;->init(BIBI)V

    .line 72
    const/4 v9, 0x6

    .line 74
    .local v9, "pos":I
    iget-object v10, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeaturesMessage;->data:[B

    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/v25/Feature;->getVersion()I

    move-result v11

    const v12, 0xff00

    and-int/2addr v11, v12

    shr-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    aput-byte v11, v10, v9

    .line 76
    iget-object v10, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeaturesMessage;->data:[B

    const/4 v11, 0x7

    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/v25/Feature;->getVersion()I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 78
    add-int/lit8 v9, v9, 0x2

    .line 80
    iget-object v10, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeaturesMessage;->data:[B

    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/v25/Feature;->getOptionNum()I

    move-result v11

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v10, v9

    .line 82
    add-int/lit8 v9, v9, 0x1

    .line 84
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/v25/Feature;->getOptionNum()I

    move-result v10

    if-lt v6, v10, :cond_1

    .line 113
    return-void

    .line 58
    .end local v9    # "pos":I
    :cond_0
    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/v25/Feature;->getOption(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 59
    invoke-virtual {v4, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    new-array v7, v10, [B

    .line 61
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 64
    array-length v10, v7

    and-int/lit16 v8, v10, 0xff

    .line 66
    .local v8, "optLen":I
    add-int/lit8 v10, v8, 0x1

    add-int/2addr v5, v10

    .line 54
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 88
    .end local v8    # "optLen":I
    .restart local v9    # "pos":I
    :cond_1
    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/v25/Feature;->getOption(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 89
    invoke-virtual {v4, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    new-array v7, v10, [B

    .line 91
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 94
    array-length v10, v7

    and-int/lit16 v8, v10, 0xff

    .line 97
    .restart local v8    # "optLen":I
    iget-object v10, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeaturesMessage;->data:[B

    int-to-byte v11, v8

    aput-byte v11, v10, v9

    .line 99
    add-int/lit8 v9, v9, 0x1

    .line 102
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeaturesMessage;->data:[B

    invoke-static {v7, v10, v11, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    add-int/2addr v9, v8

    .line 84
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 109
    .end local v8    # "optLen":I
    .end local v9    # "pos":I
    :catch_0
    move-exception v3

    .line 111
    .local v3, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/felicanetworks/felica/impl/tcap/TCAPException;

    const-string v11, "Invalid option(feature)."

    invoke-direct {v10, v11}, Lcom/felicanetworks/felica/impl/tcap/TCAPException;-><init>(Ljava/lang/String;)V

    throw v10
.end method
