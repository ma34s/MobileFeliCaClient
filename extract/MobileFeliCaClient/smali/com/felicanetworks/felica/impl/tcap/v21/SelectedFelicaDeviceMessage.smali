.class Lcom/felicanetworks/felica/impl/tcap/v21/SelectedFelicaDeviceMessage;
.super Lcom/felicanetworks/felica/impl/tcap/Message;
.source "SelectedFelicaDeviceMessage.java"


# static fields
.field static final FELICA_TYPE_EXTERNAL:B = 0x2t

.field static final FELICA_TYPE_INTERNAL:B = 0x1t

.field static final FELICA_TYPE_SECRET:B = 0x3t


# direct methods
.method constructor <init>(IB)V
    .locals 2
    .param p1, "devid"    # I
    .param p2, "felicaType"    # B

    .prologue
    const/4 v1, 0x1

    .line 43
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>()V

    .line 46
    const/4 v0, 0x3

    invoke-virtual {p0, v1, p1, v0, v1}, Lcom/felicanetworks/felica/impl/tcap/v21/SelectedFelicaDeviceMessage;->init(BIBI)V

    .line 49
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/v21/SelectedFelicaDeviceMessage;->data:[B

    const/4 v1, 0x6

    aput-byte p2, v0, v1

    .line 50
    return-void
.end method
