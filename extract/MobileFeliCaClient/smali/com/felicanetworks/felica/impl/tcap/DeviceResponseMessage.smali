.class public Lcom/felicanetworks/felica/impl/tcap/DeviceResponseMessage;
.super Lcom/felicanetworks/felica/impl/tcap/Message;
.source "DeviceResponseMessage.java"


# direct methods
.method public constructor <init>(I[B)V
    .locals 7
    .param p1, "devid"    # I
    .param p2, "response"    # [B

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x0

    .line 26
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>()V

    .line 32
    if-eqz p2, :cond_0

    .line 34
    array-length v2, p2

    add-int/lit8 v0, v2, 0x4

    .line 42
    .local v0, "len":I
    :goto_0
    const/16 v2, 0x26

    invoke-virtual {p0, v5, p1, v2, v0}, Lcom/felicanetworks/felica/impl/tcap/DeviceResponseMessage;->init(BIBI)V

    .line 44
    const/4 v1, 0x6

    .line 46
    .local v1, "pos":I
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/DeviceResponseMessage;->data:[B

    aput-byte v5, v2, v1

    .line 48
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/DeviceResponseMessage;->data:[B

    const/4 v3, 0x7

    aput-byte v5, v2, v3

    .line 50
    add-int/lit8 v1, v1, 0x2

    .line 52
    if-eqz p2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/DeviceResponseMessage;->data:[B

    array-length v3, p2

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 56
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/DeviceResponseMessage;->data:[B

    array-length v3, p2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    .line 58
    add-int/lit8 v1, v1, 0x2

    .line 60
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/DeviceResponseMessage;->data:[B

    array-length v3, p2

    invoke-static {p2, v5, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    :goto_1
    return-void

    .line 38
    .end local v0    # "len":I
    .end local v1    # "pos":I
    :cond_0
    const/4 v0, 0x4

    .restart local v0    # "len":I
    goto :goto_0

    .line 64
    .restart local v1    # "pos":I
    :cond_1
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/DeviceResponseMessage;->data:[B

    aput-byte v5, v2, v1

    .line 66
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/DeviceResponseMessage;->data:[B

    aput-byte v5, v2, v6

    goto :goto_1
.end method
