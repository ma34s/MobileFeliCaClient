.class public abstract Lcom/felicanetworks/felica/impl/tcap/TCAPState;
.super Ljava/lang/Object;
.source "TCAPState.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doExecution(Lcom/felicanetworks/felica/impl/tcap/TCAPContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;,
            Lcom/felicanetworks/felica/impl/tcap/TCAPException;,
            Lcom/felicanetworks/felica/impl/tcap/HTTPException;
        }
    .end annotation
.end method
