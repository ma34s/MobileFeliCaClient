.class Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;
.super Ljava/lang/Throwable;
.source "PermitOptr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfw/i/fbl/PermitOptr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermitException"
.end annotation


# instance fields
.field private errorCode:I

.field final synthetic this$0:Lcom/felicanetworks/mfw/i/fbl/PermitOptr;


# direct methods
.method public constructor <init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr;I)V
    .locals 0
    .param p2, "errorCode"    # I

    .prologue
    .line 2199
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;->this$0:Lcom/felicanetworks/mfw/i/fbl/PermitOptr;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 2201
    iput p2, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;->errorCode:I

    .line 2202
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 2211
    iget v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$PermitException;->errorCode:I

    return v0
.end method
