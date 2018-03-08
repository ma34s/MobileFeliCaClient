.class public Lcom/felicanetworks/mfc/PushExtraIntentSegment;
.super Lcom/felicanetworks/mfc/PushSegment;
.source "PushExtraIntentSegment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/PushExtraIntentSegment;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRADATA_NAME:Ljava/lang/String; = "com.felicanetworks.mfc.FeliCaPushSegmentByteData"

.field private static final MIN_ACTIVATETYPE:I = 0x7

.field private static final ZERO_ACTIVATETYPE:I


# instance fields
.field private intent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/felicanetworks/mfc/PushExtraIntentSegment$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/PushExtraIntentSegment$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/PushExtraIntentSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 48
    invoke-direct {p0}, Lcom/felicanetworks/mfc/PushSegment;-><init>()V

    .line 50
    const-string v1, "%s In intent = %s"

    const-string v2, "000"

    invoke-static {v4, v1, v2, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    if-nez p1, :cond_0

    .line 53
    const-string v1, "%s intent == null"

    const-string v2, "800"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushExtraIntentSegment;->intent:Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lcom/felicanetworks/mfc/PushExtraIntentSegment;->intent:Landroid/content/Intent;

    const-string v2, "com.felicanetworks.mfc.FeliCaPushSegmentByteData"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 61
    .local v0, "byteData":[B
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 62
    aget-byte v1, v0, v5

    iput v1, p0, Lcom/felicanetworks/mfc/PushExtraIntentSegment;->activateType:I

    .line 68
    const-string v1, "%s componentName=%s"

    const-string v2, "001"

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v4, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    const-string v1, "%s %s="

    const-string v2, "001"

    const-string v3, "com.felicanetworks.mfc.FeliCaPushSegmentByteData"

    invoke-static {v4, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    const/4 v1, -0x1

    invoke-static {v4, v0, v5, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->logArray(I[BII)V

    .line 72
    const-string v1, "%s"

    const-string v2, "999"

    invoke-static {v4, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-void

    .line 64
    :cond_1
    const-string v1, "%s byteData.length <= 0"

    const-string v2, "801"

    invoke-static {v3, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 65
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 141
    invoke-direct {p0}, Lcom/felicanetworks/mfc/PushSegment;-><init>()V

    .line 143
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 145
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PushExtraIntentSegment;->readFromParcel(Landroid/os/Parcel;)V

    .line 147
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 124
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/PushExtraIntentSegment;->activateType:I

    .line 128
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/felicanetworks/mfc/PushExtraIntentSegment;->intent:Landroid/content/Intent;

    .line 130
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushExtraIntentSegment;->checkFormat()V

    .line 132
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 133
    return-void
.end method


# virtual methods
.method public checkFormat()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 190
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushExtraIntentSegment;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 193
    const-string v0, "%s intent == null"

    const-string v1, "800"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushExtraIntentSegment;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushExtraIntentSegment;->getType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    const-string v0, "%s activateType < MIN_ACTIVATETYPE"

    const-string v1, "801"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 202
    :cond_1
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public getIntentData()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 83
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v0, "%s return = %s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushExtraIntentSegment;->intent:Landroid/content/Intent;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushExtraIntentSegment;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v2, 0x6

    .line 171
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 174
    iget v0, p0, Lcom/felicanetworks/mfc/PushExtraIntentSegment;->activateType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushExtraIntentSegment;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 177
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 178
    return-void
.end method
