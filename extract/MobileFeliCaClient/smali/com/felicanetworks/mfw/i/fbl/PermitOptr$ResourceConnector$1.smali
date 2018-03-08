.class Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector$1;
.super Ljava/lang/Object;
.source "PermitOptr.java"

# interfaces
.implements Lcom/felicanetworks/mfw/i/fbl/BizResOptrListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;


# direct methods
.method constructor <init>(Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector$1;->this$1:Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;

    .line 2402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/lang/String;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "situationCode"    # I

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector$1;->this$1:Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;

    invoke-static {v0, p2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->access$0(Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;I)V

    .line 2412
    return-void
.end method

.method public write(Ljava/lang/String;I)V
    .locals 1
    .param p1, "interfaceNumber"    # Ljava/lang/String;
    .param p2, "situationCode"    # I

    .prologue
    .line 2406
    iget-object v0, p0, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector$1;->this$1:Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;

    invoke-static {v0, p2}, Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;->access$0(Lcom/felicanetworks/mfw/i/fbl/PermitOptr$ResourceConnector;I)V

    .line 2407
    return-void
.end method
