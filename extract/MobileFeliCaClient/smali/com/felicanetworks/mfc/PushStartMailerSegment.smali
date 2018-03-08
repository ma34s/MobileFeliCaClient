.class public Lcom/felicanetworks/mfc/PushStartMailerSegment;
.super Lcom/felicanetworks/mfc/PushSegment;
.source "PushStartMailerSegment.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/PushStartMailerSegment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private body:Ljava/lang/String;

.field private ccAddress:[Ljava/lang/String;

.field private mailerStartupParam:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private toAddress:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lcom/felicanetworks/mfc/PushStartMailerSegment$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/PushStartMailerSegment$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 264
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 300
    invoke-direct {p0}, Lcom/felicanetworks/mfc/PushSegment;-><init>()V

    .line 302
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 304
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PushStartMailerSegment;->readFromParcel(Landroid/os/Parcel;)V

    .line 306
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 307
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/PushStartMailerSegment;)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/PushStartMailerSegment;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "toAddress"    # [Ljava/lang/String;
    .param p2, "ccAddress"    # [Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "mailerStartupParam"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x6

    .line 69
    invoke-direct {p0}, Lcom/felicanetworks/mfc/PushSegment;-><init>()V

    .line 72
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->activateType:I

    .line 76
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->toAddress:[Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->ccAddress:[Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->subject:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->body:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->mailerStartupParam:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushStartMailerSegment;->checkFormat()V

    .line 84
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x6

    .line 274
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 276
    if-nez p1, :cond_0

    .line 277
    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 281
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->activateType:I

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->toAddress:[Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->ccAddress:[Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->subject:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->body:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->mailerStartupParam:Ljava/lang/String;

    .line 290
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushStartMailerSegment;->checkFormat()V

    .line 292
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 293
    return-void
.end method


# virtual methods
.method public checkFormat()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 352
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 354
    invoke-virtual {p0}, Lcom/felicanetworks/mfc/PushStartMailerSegment;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 355
    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "700"

    invoke-static {v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 356
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 359
    :cond_0
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 360
    return-void
.end method

.method public describeContents()I
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 317
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 318
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 133
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 134
    const-string v0, "%s return=%s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->body:Ljava/lang/String;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCcAddress()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 107
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 108
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->ccAddress:[Ljava/lang/String;

    return-object v0
.end method

.method public getMailerStartupParam()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 146
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 147
    const-string v0, "%s return=%s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->mailerStartupParam:Ljava/lang/String;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->mailerStartupParam:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 120
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 121
    const-string v0, "%s return=%s"

    const-string v1, "999"

    iget-object v2, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->subject:Ljava/lang/String;

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddress()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 94
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->toAddress:[Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 3
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x6

    .line 218
    const-string v0, "%s body=%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 221
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->body:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setCcAddress([Ljava/lang/String;)V
    .locals 3
    .param p1, "ccAddress"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x6

    .line 186
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 187
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 189
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->ccAddress:[Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setMailerStartupParam(Ljava/lang/String;)V
    .locals 3
    .param p1, "mailerStartupParam"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x6

    .line 234
    const-string v0, "%s mailerStartupParam=%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 237
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->mailerStartupParam:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 3
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x6

    .line 202
    const-string v0, "%s subject=%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 205
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->subject:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setToAddress([Ljava/lang/String;)V
    .locals 3
    .param p1, "toAddress"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x6

    .line 166
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 167
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 169
    iput-object p1, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->toAddress:[Ljava/lang/String;

    .line 170
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v2, 0x6

    .line 331
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->toAddress:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->ccAddress:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->body:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/felicanetworks/mfc/PushStartMailerSegment;->mailerStartupParam:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 341
    return-void
.end method
