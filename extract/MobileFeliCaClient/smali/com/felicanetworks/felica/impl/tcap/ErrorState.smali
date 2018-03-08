.class public Lcom/felicanetworks/felica/impl/tcap/ErrorState;
.super Lcom/felicanetworks/felica/impl/tcap/TCAPState;
.source "ErrorState.java"


# static fields
.field private static instance:Lcom/felicanetworks/felica/impl/tcap/ErrorState;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/felicanetworks/felica/impl/tcap/TCAPState;-><init>()V

    .line 46
    return-void
.end method

.method public static getInstance()Lcom/felicanetworks/felica/impl/tcap/ErrorState;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/felicanetworks/felica/impl/tcap/ErrorState;->instance:Lcom/felicanetworks/felica/impl/tcap/ErrorState;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/felicanetworks/felica/impl/tcap/ErrorState;

    invoke-direct {v0}, Lcom/felicanetworks/felica/impl/tcap/ErrorState;-><init>()V

    sput-object v0, Lcom/felicanetworks/felica/impl/tcap/ErrorState;->instance:Lcom/felicanetworks/felica/impl/tcap/ErrorState;

    .line 35
    :cond_0
    sget-object v0, Lcom/felicanetworks/felica/impl/tcap/ErrorState;->instance:Lcom/felicanetworks/felica/impl/tcap/ErrorState;

    return-object v0
.end method


# virtual methods
.method public doExecution(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;)V
    .locals 1
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
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/felicanetworks/felica/impl/tcap/TCAPContext;->setState(Lcom/felicanetworks/felica/impl/tcap/TCAPState;)V

    .line 64
    return-void
.end method
