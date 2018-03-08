.class Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;
.super Ljava/lang/Object;
.source "PermitOptr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfw/i/fbl/PermitOptr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandHeader"
.end annotation


# instance fields
.field private lines:[Ljava/lang/String;

.field private modeIndex:I

.field private permitIndex:I

.field final synthetic this$0:Lcom/felicanetworks/mfw/i/fbl/PermitOptr;

.field private urlIndex:I


# direct methods
.method private constructor <init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 2221
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;->this$0:Lcom/felicanetworks/mfw/i/fbl/PermitOptr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2224
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;->lines:[Ljava/lang/String;

    .line 2227
    iput v1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;->permitIndex:I

    .line 2230
    iput v1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;->urlIndex:I

    .line 2233
    iput v1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;->modeIndex:I

    return-void
.end method


# virtual methods
.method public getPermitIndex()I
    .locals 1

    .prologue
    .line 2334
    iget v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;->permitIndex:I

    return v0
.end method

.method public getPermitLine()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2314
    iget v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;->permitIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;->lines:[Ljava/lang/String;

    iget v1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;->permitIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getUrlLine()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2324
    iget v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;->urlIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;->lines:[Ljava/lang/String;

    iget v1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;->urlIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public hasModeLine()Z
    .locals 2

    .prologue
    .line 2262
    iget v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;->modeIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPermitLine()Z
    .locals 2

    .prologue
    .line 2242
    iget v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;->permitIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrlLine()Z
    .locals 2

    .prologue
    .line 2252
    iget v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;->urlIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setModeLine(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "line"    # Ljava/lang/String;

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;->lines:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 2304
    iput p1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;->modeIndex:I

    .line 2305
    return-void
.end method

.method public setPermitLine(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "line"    # Ljava/lang/String;

    .prologue
    .line 2275
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;->lines:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 2276
    iput p1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;->permitIndex:I

    .line 2277
    return-void
.end method

.method public setUrlLine(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "line"    # Ljava/lang/String;

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;->lines:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 2290
    iput p1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$CommandHeader;->urlIndex:I

    .line 2291
    return-void
.end method
