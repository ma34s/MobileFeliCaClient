.class public Lcom/felicanetworks/felica/impl/tcap/v25/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field private static final CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field private static final MAX_OPTION_LENGTH:I = 0xff

.field private static final MIN_OPTION_LENGTH:I = 0x1


# instance fields
.field private options:Ljava/util/Vector;

.field private version:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/felicanetworks/felica/impl/tcap/v25/Feature;->version:I

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/Feature;->options:Ljava/util/Vector;

    .line 63
    return-void
.end method


# virtual methods
.method public addOption(Ljava/lang/String;)V
    .locals 9
    .param p1, "option"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/TCAPException;
        }
    .end annotation

    .prologue
    .line 115
    :try_start_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 116
    .local v3, "chbuf":Ljava/nio/CharBuffer;
    const-string v7, "ISO-8859-1"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 117
    .local v2, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v5

    .line 118
    .local v5, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v5, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 119
    .local v0, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    new-array v1, v7, [B

    .line 120
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 124
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_0
    array-length v7, v1

    if-lt v6, v7, :cond_1

    .line 132
    array-length v7, v1

    const/4 v8, 0x1

    if-lt v7, v8, :cond_0

    array-length v7, v1

    const/16 v8, 0xff

    if-le v7, v8, :cond_4

    .line 134
    :cond_0
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v1    # "bytes":[B
    .end local v2    # "charset":Ljava/nio/charset/Charset;
    .end local v3    # "chbuf":Ljava/nio/CharBuffer;
    .end local v5    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .end local v6    # "n":I
    :catch_0
    move-exception v4

    .line 141
    .local v4, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/felicanetworks/felica/impl/tcap/TCAPException;

    const-string v8, "Invalid option."

    invoke-direct {v7, v8}, Lcom/felicanetworks/felica/impl/tcap/TCAPException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 126
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local v1    # "bytes":[B
    .restart local v2    # "charset":Ljava/nio/charset/Charset;
    .restart local v3    # "chbuf":Ljava/nio/CharBuffer;
    .restart local v5    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .restart local v6    # "n":I
    :cond_1
    :try_start_1
    aget-byte v7, v1, v6

    const/16 v8, 0x20

    if-lt v7, v8, :cond_2

    aget-byte v7, v1, v6

    const/16 v8, 0x7e

    if-le v7, v8, :cond_3

    .line 128
    :cond_2
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    throw v7

    .line 124
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 137
    :cond_4
    iget-object v7, p0, Lcom/felicanetworks/felica/impl/tcap/v25/Feature;->options:Ljava/util/Vector;

    invoke-virtual {v7, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    return-void
.end method

.method public getOption(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/Feature;->options:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOptionNum()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/Feature;->options:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/Feature;->version:I

    return v0
.end method
