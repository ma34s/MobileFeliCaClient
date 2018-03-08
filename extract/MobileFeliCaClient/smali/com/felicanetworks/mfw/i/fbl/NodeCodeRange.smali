.class public Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;
.super Ljava/lang/Object;
.source "NodeCodeRange.java"


# instance fields
.field private lowerNode:Ljava/lang/String;

.field private upperNode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLowerNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;->lowerNode:Ljava/lang/String;

    return-object v0
.end method

.method public getUpperNode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;->upperNode:Ljava/lang/String;

    return-object v0
.end method

.method public setLowerNode(Ljava/lang/String;)V
    .locals 0
    .param p1, "lowerNode"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;->lowerNode:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setUpperNode(Ljava/lang/String;)V
    .locals 0
    .param p1, "upperNode"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;->upperNode:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 29
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NodeCodeRange lowerNode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;->lowerNode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", upperNode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/felicanetworks/mfw/i/fbl/NodeCodeRange;->upperNode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
