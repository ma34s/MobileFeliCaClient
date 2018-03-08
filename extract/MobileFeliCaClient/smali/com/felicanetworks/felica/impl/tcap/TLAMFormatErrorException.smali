.class public Lcom/felicanetworks/felica/impl/tcap/TLAMFormatErrorException;
.super Ljava/lang/Exception;
.source "TLAMFormatErrorException.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "Communication initiation error."


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "Communication initiation error."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method
