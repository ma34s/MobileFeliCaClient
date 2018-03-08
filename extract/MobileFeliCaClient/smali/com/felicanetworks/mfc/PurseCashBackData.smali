.class public Lcom/felicanetworks/mfc/PurseCashBackData;
.super Lcom/felicanetworks/mfc/Data;
.source "PurseCashBackData.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/PurseCashBackData;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXC_DATA:Ljava/lang/String; = "The value must be from 0 to 0xffffffff."

.field private static final EXC_EXEC_ID:Ljava/lang/String; = "The value must be from 0 to 0xffff."

.field private static final MAX_DATA:J = 0xffffffffL

.field private static final MAX_EXEC_ID:I = 0xffff

.field private static final MIN_DATA:J = 0x0L

.field private static final MIN_EXEC_ID:I = 0x0

.field public static final TYPE:I = 0x4


# instance fields
.field private cashBackData:J

.field private execID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/felicanetworks/mfc/PurseCashBackData$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/PurseCashBackData$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/PurseCashBackData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 180
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "cashBackData"    # J
    .param p3, "execID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/felicanetworks/mfc/PurseCashBackData;->setCashBackData(J)V

    .line 80
    invoke-virtual {p0, p3}, Lcom/felicanetworks/mfc/PurseCashBackData;->setExecID(I)V

    .line 82
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 208
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 210
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PurseCashBackData;->readFromParcel(Landroid/os/Parcel;)V

    .line 212
    const-string v0, "999"

    invoke-static {v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 213
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/PurseCashBackData;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PurseCashBackData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x6

    .line 190
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v4, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->cashBackData:J

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->execID:I

    .line 198
    const-string v0, "001 cashBackData=%d execID=%d"

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->cashBackData:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->execID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    const-string v0, "999"

    invoke-static {v4, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 200
    return-void
.end method


# virtual methods
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

    .line 254
    const-string v0, "000"

    invoke-static {v5, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 255
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->cashBackData:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->cashBackData:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 256
    :cond_0
    const-string v0, "%s : cashBackData = %d"

    const-string v1, "800"

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->cashBackData:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_1
    iget v0, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->execID:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->execID:I

    const v1, 0xffff

    if-le v0, v1, :cond_3

    .line 261
    :cond_2
    const-string v0, "%s : execID = %d"

    const-string v1, "801"

    iget v2, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->execID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_3
    const-string v0, "999"

    invoke-static {v5, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 265
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public getCashBackData()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->cashBackData:J

    return-wide v0
.end method

.method public getExecID()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->execID:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x4

    return v0
.end method

.method public setCashBackData(J)V
    .locals 3
    .param p1, "cashBackData"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 120
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    iput-wide p1, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->cashBackData:J

    .line 125
    return-void
.end method

.method public setExecID(I)V
    .locals 2
    .param p1, "execID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 151
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    iput p1, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->execID:I

    .line 156
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v4, 0x4

    .line 235
    const-string v0, "%s : out = %s, flag = %d"

    const-string v1, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v0, v1, p1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->cashBackData:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 239
    iget v0, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->execID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v0, 0x6

    const-string v1, "001 cashBackData=%d execID=%d"

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->cashBackData:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v3, p0, Lcom/felicanetworks/mfc/PurseCashBackData;->execID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    const-string v0, "999"

    invoke-static {v4, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 243
    return-void
.end method
