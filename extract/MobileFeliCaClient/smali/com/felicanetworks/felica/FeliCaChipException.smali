.class public Lcom/felicanetworks/felica/FeliCaChipException;
.super Ljava/lang/Exception;
.source "FeliCaChipException.java"


# static fields
.field public static final FCC_MESSAGE:Ljava/lang/String; = "FCC_ERROR"

.field public static final TYPE_CANCELED:I = 0x20

.field public static final TYPE_ILLEGAL_SEQUENCE:I = 0x15

.field public static final TYPE_INVALID_COMMAND:I = 0x16

.field public static final TYPE_INVALID_RESPONSE:I = 0x17

.field public static final TYPE_IO_ERROR:I = 0xb

.field public static final TYPE_LOCKED:I = 0x21

.field public static final TYPE_NOT_INITIALIZED:I = 0x1

.field public static final TYPE_NOT_OPENED:I = 0x2

.field public static final TYPE_TIMEDOUT:I = 0x1f

.field public static final TYPE_UNKNOWN_ERROR:I


# instance fields
.field private type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 88
    iput p1, p0, Lcom/felicanetworks/felica/FeliCaChipException;->type:I

    .line 89
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 118
    iput p1, p0, Lcom/felicanetworks/felica/FeliCaChipException;->type:I

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/felica/FeliCaChipException;->type:I

    .line 104
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/felicanetworks/felica/FeliCaChipException;->type:I

    return v0
.end method
