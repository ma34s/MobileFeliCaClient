.class public Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;
.super Lcom/felicanetworks/mfc/FelicaResultInfoType;
.source "FelicaResultInfoBoolean.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/felicanetworks/mfc/FelicaResultInfoType",
        "<",
        "Ljava/lang/Boolean;",
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
            "Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/felicanetworks/mfc/FelicaResultInfoBoolean$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/FelicaResultInfoBoolean$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/felicanetworks/mfc/FelicaResultInfoType;-><init>(Ljava/lang/Object;)V

    .line 146
    const-string v0, "%s : in = %s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;->readFromParcel(Landroid/os/Parcel;)V

    .line 148
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Boolean;

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
    .line 159
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
    .local v0, "intValue":I
    if-ltz v0, :cond_0

    .line 130
    const/4 v1, 0x7

    const-string v2, "001 intValue=%d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 131
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;->value:Ljava/lang/Object;

    .line 134
    :cond_0
    const-string v1, "999"

    invoke-static {v4, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 135
    return-void

    .line 131
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v4, 0x4

    .line 171
    const-string v1, "%s : out = %s, flag = %d"

    const-string v2, "000"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v1, v2, p1, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    invoke-super {p0, p1, p2}, Lcom/felicanetworks/mfc/FelicaResultInfoType;->writeToParcel(Landroid/os/Parcel;I)V

    .line 175
    const/4 v0, -0x1

    .line 176
    .local v0, "intValue":I
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 177
    const/4 v1, 0x7

    const-string v2, "001 value is not null"

    invoke-static {v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/felicanetworks/mfc/FelicaResultInfoBoolean;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 180
    :cond_0
    :goto_0
    const/4 v1, 0x6

    const-string v2, "002 intValue=%d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 182
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    const-string v1, "999"

    invoke-static {v4, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;)V

    .line 184
    return-void

    .line 178
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
