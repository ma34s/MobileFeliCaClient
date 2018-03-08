.class public Lcom/felicanetworks/felica/impl/tcap/CloseRWStatusMessage;
.super Lcom/felicanetworks/felica/impl/tcap/Message;
.source "CloseRWStatusMessage.java"


# static fields
.field public static final RESULT_FAILURE:B = 0x0t

.field public static final RESULT_SUCCESS:B = 0x1t


# direct methods
.method public constructor <init>(IB)V
    .locals 2
    .param p1, "devid"    # I
    .param p2, "result"    # B

    .prologue
    const/4 v1, 0x6

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>()V

    .line 39
    invoke-virtual {p0, v0, p1, v1, v0}, Lcom/felicanetworks/felica/impl/tcap/CloseRWStatusMessage;->init(BIBI)V

    .line 42
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/CloseRWStatusMessage;->data:[B

    aput-byte p2, v0, v1

    .line 43
    return-void
.end method
