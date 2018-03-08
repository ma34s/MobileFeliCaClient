.class public Lcom/felicanetworks/mfw/i/fbl/ChipIssuerInfo;
.super Ljava/lang/Object;
.source "ChipIssuerInfo.java"

# interfaces
.implements Lcom/felicanetworks/mfw/i/fbl/ExtensionParameter;


# instance fields
.field private chipIssuerCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChipIssuerCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/ChipIssuerInfo;->chipIssuerCode:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "0001"

    return-object v0
.end method

.method public setChipIssuerCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "chipIssuerCode"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/ChipIssuerInfo;->chipIssuerCode:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ChipIssuerInfo chipIssuerCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/felicanetworks/mfw/i/fbl/ChipIssuerInfo;->chipIssuerCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
