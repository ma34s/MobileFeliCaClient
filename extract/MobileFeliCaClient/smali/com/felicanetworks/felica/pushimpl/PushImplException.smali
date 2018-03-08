.class public Lcom/felicanetworks/felica/pushimpl/PushImplException;
.super Ljava/lang/Exception;
.source "PushImplException.java"


# static fields
.field public static final TYPE_INVALID_CHECKSUM:I = 0x4

.field public static final TYPE_INVALID_DATA:I = 0x1

.field public static final TYPE_INVALID_STATUS:I = 0x5

.field public static final TYPE_NULL_ARGUMENT:I = 0x3

.field public static final TYPE_OUTOF_MEMORY:I = 0x2

.field public static final TYPE_SECURITY_ERROR:I = 0x6

.field public static final TYPE_UNKNOWN_ERROR:I


# instance fields
.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    .line 85
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 87
    const-string v0, "%s type=%d,message=%s"

    const-string v1, "000"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    iput p1, p0, Lcom/felicanetworks/felica/pushimpl/PushImplException;->type:I

    .line 91
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 62
    const-string v0, "%s message=%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/felica/pushimpl/PushImplException;->type:I

    .line 66
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 67
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 102
    const-string v0, "%s"

    const-string v1, "000"

    invoke-static {v3, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string v0, "%s return=%d"

    const-string v1, "999"

    iget v2, p0, Lcom/felicanetworks/felica/pushimpl/PushImplException;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    iget v0, p0, Lcom/felicanetworks/felica/pushimpl/PushImplException;->type:I

    return v0
.end method
