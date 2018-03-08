.class public Lcom/felicanetworks/mfc/BlockList;
.super Ljava/lang/Object;
.source "BlockList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/BlockList;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXC_MAX_SIZE:Ljava/lang/String; = "The size of this list exceeds the maximum value."

.field public static final MAX_SIZE:I = 0xe


# instance fields
.field private blockList:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lcom/felicanetworks/mfc/BlockList$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/BlockList$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/BlockList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 230
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 260
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    .line 261
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/BlockList;->readFromParcel(Landroid/os/Parcel;)V

    .line 262
    const-string v0, "999"

    invoke-static {v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 263
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/BlockList;)V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/BlockList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 240
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    const-class v1, Lcom/felicanetworks/mfc/Block;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 247
    const-string v0, "001 blockList len=%d"

    iget-object v1, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 248
    const-string v0, "999"

    invoke-static {v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 249
    return-void
.end method


# virtual methods
.method public add(Lcom/felicanetworks/mfc/Block;)I
    .locals 2
    .param p1, "block"    # Lcom/felicanetworks/mfc/Block;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/felicanetworks/mfc/BlockList;->add(Lcom/felicanetworks/mfc/Block;Z)I

    move-result v0

    .line 66
    .local v0, "index":I
    return v0
.end method

.method add(Lcom/felicanetworks/mfc/Block;Z)I
    .locals 2
    .param p1, "block"    # Lcom/felicanetworks/mfc/Block;
    .param p2, "checkType"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/felicanetworks/mfc/ServiceUtil;->checkBlock(Lcom/felicanetworks/mfc/Block;Z)V

    .line 86
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The size of this list exceeds the maximum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public add(ILcom/felicanetworks/mfc/Block;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "block"    # Lcom/felicanetworks/mfc/Block;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/felicanetworks/mfc/BlockList;->add(ILcom/felicanetworks/mfc/Block;Z)V

    .line 114
    return-void
.end method

.method add(ILcom/felicanetworks/mfc/Block;Z)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "block"    # Lcom/felicanetworks/mfc/Block;
    .param p3, "checkType"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 136
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_2

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The size of this list exceeds the maximum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_2
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/felicanetworks/mfc/ServiceUtil;->checkBlock(Lcom/felicanetworks/mfc/Block;Z)V

    .line 143
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 144
    return-void
.end method

.method public checkFormat()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 303
    const-string v2, "000"

    invoke-static {v5, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 305
    const/4 v1, 0x0

    .line 309
    .local v1, "cnt":I
    iget-object v2, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/16 v3, 0xe

    if-le v2, v3, :cond_0

    .line 310
    const-string v2, "800 blockList.size() is too large %d"

    iget-object v3, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 311
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 315
    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 325
    const-string v2, "999"

    invoke-static {v5, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 326
    return-void

    .line 316
    :cond_1
    iget-object v2, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/Block;

    .line 317
    .local v0, "block":Lcom/felicanetworks/mfc/Block;
    if-nez v0, :cond_2

    .line 318
    const-string v2, "801 blockList[%d] is null"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 319
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 321
    :cond_2
    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Block;->checkFormat()V

    .line 322
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lcom/felicanetworks/mfc/ServiceUtil;->checkBlock(Lcom/felicanetworks/mfc/Block;Z)V

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 193
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Lcom/felicanetworks/mfc/Block;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v1, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/Block;

    .line 162
    .local v0, "block":Lcom/felicanetworks/mfc/Block;
    return-object v0
.end method

.method public remove(I)Lcom/felicanetworks/mfc/Block;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v1, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/Block;

    .line 180
    .local v0, "block":Lcom/felicanetworks/mfc/Block;
    iget-object v1, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 182
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 203
    iget-object v1, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 205
    .local v0, "size":I
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x4

    .line 285
    const-string v0, "%s : out = %s, flag = %d"

    const-string v1, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, p1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 286
    const/4 v0, 0x6

    const-string v1, "001 blockList len=%d"

    iget-object v2, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockList;->blockList:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 291
    const-string v0, "999"

    invoke-static {v3, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 292
    return-void
.end method
