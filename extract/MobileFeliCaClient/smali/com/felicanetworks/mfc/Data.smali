.class public abstract Lcom/felicanetworks/mfc/Data;
.super Ljava/lang/Object;
.source "Data.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final BYTES_LENGTH:I = 0x10

.field private static final EXC_LENGTH:Ljava/lang/String; = "The length must be 16."

.field private static final EXC_NULL:Ljava/lang/String; = "null is not allowed."


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final checkBytes([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length must be 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    return-void
.end method

.method public abstract checkFormat()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method protected getBytesLength()I
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x10

    return v0
.end method

.method public abstract getType()I
.end method
