.class Lcom/felicanetworks/felica/impl/tcap/v25/RequestIdMessage;
.super Lcom/felicanetworks/felica/impl/tcap/Message;
.source "RequestIdMessage.java"


# static fields
.field private static final LENGTH:I = 0x2


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>()V

    .line 46
    const/16 v0, 0x30

    const/4 v1, 0x2

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/felicanetworks/felica/impl/tcap/v25/RequestIdMessage;->init(BIBI)V

    .line 49
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/RequestIdMessage;->data:[B

    const/4 v1, 0x6

    const v2, 0xff00

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 50
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/RequestIdMessage;->data:[B

    const/4 v1, 0x7

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 51
    return-void
.end method

.method constructor <init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/felicanetworks/felica/impl/tcap/Message;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 34
    return-void
.end method


# virtual methods
.method getRequestId()I
    .locals 4

    .prologue
    .line 91
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/v25/RequestIdMessage;->data:[B

    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/RequestIdMessage;->offset:I

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 92
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/RequestIdMessage;->data:[B

    iget v3, p0, Lcom/felicanetworks/felica/impl/tcap/v25/RequestIdMessage;->offset:I

    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 91
    or-int v0, v1, v2

    .line 94
    .local v0, "requestId":I
    return v0
.end method

.method public validateData()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public validateFormat()Z
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/RequestIdMessage;->length:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
