.class public Lcom/felicanetworks/felica/impl/tcap/FeliCaResponseMessage;
.super Lcom/felicanetworks/felica/impl/tcap/Message;
.source "FeliCaResponseMessage.java"


# direct methods
.method public constructor <init>(I[B)V
    .locals 5
    .param p1, "devid"    # I
    .param p2, "command"    # [B

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>()V

    .line 31
    array-length v0, p2

    .line 33
    .local v0, "len":I
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/felicanetworks/felica/impl/tcap/FeliCaResponseMessage;->init(BIBI)V

    .line 35
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaResponseMessage;->data:[B

    const/4 v3, 0x6

    iget v4, p0, Lcom/felicanetworks/felica/impl/tcap/FeliCaResponseMessage;->length:I

    invoke-static {p2, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    return-void
.end method
