.class Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$1;
.super Ljava/lang/Object;
.source "EnableToLaunchAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    iput-object p1, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$1;->this$0:Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 68
    const/4 v0, 0x7

    const-string v1, "EnableToLaunchAppActivity#onDismiss[in]"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$1;->this$0:Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;

    iget-object v0, v0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->noButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 71
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$1;->this$0:Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->access$0(Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;Landroid/app/AlertDialog;)V

    .line 73
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$1;->this$0:Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->finish()V

    .line 74
    return-void
.end method
