.class public Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;
.super Lcom/felicanetworks/felica/impl/tcap/TCAPSession;
.source "TCAPSession25.java"


# static fields
.field public static final TCAP_VERSION_25:I = 0x205


# instance fields
.field private featureList:Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;)V
    .locals 6
    .param p1, "agent"    # Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    .prologue
    .line 44
    const/16 v2, 0x205

    invoke-static {}, Lcom/felicanetworks/felica/impl/tcap/v25/InitialState25;->getInstance()Lcom/felicanetworks/felica/impl/tcap/v25/InitialState25;

    move-result-object v3

    new-instance v4, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPRequest25;

    invoke-direct {v4}, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPRequest25;-><init>()V

    .line 45
    new-instance v5, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    invoke-direct {v5}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/felicanetworks/felica/impl/tcap/TCAPSession;-><init>(Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;ILcom/felicanetworks/felica/impl/tcap/TCAPState;Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;)V

    .line 47
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;

    invoke-direct {v0}, Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->featureList:Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;

    .line 49
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->featureList:Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;

    new-instance v1, Lcom/felicanetworks/felica/impl/tcap/v25/Feature;

    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getVersion()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/felicanetworks/felica/impl/tcap/v25/Feature;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;->add(Lcom/felicanetworks/felica/impl/tcap/v25/Feature;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getFeatureList()Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->featureList:Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;

    return-object v0
.end method

.method protected reportIllegalStateError(Ljava/lang/String;)V
    .locals 5
    .param p1, "emsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentResponse()Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    move-result-object v1

    .line 105
    .local v1, "res":Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->reset()V

    .line 108
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCookie()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->setCookie(Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;

    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getVersion()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;-><init>(I)V

    .line 114
    .local v0, "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    new-instance v2, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;

    const/16 v3, 0x22

    invoke-direct {v2, v3, p1}, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;-><init>(BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 117
    invoke-virtual {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->addPacket(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 120
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getURL()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentRequest()Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->doTCAPTransaction(Ljava/lang/String;Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;)V

    .line 121
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
    .line 72
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentResponse()Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    move-result-object v1

    .line 75
    .local v1, "res":Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->reset()V

    .line 78
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCookie()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->setCookie(Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;

    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getVersion()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;-><init>(I)V

    .line 84
    .local v0, "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    new-instance v2, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;

    const/16 v3, 0x21

    invoke-direct {v2, v3, p1}, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;-><init>(BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 87
    invoke-virtual {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->addPacket(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 90
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getURL()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentRequest()Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->doTCAPTransaction(Ljava/lang/String;Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;)V

    .line 91
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
    .line 132
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentResponse()Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;

    move-result-object v1

    .line 135
    .local v1, "res":Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;
    invoke-virtual {v1}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->reset()V

    .line 138
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCookie()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->setCookie(Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;

    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v2}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getVersion()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/felicanetworks/felica/impl/tcap/v25/ErrorPacket25;-><init>(I)V

    .line 144
    .local v0, "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    new-instance v2, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;

    const/16 v3, 0x23

    invoke-direct {v2, v3, p1}, Lcom/felicanetworks/felica/impl/tcap/ErrorMessage;-><init>(BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/felicanetworks/felica/impl/tcap/Packet;->addMessage(Lcom/felicanetworks/felica/impl/tcap/Message;)V

    .line 147
    invoke-virtual {v1, v0}, Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;->addPacket(Lcom/felicanetworks/felica/impl/tcap/Packet;)V

    .line 150
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->agent:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v3}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getURL()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/felica/impl/tcap/v25/TCAPSession25;->context:Lcom/felicanetworks/felica/impl/tcap/TCAPContext;

    invoke-virtual {v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->getCurrentRequest()Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->doTCAPTransaction(Ljava/lang/String;Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;)V

    .line 151
    return-void
.end method
