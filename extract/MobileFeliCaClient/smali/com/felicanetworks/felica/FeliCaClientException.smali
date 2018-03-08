.class public Lcom/felicanetworks/felica/FeliCaClientException;
.super Ljava/lang/Exception;
.source "FeliCaClientException.java"


# static fields
.field public static final TYPE_CURRENTLY_ONLINE:I = 0xb

.field public static final TYPE_DEVICE_NOT_SET:I = 0x3

.field public static final TYPE_LISTENER_NOT_SET:I = 0x2

.field public static final TYPE_UNKNOWN_ERROR:I = 0x0

.field public static final TYPE_URL_NOT_SET:I = 0x1


# instance fields
.field private type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 55
    iput p1, p0, Lcom/felicanetworks/felica/FeliCaClientException;->type:I

    .line 56
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 85
    iput p1, p0, Lcom/felicanetworks/felica/FeliCaClientException;->type:I

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/felica/FeliCaClientException;->type:I

    .line 71
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/felicanetworks/felica/FeliCaClientException;->type:I

    return v0
.end method
