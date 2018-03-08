.class Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandThruRwMessage;
.super Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;
.source "FeliCaPreCommandThruRwMessage.java"


# static fields
.field private static final MAX_LENGTH:I = 0xfd

.field private static final MIN_LENGTH:I = 0x4


# direct methods
.method constructor <init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/felicanetworks/felica/impl/tcap/Message;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 39
    return-void
.end method


# virtual methods
.method public validateFormat()Z
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandThruRwMessage;->length:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaPreCommandThruRwMessage;->length:I

    const/16 v1, 0xfd

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
