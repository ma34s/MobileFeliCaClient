.class Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;
.super Ljava/lang/Object;
.source "PermitOptr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfw/i/fbl/PermitOptr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Verifier"
.end annotation


# instance fields
.field private keyValue:[B

.field private listener:Lcom/felicanetworks/mfw/i/fbl/VeriferUtilListener;

.field final synthetic this$0:Lcom/felicanetworks/mfw/i/fbl/PermitOptr;

.field private verifyResult:I


# direct methods
.method private constructor <init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;)V
    .locals 1

    .prologue
    .line 2735
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;->this$0:Lcom/felicanetworks/mfw/i/fbl/PermitOptr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2744
    new-instance v0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier$1;

    invoke-direct {v0, p0}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier$1;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;)V

    iput-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;->listener:Lcom/felicanetworks/mfw/i/fbl/VeriferUtilListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;)V
    .locals 0

    .prologue
    .line 2735
    invoke-direct {p0, p1}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;-><init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;)V

    return-void
.end method

.method static synthetic access$0(Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;[B)V
    .locals 0

    .prologue
    .line 2738
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;->keyValue:[B

    return-void
.end method

.method static synthetic access$1(Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;I)V
    .locals 0

    .prologue
    .line 2741
    iput p1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;->verifyResult:I

    return-void
.end method


# virtual methods
.method public getPublicKey(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p1, "issuerId"    # Ljava/lang/String;
    .param p2, "keyId"    # Ljava/lang/String;

    .prologue
    .line 2770
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;->listener:Lcom/felicanetworks/mfw/i/fbl/VeriferUtilListener;

    invoke-static {p1, p2, v0}, Lcom/felicanetworks/mfw/i/cmn/VerifierUtil;->getKeyValue(Ljava/lang/String;Ljava/lang/String;Lcom/felicanetworks/mfw/i/fbl/VeriferUtilListener;)V

    .line 2771
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;->keyValue:[B

    return-object v0
.end method

.method public verify([B[B[B)Z
    .locals 7
    .param p1, "signatureTarget"    # [B
    .param p2, "signature"    # [B
    .param p3, "key"    # [B

    .prologue
    .line 2789
    array-length v1, p1

    .line 2790
    array-length v3, p2

    array-length v5, p3

    iget-object v6, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;->listener:Lcom/felicanetworks/mfw/i/fbl/VeriferUtilListener;

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    .line 2789
    invoke-static/range {v0 .. v6}, Lcom/felicanetworks/mfw/i/cmn/VerifierUtil;->verify([BI[BI[BILcom/felicanetworks/mfw/i/fbl/VeriferUtilListener;)V

    .line 2791
    iget v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$Verifier;->verifyResult:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
