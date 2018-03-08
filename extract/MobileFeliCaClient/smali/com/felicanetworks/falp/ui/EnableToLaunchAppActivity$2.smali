.class Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$2;
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
    iput-object p1, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$2;->this$0:Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 84
    const/4 v0, 0x7

    const-string v1, "EnableToLaunchAppActivity#(yes)onClick[in]"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$2;->this$0:Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;

    iget-object v1, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$2;->this$0:Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;

    # getter for: Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->mSendIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->access$1(Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$2;->this$0:Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->finish()V

    .line 94
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 92
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$2;->this$0:Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->finish()V

    goto :goto_0

    .line 90
    :catch_1
    move-exception v0

    .line 92
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$2;->this$0:Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->finish()V

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    iget-object v1, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$2;->this$0:Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;

    invoke-virtual {v1}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->finish()V

    .line 93
    throw v0
.end method
