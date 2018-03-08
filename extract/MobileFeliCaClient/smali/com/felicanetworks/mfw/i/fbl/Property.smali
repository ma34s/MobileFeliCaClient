.class public Lcom/felicanetworks/mfw/i/fbl/Property;
.super Ljava/lang/Object;
.source "Property.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "0201"

.field public static APPLICATION_VERSION:Ljava/lang/String; = null

.field public static CHIP_ISSUER_ID:Ljava/lang/String; = null

.field public static final COMMAND_RW_TRY_TIME:I = 0x19

.field public static final COUNTRY_CODE:Ljava/lang/String; = "JP"

.field public static FILE_DIR:Ljava/io/File; = null

.field public static final KEY_SET:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LANGUAGE_CODE:Ljava/lang/String; = "ja"

.field public static final MAX_COMMANDDATA_COUNT:I = 0x5

.field public static final MSG_CARD_EXTERNAL_CANCEL:Ljava/lang/String; = "\u51e6\u7406\u4e2d"

.field public static final MSG_CARD_EXTERNAL_PROCESSING:Ljava/lang/String; = "\u51e6\u7406\u4e2d"

.field public static final MSG_DEFAULT_CARD_EXTERNAL_CATCH:Ljava/lang/String; = "\u30b1\u30fc\u30bf\u30a4\u3092\u304b\u3056\u3057\u3066\u304f\u3060\u3055\u3044"

.field public static final MSG_DEFAULT_CARD_INTERNAL_PROCESSING:Ljava/lang/String; = "\u51e6\u7406\u4e2d"

.field public static final MSG_PROCESSING:Ljava/lang/String; = "\u51e6\u7406\u4e2d"

.field public static final OFFLINE_VERUP_EVAL_COUNT_LIMIT:I = 0xc8

.field public static final OFFLINE_VERUP_EVAL_TREM:I = 0xa8c0

.field private static final PATH_LIST:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

.field public static final PERMIT_TYPE:Ljava/lang/String; = "02"

.field public static final PERMIT_VERSION:Ljava/lang/String; = "0001"

.field public static final PERM_AREA_FORMAT_VERSIONUP:[B

.field public static final PLATFORM_TYPE:Ljava/lang/String; = "02"

.field public static final RVCTION_CACHE_NUMBER_LIMIT:I = 0xa

.field public static final RVCTION_LIMIT:I = 0x5f5e0ff

.field public static final RVCTION_SERIAL_NUMBER_LIMIT:I = 0xc8

.field public static final RVCTION_TERM:I = 0xa8c0

.field private static final SERVICE_LIST:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

.field public static final URL_CTRL_APP_DEL_SITE:Ljava/lang/String; = "http://ots.fnrt.jp/~testuser2/site/delete_site.html"

.field public static final URL_CTRL_APP_EXPLAIN_SITE:Ljava/lang/String; = "http://ots.fnrt.jp/~testuser2/site/detail_site.html"

.field public static final URL_PRBLM_ANALYZE_LOG_SEND:Ljava/lang/String; = "http://ots.fnrt.jp/~testuser2/site/command/debuglog.php"

.field public static final URL_VERUP_CONFIR_REQ:Ljava/lang/String; = "http://ots.fnrt.jp/~testuser2/site/command/verup.php"

.field public static final URL_VERUP_SITE:Ljava/lang/String; = ""

.field public static USER_AGENT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-direct {v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfw/i/fbl/Property;->PATH_LIST:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    .line 29
    new-instance v0, Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-direct {v0}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfw/i/fbl/Property;->SERVICE_LIST:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    .line 46
    const-string v0, "foofoo.co.jp#00AA,00BB,00CC"

    invoke-static {v0}, Lcom/felicanetworks/mfw/i/fbl/Property;->add(Ljava/lang/String;)V

    .line 47
    const-string v0, "path2#B,C"

    invoke-static {v0}, Lcom/felicanetworks/mfw/i/fbl/Property;->add(Ljava/lang/String;)V

    .line 48
    const-string v0, "path3#A,C"

    invoke-static {v0}, Lcom/felicanetworks/mfw/i/fbl/Property;->add(Ljava/lang/String;)V

    .line 49
    const-string v0, "idldev.fnrt.jp/start.jsp#12345678,456789aZ"

    invoke-static {v0}, Lcom/felicanetworks/mfw/i/fbl/Property;->add(Ljava/lang/String;)V

    .line 66
    sput-object v3, Lcom/felicanetworks/mfw/i/fbl/Property;->APPLICATION_VERSION:Ljava/lang/String;

    .line 72
    sput-object v3, Lcom/felicanetworks/mfw/i/fbl/Property;->CHIP_ISSUER_ID:Ljava/lang/String;

    .line 136
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    sput-object v0, Lcom/felicanetworks/mfw/i/fbl/Property;->PERM_AREA_FORMAT_VERSIONUP:[B

    .line 157
    sput-object v3, Lcom/felicanetworks/mfw/i/fbl/Property;->FILE_DIR:Ljava/io/File;

    .line 161
    new-instance v0, Lcom/felicanetworks/mfw/i/fbl/Property$1;

    invoke-direct {v0}, Lcom/felicanetworks/mfw/i/fbl/Property$1;-><init>()V

    sput-object v0, Lcom/felicanetworks/mfw/i/fbl/Property;->KEY_SET:Ljava/util/HashMap;

    .line 175
    sput-object v3, Lcom/felicanetworks/mfw/i/fbl/Property;->USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/lang/String;)V
    .locals 7
    .param p0, "rule"    # Ljava/lang/String;

    .prologue
    .line 193
    :try_start_0
    const-string v5, "#"

    invoke-static {p0, v5}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->createSeparated(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "ceparated":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v3, v0, v5

    .line 195
    .local v3, "path":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v0, v5

    const-string v6, ","

    invoke-static {v5, v6}, Lcom/felicanetworks/mfw/i/cmn/StringUtil;->createSeparated(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 200
    .local v4, "services":[Ljava/lang/String;
    :try_start_1
    sget-object v5, Lcom/felicanetworks/mfw/i/fbl/Property;->PATH_LIST:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v5, v3}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->add(Ljava/lang/Object;)V

    .line 201
    sget-object v5, Lcom/felicanetworks/mfw/i/fbl/Property;->SERVICE_LIST:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v5, v4}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->add(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    .end local v0    # "ceparated":[Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "services":[Ljava/lang/String;
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v2

    .local v2, "ignore":Ljava/lang/Exception;
    goto :goto_0

    .line 202
    .end local v2    # "ignore":Ljava/lang/Exception;
    .restart local v0    # "ceparated":[Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "services":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static containUrl(Ljava/lang/String;)Z
    .locals 4
    .param p0, "targetUrl"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {p0}, Lcom/felicanetworks/mfw/i/fbl/Property;->createTargetUrlStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "target":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/felicanetworks/mfw/i/fbl/Property;->PATH_LIST:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 227
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 219
    :cond_0
    sget-object v3, Lcom/felicanetworks/mfw/i/fbl/Property;->PATH_LIST:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v3, v1}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    .local v0, "eachPath":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static containUrlAndService(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "targetUrl"    # Ljava/lang/String;
    .param p1, "targetService"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-static {p0}, Lcom/felicanetworks/mfw/i/fbl/Property;->createTargetUrlStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, "target":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v6, Lcom/felicanetworks/mfw/i/fbl/Property;->PATH_LIST:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v6}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_0

    .line 255
    const/4 v6, 0x0

    :goto_1
    return v6

    .line 241
    :cond_0
    sget-object v6, Lcom/felicanetworks/mfw/i/fbl/Property;->PATH_LIST:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v6, v2}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 242
    .local v0, "eachPath":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 240
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    :cond_2
    sget-object v6, Lcom/felicanetworks/mfw/i/fbl/Property;->SERVICE_LIST:Lcom/felicanetworks/mfw/i/cmn/ArrayList;

    invoke-virtual {v6, v2}, Lcom/felicanetworks/mfw/i/cmn/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 248
    .local v4, "services":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v6, v4

    if-ge v3, v6, :cond_1

    .line 249
    aget-object v1, v4, v3

    .line 250
    .local v1, "eachService":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 251
    const/4 v6, 0x1

    goto :goto_1

    .line 248
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private static createTargetUrlStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "target":Ljava/lang/String;
    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 271
    const-string v1, "http://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 272
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 273
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 281
    :cond_0
    :goto_0
    return-object v0

    .line 275
    :cond_1
    const-string v1, "https://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 276
    const-string v1, "https://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 278
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
