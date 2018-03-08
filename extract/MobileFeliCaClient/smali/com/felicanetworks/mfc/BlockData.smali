.class public Lcom/felicanetworks/mfc/BlockData;
.super Ljava/lang/Object;
.source "BlockData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/BlockData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private block:Lcom/felicanetworks/mfc/Block;

.field private data:Lcom/felicanetworks/mfc/Data;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/felicanetworks/mfc/BlockData$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/BlockData$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/BlockData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 161
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/BlockData;->readFromParcel(Landroid/os/Parcel;)V

    .line 191
    const-string v0, "999"

    invoke-static {v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 192
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/BlockData;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/BlockData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/felicanetworks/mfc/Block;Lcom/felicanetworks/mfc/Data;)V
    .locals 0
    .param p1, "block"    # Lcom/felicanetworks/mfc/Block;
    .param p2, "data"    # Lcom/felicanetworks/mfc/Data;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/felicanetworks/mfc/BlockData;->set(Lcom/felicanetworks/mfc/Block;Lcom/felicanetworks/mfc/Data;)V

    .line 47
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 171
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    const-class v0, Lcom/felicanetworks/mfc/Block;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/Block;

    iput-object v0, p0, Lcom/felicanetworks/mfc/BlockData;->block:Lcom/felicanetworks/mfc/Block;

    .line 175
    const-class v0, Lcom/felicanetworks/mfc/Data;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/Data;

    iput-object v0, p0, Lcom/felicanetworks/mfc/BlockData;->data:Lcom/felicanetworks/mfc/Data;

    .line 178
    const-string v0, "999"

    invoke-static {v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 179
    return-void
.end method


# virtual methods
.method public checkFormat()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 232
    const-string v0, "000"

    invoke-static {v3, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockData;->block:Lcom/felicanetworks/mfc/Block;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockData;->data:Lcom/felicanetworks/mfc/Data;

    if-nez v0, :cond_1

    .line 235
    :cond_0
    const/4 v0, 0x1

    const-string v1, "800"

    invoke-static {v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockData;->block:Lcom/felicanetworks/mfc/Block;

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Block;->checkFormat()V

    .line 241
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockData;->data:Lcom/felicanetworks/mfc/Data;

    invoke-virtual {v0}, Lcom/felicanetworks/mfc/Data;->checkFormat()V

    .line 243
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/mfc/BlockData;->block:Lcom/felicanetworks/mfc/Block;

    iget-object v2, p0, Lcom/felicanetworks/mfc/BlockData;->data:Lcom/felicanetworks/mfc/Data;

    invoke-virtual {v0, v1, v2}, Lcom/felicanetworks/mfc/ServiceUtil;->checkBlockData(Lcom/felicanetworks/mfc/Block;Lcom/felicanetworks/mfc/Data;)V

    .line 244
    const-string v0, "999"

    invoke-static {v3, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 245
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public getBlock()Lcom/felicanetworks/mfc/Block;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockData;->block:Lcom/felicanetworks/mfc/Block;

    return-object v0
.end method

.method public getData()Lcom/felicanetworks/mfc/Data;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockData;->data:Lcom/felicanetworks/mfc/Data;

    return-object v0
.end method

.method public set(Lcom/felicanetworks/mfc/Block;Lcom/felicanetworks/mfc/Data;)V
    .locals 1
    .param p1, "block"    # Lcom/felicanetworks/mfc/Block;
    .param p2, "data"    # Lcom/felicanetworks/mfc/Data;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/felicanetworks/mfc/ServiceUtil;->checkBlockData(Lcom/felicanetworks/mfc/Block;Lcom/felicanetworks/mfc/Data;)V

    .line 118
    iput-object p1, p0, Lcom/felicanetworks/mfc/BlockData;->block:Lcom/felicanetworks/mfc/Block;

    .line 119
    iput-object p2, p0, Lcom/felicanetworks/mfc/BlockData;->data:Lcom/felicanetworks/mfc/Data;

    .line 121
    return-void
.end method

.method public setBlock(Lcom/felicanetworks/mfc/Block;)V
    .locals 2
    .param p1, "block"    # Lcom/felicanetworks/mfc/Block;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/mfc/BlockData;->data:Lcom/felicanetworks/mfc/Data;

    invoke-virtual {v0, p1, v1}, Lcom/felicanetworks/mfc/ServiceUtil;->checkBlockData(Lcom/felicanetworks/mfc/Block;Lcom/felicanetworks/mfc/Data;)V

    .line 72
    iput-object p1, p0, Lcom/felicanetworks/mfc/BlockData;->block:Lcom/felicanetworks/mfc/Block;

    .line 74
    return-void
.end method

.method public setData(Lcom/felicanetworks/mfc/Data;)V
    .locals 2
    .param p1, "data"    # Lcom/felicanetworks/mfc/Data;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {}, Lcom/felicanetworks/mfc/ServiceUtil;->getInstance()Lcom/felicanetworks/mfc/ServiceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/felicanetworks/mfc/BlockData;->block:Lcom/felicanetworks/mfc/Block;

    invoke-virtual {v0, v1, p1}, Lcom/felicanetworks/mfc/ServiceUtil;->checkBlockData(Lcom/felicanetworks/mfc/Block;Lcom/felicanetworks/mfc/Data;)V

    .line 99
    iput-object p1, p0, Lcom/felicanetworks/mfc/BlockData;->data:Lcom/felicanetworks/mfc/Data;

    .line 101
    return-void
.end method

.method setWithoutValidation(Lcom/felicanetworks/mfc/Block;Lcom/felicanetworks/mfc/Data;)V
    .locals 0
    .param p1, "block"    # Lcom/felicanetworks/mfc/Block;
    .param p2, "data"    # Lcom/felicanetworks/mfc/Data;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/felicanetworks/mfc/BlockData;->block:Lcom/felicanetworks/mfc/Block;

    .line 135
    iput-object p2, p0, Lcom/felicanetworks/mfc/BlockData;->data:Lcom/felicanetworks/mfc/Data;

    .line 137
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x4

    .line 214
    const-string v0, "%s : out = %s, flag = %d"

    const-string v1, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, p1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockData;->block:Lcom/felicanetworks/mfc/Block;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 218
    iget-object v0, p0, Lcom/felicanetworks/mfc/BlockData;->data:Lcom/felicanetworks/mfc/Data;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 220
    const-string v0, "999"

    invoke-static {v3, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 221
    return-void
.end method
