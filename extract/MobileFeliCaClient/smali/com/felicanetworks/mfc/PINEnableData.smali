.class public Lcom/felicanetworks/mfc/PINEnableData;
.super Lcom/felicanetworks/mfc/Data;
.source "PINEnableData.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/PINEnableData;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXC_PIN:Ljava/lang/String; = "The value must be from 0 to 0xffffffff."

.field private static final MAX_PIN:J = 0xffffffffL

.field private static final MIN_PIN:J = 0x0L

.field public static final TYPE:I = 0x8


# instance fields
.field private enabling:Z

.field private pin:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/felicanetworks/mfc/PINEnableData$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/PINEnableData$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/PINEnableData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 169
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 5
    .param p1, "pin"    # J
    .param p3, "enabling"    # Z
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
    const-string v0, "%s : pin = %d, enabling = %s"

    const-string v1, "000"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/felicanetworks/mfc/PINEnableData;->setPIN(J)V

    .line 68
    invoke-virtual {p0, p3}, Lcom/felicanetworks/mfc/PINEnableData;->setEnabling(Z)V

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

    .line 198
    invoke-direct {p0}, Lcom/felicanetworks/mfc/Data;-><init>()V

    .line 200
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PINEnableData;->readFromParcel(Landroid/os/Parcel;)V

    .line 202
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/PINEnableData;)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PINEnableData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x6

    .line 179
    const-string v1, "%s : in = %s"

    const-string v2, "000"

    invoke-static {v6, v1, v2, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 185
    .local v0, "tmp":[Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/felicanetworks/mfc/PINEnableData;->pin:J

    .line 186
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 187
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/felicanetworks/mfc/PINEnableData;->enabling:Z

    .line 189
    const-string v1, "%s : pin = %d, enabling = %s"

    const-string v2, "999"

    iget-wide v4, p0, Lcom/felicanetworks/mfc/PINEnableData;->pin:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-boolean v4, p0, Lcom/felicanetworks/mfc/PINEnableData;->enabling:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v6, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
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

    .line 245
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 246
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PINEnableData;->pin:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/felicanetworks/mfc/PINEnableData;->pin:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 247
    :cond_0
    const/4 v0, 0x1

    const-string v1, "%s : Throw IllegalArgumentException EXC_PIN"

    const-string v2, "800"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_1
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 251
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
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

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PINEnableData;->pin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    iget-wide v0, p0, Lcom/felicanetworks/mfc/PINEnableData;->pin:J

    return-wide v0
.end method

.method public getType()I
    .locals 5

    .prologue
    const/16 v4, 0x8

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

.method public isEnabling()Z
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 128
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string v0, "%s : enabling = %s"

    const-string v1, "999"

    iget-boolean v2, p0, Lcom/felicanetworks/mfc/PINEnableData;->enabling:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    iget-boolean v0, p0, Lcom/felicanetworks/mfc/PINEnableData;->enabling:Z

    return v0
.end method

.method public setEnabling(Z)V
    .locals 4
    .param p1, "enabling"    # Z

    .prologue
    const/4 v3, 0x6

    .line 142
    const-string v0, "%s : enabling = %s"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    iput-boolean p1, p0, Lcom/felicanetworks/mfc/PINEnableData;->enabling:Z

    .line 144
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 145
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

    const-string v1, "%s : Throw IllegalArgumentException EXC_PIN"

    const-string v2, "800"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value must be from 0 to 0xffffffff."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    iput-wide p1, p0, Lcom/felicanetworks/mfc/PINEnableData;->pin:J

    .line 117
    const-string v0, "%s : this.pin = %d"

    const-string v1, "999"

    iget-wide v2, p0, Lcom/felicanetworks/mfc/PINEnableData;->pin:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v6, 0x4

    .line 225
    const-string v1, "%s : out = %s, flag = %d"

    const-string v2, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6, v1, v2, p1, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 228
    const/4 v1, 0x1

    new-array v0, v1, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/felicanetworks/mfc/PINEnableData;->enabling:Z

    aput-boolean v2, v0, v1

    .line 231
    .local v0, "tmp":[Z
    iget-wide v2, p0, Lcom/felicanetworks/mfc/PINEnableData;->pin:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 232
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 233
    const-string v1, "%s : pin = %d, enabling = %s"

    const-string v2, "999"

    iget-wide v4, p0, Lcom/felicanetworks/mfc/PINEnableData;->pin:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-boolean v4, p0, Lcom/felicanetworks/mfc/PINEnableData;->enabling:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v6, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    return-void
.end method
