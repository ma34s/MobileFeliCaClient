.class Lcom/felicanetworks/felica/impl/tcap/v21/PlaySoundMessage;
.super Lcom/felicanetworks/felica/impl/tcap/Message;
.source "PlaySoundMessage.java"


# direct methods
.method constructor <init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/felicanetworks/felica/impl/tcap/Message;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 29
    return-void
.end method


# virtual methods
.method getSound()[B
    .locals 5

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, "sound":[B
    iget v1, p0, Lcom/felicanetworks/felica/impl/tcap/v21/PlaySoundMessage;->length:I

    if-lez v1, :cond_0

    .line 67
    iget v1, p0, Lcom/felicanetworks/felica/impl/tcap/v21/PlaySoundMessage;->length:I

    new-array v0, v1, [B

    .line 69
    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/v21/PlaySoundMessage;->data:[B

    iget v2, p0, Lcom/felicanetworks/felica/impl/tcap/v21/PlaySoundMessage;->offset:I

    add-int/lit8 v2, v2, 0x6

    const/4 v3, 0x0

    iget v4, p0, Lcom/felicanetworks/felica/impl/tcap/v21/PlaySoundMessage;->length:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    :cond_0
    return-object v0
.end method

.method public validateData()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public validateFormat()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method
