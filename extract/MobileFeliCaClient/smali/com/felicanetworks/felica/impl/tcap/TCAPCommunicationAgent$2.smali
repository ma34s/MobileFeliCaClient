.class Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent$2;
.super Ljava/lang/Object;
.source "TCAPCommunicationAgent.java"

# interfaces
.implements Lorg/apache/http/client/RedirectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;->doTCAPTransaction(Ljava/lang/String;Lcom/felicanetworks/felica/impl/tcap/TCAPResponse;Lcom/felicanetworks/felica/impl/tcap/TCAPRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;


# direct methods
.method constructor <init>(Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent$2;->this$0:Lcom/felicanetworks/felica/impl/tcap/TCAPCommunicationAgent;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 1
    .param p1, "httpresponse"    # Lorg/apache/http/HttpResponse;
    .param p2, "httpcontext"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 1
    .param p1, "httpresponse"    # Lorg/apache/http/HttpResponse;
    .param p2, "httpcontext"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method
