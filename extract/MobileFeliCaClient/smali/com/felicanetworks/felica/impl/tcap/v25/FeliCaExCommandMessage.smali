.class Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandMessage;
.super Lcom/felicanetworks/felica/impl/tcap/Message;
.source "FeliCaExCommandMessage.java"


# static fields
.field private static final MAX_LENGTH:I = 0x101

.field private static final MIN_LENGTH:I = 0x3


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
.method getCommand([B)[B
    .locals 6
    .param p1, "param"    # [B

    .prologue
    const/4 v5, 0x0

    .line 109
    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandMessage;->length:I

    add-int/lit8 v2, v2, -0x2

    new-array v0, v2, [B

    .line 110
    .local v0, "command":[B
    invoke-virtual {p0}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandMessage;->getParamPos()I

    move-result v1

    .line 112
    .local v1, "paramPos":I
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandMessage;->data:[B

    iget v3, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandMessage;->offset:I

    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandMessage;->length:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {v2, v3, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    array-length v2, p1

    invoke-static {p1, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    return-object v0
.end method

.method getParamID()I
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandMessage;->data:[B

    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandMessage;->offset:I

    add-int/lit8 v2, v2, 0x6

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 82
    .local v0, "paramID":I
    return v0
.end method

.method getParamPos()I
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandMessage;->data:[B

    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandMessage;->offset:I

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
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandMessage;->length:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaExCommandMessage;->length:I

    const/16 v1, 0x101

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
