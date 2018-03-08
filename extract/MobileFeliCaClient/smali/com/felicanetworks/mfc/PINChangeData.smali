.class public Lcom/felicanetworks/mfc/PINChangeData;
.super Lcom/felicanetworks/mfc/Data;
.source "PINChangeData.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/PINChangeData;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXC_PIN:Ljava/lang/String; = "The value must be from 0 to 0xffffffff."

.field private static final MAX_PIN:J = 0xffffffffL

.field private static final MIN_PIN:J = 0x0L

.field public static final TYPE:I = 0x7


# instance fields
.field private newPIN:J

.field private pin:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/felicanetworks/mfc/PINChangeData$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/PINChangeData$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/PINChangeData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 180
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 5
    .param p1, "pin"    # J
    .param p3, "newPIN"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 64
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 66
    const-string v0, "%s : pin = %d, newPIN = %d"

    const-string v1, "000"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/felicanetworks/mfc/PINChangeData;->setPIN(J)V

    .line 68
    invoke-virtual {p0, p3, p4}, Lcom/felicanetworks/mfc/PINChangeData;->setNewPIN(J)V

    .line 69
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 205
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 207
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PINChangeData;->readFromParcel(Landroid/os/Parcel;)V

    .line 209
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/PINChangeData;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PINChangeData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x6

    .line 190
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v6, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/mfc/PINChangeData;->pin:J

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/mfc/PINChangeData;->newPIN:J

    .line 196
    const-string v0, "%s : pin = %d, newPIN = %d"

    const-string v1, "999"

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PINChangeData;->pin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p0, Lcom/felicanetworks/mfc/PINChangeData;->newPIN:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v6, v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
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

    const/4 v4, 0x6

    const/4 v2, 0x4

    .line 250
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 252
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PINChangeData;->pin:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/felicanetworks/mfc/PINChangeData;->pin:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_1

    .line 253
    :cond_0
    const-string v0, "%s : pin = %d, Throw IllegalArgumentException EXC_PIN"

    const-string v1, "800"

    .line 254
    iget-wide v2, p0, Lcom/felicanetworks/mfc/PINChangeData;->pin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 253
    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PINChangeData;->newPIN:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/felicanetworks/mfc/PINChangeData;->newPIN:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_3

    .line 259
    :cond_2
    const-string v0, "%s : pin = %d, Throw IllegalArgumentException EXC_PIN"

    const-string v1, "801"

    .line 260
    iget-wide v2, p0, Lcom/felicanetworks/mfc/PINChangeData;->newPIN:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 259
    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_3
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public getNewPIN()J
    .locals 5

    .prologue
    const/4 v4, 0x6

    .line 129
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string v0, "%s : newPIN = %d"

    const-string v1, "999"

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PINChangeData;->newPIN:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PINChangeData;->newPIN:J

    return-wide v0
.end method

.method public getPIN()J
    .locals 5

    .prologue
    const/4 v4, 0x6

    .line 93
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string v0, "%s : pin = %d"

    const-string v1, "999"

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PINChangeData;->pin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PINChangeData;->pin:J

    return-wide v0
.end method

.method public getType()I
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x6

    .line 80
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 81
    const-string v0, "%s : TYPE = %d"

    const-string v1, "999"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    return v4
.end method

.method public setNewPIN(J)V
    .locals 5
    .param p1, "newPIN"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 148
    const-string v0, "%s : newPIN = %d"

    const-string v1, "000"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 150
    :cond_0
    const/4 v0, 0x1

    const-string v1, "%s : pin = %d, Throw IllegalArgumentException EXC_PIN"

    const-string v2, "800"

    .line 151
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 150
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    iput-wide p1, p0, Lcom/felicanetworks/mfc/PINChangeData;->newPIN:J

    .line 155
    const-string v0, "%s : this.newPIN = %d"

    const-string v1, "999"

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PINChangeData;->newPIN:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public setPIN(J)V
    .locals 5
    .param p1, "pin"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 111
    const-string v0, "%s : pin = %d"

    const-string v1, "000"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 113
    :cond_0
    const/4 v0, 0x1

    const-string v1, "%s : pin = %d, Throw IllegalArgumentException EXC_PIN"

    const-string v2, "800"

    .line 114
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 113
    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    iput-wide p1, p0, Lcom/felicanetworks/mfc/PINChangeData;->pin:J

    .line 118
    const-string v0, "%s : this.pin = %d"

    const-string v1, "999"

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PINChangeData;->pin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v3, 0x4

    .line 232
    const-string v0, "%s : out = %d, flag = %d"

    const-string v1, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, p1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PINChangeData;->pin:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 236
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PINChangeData;->newPIN:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 238
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 239
    return-void
.end method
