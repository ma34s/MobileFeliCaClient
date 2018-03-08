.class public Lcom/felicanetworks/mfc/BlockCountInformation;
.super Ljava/lang/Object;
.source "BlockCountInformation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/BlockCountInformation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected assignedBlocks:I

.field protected emptyBlocks:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/felicanetworks/mfc/BlockCountInformation$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/BlockCountInformation$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/BlockCountInformation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 142
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "assignedBlocks"    # I
    .param p2, "emptyBlocks"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const v0, 0xffff

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_1
    if-ltz p2, :cond_2

    if-le p2, v0, :cond_3

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 55
    :cond_3
    iput p1, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->assignedBlocks:I

    .line 56
    iput p2, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->emptyBlocks:I

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/BlockCountInformation;->readFromParcel(Landroid/os/Parcel;)V

    .line 171
    const-string v0, "999"

    invoke-static {v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 172
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/BlockCountInformation;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/BlockCountInformation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public getAssignedBlocks()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->assignedBlocks:I

    return v0
.end method

.method public getFreeBlocks()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->emptyBlocks:I

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x7

    .line 152
    const/4 v0, 0x6

    const-string v1, "%s : in = %s"

    const-string v2, "000"

    invoke-static {v0, v1, v2, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->assignedBlocks:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->emptyBlocks:I

    .line 157
    const-string v0, "001 assignedBlocks=%d emptyBlocks=%d"

    iget v1, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->assignedBlocks:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->emptyBlocks:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    const-string v0, "999"

    invoke-static {v3, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 159
    return-void
.end method

.method public setAssignedBlocks(I)V
    .locals 1
    .param p1, "assignedBlocks"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 82
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 86
    :cond_1
    iput p1, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->assignedBlocks:I

    .line 88
    return-void
.end method

.method public setFreeBlocks(I)V
    .locals 1
    .param p1, "emptyBlocks"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 112
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 116
    :cond_1
    iput p1, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->emptyBlocks:I

    .line 118
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v4, 0x7

    .line 194
    const/4 v0, 0x4

    const-string v1, "%s : out = %s, flag = %d"

    const-string v2, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, p1, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    const-string v0, "001 assignedBlocks=%d emptyBlocks=%d"

    iget v1, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->assignedBlocks:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->emptyBlocks:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
    iget v0, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->assignedBlocks:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Lcom/felicanetworks/mfc/BlockCountInformation;->emptyBlocks:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    const-string v0, "999"

    invoke-static {v4, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 201
    return-void
.end method
