.class public Lcom/felicanetworks/felica/FccException;
.super Lcom/felicanetworks/felica/FeliCaChipException;
.source "FccException.java"


# instance fields
.field private sExpandedMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/felicanetworks/felica/FeliCaChipException;-><init>(I)V

    .line 33
    iput-object p2, p0, Lcom/felicanetworks/felica/FccException;->sExpandedMessage:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getExpandedMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/felicanetworks/felica/FccException;->sExpandedMessage:Ljava/lang/String;

    return-object v0
.end method
