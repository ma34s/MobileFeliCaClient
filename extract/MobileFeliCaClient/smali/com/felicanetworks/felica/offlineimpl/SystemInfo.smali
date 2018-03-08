.class public Lcom/felicanetworks/felica/offlineimpl/SystemInfo;
.super Ljava/lang/Object;
.source "SystemInfo.java"


# instance fields
.field private idm:[B

.field private pmm:[B

.field private systemCode:I


# direct methods
.method constructor <init>([B[BI)V
    .locals 0
    .param p1, "idm"    # [B
    .param p2, "pmm"    # [B
    .param p3, "systemCode"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->idm:[B

    .line 45
    iput-object p2, p0, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->pmm:[B

    .line 46
    iput p3, p0, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->systemCode:I

    .line 47
    return-void
.end method


# virtual methods
.method public getIDm()[B
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->idm:[B

    return-object v0
.end method

.method public getPMm()[B
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->pmm:[B

    return-object v0
.end method

.method public getSystemCode()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/SystemInfo;->systemCode:I

    return v0
.end method
