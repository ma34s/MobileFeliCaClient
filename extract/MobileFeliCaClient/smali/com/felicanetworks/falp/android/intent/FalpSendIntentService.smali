.class public Lcom/felicanetworks/falp/android/intent/FalpSendIntentService;
.super Landroid/app/Service;
.source "FalpSendIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 328
    const/4 v0, 0x0

    return-object v0
.end method
