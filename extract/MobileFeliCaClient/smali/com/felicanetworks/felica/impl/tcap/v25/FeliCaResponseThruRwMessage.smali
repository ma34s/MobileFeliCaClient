.class Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaResponseThruRwMessage;
.super Lcom/felicanetworks/felica/impl/tcap/Message;
.source "FeliCaResponseThruRwMessage.java"


# direct methods
.method constructor <init>(I[B)V
    .locals 5
    .param p1, "devid"    # I
    .param p2, "command"    # [B

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>()V

    .line 33
    array-length v0, p2

    .line 35
    .local v0, "len":I
    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaResponseThruRwMessage;->init(BIBI)V

    .line 37
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaResponseThruRwMessage;->data:[B

    const/4 v3, 0x6

    iget v4, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaResponseThruRwMessage;->length:I

    invoke-static {p2, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    return-void
.end method
