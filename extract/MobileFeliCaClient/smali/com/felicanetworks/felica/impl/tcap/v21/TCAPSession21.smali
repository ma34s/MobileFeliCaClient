.class public Lcom/felicanetworks/felica/impl/tcap/v21/TCAPSession21;
.super Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
.source "TCAPSession21.java"


# static fields
.field public static final TCAP_VERSION_21:I = 0x201


# direct methods
.method public constructor <init>(Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;)V
    .locals 6
    .param p1, "agent"    # Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    .prologue
    .line 39
    const/16 v2, 0x201

    invoke-static {}, Lcom/felicanetworks/felica/impl/tcap/v21/InitialState21;->getInstance()Lcom/felicanetworks/felica/impl/tcap/v21/InitialState21;

    move-result-object v3

    new-instance v4, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPRequest21;

    invoke-direct {v4}, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPRequest21;-><init>()V

    .line 40
    new-instance v5, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    invoke-direct {v5}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;-><init>(Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;ILcom/felicanetworks/felica/impl/tcap/TCAPState;Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected reportIllegalStateError(Ljava/lang/String;)V
    .locals 5
    .param p1, "emsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 86
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPSession21;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentResponse()Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    move-result-object v1

    .line 89
    .local v1, "res":Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->reset()V

    .line 92
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPSession21;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCookie()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->setCookie(Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;

    invoke-direct {v0}, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;-><init>()V

    .line 98
    .local v0, "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    new-instance v2, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;

    const/16 v3, 0x22

    invoke-direct {v2, v3, p1}, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;-><init>(BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 101
    new-instance v2, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 102
    invoke-direct {v2, v4, v4, v4}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 101
    invoke-virtual {v0, v2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 105
    invoke-virtual {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->addPacket(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 108
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPSession21;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPSession21;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getURL()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPSession21;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentRequest()Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->doTCAPTransaction(Ljava/lang/String;Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;)V

    .line 109
    return-void
.end method

.method protected reportPacketFormatError(Ljava/lang/String;)V
    .locals 5
    .param p1, "emsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 52
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPSession21;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentResponse()Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    move-result-object v1

    .line 55
    .local v1, "res":Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->reset()V

    .line 58
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPSession21;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCookie()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->setCookie(Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;

    invoke-direct {v0}, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;-><init>()V

    .line 64
    .local v0, "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    new-instance v2, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;

    const/16 v3, 0x21

    invoke-direct {v2, v3, p1}, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;-><init>(BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 67
    new-instance v2, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 68
    invoke-direct {v2, v4, v4, v4}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 67
    invoke-virtual {v0, v2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 71
    invoke-virtual {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->addPacket(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 74
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPSession21;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPSession21;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getURL()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPSession21;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentRequest()Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->doTCAPTransaction(Ljava/lang/String;Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;)V

    .line 75
    return-void
.end method

.method protected reportUnexpectedError(Ljava/lang/String;)V
    .locals 5
    .param p1, "emsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 120
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPSession21;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentResponse()Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    move-result-object v1

    .line 123
    .local v1, "res":Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->reset()V

    .line 126
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPSession21;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCookie()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->setCookie(Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;

    invoke-direct {v0}, Lcom/felicanetworks/felica/impl/tcap/v21/ErrorPacket21;-><init>()V

    .line 132
    .local v0, "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    new-instance v2, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;

    const/16 v3, 0x23

    invoke-direct {v2, v3, p1}, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;-><init>(BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 135
    new-instance v2, Lcom/felicanetworks/felica/impl/tcap/Message;

    .line 136
    invoke-direct {v2, v4, v4, v4}, Lcom/felicanetworks/felica/impl/tcap/Message;-><init>(BIB)V

    .line 135
    invoke-virtual {v0, v2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 139
    invoke-virtual {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->addPacket(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 142
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPSession21;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPSession21;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getURL()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/v21/TCAPSession21;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentRequest()Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->doTCAPTransaction(Ljava/lang/String;Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;)V

    .line 143
    return-void
.end method
