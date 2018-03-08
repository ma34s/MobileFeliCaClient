.class public Lcom/felicanetworks/felica/offlineimpl/OfflineException;
.super Ljava/lang/Exception;
.source "OfflineException.java"


# static fields
.field public static final TYPE_CANCELED:I = 0x8

.field public static final TYPE_CHIP_LOCKED:I = 0x7

.field public static final TYPE_DATA_GET_FAILED:I = 0x3

.field public static final TYPE_DATA_SET_FAILED:I = 0x2

.field public static final TYPE_INVALID_PARAMETER:I = 0x1

.field public static final TYPE_INVALID_RESPONSE:I = 0x4

.field public static final TYPE_INVALID_STATUS_FLAG:I = 0x6

.field public static final TYPE_TIMEOUT_OCCURRED:I = 0x5

.field public static final TYPE_UNKNOWN_ERROR:I


# instance fields
.field private statusFlag1:I

.field private statusFlag2:I

.field private type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 82
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 93
    iput p1, p0, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->type:I

    .line 94
    return-void
.end method

.method constructor <init>(III)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "statusFlag1"    # I
    .param p3, "statusFlag2"    # I

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 126
    iput p1, p0, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->type:I

    .line 127
    iput p2, p0, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->statusFlag1:I

    .line 128
    iput p3, p0, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->statusFlag2:I

    .line 129
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 108
    iput p1, p0, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->type:I

    .line 109
    return-void
.end method


# virtual methods
.method public getStatusFlag1()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->statusFlag1:I

    return v0
.end method

.method public getStatusFlag2()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->statusFlag2:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/felicanetworks/felica/offlineimpl/OfflineException;->type:I

    return v0
.end method
