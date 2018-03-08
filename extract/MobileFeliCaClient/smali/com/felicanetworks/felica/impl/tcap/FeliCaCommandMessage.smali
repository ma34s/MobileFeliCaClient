.class public Lcom/felicanetworks/felica/impl/tcap/FeliCaCommandMessage;
.super Lcom/felicanetworks/felica/impl/tcap/Message;
.source "FeliCaCommandMessage.java"


# static fields
.field private static final MAX_LENGTH:I = 0xff

.field private static final MIN_LENGTH:I = 0x1


# direct methods
.method public constructor <init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/felicanetworks/felica/impl/tcap/Message;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getCommand()[B
    .locals 5

    .prologue
    .line 75
    iget v1, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaCommandMessage;->length:I

    new-array v0, v1, [B

    .line 77
    .local v0, "command":[B
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaCommandMessage;->data:[B

    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaCommandMessage;->offset:I

    add-int/lit8 v2, v2, 0x6

    const/4 v3, 0x0

    iget v4, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaCommandMessage;->length:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    return-object v0
.end method

.method public validateData()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public validateFormat()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 48
    iget v1, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaCommandMessage;->length:I

    if-lt v1, v0, :cond_0

    iget v1, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaCommandMessage;->length:I

    const/16 v2, 0xff

    if-le v1, v2, :cond_1

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 53
    :cond_1
    return v0
.end method
