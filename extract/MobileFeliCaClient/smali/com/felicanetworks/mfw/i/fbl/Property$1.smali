.class Lcom/felicanetworks/mfw/i/fbl/Property$1;
.super Ljava/util/HashMap;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/mfw/i/fbl/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 167
    const-string v0, "0000000000"

    .line 168
    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA09gP9b5uBIiW88fdLJvS03CZE3+d1ARs0adYZowX/1hFm1wv0QGS0ftu3aot3MFHCTtOvyRxqeP3asQRBnyJlyfi8WvMnknIS6xikLksVG793XtLC//RMKkD6AAkWwLgfU7E03rFvQQABxhCZYOCkpPYkpTogPAEW3+r+4zBQuA2tOU+nPqCKnhalz1OkGpKk1SFX5hP4QgMYhsoAskbFsqgrFS1JFhsqDPh9LXV+iK4yPr273e4Q5A1El+RO8tZ6URP5lAJD5lur7mTSJr3cyUGg+7YO1gt0PRz11gycnS86kt9mKMByVkuz9PBlCSAGM5xx9/qD7beu0KhtbRgZQIDAQAB"

    .line 167
    invoke-virtual {p0, v0, v1}, Lcom/felicanetworks/mfw/i/fbl/Property$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method
