.class public interface abstract Lcom/felicanetworks/felica/FeliCaClientEventListener;
.super Ljava/lang/Object;
.source "FeliCaClientEventListener.java"


# static fields
.field public static final TYPE_CANCELED:I = 0x1

.field public static final TYPE_HTTP_ERROR:I = 0x2

.field public static final TYPE_PROTOCOL_ERROR:I = 0x3

.field public static final TYPE_TCAP_IMMEDIATE_STOP:I = 0x64

.field public static final TYPE_UNKNOWN_ERROR:I


# virtual methods
.method public abstract errorOccurred(ILjava/lang/String;)V
.end method

.method public abstract finished(I)V
.end method
