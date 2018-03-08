.class public Lcom/felicanetworks/felica/impl/tcap/Packets;
.super Ljava/lang/Object;
.source "Packets.java"


# instance fields
.field protected packets:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public addPacket(Lcom/felicanetworks/felica/impl/tcap/Packet;)V
    .locals 1
    .param p1, "packet"    # Lcom/felicanetworks/felica/impl/tcap/Packet;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packets;->packets:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packets;->packets:Ljava/util/Vector;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packets;->packets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public getBytes(Lcom/felicanetworks/felica/util/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Lcom/felicanetworks/felica/util/ByteBuffer;

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 104
    .local v1, "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/Packets;->packets:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 106
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/Packets;->packets:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 113
    .end local v0    # "n":I
    :cond_0
    return-void

    .line 108
    .restart local v0    # "n":I
    :cond_1
    iget-object v2, p0, Lcom/felicanetworks/felica/impl/tcap/Packets;->packets:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    check-cast v1, Lcom/felicanetworks/felica/impl/tcap/Packet;

    .line 110
    .restart local v1    # "packet":Lcom/felicanetworks/felica/impl/tcap/Packet;
    invoke-virtual {v1, p1}, Lcom/felicanetworks/felica/impl/tcap/Packet;->getBytes(Lcom/felicanetworks/felica/util/ByteBuffer;)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPacket(I)Lcom/felicanetworks/felica/impl/tcap/Packet;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packets;->packets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/Packet;

    return-object v0
.end method

.method public getPacketNum()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packets;->packets:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packets;->packets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public removePacket(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/Packets;->packets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 91
    return-void
.end method
