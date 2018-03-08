.class public Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;
.super Lcom/felicanetworks/felica/impl/tcap/TCAPException;
.source "UnexpectedErrorException.java"


# static fields
.field public static final EMSG_INTERRUPTED_BY_USER:Ljava/lang/String; = "Interrupted."

.field public static final TYPE_HANDSHAKE_ERROR:B = 0x3t

.field public static final TYPE_INTERRUPTED_BY_USER:B = 0x1t

.field public static final TYPE_OPERATE_DEVICE_FAILED:B = 0x2t

.field public static final TYPE_PRE_EXCOMMAND_ERROR:B = 0x4t

.field public static final TYPE_UNEXPECTED_ERROR:B


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method public constructor <init>(BLjava/lang/String;)V
    .locals 2
    .param p1, "type"    # B
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/felicanetworks/felica/impl/tcap/TCAPException;-><init>(BLjava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;->FormatErrorDescription(B[B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;->description:Ljava/lang/String;

    .line 68
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;->description:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;->description:Ljava/lang/String;

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/UnexpectedErrorException;->description:Ljava/lang/String;

    return-object v0
.end method
