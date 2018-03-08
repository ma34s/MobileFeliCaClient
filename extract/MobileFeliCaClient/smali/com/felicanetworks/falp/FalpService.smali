.class public Lcom/felicanetworks/falp/FalpService;
.super Landroid/app/Service;
.source "FalpService.java"


# static fields
.field static mTmpUserPid:I

.field static mTmpUserUid:I

.field static mUserPid:I

.field static mUserUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 175
    sput v0, Lcom/felicanetworks/falp/FalpService;->mUserPid:I

    .line 178
    sput v0, Lcom/felicanetworks/falp/FalpService;->mUserUid:I

    .line 181
    sput v0, Lcom/felicanetworks/falp/FalpService;->mTmpUserPid:I

    .line 184
    sput v0, Lcom/felicanetworks/falp/FalpService;->mTmpUserUid:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static clearPidUid()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 701
    sput v0, Lcom/felicanetworks/falp/FalpService;->mUserPid:I

    .line 702
    sput v0, Lcom/felicanetworks/falp/FalpService;->mUserUid:I

    .line 703
    sput v0, Lcom/felicanetworks/falp/FalpService;->mTmpUserPid:I

    .line 704
    sput v0, Lcom/felicanetworks/falp/FalpService;->mTmpUserUid:I

    .line 705
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 209
    const/4 v0, 0x0

    return-object v0
.end method
