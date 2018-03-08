.class Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;
.super Lcom/felicanetworks/felica/pushimpl/PushExecutor;
.source "PushIntentExecutor.java"


# static fields
.field private static final BROWSER_CLS:Ljava/lang/String; = "com.android.browser.BrowserActivity"

.field private static final BROWSER_PKG_KEY:Ljava/lang/String; = "00000003"

.field private static final INTENT_KEY:Ljava/lang/String; = "com.felicanetworks.mfc.LaunchPopupActivityData"

.field private static final INTENT_TYPE:Ljava/lang/String; = "com.felicanetworks.mfc.IntentType"

.field private static final INTENT_TYPE_BROWSER:I = 0x2

.field private static final INTENT_TYPE_EXTRAINTENT:I = 0x4

.field private static final INTENT_TYPE_INTENT:I = 0x0

.field private static final INTENT_TYPE_MAILER:I = 0x3

.field private static final INTENT_TYPE_NONE:I = -0x1

.field private static final INTENT_TYPE_STARTAPP:I = 0x1

.field private static final MAIL_INTETNT_TYPE:Ljava/lang/String; = "text/plain"

.field private static final MAIL_MAILTO:Ljava/lang/String; = "mailto:"

.field private static final POPUP_CLS:Ljava/lang/String; = "com.felicanetworks.adhoc.LaunchPopupActivity"

.field private static final PUSH_ID_SCHEME:Ljava/lang/String; = "felicapushid://"

.field private static final START_APP_INTENT_KEY:Ljava/lang/String; = "com.felicanetworks.mfc.FeliCaPushSegmentAppParams"

.field static final URL_SCHEME:[Ljava/lang/String;


# instance fields
.field private BROWSER_PKG:Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private intentType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https"

    aput-object v2, v0, v1

    sput-object v0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->URL_SCHEME:[Ljava/lang/String;

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/felicanetworks/mfc/PushExtraIntentSegment;)V
    .locals 3
    .param p1, "segment"    # Lcom/felicanetworks/mfc/PushExtraIntentSegment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x5

    .line 302
    invoke-direct {p0}, Lcom/felicanetworks/felica/pushimpl/PushExecutor;-><init>()V

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intentType:I

    .line 304
    const-string v0, "%s sgment=%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 306
    invoke-virtual {p1}, Lcom/felicanetworks/mfc/PushExtraIntentSegment;->getIntentData()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    .line 307
    const/4 v0, 0x4

    iput v0, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intentType:I

    .line 309
    iget-object v0, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 311
    const-string v0, "%s sgment=%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 312
    return-void
.end method

.method public constructor <init>(Lcom/felicanetworks/mfc/PushIntentSegment;)V
    .locals 3
    .param p1, "segment"    # Lcom/felicanetworks/mfc/PushIntentSegment;

    .prologue
    const/4 v2, 0x5

    .line 132
    invoke-direct {p0}, Lcom/felicanetworks/felica/pushimpl/PushExecutor;-><init>()V

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intentType:I

    .line 134
    const-string v0, "%s sgment=%s"

    const-string v1, "000"

    invoke-static {v2, v0, v1, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p1}, Lcom/felicanetworks/mfc/PushIntentSegment;->getIntentData()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intentType:I

    .line 138
    iget-object v0, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    iget-object v0, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    const-string v0, "%s sgment=%s"

    const-string v1, "999"

    invoke-static {v2, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/felicanetworks/mfc/PushStartAppSegment;)V
    .locals 13
    .param p1, "segment"    # Lcom/felicanetworks/mfc/PushStartAppSegment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x2

    .line 151
    invoke-direct {p0}, Lcom/felicanetworks/felica/pushimpl/PushExecutor;-><init>()V

    .line 119
    const/4 v8, -0x1

    iput v8, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intentType:I

    .line 153
    const-string v8, "%s sgment=%s"

    const-string v9, "000"

    invoke-static {v12, v8, v9, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    iput-object v8, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    .line 159
    iget-object v8, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p1}, Lcom/felicanetworks/mfc/PushStartAppSegment;->getAppIdentificationCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 167
    .local v4, "chbuf":Ljava/nio/CharBuffer;
    const-string v8, "US-ASCII"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 168
    .local v3, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v6

    .line 169
    .local v6, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v6, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 170
    .local v2, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    new-array v0, v8, [B

    .line 171
    .local v0, "bCode":[B
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v8, v0

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 174
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v0

    if-lt v7, v8, :cond_0

    .line 177
    iget-object v8, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "felicapushid://"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 179
    iget-object v8, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    const-string v9, "com.felicanetworks.mfc.FeliCaPushSegmentAppParams"

    invoke-virtual {p1}, Lcom/felicanetworks/mfc/PushStartAppSegment;->getAppStartupParam()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const/4 v8, 0x1

    iput v8, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intentType:I

    .line 183
    iget-object v8, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    iget-object v8, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    const/high16 v9, 0x4000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    const-string v8, "%s sgment=%s"

    const-string v9, "999"

    invoke-static {v12, v8, v9}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 195
    return-void

    .line 175
    :cond_0
    :try_start_1
    aget-byte v8, v0, v7

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "bCode":[B
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v3    # "charset":Ljava/nio/charset/Charset;
    .end local v4    # "chbuf":Ljava/nio/CharBuffer;
    .end local v6    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .end local v7    # "i":I
    :catch_0
    move-exception v5

    .line 187
    .local v5, "e":Ljava/lang/NullPointerException;
    const-string v8, "%s message=%s"

    const-string v9, "700"

    invoke-virtual {v5}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    new-instance v8, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    invoke-virtual {v5}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v11, v9}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 189
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v5

    .line 191
    .local v5, "e":Ljava/lang/Exception;
    const-string v8, "%s message=%s"

    const-string v9, "701"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v8, v9, v10}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    new-instance v8, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public constructor <init>(Lcom/felicanetworks/mfc/PushStartBrowserSegment;)V
    .locals 7
    .param p1, "segment"    # Lcom/felicanetworks/mfc/PushStartBrowserSegment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x5

    const/4 v6, 0x2

    .line 204
    invoke-direct {p0}, Lcom/felicanetworks/felica/pushimpl/PushExecutor;-><init>()V

    .line 119
    const/4 v3, -0x1

    iput v3, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intentType:I

    .line 206
    const-string v3, "%s sgment=%s"

    const-string v4, "000"

    invoke-static {v5, v3, v4, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iput-object v3, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    .line 211
    invoke-static {}, Lcom/felicanetworks/felica/util/CommonConfig;->getInstance()Lcom/felicanetworks/felica/util/CommonConfig;

    move-result-object v3

    const-string v4, "00000003"

    invoke-virtual {v3, v4}, Lcom/felicanetworks/felica/util/CommonConfig;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->BROWSER_PKG:Ljava/lang/String;

    .line 212
    iget-object v3, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->BROWSER_PKG:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 213
    const/4 v3, 0x2

    const-string v4, "%s : BROWSER_PKG == null"

    const-string v5, "700"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 214
    new-instance v3, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v4, 0x1

    .line 215
    const-string v5, "BROWSER_PKG == null"

    .line 214
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "%s message=%s"

    const-string v4, "702"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    new-instance v3, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 219
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 220
    .local v1, "url":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "urlScheme":Ljava/lang/String;
    sget-object v3, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->URL_SCHEME:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 222
    sget-object v3, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->URL_SCHEME:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 223
    const/4 v3, 0x2

    const-string v4, "%s : URL SCHME NOT SUPPORTED"

    const-string v5, "701"

    invoke-static {v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 224
    new-instance v3, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v4, 0x1

    .line 225
    const-string v5, "URL SCHME NOT SUPPORTED"

    .line 224
    invoke-direct {v3, v4, v5}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    .end local v1    # "url":Landroid/net/Uri;
    .end local v2    # "urlScheme":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "%s message=%s"

    const-string v4, "703"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v3, v4, v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 247
    new-instance v3, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "url":Landroid/net/Uri;
    .restart local v2    # "urlScheme":Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v3, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    const-string v4, "android.intent.category.BROWSABLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    iget-object v3, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 232
    iget-object v3, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 236
    iget-object v3, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->BROWSER_PKG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object v3, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/felicanetworks/mfc/PushStartBrowserSegment;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 239
    const/4 v3, 0x2

    iput v3, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intentType:I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 249
    const-string v3, "%s sgment=%s"

    const-string v4, "999"

    invoke-static {v5, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 250
    return-void
.end method

.method public constructor <init>(Lcom/felicanetworks/mfc/PushStartMailerSegment;)V
    .locals 7
    .param p1, "segment"    # Lcom/felicanetworks/mfc/PushStartMailerSegment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    .line 259
    invoke-direct {p0}, Lcom/felicanetworks/felica/pushimpl/PushExecutor;-><init>()V

    .line 119
    const/4 v2, -0x1

    iput v2, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intentType:I

    .line 261
    const-string v2, "%s sgment=%s"

    const-string v3, "000"

    invoke-static {v6, v2, v3, p1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    .line 267
    iget-object v2, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    iget-object v2, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    iget-object v2, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.EMAIL"

    invoke-virtual {p1}, Lcom/felicanetworks/mfc/PushStartMailerSegment;->getToAddress()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    iget-object v2, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.CC"

    invoke-virtual {p1}, Lcom/felicanetworks/mfc/PushStartMailerSegment;->getCcAddress()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v2, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {p1}, Lcom/felicanetworks/mfc/PushStartMailerSegment;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/felicanetworks/mfc/PushStartMailerSegment;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, "csBody":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 280
    const/4 v2, 0x3

    iput v2, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intentType:I

    .line 282
    iget-object v2, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 283
    iget-object v2, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 293
    const-string v2, "%s sgment=%s"

    const-string v3, "999"

    invoke-static {v6, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 294
    return-void

    .line 285
    .end local v0    # "csBody":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "%s message=%s"

    const-string v3, "700"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    new-instance v2, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 288
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "%s message=%s"

    const-string v3, "701"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v2, v3, v4}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 291
    new-instance v2, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public execute(Lcom/felicanetworks/mfc/Felica;Landroid/content/Context;)V
    .locals 10
    .param p1, "felica"    # Lcom/felicanetworks/mfc/Felica;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/felicanetworks/felica/pushimpl/PushImplException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x5

    const/4 v0, 0x2

    .line 326
    const-string v1, "%s sgment=%s contect = %s"

    const-string v2, "000"

    invoke-static {v9, v1, v2, p1, p2}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 330
    :try_start_0
    invoke-virtual {p1}, Lcom/felicanetworks/mfc/Felica;->checkOpened()V

    .line 333
    invoke-virtual {p1}, Lcom/felicanetworks/mfc/Felica;->isAliveProcess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    const/4 v1, 0x7

    const-string v2, "%s"

    const-string v3, "001"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 337
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/felicanetworks/mfc/Felica;->doCloseNoReset(Z)V

    .line 339
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/felicanetworks/mfc/Felica;->doInactivateFelica(Z)V
    :try_end_0
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    :try_start_1
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 358
    .local v8, "popupIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.felicanetworks.adhoc.LaunchPopupActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 364
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 365
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v1, "com.felicanetworks.mfc.LaunchPopupActivityData"

    iget-object v2, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 366
    const-string v1, "com.felicanetworks.mfc.LaunchPopupActivityData"

    invoke-virtual {v8, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 367
    const-string v1, "com.felicanetworks.mfc.IntentType"

    iget v2, p0, Lcom/felicanetworks/felica/pushimpl/PushIntentExecutor;->intentType:I

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    const/high16 v1, 0x10000000

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 370
    invoke-virtual {p2, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 383
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v8    # "popupIntent":Landroid/content/Intent;
    :goto_1
    const-string v0, "%s"

    const-string v1, "999"

    invoke-static {v9, v0, v1}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 384
    return-void

    .line 343
    :cond_0
    const/4 v1, 0x2

    :try_start_2
    const-string v2, "%s"

    const-string v3, "701"

    invoke-static {v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;)V

    .line 344
    new-instance v1, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    const/4 v2, 0x5

    .line 345
    const-string v3, "Activated App exists."

    .line 344
    invoke-direct {v1, v2, v3}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/felicanetworks/mfc/FelicaException; {:try_start_2 .. :try_end_2} :catch_0

    .line 348
    :catch_0
    move-exception v7

    .line 349
    .local v7, "e":Lcom/felicanetworks/mfc/FelicaException;
    const-string v1, "%s : id = %d type = %d message = %s"

    const-string v2, "700"

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 350
    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7}, Lcom/felicanetworks/mfc/FelicaException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 349
    invoke-static/range {v0 .. v5}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 372
    .end local v7    # "e":Lcom/felicanetworks/mfc/FelicaException;
    :catch_1
    move-exception v7

    .line 374
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "%s message=%s"

    const-string v2, "703"

    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 375
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :catch_2
    move-exception v7

    .line 376
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v1, "%s message=%s"

    const-string v2, "704"

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 377
    new-instance v1, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 378
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v7

    .line 380
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "%s message=%s"

    const-string v2, "705"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/felicanetworks/mfc/util/LogMgr;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 381
    new-instance v0, Lcom/felicanetworks/felica/pushimpl/PushImplException;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/felicanetworks/felica/pushimpl/PushImplException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
