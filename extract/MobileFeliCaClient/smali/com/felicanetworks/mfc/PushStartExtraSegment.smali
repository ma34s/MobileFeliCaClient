.class public Lcom/felicanetworks/mfc/PushStartExtraSegment;
.super Lcom/felicanetworks/mfc/PushSegment;
.source "PushStartExtraSegment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/PushStartExtraSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/felicanetworks/mfc/PushStartExtraSegment$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/PushStartExtraSegment$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/PushStartExtraSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 102
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/felicanetworks/mfc/PushSegment;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(B[B)V
    .locals 0
    .param p1, "startControlInfo"    # B
    .param p2, "segmentParam"    # [B

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/felicanetworks/mfc/PushSegment;-><init>()V

    .line 43
    iput p1, p0, Lcom/felicanetworks/mfc/PushStartExtraSegment;->activateType:I

    .line 44
    iput-object p2, p0, Lcom/felicanetworks/mfc/PushStartExtraSegment;->pushData:[B

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 136
    invoke-direct {p0}, Lcom/felicanetworks/mfc/PushSegment;-><init>()V

    .line 138
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 140
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PushStartExtraSegment;->readFromParcel(Landroid/os/Parcel;)V

    .line 142
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/PushStartExtraSegment;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PushStartExtraSegment;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x6

    .line 112
    const-string v1, "%s"

    const-string v2, "000"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 114
    if-nez p1, :cond_0

    .line 115
    const/4 v1, 0x1

    const-string v2, "%s"

    const-string v3, "700"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 116
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/felicanetworks/mfc/PushStartExtraSegment;->activateType:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 123
    .local v0, "size":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/felicanetworks/mfc/PushStartExtraSegment;->pushData:[B

    .line 124
    iget-object v1, p0, Lcom/felicanetworks/mfc/PushStartExtraSegment;->pushData:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 126
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushStartExtraSegment;->checkFormat()V

    .line 128
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 129
    return-void
.end method


# virtual methods
.method public checkFormat()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 76
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public getControlInfo()B
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/felicanetworks/mfc/PushStartExtraSegment;->activateType:I

    int-to-byte v0, v0

    return v0
.end method

.method public getSegmentParameter()[B
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartExtraSegment;->pushData:[B

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x6

    .line 164
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 167
    iget v0, p0, Lcom/felicanetworks/mfc/PushStartExtraSegment;->activateType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartExtraSegment;->pushData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartExtraSegment;->pushData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 172
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 173
    return-void
.end method
