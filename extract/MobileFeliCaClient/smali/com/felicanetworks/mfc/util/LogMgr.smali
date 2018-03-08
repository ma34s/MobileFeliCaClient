.class public Lcom/felicanetworks/mfc/util/LogMgr;
.super Ljava/lang/Object;
.source "LogMgr.java"


# static fields
.field public static final API:I = 0x3

.field private static final ARGS_LENGTH_MAX:I = 0x8

.field public static final CLS:I = 0x5

.field public static final DBG:I = 0x6

.field public static final ERR:I = 0x1

.field public static final PKG:I = 0x4

.field private static final S_API:Ljava/lang/String; = "[API]"

.field private static final S_CLS:Ljava/lang/String; = "[CLS]"

.field private static final S_DBG:Ljava/lang/String; = "[DBG]"

.field private static final S_ERR:Ljava/lang/String; = "[ERR]"

.field private static final S_PKG:Ljava/lang/String; = "[PKG]"

.field private static final S_TRC:Ljava/lang/String; = "[TRC]"

.field private static final S_UNK:Ljava/lang/String; = "[UNK]"

.field private static final S_WAR:Ljava/lang/String; = "[WAR]"

.field public static final TRC:I = 0x7

.field public static final WAR:I = 0x2

.field private static final argDummy:[Ljava/lang/Object;

.field protected static bUseHomeBrewingFromat:Z

.field private static final enable:Z

.field private static final enableClass:Z

.field static enableClassName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static level:I

.field private static sNew_args:[Ljava/lang/Object;

.field private static sObjs:[Ljava/lang/Object;

.field private static sb:Ljava/lang/StringBuffer;

.field private static sbConv:Ljava/lang/StringBuffer;

.field private static sbTag:Ljava/lang/StringBuffer;

.field private static sbuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x80

    const/16 v4, 0x8

    const/4 v3, 0x7

    .line 58
    const/4 v0, 0x4

    sput v0, Lcom/felicanetworks/mfc/util/LogMgr;->level:I

    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lcom/felicanetworks/mfc/util/LogMgr;->bUseHomeBrewingFromat:Z

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->enableClassName:Ljava/util/Map;

    .line 72
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->enableClassName:Ljava/util/Map;

    const-string v1, "com.felicanetworks.mfc.Felica"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->enableClassName:Ljava/util/Map;

    const-string v1, "com.felicanetworks.mfc.FSC"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->enableClassName:Ljava/util/Map;

    const-string v1, "com.felicanetworks.mfc.PushSegmentParcelableWrapper"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->enableClassName:Ljava/util/Map;

    const-string v1, "com.felicanetworks.mfc.PushSegmentParcelableWrapper$1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->argDummy:[Ljava/lang/Object;

    .line 92
    new-array v0, v4, [Ljava/lang/Object;

    sput-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sNew_args:[Ljava/lang/Object;

    .line 97
    new-array v0, v4, [Ljava/lang/Object;

    sput-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    .line 107
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sbTag:Ljava/lang/StringBuffer;

    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sbuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ByteArray2String([B)Ljava/lang/String;
    .locals 10
    .param p0, "data"    # [B

    .prologue
    const/16 v9, 0x23

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x2c

    const/4 v5, 0x0

    .line 792
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 793
    const/16 v3, 0x100

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "0x00"

    aput-object v3, v2, v5

    const-string v3, "0x01"

    aput-object v3, v2, v7

    const-string v3, "0x02"

    aput-object v3, v2, v8

    const/4 v3, 0x3

    const-string v4, "0x03"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "0x04"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "0x05"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 794
    const-string v4, "0x06"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "0x07"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "0x08"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "0x09"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "0x0A"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "0x0B"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "0x0C"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "0x0D"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "0x0E"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "0x0F"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    .line 795
    const-string v4, "0x10"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "0x11"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "0x12"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "0x13"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "0x14"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "0x15"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "0x16"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "0x17"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "0x18"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "0x19"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    .line 796
    const-string v4, "0x1A"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "0x1B"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "0x1C"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "0x1D"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "0x1E"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "0x1F"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "0x20"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "0x21"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "0x22"

    aput-object v4, v2, v3

    const-string v3, "0x23"

    aput-object v3, v2, v9

    const/16 v3, 0x24

    .line 797
    const-string v4, "0x24"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "0x25"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "0x26"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "0x27"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "0x28"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "0x29"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "0x2A"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "0x2B"

    aput-object v4, v2, v3

    const-string v3, "0x2C"

    aput-object v3, v2, v6

    const/16 v3, 0x2d

    const-string v4, "0x2D"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    .line 798
    const-string v4, "0x2E"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "0x2F"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "0x30"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "0x31"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "0x32"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "0x33"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "0x34"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "0x35"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "0x36"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "0x37"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    .line 799
    const-string v4, "0x38"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "0x39"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "0x3A"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "0x3B"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string v4, "0x3C"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string v4, "0x3D"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string v4, "0x3E"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string v4, "0x3F"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string v4, "0x40"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string v4, "0x41"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    .line 800
    const-string v4, "0x42"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string v4, "0x43"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string v4, "0x44"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string v4, "0x45"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string v4, "0x46"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string v4, "0x47"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string v4, "0x48"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string v4, "0x49"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string v4, "0x4A"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string v4, "0x4B"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    .line 801
    const-string v4, "0x4C"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string v4, "0x4D"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string v4, "0x4E"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string v4, "0x4F"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string v4, "0x50"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string v4, "0x51"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string v4, "0x52"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string v4, "0x53"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string v4, "0x54"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string v4, "0x55"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    .line 802
    const-string v4, "0x56"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string v4, "0x57"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string v4, "0x58"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string v4, "0x59"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string v4, "0x5A"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string v4, "0x5B"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string v4, "0x5C"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string v4, "0x5D"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string v4, "0x5E"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string v4, "0x5F"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    .line 803
    const-string v4, "0x60"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string v4, "0x61"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string v4, "0x62"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string v4, "0x63"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string v4, "0x64"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string v4, "0x65"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string v4, "0x66"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string v4, "0x67"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string v4, "0x68"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string v4, "0x69"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    .line 804
    const-string v4, "0x6A"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string v4, "0x6B"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string v4, "0x6C"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string v4, "0x6D"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string v4, "0x6E"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string v4, "0x6F"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string v4, "0x70"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string v4, "0x71"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string v4, "0x72"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string v4, "0x73"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    .line 805
    const-string v4, "0x74"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string v4, "0x75"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string v4, "0x76"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string v4, "0x77"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string v4, "0x78"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string v4, "0x79"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string v4, "0x7A"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string v4, "0x7B"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string v4, "0x7C"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string v4, "0x7D"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    .line 806
    const-string v4, "0x7E"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string v4, "0x7F"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string v4, "0x80"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string v4, "0x81"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string v4, "0x82"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string v4, "0x83"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string v4, "0x84"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string v4, "0x85"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string v4, "0x86"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string v4, "0x87"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    .line 807
    const-string v4, "0x88"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string v4, "0x89"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string v4, "0x8A"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string v4, "0x8B"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string v4, "0x8C"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string v4, "0x8D"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string v4, "0x8E"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string v4, "0x8F"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string v4, "0x90"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string v4, "0x91"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    .line 808
    const-string v4, "0x92"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string v4, "0x93"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string v4, "0x94"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string v4, "0x95"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string v4, "0x96"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string v4, "0x97"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string v4, "0x98"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string v4, "0x99"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string v4, "0x9A"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string v4, "0x9B"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    .line 809
    const-string v4, "0x9C"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string v4, "0x9D"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string v4, "0x9E"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string v4, "0x9F"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string v4, "0xA0"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string v4, "0xA1"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string v4, "0xA2"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string v4, "0xA3"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string v4, "0xA4"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string v4, "0xA5"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    .line 810
    const-string v4, "0xA6"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string v4, "0xA7"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string v4, "0xA8"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string v4, "0xA9"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string v4, "0xAA"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string v4, "0xAB"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string v4, "0xAC"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string v4, "0xAD"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string v4, "0xAE"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string v4, "0xAF"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    .line 811
    const-string v4, "0xB0"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string v4, "0xB1"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string v4, "0xB2"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string v4, "0xB3"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string v4, "0xB4"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string v4, "0xB5"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string v4, "0xB6"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string v4, "0xB7"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string v4, "0xB8"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string v4, "0xB9"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    .line 812
    const-string v4, "0xBA"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string v4, "0xBB"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string v4, "0xBC"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string v4, "0xBD"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string v4, "0xBE"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string v4, "0xBF"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string v4, "0xC0"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string v4, "0xC1"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string v4, "0xC2"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string v4, "0xC3"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    .line 813
    const-string v4, "0xC4"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string v4, "0xC5"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string v4, "0xC6"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string v4, "0xC7"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string v4, "0xC8"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string v4, "0xC9"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string v4, "0xCA"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string v4, "0xCB"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string v4, "0xCC"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string v4, "0xCD"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    .line 814
    const-string v4, "0xCE"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string v4, "0xCF"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string v4, "0xD0"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string v4, "0xD1"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string v4, "0xD2"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string v4, "0xD3"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string v4, "0xD4"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string v4, "0xD5"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string v4, "0xD6"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string v4, "0xD7"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    .line 815
    const-string v4, "0xD8"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string v4, "0xD9"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string v4, "0xDA"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string v4, "0xDB"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string v4, "0xDC"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string v4, "0xDD"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string v4, "0xDE"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string v4, "0xDF"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string v4, "0xE0"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string v4, "0xE1"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    .line 816
    const-string v4, "0xE2"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string v4, "0xE3"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string v4, "0xE4"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string v4, "0xE5"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string v4, "0xE6"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string v4, "0xE7"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string v4, "0xE8"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string v4, "0xE9"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string v4, "0xEA"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string v4, "0xEB"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    .line 817
    const-string v4, "0xEC"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string v4, "0xED"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string v4, "0xEE"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string v4, "0xEF"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string v4, "0xF0"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string v4, "0xF1"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string v4, "0xF2"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string v4, "0xF3"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string v4, "0xF4"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string v4, "0xF5"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    .line 818
    const-string v4, "0xF6"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string v4, "0xF7"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string v4, "0xF8"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string v4, "0xF9"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string v4, "0xFA"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string v4, "0xFB"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string v4, "0xFC"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string v4, "0xFD"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string v4, "0xFE"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string v4, "0xFF"

    aput-object v4, v2, v3

    .line 820
    .local v2, "toHexString":[Ljava/lang/String;
    if-nez p0, :cond_0

    .line 821
    const-string v0, "{NULL}"

    .local v0, "ret":Ljava/lang/String;
    move-object v1, v0

    .line 917
    .end local v0    # "ret":Ljava/lang/String;
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 827
    .end local v1    # "ret":Ljava/lang/String;
    :cond_0
    array-length v3, p0

    packed-switch v3, :pswitch_data_0

    .line 900
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    const/16 v4, 0x7b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 901
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 902
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 903
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    aget-byte v4, p0, v5

    and-int/lit16 v4, v4, 0xff

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 904
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 905
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    aget-byte v4, p0, v7

    and-int/lit16 v4, v4, 0xff

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 906
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 907
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    aget-byte v4, p0, v8

    and-int/lit16 v4, v4, 0xff

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 908
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    const-string v4, "...}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 909
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    :goto_1
    move-object v1, v0

    .line 917
    .end local v0    # "ret":Ljava/lang/String;
    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 829
    .end local v1    # "ret":Ljava/lang/String;
    :pswitch_0
    const-string v0, "{0#}"

    .line 830
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_1

    .line 838
    .end local v0    # "ret":Ljava/lang/String;
    :pswitch_1
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    const-string v4, "{1#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 839
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    aget-byte v4, p0, v5

    and-int/lit16 v4, v4, 0xff

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 840
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 841
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 842
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_1

    .line 851
    .end local v0    # "ret":Ljava/lang/String;
    :pswitch_2
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    const-string v4, "{2#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 852
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    aget-byte v4, p0, v5

    and-int/lit16 v4, v4, 0xff

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 853
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 854
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    aget-byte v4, p0, v7

    and-int/lit16 v4, v4, 0xff

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 855
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 856
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 857
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_1

    .line 867
    .end local v0    # "ret":Ljava/lang/String;
    :pswitch_3
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 868
    .restart local v0    # "ret":Ljava/lang/String;
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    const-string v4, "{3#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 869
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    aget-byte v4, p0, v5

    and-int/lit16 v4, v4, 0xff

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 870
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 871
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    aget-byte v4, p0, v7

    and-int/lit16 v4, v4, 0xff

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 872
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 873
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    aget-byte v4, p0, v8

    and-int/lit16 v4, v4, 0xff

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 874
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 875
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 876
    goto/16 :goto_1

    .line 827
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static IntegerArray2String([I)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # [I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x2c

    const/4 v4, 0x0

    .line 931
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 933
    if-nez p0, :cond_0

    .line 934
    const-string v0, "{NULL}"

    .local v0, "ret":Ljava/lang/String;
    move-object v1, v0

    .line 1026
    .end local v0    # "ret":Ljava/lang/String;
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 940
    .end local v1    # "ret":Ljava/lang/String;
    :cond_0
    array-length v2, p0

    packed-switch v2, :pswitch_data_0

    .line 1009
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1010
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1011
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1012
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    aget v3, p0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1013
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1014
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    aget v3, p0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1015
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1016
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    aget v3, p0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1018
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    const-string v3, "...}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1019
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    :goto_1
    move-object v1, v0

    .line 1026
    .end local v0    # "ret":Ljava/lang/String;
    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 942
    .end local v1    # "ret":Ljava/lang/String;
    :pswitch_0
    const-string v0, "{0#}"

    .line 943
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_1

    .line 951
    .end local v0    # "ret":Ljava/lang/String;
    :pswitch_1
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    const-string v3, "{1#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 952
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    aget v3, p0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 953
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 954
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 955
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_1

    .line 963
    .end local v0    # "ret":Ljava/lang/String;
    :pswitch_2
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    const-string v3, "{2#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 964
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    aget v3, p0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 965
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 966
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    aget v3, p0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 967
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 968
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 969
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_1

    .line 979
    .end local v0    # "ret":Ljava/lang/String;
    :pswitch_3
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    const-string v3, "{3#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 980
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    aget v3, p0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 981
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 982
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    aget v3, p0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 983
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 984
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    aget v3, p0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 985
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 986
    sget-object v2, Lcom/felicanetworks/mfc/util/LogMgr;->sbConv:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 987
    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_1

    .line 940
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static checkEnableClass(Ljava/lang/StackTraceElement;I)Z
    .locals 4
    .param p0, "ste"    # Ljava/lang/StackTraceElement;
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v2

    .line 172
    :cond_1
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->enableClassName:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 173
    .local v1, "enableLevel":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 174
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static format(Ljava/lang/String;[Ljava/lang/Object;J)Ljava/lang/String;
    .locals 12
    .param p0, "fmt"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "length"    # J

    .prologue
    .line 637
    sget-boolean v8, Lcom/felicanetworks/mfc/util/LogMgr;->bUseHomeBrewingFromat:Z

    if-nez v8, :cond_0

    .line 638
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 778
    :goto_0
    return-object v7

    .line 649
    :cond_0
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 651
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 652
    .local v5, "len":I
    long-to-int v0, p2

    .line 653
    .local v0, "argc":I
    const/4 v4, 0x0

    .line 654
    .local v4, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v5, :cond_1

    .line 777
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 778
    .local v7, "ret":Ljava/lang/String;
    goto :goto_0

    .line 655
    .end local v7    # "ret":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 656
    .local v1, "c":C
    const/16 v8, 0x25

    if-ne v1, v8, :cond_16

    add-int/lit8 v8, v5, -0x1

    if-gt v3, v8, :cond_16

    .line 658
    add-int/lit8 v3, v3, 0x1

    .line 659
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 661
    sparse-switch v1, :sswitch_data_0

    .line 671
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 654
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 675
    :sswitch_0
    if-ge v4, v0, :cond_2

    .line 676
    aget-object v6, p1, v4

    .line 680
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 682
    sparse-switch v1, :sswitch_data_1

    goto :goto_2

    .line 684
    :sswitch_1
    if-eqz v6, :cond_6

    .line 685
    instance-of v8, v6, Ljava/lang/Boolean;

    if-eqz v8, :cond_4

    .line 686
    sget-object v9, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "true"

    :goto_4
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 678
    :cond_2
    const/4 v6, 0x0

    .local v6, "obj":Ljava/lang/Object;
    goto :goto_3

    .line 686
    .end local v6    # "obj":Ljava/lang/Object;
    :cond_3
    const-string v8, "false"

    goto :goto_4

    .line 688
    :cond_4
    sget-object v9, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "true"

    :goto_5
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    const-string v8, "false"

    goto :goto_5

    .line 691
    :cond_6
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 695
    :sswitch_2
    if-eqz v6, :cond_8

    .line 696
    instance-of v8, v6, Ljava/lang/Character;

    if-eqz v8, :cond_7

    .line 697
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    check-cast v6, Ljava/lang/Character;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 699
    :cond_7
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 702
    :cond_8
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 706
    :sswitch_3
    if-eqz v6, :cond_a

    .line 707
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_9

    .line 708
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 710
    :cond_9
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 713
    :cond_a
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 717
    :sswitch_4
    if-eqz v6, :cond_e

    .line 718
    instance-of v8, v6, Ljava/lang/Integer;

    if-eqz v8, :cond_b

    .line 719
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 720
    :cond_b
    instance-of v8, v6, Ljava/lang/Long;

    if-eqz v8, :cond_c

    .line 721
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 722
    :cond_c
    instance-of v8, v6, Ljava/lang/Byte;

    if-eqz v8, :cond_d

    .line 723
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 726
    :cond_d
    :try_start_0
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 727
    :catch_0
    move-exception v2

    .line 728
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "LogMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "args["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": fmt = \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 729
    const-string v10, "\", obj = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 728
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 734
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_e
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 738
    :sswitch_5
    if-eqz v6, :cond_12

    .line 739
    instance-of v8, v6, Ljava/lang/Integer;

    if-eqz v8, :cond_f

    .line 740
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 741
    :cond_f
    instance-of v8, v6, Ljava/lang/Long;

    if-eqz v8, :cond_10

    .line 742
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 743
    :cond_10
    instance-of v8, v6, Ljava/lang/Byte;

    if-eqz v8, :cond_11

    .line 744
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 747
    :cond_11
    :try_start_1
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 748
    :catch_1
    move-exception v2

    .line 749
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v8, "LogMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "args["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": fmt = \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 750
    const-string v10, "\", obj = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 749
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 755
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_12
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 759
    :sswitch_6
    if-eqz v6, :cond_15

    .line 760
    instance-of v8, v6, Ljava/lang/Double;

    if-eqz v8, :cond_13

    .line 761
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 762
    :cond_13
    instance-of v8, v6, Ljava/lang/Float;

    if-eqz v8, :cond_14

    .line 763
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 765
    :cond_14
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 768
    :cond_15
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    const-string v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 773
    :cond_16
    sget-object v8, Lcom/felicanetworks/mfc/util/LogMgr;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 661
    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_0
        0x63 -> :sswitch_0
        0x64 -> :sswitch_0
        0x66 -> :sswitch_0
        0x73 -> :sswitch_0
        0x78 -> :sswitch_0
    .end sparse-switch

    .line 682
    :sswitch_data_1
    .sparse-switch
        0x62 -> :sswitch_1
        0x63 -> :sswitch_2
        0x64 -> :sswitch_4
        0x66 -> :sswitch_6
        0x73 -> :sswitch_3
        0x78 -> :sswitch_5
    .end sparse-switch
.end method

.method protected static getLevel(I)Ljava/lang/String;
    .locals 4
    .param p0, "level"    # I

    .prologue
    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 132
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "[ERR]"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "[WAR]"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "[API]"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "[PKG]"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "[CLS]"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "[DBG]"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "[TRC]"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    .local v1, "str":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 145
    const-string v1, "[UNK]"

    .line 148
    :cond_0
    return-object v1
.end method

.method public static getUseHomeBrewingFromat()Z
    .locals 1

    .prologue
    .line 163
    sget-boolean v0, Lcom/felicanetworks/mfc/util/LogMgr;->bUseHomeBrewingFromat:Z

    return v0
.end method

.method public static log(ILjava/lang/String;)V
    .locals 4
    .param p0, "level"    # I
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 191
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->argDummy:[Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-static {p0, p1, v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;J)V

    .line 192
    return-void
.end method

.method public static log(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "level"    # I
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 206
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 207
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const-wide/16 v2, 0x1

    invoke-static {p0, p1, v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;J)V

    .line 208
    return-void
.end method

.method public static log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p0, "level"    # I
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 224
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 225
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 226
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const-wide/16 v2, 0x2

    invoke-static {p0, p1, v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;J)V

    .line 227
    return-void
.end method

.method public static log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p0, "level"    # I
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 245
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 246
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 247
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 248
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const-wide/16 v2, 0x3

    invoke-static {p0, p1, v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;J)V

    .line 249
    return-void
.end method

.method public static log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p0, "level"    # I
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;

    .prologue
    .line 270
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 271
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 272
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 273
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x3

    aput-object p5, v0, v1

    .line 274
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const-wide/16 v2, 0x4

    invoke-static {p0, p1, v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;J)V

    .line 275
    return-void
.end method

.method public static log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p0, "level"    # I
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .param p6, "arg5"    # Ljava/lang/Object;

    .prologue
    .line 298
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 299
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 300
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 301
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x3

    aput-object p5, v0, v1

    .line 302
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p6, v0, v1

    .line 303
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const-wide/16 v2, 0x5

    invoke-static {p0, p1, v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;J)V

    .line 304
    return-void
.end method

.method public static log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p0, "level"    # I
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .param p6, "arg5"    # Ljava/lang/Object;
    .param p7, "arg6"    # Ljava/lang/Object;

    .prologue
    .line 329
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 330
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 331
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 332
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x3

    aput-object p5, v0, v1

    .line 333
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p6, v0, v1

    .line 334
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x5

    aput-object p7, v0, v1

    .line 335
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const-wide/16 v2, 0x6

    invoke-static {p0, p1, v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;J)V

    .line 336
    return-void
.end method

.method public static log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p0, "level"    # I
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .param p6, "arg5"    # Ljava/lang/Object;
    .param p7, "arg6"    # Ljava/lang/Object;
    .param p8, "arg7"    # Ljava/lang/Object;

    .prologue
    .line 363
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 364
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 365
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 366
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x3

    aput-object p5, v0, v1

    .line 367
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p6, v0, v1

    .line 368
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x5

    aput-object p7, v0, v1

    .line 369
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x6

    aput-object p8, v0, v1

    .line 370
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const-wide/16 v2, 0x7

    invoke-static {p0, p1, v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;J)V

    .line 371
    return-void
.end method

.method public static log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p0, "level"    # I
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "arg4"    # Ljava/lang/Object;
    .param p6, "arg5"    # Ljava/lang/Object;
    .param p7, "arg6"    # Ljava/lang/Object;
    .param p8, "arg7"    # Ljava/lang/Object;
    .param p9, "arg8"    # Ljava/lang/Object;

    .prologue
    .line 400
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 401
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 402
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x2

    aput-object p4, v0, v1

    .line 403
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x3

    aput-object p5, v0, v1

    .line 404
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p6, v0, v1

    .line 405
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x5

    aput-object p7, v0, v1

    .line 406
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x6

    aput-object p8, v0, v1

    .line 407
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const/4 v1, 0x7

    aput-object p9, v0, v1

    .line 408
    sget-object v0, Lcom/felicanetworks/mfc/util/LogMgr;->sObjs:[Ljava/lang/Object;

    const-wide/16 v2, 0x8

    invoke-static {p0, p1, v0, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;[Ljava/lang/Object;J)V

    .line 409
    return-void
.end method

.method protected static log(ILjava/lang/String;[Ljava/lang/Object;J)V
    .locals 0
    .param p0, "level"    # I
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "length"    # J

    .prologue
    .line 484
    return-void
.end method

.method public static logArray(I[B)V
    .locals 0
    .param p0, "level"    # I
    .param p1, "ary"    # [B

    .prologue
    .line 1092
    return-void
.end method

.method public static logArray(I[BII)V
    .locals 0
    .param p0, "level"    # I
    .param p1, "ary"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 1130
    return-void
.end method

.method private static declared-synchronized logArray(I[BIILjava/lang/StackTraceElement;)V
    .locals 2
    .param p0, "level"    # I
    .param p1, "ary"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "ste"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 1149
    const-class v1, Lcom/felicanetworks/mfc/util/LogMgr;

    monitor-enter v1

    const/16 v0, 0x20

    .line 1229
    .local v0, "spc":C
    monitor-exit v1

    return-void
.end method

.method protected static output(ILjava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;J)V
    .locals 8
    .param p0, "level"    # I
    .param p1, "ste"    # Ljava/lang/StackTraceElement;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .param p4, "length"    # J

    .prologue
    const/4 v6, 0x0

    .line 529
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbTag:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 530
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbTag:Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/felicanetworks/mfc/util/LogMgr;->getLevel(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 531
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbTag:Ljava/lang/StringBuffer;

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 532
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbTag:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 533
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbTag:Ljava/lang/StringBuffer;

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 534
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbTag:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbTag:Ljava/lang/StringBuffer;

    const-string v4, "(L:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 536
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbTag:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 537
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbTag:Ljava/lang/StringBuffer;

    const-string v4, ")]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sbTag:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "tag":Ljava/lang/String;
    const/4 v0, 0x0

    .line 545
    .local v0, "bChangeArray":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    int-to-long v4, v1

    cmp-long v3, v4, p4

    if-ltz v3, :cond_0

    .line 554
    :goto_1
    if-nez v0, :cond_4

    .line 556
    const-string v3, "%s"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 558
    const-wide/16 v4, 0x1

    cmp-long v3, p4, v4

    if-nez v3, :cond_3

    .line 559
    aget-object v3, p3, v6

    if-eqz v3, :cond_3

    aget-object v3, p3, v6

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 560
    packed-switch p0, :pswitch_data_0

    .line 568
    aget-object v3, p3, v6

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :goto_2
    return-void

    .line 546
    :cond_0
    aget-object v3, p3, v1

    instance-of v3, v3, [B

    if-eqz v3, :cond_1

    .line 547
    const/4 v0, 0x1

    .line 548
    goto :goto_1

    .line 549
    :cond_1
    aget-object v3, p3, v1

    instance-of v3, v3, [I

    if-eqz v3, :cond_2

    .line 550
    const/4 v0, 0x1

    .line 551
    goto :goto_1

    .line 545
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    :pswitch_0
    aget-object v3, p3, v6

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 565
    :pswitch_1
    aget-object v3, p3, v6

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 572
    :cond_3
    packed-switch p0, :pswitch_data_1

    .line 583
    invoke-static {p2, p3, p4, p5}, Lcom/felicanetworks/mfc/util/LogMgr;->format(Ljava/lang/String;[Ljava/lang/Object;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 575
    :pswitch_2
    invoke-static {p2, p3, p4, p5}, Lcom/felicanetworks/mfc/util/LogMgr;->format(Ljava/lang/String;[Ljava/lang/Object;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 579
    :pswitch_3
    invoke-static {p2, p3, p4, p5}, Lcom/felicanetworks/mfc/util/LogMgr;->format(Ljava/lang/String;[Ljava/lang/Object;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 592
    :cond_4
    const/4 v1, 0x0

    :goto_3
    int-to-long v4, v1

    cmp-long v3, v4, p4

    if-ltz v3, :cond_5

    .line 606
    packed-switch p0, :pswitch_data_2

    .line 617
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sNew_args:[Ljava/lang/Object;

    invoke-static {p2, v3, p4, p5}, Lcom/felicanetworks/mfc/util/LogMgr;->format(Ljava/lang/String;[Ljava/lang/Object;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 593
    :cond_5
    aget-object v3, p3, v1

    instance-of v3, v3, [B

    if-eqz v3, :cond_6

    .line 595
    sget-object v4, Lcom/felicanetworks/mfc/util/LogMgr;->sNew_args:[Ljava/lang/Object;

    aget-object v3, p3, v1

    check-cast v3, [B

    invoke-static {v3}, Lcom/felicanetworks/mfc/util/LogMgr;->ByteArray2String([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    .line 592
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 596
    :cond_6
    aget-object v3, p3, v1

    instance-of v3, v3, [I

    if-eqz v3, :cond_7

    .line 598
    sget-object v4, Lcom/felicanetworks/mfc/util/LogMgr;->sNew_args:[Ljava/lang/Object;

    aget-object v3, p3, v1

    check-cast v3, [I

    invoke-static {v3}, Lcom/felicanetworks/mfc/util/LogMgr;->IntegerArray2String([I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    goto :goto_4

    .line 601
    :cond_7
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sNew_args:[Ljava/lang/Object;

    aget-object v4, p3, v1

    aput-object v4, v3, v1

    goto :goto_4

    .line 609
    :pswitch_4
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sNew_args:[Ljava/lang/Object;

    invoke-static {p2, v3, p4, p5}, Lcom/felicanetworks/mfc/util/LogMgr;->format(Ljava/lang/String;[Ljava/lang/Object;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 613
    :pswitch_5
    sget-object v3, Lcom/felicanetworks/mfc/util/LogMgr;->sNew_args:[Ljava/lang/Object;

    invoke-static {p2, v3, p4, p5}, Lcom/felicanetworks/mfc/util/LogMgr;->format(Ljava/lang/String;[Ljava/lang/Object;J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 560
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 572
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 606
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static setUseHomeBrewingFromat(Z)Z
    .locals 1
    .param p0, "bUse"    # Z

    .prologue
    .line 155
    sget-boolean v0, Lcom/felicanetworks/mfc/util/LogMgr;->bUseHomeBrewingFromat:Z

    .line 156
    .local v0, "ret":Z
    sput-boolean p0, Lcom/felicanetworks/mfc/util/LogMgr;->bUseHomeBrewingFromat:Z

    .line 158
    return v0
.end method

.method static toHexString(II)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # I
    .param p1, "width"    # I

    .prologue
    const/16 v8, 0x30

    .line 1040
    const/16 v5, 0x30

    .line 1041
    .local v5, "zero":C
    const/4 v6, 0x7

    new-array v3, v6, [C

    fill-array-data v3, :array_0

    .line 1042
    .local v3, "pads":[C
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 1043
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v2, p1, v6

    .line 1044
    .local v2, "padLen":I
    if-lez v2, :cond_0

    .line 1045
    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    .line 1046
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1057
    :cond_0
    :goto_0
    return-object v4

    .line 1047
    :cond_1
    array-length v6, v3

    if-gt v2, v6, :cond_2

    .line 1048
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-static {v3, v7, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1049
    goto :goto_0

    .line 1050
    :cond_2
    const-string v1, ""

    .line 1051
    .local v1, "pad":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_3

    .line 1054
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1052
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1051
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1041
    :array_0
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method
