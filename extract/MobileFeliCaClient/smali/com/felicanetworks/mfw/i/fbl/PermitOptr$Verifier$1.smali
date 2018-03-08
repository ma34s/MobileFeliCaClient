.class Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier$1;
.super Ljava/lang/Object;
.source "PermitOptr.java"

# interfaces
.implements Lcom/felicanetworks/mfw/i/fbl/VeriferUtilListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;


# direct methods
.method constructor <init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier$1;->this$1:Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;

    .line 2744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ntfyVerificationEnd(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 2753
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier$1;->this$1:Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;

    invoke-static {v0, p1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;->access$1(Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;I)V

    .line 2754
    return-void
.end method

.method public resKeyValue([BI)V
    .locals 1
    .param p1, "keyValue"    # [B
    .param p2, "keySize"    # I

    .prologue
    .line 2748
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier$1;->this$1:Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;

    invoke-static {v0, p1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;->access$0(Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;[B)V

    .line 2749
    return-void
.end method
