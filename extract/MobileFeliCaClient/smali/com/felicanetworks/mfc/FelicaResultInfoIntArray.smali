.class public Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;
.super Lcom/felicanetworks/mfc/FelicaResultInfoType;
.source "FelicaResultInfoIntArray.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/felicanetworks/mfc/FelicaResultInfoType",
        "<[I>;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoIntArray$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaResultInfoIntArray$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 114
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/mfc/FelicaResultInfoType;-><init>(ILjava/lang/String;)V

    .line 39
    const-string v0, "%s exceptionType=%d message=%s"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 41
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

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/felicanetworks/mfc/FelicaResultInfoType;-><init>(ILjava/lang/String;II)V

    .line 59
    const-string v1, "%s exceptionType=%d message=%s id=%d type=%d"

    const-string v2, "000"

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v4, p2

    .line 59
    invoke-static/range {v0 .. v6}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 62
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

    .line 84
    invoke-direct/range {p0 .. p6}, Lcom/felicanetworks/mfc/FelicaResultInfoType;-><init>(ILjava/lang/String;IIII)V

    .line 86
    const-string v1, "%s exceptionType=%d message=%s id=%d type=%d statusFlag1=%d statusFlag2=%d"

    .line 87
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

    .line 85
    invoke-static/range {v0 .. v8}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/felicanetworks/mfc/FelicaResultInfoType;-><init>(Ljava/lang/Object;)V

    .line 148
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;->readFromParcel(Landroid/os/Parcel;)V

    .line 150
    const-string v0, "999"

    invoke-static {v2, v0}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 151
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 3
    .param p1, "value"    # [I

    .prologue
    const/4 v2, 0x4

    .line 22
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/FelicaResultInfoType;-><init>(Ljava/lang/Object;)V

    .line 23
    const-string v0, "%s value=%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x6

    .line 125
    const-string v1, "%s : in = %s"

    const-string v2, "000"

    invoke-static {v4, v1, v2, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    invoke-super {p0, p1}, Lcom/felicanetworks/mfc/FelicaResultInfoType;->readFromParcel(Landroid/os/Parcel;)V

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 129
    .local v0, "length":I
    if-ltz v0, :cond_0

    .line 130
    const/4 v1, 0x7

    const-string v2, "001 length=%d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 132
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;->value:Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;->value:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 136
    :cond_0
    const-string v1, "999"

    invoke-static {v4, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 137
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v5, 0x6

    .line 173
    const/4 v1, 0x4

    const-string v2, "%s : out = %s, flag = %d"

    const-string v3, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, p1, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    invoke-super {p0, p1, p2}, Lcom/felicanetworks/mfc/FelicaResultInfoType;->writeToParcel(Landroid/os/Parcel;I)V

    .line 177
    const/4 v0, -0x1

    .line 178
    .local v0, "length":I
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 179
    const/4 v1, 0x7

    const-string v2, "001 value is not null"

    invoke-static {v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;->value:Ljava/lang/Object;

    check-cast v1, [I

    array-length v0, v1

    .line 183
    :cond_0
    const-string v1, "002 length=%d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaResultInfoIntArray;->value:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 188
    const-string v1, "999"

    invoke-static {v5, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 189
    return-void
.end method
