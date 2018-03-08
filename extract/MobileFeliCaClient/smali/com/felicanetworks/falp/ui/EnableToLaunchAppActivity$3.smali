.class Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$3;
.super Ljava/lang/Object;
.source "EnableToLaunchAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;


# direct methods
.method constructor <init>(Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$3;->this$0:Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 104
    const/4 v0, 0x7

    const-string v1, "EnableToLaunchAppActivity#(no)onClick[in]"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$3;->this$0:Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->finish()V

    .line 107
    return-void
.end method
