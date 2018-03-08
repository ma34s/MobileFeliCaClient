.class public Lcom/felicanetworks/mfc/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private pid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/felicanetworks/mfc/AppInfo$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfc/AppInfo$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/AppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "pid"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/felicanetworks/mfc/AppInfo;->pid:I

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/AppInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/felicanetworks/mfc/AppInfo;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfc/AppInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/felicanetworks/mfc/AppInfo;->pid:I

    .line 72
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/felicanetworks/mfc/AppInfo;->pid:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 93
    iget v0, p0, Lcom/felicanetworks/mfc/AppInfo;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return-void
.end method
