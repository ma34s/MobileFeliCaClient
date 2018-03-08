.class public Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;
.super Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;
.source "DataFromAplToChip.java"


# static fields
.field static sMe:Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;

    invoke-direct {v0}, Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;-><init>()V

    sput-object v0, Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;->sMe:Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    .line 42
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxSendSize()S

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 43
    invoke-static {}, Lcom/felicanetworks/falp/FalpConfig;->getMaxSendPacketSequence()S

    move-result v1

    .line 42
    mul-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;-><init>([B)V

    .line 44
    return-void
.end method

.method public static getInstance()Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;->sMe:Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;

    return-object v0
.end method


# virtual methods
.method public commit()I
    .locals 6

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;->getState()I

    move-result v2

    .line 65
    .local v2, "state":I
    invoke-super {p0}, Lcom/felicanetworks/falp/apldatamodel/AplDataBuffer;->commit()I

    move-result v1

    .line 67
    .local v1, "ret":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;->getWriteBufferSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;->getReadBufferSize()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;->getBufferMaxSize()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 69
    iget-object v3, p0, Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 74
    :cond_0
    return v1

    .line 69
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/falp/apldatamodel/AplDataBufferListener;

    .line 70
    .local v0, "l":Lcom/felicanetworks/falp/apldatamodel/AplDataBufferListener;
    invoke-virtual {p0}, Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;->getBufferMaxSize()I

    move-result v4

    invoke-virtual {p0}, Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;->getWriteBufferSize()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/felicanetworks/falp/apldatamodel/DataFromAplToChip;->getReadBufferSize()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v0, v4}, Lcom/felicanetworks/falp/apldatamodel/AplDataBufferListener;->sendDataPrepared(I)V

    goto :goto_0
.end method
