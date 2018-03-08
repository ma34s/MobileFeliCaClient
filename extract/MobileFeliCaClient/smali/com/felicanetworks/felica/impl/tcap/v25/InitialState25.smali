.class Lcom/felicanetworks/felica/impl/tcap/v25/InitialState25;
.super Lcom/felicanetworks/felica/impl/tcap/TCAPState;
.source "InitialState25.java"


# static fields
.field private static instance:Lcom/felicanetworks/felica/impl/tcap/v25/InitialState25;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/TCAPState;-><init>()V

    .line 60
    return-void
.end method

.method static getInstance()Lcom/felicanetworks/felica/impl/tcap/v25/InitialState25;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/felicanetworks/felica/impl/tcap/v25/InitialState25;->instance:Lcom/felicanetworks/felica/impl/tcap/v25/InitialState25;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/v25/InitialState25;

    invoke-direct {v0}, Lcom/felicanetworks/felica/impl/tcap/v25/InitialState25;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/impl/tcap/v25/InitialState25;->instance:Lcom/felicanetworks/felica/impl/tcap/v25/InitialState25;

    .line 49
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/impl/tcap/v25/InitialState25;->instance:Lcom/felicanetworks/felica/impl/tcap/v25/InitialState25;

    return-object v0
.end method


# virtual methods
.method public doExecution(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;)V
    .locals 9
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
    const/4 v8, 0x0

    .line 73
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getStopFlag()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 75
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;

    const/4 v7, 0x1

    .line 76
    const-string v8, "Interrupted."

    .line 75
    invoke-direct {v6, v7, v8}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;-><init>(BLjava/lang/String;)V

    throw v6

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentRequest()Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;

    move-result-object v4

    .line 83
    .local v4, "request":Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;
    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;->reset()V

    .line 86
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentResponse()Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    move-result-object v5

    .line 89
    .local v5, "response":Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;
    invoke-virtual {v5}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->reset()V

    .line 92
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCookie()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->setCookie(Ljava/lang/String;)V

    .line 95
    new-instance v3, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;

    const/16 v6, 0x205

    invoke-direct {v3, v6}, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakePacket25;-><init>(I)V

    .line 98
    .local v3, "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 99
    const/16 v7, 0x21

    invoke-direct {v6, v8, v8, v7}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 98
    invoke-virtual {v3, v6}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 102
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/DevicesMessage;

    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getDeviceList()Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/felicanetworks/felica/impl/tcap/DevicesMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/InternalDeviceList;)V

    invoke-virtual {v3, v6}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 104
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getSession()Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    move-result-object v6

    check-cast v6, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;

    invoke-virtual {v6}, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->getFeatureList()Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;

    move-result-object v1

    .line 106
    .local v1, "featureList":Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;->size()I

    move-result v6

    if-lt v2, v6, :cond_1

    .line 113
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 114
    const/16 v7, 0x22

    invoke-direct {v6, v8, v8, v7}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 113
    invoke-virtual {v3, v6}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 117
    invoke-virtual {v5, v3}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->addPacket(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 119
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getSession()Lcom/felicanetworks/felica/impl/tcap/TCAPSession;

    move-result-object v6

    invoke-virtual {v6}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;->getAgent()Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    move-result-object v0

    .line 122
    .local v0, "agent":Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;
    invoke-virtual {p1}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5, v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->doTCAPTransaction(Ljava/lang/String;Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;)V

    .line 125
    invoke-static {}, Lcom/felicanetworks/felica/impl/tcap/v25/HandshakeState25;->getInstance()Lcom/felicanetworks/felica/impl/tcap/v25/HandshakeState25;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setState(Lcom/felicanetworks/felica/impl/tcap/TCAPState;)V

    .line 126
    return-void

    .line 109
    .end local v0    # "agent":Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;
    :cond_1
    new-instance v6, Lcom/felicanetworks/felica/impl/tcap/v25/FeaturesMessage;

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;->get(I)Lcom/felicanetworks/felica/impl/tcap/v25/Feature;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/felicanetworks/felica/impl/tcap/v25/FeaturesMessage;-><init>(Lcom/felicanetworks/felica/impl/tcap/v25/Feature;)V

    invoke-virtual {v3, v6}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
