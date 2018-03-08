.class public interface abstract Lcom/felicanetworks/mfc/FelicaEventListener;
.super Ljava/lang/Object;
.source "FelicaEventListener.java"


# static fields
.field public static final TYPE_HTTP_ERROR:I = 0x3

.field public static final TYPE_INTERRUPTED_ERROR:I = 0x2

.field public static final TYPE_INVALID_APP_ERROR:I = 0x6

.field public static final TYPE_MFC_VERSION_ERROR:I = 0x8

.field public static final TYPE_NOT_FOUND_ERROR:I = 0x4

.field public static final TYPE_REVOKED_ERROR:I = 0x5

.field public static final TYPE_UNKNOWN_ERROR:I = 0x1

.field public static final TYPE_USED_BY_OTHER_APP:I = 0x7

.field public static final TYPE_UTILITY_VERSION_ERROR:I = 0x9


# virtual methods
.method public abstract errorOccurred(ILjava/lang/String;Lcom/felicanetworks/mfc/AppInfo;)V
.end method

.method public abstract finished()V
.end method
