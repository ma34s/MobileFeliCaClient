.class public Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;
.super Lcom/felicanetworks/felica/impl/tcap/TCAPException;
.source "PacketFormatErrorException.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "Packet format error."

.field public static final TYPE_DATA_FORMAT_ERROR:B = 0x47t

.field public static final TYPE_INVALID_DEVICE_ID:B = 0x43t

.field public static final TYPE_MESSAGE_FORMAT_ERROR:B = 0x45t

.field public static final TYPE_MESSAGE_ORDER_ERROR:B = 0x46t

.field public static final TYPE_PACKET_FORMAT_ERROR:B = 0x42t

.field public static final TYPE_UNSUPPORTED_MESSAGE:B = 0x44t

.field public static final TYPE_UNSUPPORTED_SUBPROTOCOL:B = 0x41t

.field public static final TYPE_UNSUPPORTED_VERSION:B = 0x40t


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method public constructor <init>(B[B)V
    .locals 1
    .param p1, "type"    # B
    .param p2, "params"    # [B

    .prologue
    .line 78
    const-string v0, "Packet format error."

    invoke-direct {p0, p1, v0}, Lcom/felicanetworks/felica/impl/tcap/TCAPException;-><init>(BLjava/lang/String;)V

    .line 81
    invoke-static {p1, p2}, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;->FormatErrorDescription(B[B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;->description:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/felicanetworks/felica/impl/tcap/PacketFormatErrorException;->description:Ljava/lang/String;

    return-object v0
.end method
