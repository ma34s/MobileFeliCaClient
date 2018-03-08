.class public Lcom/felicanetworks/mfc/DataList;
.super Ljava/lang/Object;
.source "DataList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/DataList;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXC_INVALID_DATA:Ljava/lang/String; = "The specified Data is null."

.field private static final EXC_MAX_SIZE:Ljava/lang/String; = "The size of this list exceeds the maximum value."

.field public static final MAX_SIZE:I = 0xe


# instance fields
.field private dataList:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/felicanetworks/mfc/DataList$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/DataList$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/DataList;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 216
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfc/DataList;->dataList:Ljava/util/Vector;

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/felicanetworks/mfc/DataList;->dataList:Ljava/util/Vector;

    .line 247
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/DataList;->readFromParcel(Landroid/os/Parcel;)V

    .line 248
    const-string v0, "999"

    invoke-static {v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 249
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/DataList;)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/DataList;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/felicanetworks/mfc/Data;)I
    .locals 2
    .param p1, "data"    # Lcom/felicanetworks/mfc/Data;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified Data is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/felicanetworks/mfc/DataList;->dataList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The size of this list exceeds the maximum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/felicanetworks/mfc/DataList;->dataList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/felicanetworks/mfc/DataList;->dataList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public add(ILcom/felicanetworks/mfc/Data;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "data"    # Lcom/felicanetworks/mfc/Data;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 96
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfc/DataList;->dataList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 99
    :cond_1
    if-nez p2, :cond_2

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified Data is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/felicanetworks/mfc/DataList;->dataList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_3

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The size of this list exceeds the maximum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/felicanetworks/mfc/DataList;->dataList:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 107
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/felicanetworks/mfc/DataList;->dataList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 156
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Lcom/felicanetworks/mfc/Data;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v1, p0, Lcom/felicanetworks/mfc/DataList;->dataList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/Data;

    .line 125
    .local v0, "data":Lcom/felicanetworks/mfc/Data;
    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 226
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/felicanetworks/mfc/DataList;->dataList:Ljava/util/Vector;

    const-class v1, Lcom/felicanetworks/mfc/Data;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 233
    const-string v0, "001 dataList len=%d"

    iget-object v1, p0, Lcom/felicanetworks/mfc/DataList;->dataList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 234
    const-string v0, "999"

    invoke-static {v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 235
    return-void
.end method

.method public remove(I)Lcom/felicanetworks/mfc/Data;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v1, p0, Lcom/felicanetworks/mfc/DataList;->dataList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/Data;

    .line 143
    .local v0, "data":Lcom/felicanetworks/mfc/Data;
    iget-object v1, p0, Lcom/felicanetworks/mfc/DataList;->dataList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 145
    return-object v0
.end method

.method set(ILcom/felicanetworks/mfc/Data;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "data"    # Lcom/felicanetworks/mfc/Data;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 184
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/felicanetworks/mfc/DataList;->dataList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 187
    :cond_1
    if-nez p2, :cond_2

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified Data is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/felicanetworks/mfc/DataList;->dataList:Ljava/util/Vector;

    invoke-virtual {v0, p2, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 191
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/felicanetworks/mfc/DataList;->dataList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x4

    .line 273
    const-string v0, "%s : out = %s, flag = %d"

    const-string v1, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, p1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 274
    const/4 v0, 0x6

    const-string v1, "001 dataList len=%d"

    iget-object v2, p0, Lcom/felicanetworks/mfc/DataList;->dataList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/felicanetworks/mfc/DataList;->dataList:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 279
    const-string v0, "999"

    invoke-static {v3, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 280
    return-void
.end method
