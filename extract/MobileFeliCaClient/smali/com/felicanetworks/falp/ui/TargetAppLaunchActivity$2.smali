.class Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$2;
.super Ljava/lang/Object;
.source "TargetAppLaunchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;


# direct methods
.method constructor <init>(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$2;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$2;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    iget-object v0, v0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->noButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 145
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$2;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->access$6(Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;Landroid/app/AlertDialog;)V

    .line 147
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$2;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->finish()V

    .line 148
    return-void
.end method
