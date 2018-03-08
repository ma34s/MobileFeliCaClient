.class public Lcom/felicanetworks/felica/impl/tcap/HTTPException;
.super Ljava/lang/Exception;
.source "HTTPException.java"


# instance fields
.field private isCanceled:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 29
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "isCanceled"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 55
    iput-boolean p2, p0, Lcom/felicanetworks/felica/impl/tcap/HTTPException;->isCanceled:Z

    .line 56
    return-void
.end method


# virtual methods
.method isCanceled()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/felicanetworks/felica/impl/tcap/HTTPException;->isCanceled:Z

    return v0
.end method
