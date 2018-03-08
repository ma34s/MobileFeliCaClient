.class Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;
.super Lcom/felicanetworks/felica/impl/tcap/Message;
.source "AcceptMessage.java"


# static fields
.field private static final MIN_LENGTH:I = 0x3

.field private static final OPTION_CHARSET:Ljava/lang/String; = "ISO-8859-1"


# direct methods
.method constructor <init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/felicanetworks/felica/impl/tcap/Message;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 43
    return-void
.end method


# virtual methods
.method getOptionList()Ljava/util/Vector;
    .locals 10

    .prologue
    .line 157
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 158
    .local v5, "optionList":Ljava/util/Vector;
    const/4 v1, 0x0

    .line 161
    .local v1, "opt":Ljava/lang/String;
    iget v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->offset:I

    add-int/lit8 v8, v8, 0x6

    add-int/lit8 v6, v8, 0x2

    .line 163
    .local v6, "pos":I
    iget-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->data:[B

    aget-byte v8, v8, v6

    and-int/lit16 v4, v8, 0xff

    .line 165
    .local v4, "optNum":I
    add-int/lit8 v6, v6, 0x1

    .line 167
    const/4 v0, 0x0

    .local v0, "n":I
    move v7, v6

    .end local v6    # "pos":I
    .local v7, "pos":I
    move-object v2, v1

    .end local v1    # "opt":Ljava/lang/String;
    .local v2, "opt":Ljava/lang/String;
    :goto_0
    if-lt v0, v4, :cond_0

    .line 185
    return-object v5

    .line 169
    :cond_0
    iget-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->data:[B

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    aget-byte v8, v8, v7

    and-int/lit16 v3, v8, 0xff

    .line 173
    .local v3, "optLen":I
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->data:[B

    const-string v9, "ISO-8859-1"

    invoke-direct {v1, v8, v6, v3, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v2    # "opt":Ljava/lang/String;
    .restart local v1    # "opt":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 182
    add-int/2addr v6, v3

    .line 167
    add-int/lit8 v0, v0, 0x1

    move v7, v6

    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    move-object v2, v1

    .end local v1    # "opt":Ljava/lang/String;
    .restart local v2    # "opt":Ljava/lang/String;
    goto :goto_0

    .line 175
    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    :catch_0
    move-exception v8

    move-object v1, v2

    .end local v2    # "opt":Ljava/lang/String;
    .restart local v1    # "opt":Ljava/lang/String;
    goto :goto_1
.end method

.method getOptionNum()I
    .locals 3

    .prologue
    .line 144
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->data:[B

    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->offset:I

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 146
    .local v0, "optNum":I
    return v0
.end method

.method getVersion()I
    .locals 5

    .prologue
    .line 126
    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->offset:I

    add-int/lit8 v0, v2, 0x6

    .line 129
    .local v0, "pos":I
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->data:[B

    aget-byte v2, v2, v0

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->data:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 131
    .local v1, "version":I
    return v1
.end method

.method public validateData()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 71
    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->offset:I

    add-int/lit8 v7, v7, 0x6

    add-int/lit8 v3, v7, 0x2

    .line 73
    .local v3, "pos":I
    iget-object v7, p0, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->data:[B

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .local v4, "pos":I
    aget-byte v7, v7, v3

    and-int/lit16 v2, v7, 0xff

    .line 75
    .local v2, "optNum":I
    if-lez v2, :cond_0

    .line 77
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-lt v0, v2, :cond_2

    .end local v0    # "n":I
    :cond_0
    move v3, v4

    .line 110
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->offset:I

    iget v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->size:I

    add-int/2addr v7, v8

    if-eq v3, v7, :cond_5

    .line 115
    :cond_1
    :goto_1
    return v5

    .line 79
    .end local v3    # "pos":I
    .restart local v0    # "n":I
    .restart local v4    # "pos":I
    :cond_2
    iget v7, p0, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->offset:I

    iget v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->size:I

    add-int/2addr v7, v8

    if-lt v4, v7, :cond_3

    move v3, v4

    .line 81
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_1

    .line 84
    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    :cond_3
    iget-object v7, p0, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->data:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    aget-byte v7, v7, v4

    and-int/lit16 v1, v7, 0xff

    .line 87
    .local v1, "optLen":I
    if-lt v1, v6, :cond_1

    .line 92
    add-int v7, v3, v1

    iget v8, p0, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->offset:I

    iget v9, p0, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->size:I

    add-int/2addr v8, v9

    if-gt v7, v8, :cond_1

    .line 97
    :goto_2
    if-gtz v1, :cond_4

    .line 77
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    goto :goto_0

    .line 100
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    :cond_4
    iget-object v7, p0, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->data:[B

    aget-byte v7, v7, v3

    const/16 v8, 0x20

    if-lt v7, v8, :cond_1

    iget-object v7, p0, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->data:[B

    aget-byte v7, v7, v3

    const/16 v8, 0x7e

    if-gt v7, v8, :cond_1

    .line 105
    add-int/lit8 v3, v3, 0x1

    .line 97
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .end local v0    # "n":I
    .end local v1    # "optLen":I
    :cond_5
    move v5, v6

    .line 115
    goto :goto_1
.end method

.method public validateFormat()Z
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/AcceptMessage;->length:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
