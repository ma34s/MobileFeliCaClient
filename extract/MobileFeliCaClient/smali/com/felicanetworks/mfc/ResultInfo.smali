.class public Lcom/felicanetworks/mfc/ResultInfo;
.super Ljava/lang/Object;
.source "ResultInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXCEPTION_TYPE_FELICA:I = 0x1

.field public static final EXCEPTION_TYPE_ILLEGAL_ARGUMENT:I = 0x20

.field public static final EXCEPTION_TYPE_NONE:I = 0x0

.field public static final EXCEPTION_TYPE_NUMBER_FORMAT:I = 0x22

.field public static final EXCEPTION_TYPE_SECURITY:I = 0x21


# instance fields
.field protected exceptionType:I

.field protected message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/felicanetworks/mfc/ResultInfo$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/ResultInfo$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 152
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/mfc/ResultInfo;->exceptionType:I

    .line 58
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "%s : exceptionType = %d, message= % s"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    iput p1, p0, Lcom/felicanetworks/mfc/ResultInfo;->exceptionType:I

    .line 75
    iput-object p2, p0, Lcom/felicanetworks/mfc/ResultInfo;->message:Ljava/lang/String;

    .line 76
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/ResultInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 194
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 195
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public getExceptionType()I
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 112
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 113
    const-string v0, "%s : exceptionType = %d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/mfc/ResultInfo;->exceptionType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    iget v0, p0, Lcom/felicanetworks/mfc/ResultInfo;->exceptionType:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 125
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 126
    const-string v0, "%s : message = %s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/ResultInfo;->message:Ljava/lang/String;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/felicanetworks/mfc/ResultInfo;->message:Ljava/lang/String;

    return-object v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x6

    .line 177
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v4, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/ResultInfo;->exceptionType:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/ResultInfo;->message:Ljava/lang/String;

    .line 180
    const-string v0, "%s : exceptionType = %d, message = %s"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/mfc/ResultInfo;->exceptionType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 181
    iget-object v3, p0, Lcom/felicanetworks/mfc/ResultInfo;->message:Ljava/lang/String;

    .line 180
    invoke-static {v4, v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v3, 0x4

    .line 163
    const-string v0, "%s : out = %s, flag = %d"

    const-string v1, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, p1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    iget v0, p0, Lcom/felicanetworks/mfc/ResultInfo;->exceptionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v0, p0, Lcom/felicanetworks/mfc/ResultInfo;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 167
    return-void
.end method
