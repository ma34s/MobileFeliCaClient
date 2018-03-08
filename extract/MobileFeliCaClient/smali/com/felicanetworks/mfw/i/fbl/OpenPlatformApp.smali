.class public Lcom/felicanetworks/mfw/i/fbl/OpenPlatformApp;
.super Ljava/lang/Object;
.source "OpenPlatformApp.java"

# interfaces
.implements Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;


# instance fields
.field private applicationSignerCertificationHash:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHash()[B
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/OpenPlatformApp;->applicationSignerCertificationHash:[B

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "0004"

    return-object v0
.end method

.method public setHash([B)V
    .locals 0
    .param p1, "hash"    # [B

    .prologue
    .line 60
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/OpenPlatformApp;->applicationSignerCertificationHash:[B

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "applicationSignerCertificationHash = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    iget-object v2, p0, Lcom/felicanetworks/mfw/i/fbl/OpenPlatformApp;->applicationSignerCertificationHash:[B

    invoke-static {v2}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
