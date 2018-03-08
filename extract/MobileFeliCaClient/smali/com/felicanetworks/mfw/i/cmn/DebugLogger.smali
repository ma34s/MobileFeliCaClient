.class public Lcom/felicanetworks/mfw/i/cmn/DebugLogger;
.super Ljava/lang/Object;
.source "DebugLogger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static set(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "catchedClass"    # Ljava/lang/Class;
    .param p1, "catchedMethod"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 95
    return-void
.end method

.method public static set(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 62
    return-void
.end method

.method public static write()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method
