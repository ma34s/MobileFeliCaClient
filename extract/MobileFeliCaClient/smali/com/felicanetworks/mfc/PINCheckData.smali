.class public Lcom/felicanetworks/mfc/PINCheckData;
.super Lcom/felicanetworks/mfc/Data;
.source "PINCheckData.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/PINCheckData;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXC_PIN:Ljava/lang/String; = "The value must be from 0 to 0xffffffff."

.field private static final MAX_PIN:J = 0xffffffffL

.field private static final MIN_PIN:J = 0x0L

.field public static final TYPE:I = 0x6


# instance fields
.field private pin:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/felicanetworks/mfc/PINCheckData$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/PINCheckData$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/PINCheckData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 134
    return-void
.end method

.method public constructor <init>(J)V
    .locals 5
    .param p1, "pin"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 56
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 58
    const-string v0, "%s : pin = %d"

    const-string v1, "000"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/felicanetworks/mfc/PINCheckData;->setPIN(J)V

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 156
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 158
    const-string v0, "%s : in = %d"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PINCheckData;->readFromParcel(Landroid/os/Parcel;)V

    .line 160
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/PINCheckData;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PINCheckData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x6

    .line 144
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v4, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/felicanetworks/mfc/PINCheckData;->pin:J

    .line 147
    const-string v0, "%s : pin = %d"

    const-string v1, "999"

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PINCheckData;->pin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    return-void
.end method


# virtual methods
.method public checkFormat()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 198
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 199
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PINCheckData;->pin:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/felicanetworks/mfc/PINCheckData;->pin:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 200
    :cond_0
    const/4 v0, 0x6

    const-string v1, "%s : Throw IllegalArgumentException EXC_PIN"

    const-string v2, "800"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getPIN()J
    .locals 5

    .prologue
    const/4 v4, 0x6

    .line 85
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 86
    const-string v0, "%s : pin = %d"

    const-string v1, "999"

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PINCheckData;->pin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PINCheckData;->pin:J

    return-wide v0
.end method

.method public getType()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 72
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string v0, "%s : TYPE = %d"

    const-string v1, "999"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    return v3
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

    .line 103
    const-string v0, "%s : pin = %d"

    const-string v1, "000"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 105
    :cond_0
    const/4 v0, 0x1

    const-string v1, "%s : Throw IllegalArgumentException EXC_PIN"

    const-string v2, "800"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    iput-wide p1, p0, Lcom/felicanetworks/mfc/PINCheckData;->pin:J

    .line 109
    const-string v0, "%s : this.pin = %d"

    const-string v1, "999"

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PINCheckData;->pin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v4, 0x4

    .line 183
    const-string v0, "%s : out = %s, flag = %d"

    const-string v1, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v0, v1, p1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PINCheckData;->pin:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 186
    const-string v0, "%s : pin = %d"

    const-string v1, "999"

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PINCheckData;->pin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    return-void
.end method
