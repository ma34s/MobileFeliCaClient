.class public Lcom/felicanetworks/mfc/PurseData;
.super Lcom/felicanetworks/mfc/Data;
.source "PurseData.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/PurseData;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXC_DATA:Ljava/lang/String; = "The value must be from 0 to 0xffffffff."

.field private static final EXC_EXEC_ID:Ljava/lang/String; = "The value must be from 0 to 0xffff."

.field private static final EXC_LENGTH:Ljava/lang/String; = "The length must be 6."

.field private static final EXC_NULL:Ljava/lang/String; = "null is not allowed."

.field private static final MAX_DATA:J = 0xffffffffL

.field private static final MAX_EXEC_ID:I = 0xffff

.field private static final MIN_DATA:J = 0x0L

.field private static final MIN_EXEC_ID:I = 0x0

.field public static final TYPE:I = 0x3

.field private static final USERDATA_LENGTH:I = 0x6


# instance fields
.field private cashBackData:J

.field private execID:I

.field private purseData:J

.field private userData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 263
    new-instance v0, Lcom/felicanetworks/mfc/PurseData$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/PurseData$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/PurseData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 278
    return-void
.end method

.method public constructor <init>(JJ[BI)V
    .locals 1
    .param p1, "purseData"    # J
    .param p3, "cashBackData"    # J
    .param p5, "userData"    # [B
    .param p6, "execID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/felicanetworks/mfc/PurseData;->setPurseData(J)V

    .line 110
    invoke-virtual {p0, p3, p4}, Lcom/felicanetworks/mfc/PurseData;->setCashBackData(J)V

    .line 111
    invoke-virtual {p0, p5}, Lcom/felicanetworks/mfc/PurseData;->setUserData([B)V

    .line 112
    invoke-virtual {p0, p6}, Lcom/felicanetworks/mfc/PurseData;->setExecID(I)V

    .line 114
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 312
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 314
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PurseData;->readFromParcel(Landroid/os/Parcel;)V

    .line 316
    const-string v0, "999"

    invoke-static {v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 317
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/PurseData;)V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PurseData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x6

    .line 288
    const-string v1, "%s : in = %s"

    const-string v2, "000"

    invoke-static {v0, v1, v2, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 291
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/felicanetworks/mfc/PurseData;->userData:[B

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/felicanetworks/mfc/PurseData;->purseData:J

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/felicanetworks/mfc/PurseData;->cashBackData:J

    .line 296
    iget-object v1, p0, Lcom/felicanetworks/mfc/PurseData;->userData:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/felicanetworks/mfc/PurseData;->execID:I

    .line 301
    const-string v1, "001 purseData=%d cashBackData=%d userData.length=%d execID=%d"

    .line 302
    iget-wide v2, p0, Lcom/felicanetworks/mfc/PurseData;->purseData:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p0, Lcom/felicanetworks/mfc/PurseData;->cashBackData:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/mfc/PurseData;->userData:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/felicanetworks/mfc/PurseData;->execID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 301
    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 303
    const-string v1, "999"

    invoke-static {v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 304
    return-void
.end method


# virtual methods
.method public checkFormat()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const-wide v8, 0xffffffffL

    const-wide/16 v6, 0x0

    const/4 v2, 0x4

    const/4 v4, 0x1

    .line 361
    const-string v0, "000"

    invoke-static {v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 362
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseData;->purseData:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseData;->purseData:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_1

    .line 363
    :cond_0
    const-string v0, "%s : purseData = %d"

    const-string v1, "800"

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PurseData;->purseData:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_1
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseData;->cashBackData:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseData;->cashBackData:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_3

    .line 368
    :cond_2
    const-string v0, "%s : cashBackData = %d"

    const-string v1, "801"

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PurseData;->cashBackData:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_3
    iget-object v0, p0, Lcom/felicanetworks/mfc/PurseData;->userData:[B

    if-nez v0, :cond_4

    .line 373
    const-string v0, "%s"

    const-string v1, "802"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 374
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_4
    iget-object v0, p0, Lcom/felicanetworks/mfc/PurseData;->userData:[B

    array-length v0, v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    .line 376
    const-string v0, "%s"

    const-string v1, "803"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length must be 6."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_5
    iget v0, p0, Lcom/felicanetworks/mfc/PurseData;->execID:I

    if-ltz v0, :cond_6

    iget v0, p0, Lcom/felicanetworks/mfc/PurseData;->execID:I

    const v1, 0xffff

    if-le v0, v1, :cond_7

    .line 381
    :cond_6
    const-string v0, "%s : execID = %d"

    const-string v1, "804"

    iget v2, p0, Lcom/felicanetworks/mfc/PurseData;->execID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 382
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_7
    const-string v0, "999"

    invoke-static {v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 385
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public getCashBackData()J
    .locals 2

    .prologue
    .line 167
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseData;->cashBackData:J

    return-wide v0
.end method

.method public getExecID()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/felicanetworks/mfc/PurseData;->execID:I

    return v0
.end method

.method public getPurseData()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseData;->purseData:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x3

    return v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/felicanetworks/mfc/PurseData;->userData:[B

    return-object v0
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
    .line 184
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_1
    iput-wide p1, p0, Lcom/felicanetworks/mfc/PurseData;->cashBackData:J

    .line 189
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
    .line 249
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    iput p1, p0, Lcom/felicanetworks/mfc/PurseData;->execID:I

    .line 254
    return-void
.end method

.method public setPurseData(J)V
    .locals 3
    .param p1, "purseData"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 152
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    iput-wide p1, p0, Lcom/felicanetworks/mfc/PurseData;->purseData:J

    .line 157
    return-void
.end method

.method public setUserData([B)V
    .locals 2
    .param p1, "userData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    array-length v0, p1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length must be 6."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    iput-object p1, p0, Lcom/felicanetworks/mfc/PurseData;->userData:[B

    .line 223
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v6, 0x4

    .line 339
    const-string v0, "%s : out = %s, flag = %d"

    const-string v1, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6, v0, v1, p1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 340
    const/4 v0, 0x6

    const-string v1, "001 purseData=%d cashBackData=%d userData.length=%d execID=%d"

    .line 341
    iget-wide v2, p0, Lcom/felicanetworks/mfc/PurseData;->purseData:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p0, Lcom/felicanetworks/mfc/PurseData;->cashBackData:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/felicanetworks/mfc/PurseData;->userData:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/felicanetworks/mfc/PurseData;->execID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 340
    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 344
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseData;->purseData:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 345
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PurseData;->cashBackData:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 346
    iget-object v0, p0, Lcom/felicanetworks/mfc/PurseData;->userData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 347
    iget v0, p0, Lcom/felicanetworks/mfc/PurseData;->execID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const-string v0, "999"

    invoke-static {v6, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 350
    return-void
.end method
