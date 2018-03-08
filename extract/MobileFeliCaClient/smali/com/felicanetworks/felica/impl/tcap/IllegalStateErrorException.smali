.class public Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;
.super Lcom/felicanetworks/felica/impl/tcap/TCAPException;
.source "IllegalStateErrorException.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "Illegal state error."

.field public static final TYPE_ILLEGAL_STATE:B = -0x80t


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method public constructor <init>(B)V
    .locals 1
    .param p1, "type"    # B

    .prologue
    .line 41
    const-string v0, "Illegal state error."

    invoke-direct {p0, p1, v0}, Lcom/felicanetworks/felica/impl/tcap/TCAPException;-><init>(BLjava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;->FormatErrorDescription(B[B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;->description:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/IllegalStateErrorException;->description:Ljava/lang/String;

    return-object v0
.end method
