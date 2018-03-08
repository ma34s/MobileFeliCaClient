.class Lcom/felicanetworks/felica/impl/tcap/v21/InitialState21;
.super Lcom/felicanetworks/felica/impl/tcap/TCAPState;
.source "InitialState21.java"


# static fields
.field private static instance:Lcom/felicanetworks/felica/impl/tcap/v21/InitialState21;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/TCAPState;-><init>()V

    .line 60
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/impl/tcap/v21/InitialState21;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/felicanetworks/felica/impl/tcap/v21/InitialState21;->instance:Lcom/felicanetworks/felica/impl/tcap/v21/InitialState21;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/v21/InitialState21;

    invoke-direct {v0}, Lcom/felicanetworks/felica/impl/tcap/v21/InitialState21;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/impl/tcap/v21/InitialState21;->instance:Lcom/felicanetworks/felica/impl/tcap/v21/InitialState21;

    .line 49
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/impl/tcap/v21/InitialState21;->instance:Lcom/felicanetworks/felica/impl/tcap/v21/InitialState21;

    return-object v0
.end method


# virtual methods
.method public doExecution(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;)V
    .locals 7
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
    const/4 v6, 0x0

    .line 73
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getStopFlag()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    new-instance v4, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    const/4 v5, 0x1

    .line 76
    const-string v6, "Interrupted."

    .line 75
    invoke-direct {v4, v5, v6}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v4

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentRequest()Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;

    move-result-object v2

    .line 83
    .local v2, "request":Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;
    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->reset()V

    .line 86
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentResponse()Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    move-result-object v3

    .line 89
    .local v3, "response":Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;
    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->reset()V

    .line 92
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCookie()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->setCookie(Ljava/lang/String;)V

    .line 95
    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;

    invoke-direct {v1}, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakePacket21;-><init>()V

    .line 98
    .local v1, "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    new-instance v4, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 99
    const/16 v5, 0x21

    invoke-direct {v4, v6, v6, v5}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 98
    invoke-virtual {v1, v4}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 102
    new-instance v4, Lcom/felicanetworks/felica/impl/tcap/DevicesMessage;

    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/felicanetworks/felica/impl/tcap/DevicesMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V

    invoke-virtual {v1, v4}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 105
    new-instance v4, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 106
    const/16 v5, 0x22

    invoke-direct {v4, v6, v6, v5}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 105
    invoke-virtual {v1, v4}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 109
    invoke-virtual {v3, v1}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->addPacket(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 111
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getSession()Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->getAgent()Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    move-result-object v0

    .line 114
    .local v0, "agent":Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->doTCAPTransaction(Ljava/lang/String;Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;)V

    .line 117
    invoke-static {}, Lcom/felicanetworks/felica/impl/tcap/v21/HandshakeState21;->getInstance()Lcom/felicanetworks/felica/impl/tcap/v21/HandshakeState21;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setState(Lcom/felicanetworks/felica/impl/tcap/TCAPState;)V

    .line 118
    return-void
.end method
