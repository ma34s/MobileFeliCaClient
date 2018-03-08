.class public Lcom/felicanetworks/mfc/FelicaResultInfoInt;
.super Lcom/felicanetworks/mfc/FelicaResultInfoType;
.source "FelicaResultInfoInt.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/felicanetworks/mfc/FelicaResultInfoType",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/FelicaResultInfoInt;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALUE_IS_EMPTY:I = 0x0

.field private static final VALUE_IS_NOTEMPTY:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoInt$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaResultInfoInt$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/FelicaResultInfoInt;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 126
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/mfc/FelicaResultInfoType;-><init>(ILjava/lang/String;)V

    .line 49
    const-string v0, "%s : exceptionType = %d, message = %s"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 7
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "type"    # I

    .prologue
    const/4 v0, 0x4

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/felicanetworks/mfc/FelicaResultInfoType;-><init>(ILjava/lang/String;II)V

    .line 70
    const-string v1, "%s : exceptionType = %d, message = %s, id = %d, type = %d"

    const-string v2, "000"

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v4, p2

    .line 70
    invoke-static/range {v0 .. v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIII)V
    .locals 9
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "type"    # I
    .param p5, "statusFlag1"    # I
    .param p6, "statusFlag2"    # I

    .prologue
    const/4 v0, 0x4

    .line 95
    invoke-direct/range {p0 .. p6}, Lcom/felicanetworks/mfc/FelicaResultInfoType;-><init>(ILjava/lang/String;IIII)V

    .line 98
    const-string v1, "%s : exceptionType = %d, message = %s, id = %d, type = %d, statusFlag1 = %d, statusFlag = %d"

    .line 99
    const-string v2, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v4, p2

    .line 96
    invoke-static/range {v0 .. v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/felicanetworks/mfc/FelicaResultInfoType;-><init>(Ljava/lang/Object;)V

    .line 158
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/FelicaResultInfoInt;->readFromParcel(Landroid/os/Parcel;)V

    .line 160
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/FelicaResultInfoInt;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/FelicaResultInfoInt;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x4

    .line 32
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/FelicaResultInfoType;-><init>(Ljava/lang/Object;)V

    .line 33
    const-string v0, "%s : value = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x6

    .line 137
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v3, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    invoke-super {p0, p1}, Lcom/felicanetworks/mfc/FelicaResultInfoType;->readFromParcel(Landroid/os/Parcel;)V

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 142
    const/4 v0, 0x7

    const-string v1, "%s"

    const-string v2, "001"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/FelicaResultInfoInt;->value:Ljava/lang/Object;

    .line 146
    :cond_0
    const-string v0, "%s : value = %s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/FelicaResultInfoInt;->value:Ljava/lang/Object;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x4

    .line 183
    invoke-super {p0, p1, p2}, Lcom/felicanetworks/mfc/FelicaResultInfoType;->writeToParcel(Landroid/os/Parcel;I)V

    .line 184
    const-string v0, "%s : out = %s, flag = %d"

    const-string v1, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, p1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaResultInfoInt;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 188
    const-string v0, "%s"

    const-string v1, "001"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    :goto_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 201
    return-void

    .line 194
    :cond_0
    const-string v0, "%s"

    const-string v1, "002"

    invoke-static {v4, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 196
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaResultInfoInt;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
