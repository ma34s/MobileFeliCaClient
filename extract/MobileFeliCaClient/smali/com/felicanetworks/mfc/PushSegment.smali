.class public abstract Lcom/felicanetworks/mfc/PushSegment;
.super Ljava/lang/Object;
.source "PushSegment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/felicanetworks/mfc/PushSegment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected activateType:I

.field protected pushData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkFormat()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/felicanetworks/mfc/PushSegment;->activateType:I

    return v0
.end method
