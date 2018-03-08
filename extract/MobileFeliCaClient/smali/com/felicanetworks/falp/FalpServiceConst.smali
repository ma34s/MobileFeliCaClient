.class public Lcom/felicanetworks/falp/FalpServiceConst;
.super Ljava/lang/Object;
.source "FalpServiceConst.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_INITIATOR_START:Ljava/lang/String; = "com.felicanetworks.falp.ACTION_INITIATOR_START"

.field public static final ACTION_TARGET_START:Ljava/lang/String; = "com.felicanetworks.falp.ACTION_TARGET_START"

.field public static final CATEGORY_INITIATOR_START:Ljava/lang/String; = "com.felicanetworks.falp.CATEGORY_INITIATOR_START"

.field public static final CATEGORY_TARGET_START:Ljava/lang/String; = "com.felicanetworks.falp.CATEGORY_TARGET_START"

.field public static final FALP_RTN_APPCODE_UNMATCH_ERROR:I = -0x3

.field public static final FALP_RTN_BUFFER_FULL_ERROR:I = -0x5

.field public static final FALP_RTN_FELICA_NOT_AVAILABLE_ERROR:I = -0xc

.field public static final FALP_RTN_ILLEGAL_ACCESS_ERROR:I = -0xf

.field public static final FALP_RTN_INVALID_PARAM_ERROR:I = -0x8

.field public static final FALP_RTN_INVALID_RECEIVEDATA_ERROR:I = -0x9

.field public static final FALP_RTN_NEED_TO_CHIP_CLOSE_ERROR:I = -0xa

.field public static final FALP_RTN_NOT_IC_CHIP_FORMATTING_ERROR:I = -0xb

.field public static final FALP_RTN_OK:I = 0x0

.field public static final FALP_RTN_RW_STOP_ERROR:I = -0xd

.field public static final FALP_RTN_SECURITY_ERROR:I = -0x1

.field public static final FALP_RTN_SEND_DATASIZE_OVER:I = 0x0

.field public static final FALP_RTN_STATE_ERROR:I = -0x6

.field public static final FALP_RTN_TARGET_UNAVAILABLE_ERROR:I = -0xe

.field public static final FALP_RTN_TIMEOUT_ERROR:I = -0x4

.field public static final FALP_RTN_UNKNOWN_ERROR:I = -0x2

.field public static final ONE_TIME_PSWD:Ljava/lang/String; = "com.felicanetworks.falp.ONE_TIME_PSWD"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 258
    return-void
.end method
