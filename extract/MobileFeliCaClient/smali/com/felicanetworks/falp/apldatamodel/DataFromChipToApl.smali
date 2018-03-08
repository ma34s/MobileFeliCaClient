.class public Lcom/felicanetworks/falp/apldatamodel/DataFromChipToApl;
.super Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;
.source "DataFromChipToApl.java"


# static fields
.field static sMe:Lcom/felicanetworks/falp/apldatamodel/DataFromChipToApl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/felicanetworks/falp/apldatamodel/DataFromChipToApl;

    invoke-direct {v0}, Lcom/felicanetworks/falp/apldatamodel/DataFromChipToApl;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/apldatamodel/DataFromChipToApl;->sMe:Lcom/felicanetworks/falp/apldatamodel/DataFromChipToApl;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 39
    .line 40
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxReceiveSize()S

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 41
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxReceivePacketSequence()I

    move-result v1

    .line 40
    mul-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;-><init>([B)V

    .line 42
    return-void
.end method

.method public static getInstance()Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/felicanetworks/falp/apldatamodel/DataFromChipToApl;->sMe:Lcom/felicanetworks/falp/apldatamodel/DataFromChipToApl;

    return-object v0
.end method


# virtual methods
.method public commit()I
    .locals 5

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/felicanetworks/falp/apldatamodel/DataFromChipToApl;->getState()I

    move-result v2

    .line 83
    .local v2, "state":I
    invoke-super {p0}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->commit()I

    move-result v1

    .line 85
    .local v1, "ret":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/felicanetworks/falp/apldatamodel/DataFromChipToApl;->getWriteBufferSize()I

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/felicanetworks/falp/apldatamodel/DataFromChipToApl;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 90
    :cond_0
    return v1

    .line 86
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/falp/apldatamodel/AplDataBufferListener;

    .line 87
    .local v0, "l":Lcom/felicanetworks/falp/apldatamodel/AplDataBufferListener;
    invoke-interface {v0}, Lcom/felicanetworks/falp/apldatamodel/AplDataBufferListener;->recvDataNotify()V

    goto :goto_0
.end method

.method public startEdit(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 63
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/felicanetworks/falp/apldatamodel/DataFromChipToApl;->getWriteBufferSize()I

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, -0x5

    .line 68
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->startEdit(I)I

    move-result v0

    goto :goto_0
.end method
