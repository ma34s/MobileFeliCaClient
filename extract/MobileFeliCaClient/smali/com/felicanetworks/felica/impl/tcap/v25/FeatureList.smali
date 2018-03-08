.class Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;
.super Ljava/lang/Object;
.source "FeatureList.java"


# instance fields
.field features:Ljava/util/Vector;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method add(Lcom/felicanetworks/felica/impl/tcap/v25/Feature;)V
    .locals 1
    .param p1, "feature"    # Lcom/felicanetworks/felica/impl/tcap/v25/Feature;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;->features:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;->features:Ljava/util/Vector;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;->features:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method get(I)Lcom/felicanetworks/felica/impl/tcap/v25/Feature;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;->features:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/v25/Feature;

    return-object v0
.end method

.method query(ILjava/util/Vector;)Lcom/felicanetworks/felica/impl/tcap/v25/Feature;
    .locals 6
    .param p1, "version"    # I
    .param p2, "optionList"    # Ljava/util/Vector;

    .prologue
    const/4 v4, 0x0

    .line 88
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;->features:Ljava/util/Vector;

    if-eqz v3, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "feature":Lcom/felicanetworks/felica/impl/tcap/v25/Feature;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;->features:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    .end local v0    # "feature":Lcom/felicanetworks/felica/impl/tcap/v25/Feature;
    .end local v1    # "i":I
    :cond_0
    move-object v0, v4

    .line 114
    :cond_1
    :goto_1
    return-object v0

    .line 94
    .restart local v0    # "feature":Lcom/felicanetworks/felica/impl/tcap/v25/Feature;
    .restart local v1    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;->features:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "feature":Lcom/felicanetworks/felica/impl/tcap/v25/Feature;
    check-cast v0, Lcom/felicanetworks/felica/impl/tcap/v25/Feature;

    .line 96
    .restart local v0    # "feature":Lcom/felicanetworks/felica/impl/tcap/v25/Feature;
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/v25/Feature;->getVersion()I

    move-result v3

    if-ne v3, p1, :cond_4

    .line 97
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/v25/Feature;->getOptionNum()I

    move-result v3

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v5

    if-ne v3, v5, :cond_4

    .line 101
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    invoke-virtual {v0}, Lcom/felicanetworks/felica/impl/tcap/v25/Feature;->getOptionNum()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 103
    invoke-virtual {v0, v2}, Lcom/felicanetworks/felica/impl/tcap/v25/Feature;->getOption(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v0, v4

    .line 105
    goto :goto_1

    .line 101
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 92
    .end local v2    # "j":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method size()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;->features:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/v25/FeatureList;->features:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method
