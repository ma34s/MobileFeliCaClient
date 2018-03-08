.class Lcom/felicanetworks/mfc/PushStartMailerSegment$1;
.super Ljava/lang/Object;
.source "PushStartMailerSegment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfc/PushStartMailerSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/felicanetworks/mfc/PushStartMailerSegment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/felicanetworks/mfc/PushStartMailerSegment;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 251
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 252
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 254
    new-instance v0, Lcom/felicanetworks/mfc/PushStartMailerSegment;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/felicanetworks/mfc/PushStartMailerSegment;-><init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/PushStartMailerSegment;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/PushStartMailerSegment$1;->createFromParcel(Landroid/os/Parcel;)Lcom/felicanetworks/mfc/PushStartMailerSegment;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/felicanetworks/mfc/PushStartMailerSegment;
    .locals 4
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x6

    .line 259
    const-string v0, "%s size=%d"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 260
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 262
    new-array v0, p1, [Lcom/felicanetworks/mfc/PushStartMailerSegment;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/felicanetworks/mfc/PushStartMailerSegment$1;->newArray(I)[Lcom/felicanetworks/mfc/PushStartMailerSegment;

    move-result-object v0

    return-object v0
.end method
