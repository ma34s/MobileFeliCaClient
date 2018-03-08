.class public Lcom/felicanetworks/felica/impl/tcap/SetFelicaTimeoutMessage;
.super Lcom/felicanetworks/felica/impl/tcap/Message;
.source "SetFelicaTimeoutMessage.java"


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
.method public getTimeout()J
    .locals 5

    .prologue
    .line 72
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/SetFelicaTimeoutMessage;->data:[B

    iget v3, p0, Lcom/felicanetworks/felica/impl/tcap/SetFelicaTimeoutMessage;->offset:I

    add-int/lit8 v3, v3, 0x6

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 73
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/SetFelicaTimeoutMessage;->data:[B

    iget v4, p0, Lcom/felicanetworks/felica/impl/tcap/SetFelicaTimeoutMessage;->offset:I

    add-int/lit8 v4, v4, 0x6

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    .line 72
    or-int/2addr v2, v3

    .line 74
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/SetFelicaTimeoutMessage;->data:[B

    iget v4, p0, Lcom/felicanetworks/felica/impl/tcap/SetFelicaTimeoutMessage;->offset:I

    add-int/lit8 v4, v4, 0x6

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 72
    or-int/2addr v2, v3

    .line 75
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/SetFelicaTimeoutMessage;->data:[B

    iget v4, p0, Lcom/felicanetworks/felica/impl/tcap/SetFelicaTimeoutMessage;->offset:I

    add-int/lit8 v4, v4, 0x6

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    .line 72
    or-int/2addr v2, v3

    int-to-long v0, v2

    .line 77
    .local v0, "timeout":J
    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    return-wide v2
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
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/SetFelicaTimeoutMessage;->length:I

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
