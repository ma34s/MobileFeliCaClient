.class public Lcom/felicanetworks/mfc/FelicaResultInfo;
.super Lcom/felicanetworks/mfc/ResultInfo;
.source "FelicaResultInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/FelicaResultInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected id:I

.field protected otherAppInfo:Lcom/felicanetworks/mfc/AppInfo;

.field protected statusFlag1:I

.field protected statusFlag2:I

.field protected type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 222
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfo$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaResultInfo$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/FelicaResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 237
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 47
    invoke-direct {p0}, Lcom/felicanetworks/mfc/ResultInfo;-><init>()V

    .line 48
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 49
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/mfc/ResultInfo;-><init>(ILjava/lang/String;)V

    .line 64
    const-string v0, "%s : exceptionType = %d, message = %s"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 67
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

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/mfc/ResultInfo;-><init>(ILjava/lang/String;)V

    .line 85
    const-string v1, "%s : exceptionType = %d, message = %s, id = %d, type = %d"

    const-string v2, "000"

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v4, p2

    .line 85
    invoke-static/range {v0 .. v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    iput p3, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->id:I

    .line 88
    iput p4, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->type:I

    .line 89
    const-string v1, "%s : id = %d, type = %d"

    const-string v2, "999"

    iget v3, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
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

    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;II)V

    .line 115
    const-string v1, "%s : exceptionType = %d, message = %s, id = %d, type = %d, statusFlag1 = %d, statusFlag = %d"

    .line 116
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

    .line 113
    invoke-static/range {v0 .. v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    iput p5, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->statusFlag1:I

    .line 118
    iput p6, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->statusFlag2:I

    .line 119
    const-string v1, "%s : statusFlag1 = %d, statusFlag2 = %d"

    const-string v2, "999"

    iget v3, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->statusFlag1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 120
    iget v4, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->statusFlag2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 119
    invoke-static {v0, v1, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IILcom/felicanetworks/mfc/AppInfo;)V
    .locals 8
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "type"    # I
    .param p5, "otherAppInfo"    # Lcom/felicanetworks/mfc/AppInfo;

    .prologue
    const/4 v0, 0x4

    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(ILjava/lang/String;II)V

    .line 143
    const-string v1, "%s : exceptionType = %d, message = %s, id = %d, type = %d, otherAppInfo = %d"

    .line 144
    const-string v2, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v4, p2

    move-object v7, p5

    .line 142
    invoke-static/range {v0 .. v7}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    iput-object p5, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->otherAppInfo:Lcom/felicanetworks/mfc/AppInfo;

    .line 146
    const-string v1, "%s : otherAppPID = %d"

    const-string v2, "999"

    iget-object v3, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->otherAppInfo:Lcom/felicanetworks/mfc/AppInfo;

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 284
    invoke-direct {p0}, Lcom/felicanetworks/mfc/ResultInfo;-><init>()V

    .line 285
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 286
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/FelicaResultInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 287
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 288
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/FelicaResultInfo;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/FelicaResultInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 157
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 158
    const-string v0, "%s : id = %d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    iget v0, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->id:I

    return v0
.end method

.method public getOtherAppInfo()Lcom/felicanetworks/mfc/AppInfo;
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 209
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 210
    const-string v0, "%s : otherAppPID = %d"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->otherAppInfo:Lcom/felicanetworks/mfc/AppInfo;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->otherAppInfo:Lcom/felicanetworks/mfc/AppInfo;

    return-object v0
.end method

.method public getStatusFlag1()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 183
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 184
    const-string v0, "%s : statusFlag1 = %d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->statusFlag1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    iget v0, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->statusFlag1:I

    return v0
.end method

.method public getStatusFlag2()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 196
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 197
    const-string v0, "%s : statusFlag2 = %d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->statusFlag2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    iget v0, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->statusFlag2:I

    return v0
.end method

.method public getType()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 170
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 171
    const-string v0, "%s : type = %d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    iget v0, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->type:I

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 265
    invoke-super {p0, p1}, Lcom/felicanetworks/mfc/ResultInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 266
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->id:I

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->type:I

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->statusFlag1:I

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->statusFlag2:I

    .line 271
    const-class v0, Lcom/felicanetworks/mfc/AppInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/felicanetworks/mfc/AppInfo;

    iput-object v0, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->otherAppInfo:Lcom/felicanetworks/mfc/AppInfo;

    .line 273
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v3, 0x4

    .line 247
    invoke-super {p0, p1, p2}, Lcom/felicanetworks/mfc/ResultInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 248
    const-string v0, "%s : in = %s, flag = %d"

    const-string v1, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, p1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 249
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FelicaResultInfo;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FelicaResultInfo;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FelicaResultInfo;->getStatusFlag1()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/FelicaResultInfo;->getStatusFlag2()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-object v0, p0, Lcom/felicanetworks/mfc/FelicaResultInfo;->otherAppInfo:Lcom/felicanetworks/mfc/AppInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 255
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 256
    return-void
.end method
