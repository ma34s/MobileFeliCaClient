.class Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$4;
.super Ljava/lang/Object;
.source "EnableToLaunchAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->createDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
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
    iput-object p1, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$4;->this$0:Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 273
    const/4 v0, 0x7

    const-string v1, "EnableToLaunchAppActivity#onCancel[in]"

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/util/FalpLog;->print(ILjava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity$4;->this$0:Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/ui/EnableToLaunchAppActivity;->finish()V

    .line 276
    return-void
.end method
