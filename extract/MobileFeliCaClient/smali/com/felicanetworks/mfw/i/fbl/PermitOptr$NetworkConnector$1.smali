.class Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector$1;
.super Ljava/lang/Object;
.source "PermitOptr.java"

# interfaces
.implements Lcom/felicanetworks/mfw/i/fbl/BizNwConOptrListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;


# direct methods
.method constructor <init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector$1;->this$1:Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;

    .line 2348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public communicate(Ljava/lang/String;I)V
    .locals 1
    .param p1, "interfaceNumber"    # Ljava/lang/String;
    .param p2, "situationCode"    # I

    .prologue
    .line 2352
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector$1;->this$1:Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;

    invoke-static {v0, p2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;->access$0(Lcom/felicanetworks/mfw/i/fbl/PermitOptr$NetworkConnector;I)V

    .line 2353
    return-void
.end method
