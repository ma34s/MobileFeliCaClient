.class public Lcom/felicanetworks/felica/offlineimpl/FalpException;
.super Ljava/lang/Exception;
.source "FalpException.java"


# static fields
.field public static final TYPE_CHIP_LOCKED:I = 0x7

.field public static final TYPE_DATA_GET_FAILED:I = 0x3

.field public static final TYPE_DATA_SET_FAILED:I = 0x2

.field public static final TYPE_INVALID_APPCODE:I = 0x8

.field public static final TYPE_INVALID_PARAMETER:I = 0x1

.field public static final TYPE_INVALID_RESPONSE:I = 0x4

.field public static final TYPE_INVALID_STATUS_FLAG:I = 0x6

.field public static final TYPE_TIMEOUT_OCCURRED:I = 0x5

.field public static final TYPE_UNKNOWN_ERROR:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private statusFlag1:I

.field private statusFlag2:I

.field private type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 87
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 98
    iput p1, p0, Lcom/felicanetworks/felica/offlineimpl/FalpException;->type:I

    .line 99
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "statusFlag1"    # I
    .param p3, "statusFlag2"    # I

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 114
    iput p1, p0, Lcom/felicanetworks/felica/offlineimpl/FalpException;->type:I

    .line 115
    iput p2, p0, Lcom/felicanetworks/felica/offlineimpl/FalpException;->statusFlag1:I

    .line 116
    iput p3, p0, Lcom/felicanetworks/felica/offlineimpl/FalpException;->statusFlag2:I

    .line 117
    return-void
.end method


# virtual methods
.method public getStatusFlag1()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/FalpException;->statusFlag1:I

    return v0
.end method

.method public getStatusFlag2()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/FalpException;->statusFlag2:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/FalpException;->type:I

    return v0
.end method
