.class public Lcom/felicanetworks/felica/impl/tcap/ReturnCodeMessage;
.super Lcom/felicanetworks/felica/impl/tcap/Message;
.source "ReturnCodeMessage.java"


# static fields
.field private static final LENGTH:I = 0x4


# direct methods
.method public constructor <init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/felicanetworks/felica/impl/tcap/Message;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getReturnCode()I
    .locals 4

    .prologue
    .line 72
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/ReturnCodeMessage;->data:[B

    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/ReturnCodeMessage;->offset:I

    add-int/lit8 v2, v2, 0x6

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 73
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/ReturnCodeMessage;->data:[B

    iget v3, p0, Lcom/felicanetworks/felica/impl/tcap/ReturnCodeMessage;->offset:I

    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 72
    or-int/2addr v1, v2

    .line 74
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/ReturnCodeMessage;->data:[B

    iget v3, p0, Lcom/felicanetworks/felica/impl/tcap/ReturnCodeMessage;->offset:I

    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    .line 72
    or-int/2addr v1, v2

    .line 75
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/ReturnCodeMessage;->data:[B

    iget v3, p0, Lcom/felicanetworks/felica/impl/tcap/ReturnCodeMessage;->offset:I

    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v3, v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 72
    or-int v0, v1, v2

    .line 77
    .local v0, "returnCode":I
    return v0
.end method

.method public validateData()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public validateFormat()Z
    .locals 2

    .prologue
    .line 42
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/ReturnCodeMessage;->length:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
