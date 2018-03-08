.class Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;
.super Lcom/felicanetworks/felica/impl/tcap/Message;
.source "FeliCaPreCommandMessage.java"


# static fields
.field private static final MAX_LENGTH:I = 0x102

.field private static final MIN_LENGTH:I = 0x4


# direct methods
.method constructor <init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/felicanetworks/felica/impl/tcap/Message;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 39
    return-void
.end method


# virtual methods
.method getCommand()[B
    .locals 5

    .prologue
    .line 122
    iget v1, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;->length:I

    add-int/lit8 v1, v1, -0x3

    new-array v0, v1, [B

    .line 124
    .local v0, "command":[B
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;->data:[B

    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;->offset:I

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0x3

    const/4 v3, 0x0

    iget v4, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;->length:I

    add-int/lit8 v4, v4, -0x3

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    return-object v0
.end method

.method getParamID()I
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;->data:[B

    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;->offset:I

    add-int/lit8 v2, v2, 0x6

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 82
    .local v0, "paramID":I
    return v0
.end method

.method getParamLen()I
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;->data:[B

    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;->offset:I

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 112
    .local v0, "paramLen":I
    return v0
.end method

.method getParamPos()I
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;->data:[B

    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;->offset:I

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 97
    .local v0, "paramPos":I
    return v0
.end method

.method public validateData()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public validateFormat()Z
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;->length:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;->length:I

    const/16 v1, 0x102

    if-le v0, v1, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
