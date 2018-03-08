.class Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaCommandThruRwMessage;
.super Lcom/felicanetworks/felica/impl/tcap/FeliCaCommandMessage;
.source "FeliCaCommandThruRwMessage.java"


# static fields
.field private static final MAX_LENGTH:I = 0xfa

.field private static final MIN_LENGTH:I = 0x1


# direct methods
.method constructor <init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/felicanetworks/felica/impl/tcap/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/impl/tcap/FeliCaCommandMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 41
    return-void
.end method


# virtual methods
.method public validateFormat()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 52
    iget v1, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaCommandThruRwMessage;->length:I

    if-lt v1, v0, :cond_0

    iget v1, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeliCaCommandThruRwMessage;->length:I

    const/16 v2, 0xfa

    if-le v1, v2, :cond_1

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 57
    :cond_1
    return v0
.end method
