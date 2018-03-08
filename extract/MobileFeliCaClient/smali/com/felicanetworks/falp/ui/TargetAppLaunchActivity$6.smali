.class Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$6;
.super Ljava/lang/Object;
.source "TargetAppLaunchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->createDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
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
    iput-object p1, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$6;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity$6;->this$0:Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;

    invoke-virtual {v0}, Lcom/felicanetworks/falp/ui/TargetAppLaunchActivity;->finish()V

    .line 305
    return-void
.end method
