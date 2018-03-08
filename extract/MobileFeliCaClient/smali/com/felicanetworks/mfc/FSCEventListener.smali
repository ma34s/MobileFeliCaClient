.class public interface abstract Lcom/felicanetworks/mfc/FSCEventListener;
.super Ljava/lang/Object;
.source "FSCEventListener.java"


# static fields
.field public static final TYPE_HTTP_ERROR:I = 0x3

.field public static final TYPE_INTERRUPTED_ERROR:I = 0x2

.field public static final TYPE_PROTOCOL_ERROR:I = 0x4

.field public static final TYPE_TCAP_IMMEDIATE_STOP:I = 0x64

.field public static final TYPE_UNKNOWN_ERROR:I = 0x1


# virtual methods
.method public abstract errorOccurred(ILjava/lang/String;)V
.end method

.method public abstract finished(I)V
.end method

.method public abstract operationRequested(ILjava/lang/String;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
