.class Lcom/felicanetworks/felica/impl/tcap/v21/FarewellState21;
.super Lcom/felicanetworks/felica/impl/tcap/TCAPState;
.source "FarewellState21.java"


# static fields
.field private static instance:Lcom/felicanetworks/felica/impl/tcap/v21/FarewellState21;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/TCAPState;-><init>()V

    .line 60
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/impl/tcap/v21/FarewellState21;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/felicanetworks/felica/impl/tcap/v21/FarewellState21;->instance:Lcom/felicanetworks/felica/impl/tcap/v21/FarewellState21;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/v21/FarewellState21;

    invoke-direct {v0}, Lcom/felicanetworks/felica/impl/tcap/v21/FarewellState21;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/impl/tcap/v21/FarewellState21;->instance:Lcom/felicanetworks/felica/impl/tcap/v21/FarewellState21;

    .line 49
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/impl/tcap/v21/FarewellState21;->instance:Lcom/felicanetworks/felica/impl/tcap/v21/FarewellState21;

    return-object v0
.end method

.method private handleError(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)V
    .locals 5
    .param p1, "context"    # Lcom/felicanetworks/felica/impl/tcap/TCAPContext;
    .param p2, "packet"    # Lcom/felicanetworks/felica/impl/tcap/Packet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/TCAPException;,
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 198
    .local v0, "emsg":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/felicanetworks/felica/impl/tcap/Packet;->parseMessages(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V

    .line 201
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    invoke-virtual {p2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessageNum()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 220
    invoke-static {}, Lcom/felicanetworks/felica/impl/tcap/ErrorState;->getInstance()Lcom/felicanetworks/felica/impl/tcap/ErrorState;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setState(Lcom/felicanetworks/felica/impl/tcap/TCAPState;)V

    .line 223
    new-instance v3, Lcom/felicanetworks/felica/impl/tcap/TCAPException;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/felicanetworks/felica/impl/tcap/TCAPException;-><init>(BLjava/lang/String;)V

    throw v3

    .line 203
    :cond_0
    invoke-virtual {p2, v2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessage(I)Lcom/felicanetworks/felica/impl/tcap/Message;

    move-result-object v1

    .line 205
    .local v1, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 201
    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    .restart local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    :pswitch_0
    check-cast v1, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;

    .end local v1    # "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 212
    goto :goto_1

    .line 205
    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleFarewell(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)V
    .locals 4
    .param p1, "context"    # Lcom/felicanetworks/felica/impl/tcap/TCAPContext;
    .param p2, "packet"    # Lcom/felicanetworks/felica/impl/tcap/Packet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/TCAPException;,
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->parseMessages(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V

    .line 149
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    invoke-virtual {p2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessageNum()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 170
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setState(Lcom/felicanetworks/felica/impl/tcap/TCAPState;)V

    .line 171
    return-void

    .line 151
    :cond_0
    invoke-virtual {p2, v1}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getMessage(I)Lcom/felicanetworks/felica/impl/tcap/Message;

    move-result-object v0

    .line 153
    .local v0, "message":Lcom/felicanetworks/felica/impl/tcap/Message;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Message;->getID()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 149
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :sswitch_1
    new-instance v2, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;

    const/16 v3, -0x80

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;-><init>(B)V

    throw v2

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x23 -> :sswitch_1
        0x24 -> :sswitch_1
        0x25 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public doExecution(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;)V
    .locals 6
    .param p1, "context"    # Lcom/felicanetworks/felica/impl/tcap/TCAPContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/TCAPException;,
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 73
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentRequest()Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;

    move-result-object v1

    .line 76
    .local v1, "request":Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->parse()V

    .line 79
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->getCookie()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setCookie(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentResponse()Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    move-result-object v2

    .line 85
    .local v2, "response":Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->reset()V

    .line 88
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCookie()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->setCookie(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->getPacketNum()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 93
    invoke-virtual {v1, v5}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->getPacket(I)Lcom/felicanetworks/felica/impl/tcap/Packet;

    move-result-object v0

    .line 95
    .local v0, "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getSubProtocolType()B

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 112
    new-instance v3, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;

    const/16 v4, -0x80

    invoke-direct {v3, v4}, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;-><init>(B)V

    throw v3

    .line 99
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/felicanetworks/felica/impl/tcap/v21/FarewellState21;->handleFarewell(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 120
    :goto_0
    return-void

    .line 105
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lcom/felicanetworks/felica/impl/tcap/v21/FarewellState21;->handleError(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    goto :goto_0

    .line 118
    .end local v0    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    :cond_0
    new-instance v3, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    const/4 v4, 0x0

    invoke-direct {v3, v5, v4}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v3

    .line 95
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
