.class public Lcom/vkcoffee/android/api/VKAPIRequest;
.super Lme/grishka/appkit/api/APIRequest;
.source "VKAPIRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lme/grishka/appkit/api/APIRequest;"
    }
.end annotation


# static fields
.field public static final ERROR_ALBUM_ACCESS:I = 0xc8

.field public static final ERROR_ALBUM_FULL:I = 0x12c

.field public static final ERROR_APP_DISABLED:I = 0x2

.field public static final ERROR_AUDIO_ACCESS:I = 0xc9

.field public static final ERROR_BAD_REQUEST:I = 0x8

.field public static final ERROR_BAD_SIGNATURE:I = 0x4

.field public static final ERROR_CALLBACK_EXCEPTION:I = -0x3

.field public static final ERROR_CAPTCHA_NEEDED:I = 0xe

.field public static final ERROR_CONFIRM_REQUIRED:I = 0x18

.field public static final ERROR_FLAG_LOCALIZED:I = 0x40000000

.field public static final ERROR_FLOOD:I = 0x9

.field public static final ERROR_GROUP_ACCESS:I = 0xcb

.field public static final ERROR_HTTPS_REQUIRED:I = 0x10

.field public static final ERROR_INTERNAL:I = 0xa

.field public static final ERROR_IO:I = -0x1

.field public static final ERROR_MALFORMED_RESPONSE:I = -0x2

.field public static final ERROR_METHOD_DISABLED:I = 0x17

.field public static final ERROR_NEED_VALIDATION:I = 0x11

.field public static final ERROR_NOT_FOUND:I = 0x68

.field public static final ERROR_NOT_STANDALONE:I = 0x14

.field public static final ERROR_NO_ACCESS:I = 0xf

.field public static final ERROR_NO_METHOD:I = 0x3

.field public static final ERROR_NO_PERMISSION:I = 0x7

.field public static final ERROR_PARAM:I = 0x64

.field public static final ERROR_TEST_MODE:I = 0xb

.field public static final ERROR_TOO_MANY_REQS:I = 0x6

.field public static final ERROR_UNKNOWN:I = 0x1

.field public static final ERROR_USER_AUTH:I = 0x5

.field public static final ERROR_VIDEO_ALREADY_ADDED:I = 0x320

.field private static final HANDLER_UI:Landroid/os/Handler;

.field private static final hex:[C


# instance fields
.field public background:Z

.field protected callback:Lcom/vkcoffee/android/api/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/api/Callback",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private cancel:Z

.field forceHTTPS:Z

.field httpCall:Lcom/squareup/okhttp/Call;

.field public initTime:J

.field public params:Ljava/util/HashMap;
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

.field public persistent:Z

.field public persistentMethod:Ljava/lang/reflect/Method;

.field public persistentUserData:Lorg/json/JSONObject;

.field public persistentWithToken:Z

.field progressDialog:Landroid/app/ProgressDialog;

.field public uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/vkcoffee/android/api/VKAPIRequest;->HANDLER_UI:Landroid/os/Handler;

    .line 100
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkcoffee/android/api/VKAPIRequest;->hex:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    const/4 v3, 0x0

    .line 88
    invoke-direct {p0}, Lme/grishka/appkit/api/APIRequest;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    .line 76
    iput-boolean v3, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->forceHTTPS:Z

    .line 77
    iput-boolean v3, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->cancel:Z

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->progressDialog:Landroid/app/ProgressDialog;

    .line 82
    iput-boolean v3, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->background:Z

    .line 89
    iget-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    const-string/jumbo v1, "method"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    const-string/jumbo v1, "v"

    const-string/jumbo v2, "5.54"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    const-string/jumbo v1, "lang"

    invoke-static {}, Lcom/vkcoffee/android/Global;->getDeviceLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "useHTTPS"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    const-string/jumbo v1, "https"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    return-void
.end method

.method private static convert([B)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "b"    # [B

    .prologue
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v1, "ret":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v0, p0, v2

    .line 108
    .local v0, "aB":B
    sget-object v4, Lcom/vkcoffee/android/api/VKAPIRequest;->hex:[C

    and-int/lit16 v5, v0, 0xf0

    shr-int/lit8 v5, v5, 0x4

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    sget-object v4, Lcom/vkcoffee/android/api/VKAPIRequest;->hex:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "aB":B
    :cond_0
    return-object v1
.end method

.method public static getValueFromErrorCode(I)I
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 398
    const v0, -0x40000001    # -1.9999999f

    and-int/2addr v0, p0

    return v0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "h"    # Ljava/lang/String;

    .prologue
    .line 116
    :try_start_0
    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 117
    .local v1, "md":Ljava/security/MessageDigest;
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 118
    .local v2, "s":[B
    invoke-static {v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->convert([B)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 122
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "s":[B
    :goto_0
    return-object v3

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    .line 122
    const-string/jumbo v3, ""

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 266
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->cancel:Z

    .line 267
    sget-boolean v0, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v0, :cond_0

    .line 268
    const-string/jumbo v1, "vk"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cancel request "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    const-string/jumbo v3, "method"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->httpCall:Lcom/squareup/okhttp/Call;

    if-eqz v0, :cond_1

    .line 271
    sget-object v0, Lcom/vkcoffee/android/api/APIController;->cancelerThread:Lcom/vkcoffee/android/background/WorkerThread;

    new-instance v1, Lcom/vkcoffee/android/api/VKAPIRequest$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/api/VKAPIRequest$1;-><init>(Lcom/vkcoffee/android/api/VKAPIRequest;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkcoffee/android/background/WorkerThread;->postRunnable(Ljava/lang/Runnable;J)V

    .line 281
    :cond_1
    return-void
.end method

.method protected doExec()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 284
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public exec()Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    invoke-static {p0}, Lcom/vkcoffee/android/api/APIController;->executeRequest(Lcom/vkcoffee/android/api/VKAPIRequest;)V

    .line 200
    return-object p0
.end method

.method public exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 1
    .param p1, "v"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    sget-object v0, Lcom/vkcoffee/android/api/VKAPIRequest;->HANDLER_UI:Landroid/os/Handler;

    iput-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->uiHandler:Landroid/os/Handler;

    .line 211
    invoke-static {p0}, Lcom/vkcoffee/android/api/APIController;->executeRequest(Lcom/vkcoffee/android/api/VKAPIRequest;)V

    .line 212
    return-object p0
.end method

.method public exec(Landroid/os/Looper;)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 1
    .param p1, "v"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            ")",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    sget-object v0, Lcom/vkcoffee/android/api/VKAPIRequest;->HANDLER_UI:Landroid/os/Handler;

    iput-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->uiHandler:Landroid/os/Handler;

    .line 217
    invoke-static {p0}, Lcom/vkcoffee/android/api/APIController;->executeRequest(Lcom/vkcoffee/android/api/VKAPIRequest;)V

    .line 218
    return-object p0
.end method

.method public exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    sget-object v0, Lcom/vkcoffee/android/api/VKAPIRequest;->HANDLER_UI:Landroid/os/Handler;

    iput-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->uiHandler:Landroid/os/Handler;

    .line 205
    invoke-static {p0}, Lcom/vkcoffee/android/api/APIController;->executeRequest(Lcom/vkcoffee/android/api/VKAPIRequest;)V

    .line 206
    return-object p0
.end method

.method public execSync()Z
    .locals 10

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    const/4 v4, 0x0

    .line 222
    invoke-static {p0}, Lcom/vkcoffee/android/api/APIController;->runRequest(Lcom/vkcoffee/android/api/VKAPIRequest;)Lorg/json/JSONObject;

    move-result-object v0

    .line 223
    .local v0, "o":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 224
    new-instance v3, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    const/4 v5, -0x2

    const-string/jumbo v6, "Response parse failed"

    invoke-direct {v3, v5, v6}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->invokeCallback(Ljava/lang/Object;)V

    .line 237
    :goto_0
    return v4

    .line 227
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->parseResponse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    .line 229
    .local v1, "result":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->invokeCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    sget-boolean v3, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v3, :cond_1

    .line 235
    const-string/jumbo v5, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    const-string/jumbo v7, "method"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "] Request done in "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->initTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/vkcoffee/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_1
    if-eqz v1, :cond_2

    instance-of v3, v1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v4, v3

    goto :goto_0

    .line 230
    :catch_0
    move-exception v2

    .line 231
    .local v2, "x":Ljava/lang/Exception;
    new-instance v3, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    const/4 v5, -0x3

    const-string/jumbo v6, "Callback invocation failed (parse error?)"

    invoke-direct {v3, v5, v6}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->invokeCallback(Ljava/lang/Object;)V

    goto :goto_0

    .end local v2    # "x":Ljava/lang/Exception;
    :cond_2
    move v3, v4

    .line 237
    goto :goto_1
.end method

.method public execSyncWithResult()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 241
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    invoke-static {p0}, Lcom/vkcoffee/android/api/APIController;->runRequest(Lcom/vkcoffee/android/api/VKAPIRequest;)Lorg/json/JSONObject;

    move-result-object v0

    .line 242
    .local v0, "o":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    .line 243
    new-instance v1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    const/4 v2, -0x2

    const-string/jumbo v3, "Response parse failed"

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;-><init>(ILjava/lang/String;)V

    .line 249
    :cond_0
    :goto_0
    return-object v1

    .line 245
    :cond_1
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->parseResponse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    .line 246
    .local v1, "result":Ljava/lang/Object;
    sget-boolean v2, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v2, :cond_0

    .line 247
    const-string/jumbo v3, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    const-string/jumbo v5, "method"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "] Request done in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->initTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/vkcoffee/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public forceHTTPS(Z)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 0
    .param p1, "f"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    iput-boolean p1, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->forceHTTPS:Z

    .line 190
    return-object p0
.end method

.method public getSig()Ljava/lang/String;
    .locals 7

    .prologue
    .line 126
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/method/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    const-string/jumbo v6, "method"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "src":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 128
    .local v0, "e":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v2, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 130
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v4, "method"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&"

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public invokeCallback(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 323
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->callback:Lcom/vkcoffee/android/api/Callback;

    if-eqz v0, :cond_0

    .line 324
    instance-of v0, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->callback:Lcom/vkcoffee/android/api/Callback;

    check-cast p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v0, p1}, Lcom/vkcoffee/android/api/Callback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 327
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->callback:Lcom/vkcoffee/android/api/Callback;

    invoke-interface {v0, p1}, Lcom/vkcoffee/android/api/Callback;->success(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 333
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    iget-boolean v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->cancel:Z

    return v0
.end method

.method synthetic lambda$wrapProgress$149(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 343
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->cancel()V

    return-void
.end method

.method public param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    if-eqz p2, :cond_0

    .line 150
    iget-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_0
    return-object p0
.end method

.method public param(Ljava/lang/String;J)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_0
    return-object p0
.end method

.method public param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    if-eqz p2, :cond_0

    .line 143
    iget-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    return-object p0
.end method

.method public params(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "values"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable;",
            ")",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    return-object v0
.end method

.method public params(Ljava/lang/CharSequence;[I)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 6
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[I)",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 177
    .local v0, "firstTime":Z
    array-length v4, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget v1, p2, v3

    .line 178
    .local v1, "i":I
    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 183
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    :cond_0
    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 185
    .end local v1    # "i":I
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v3

    return-object v3
.end method

.method public params(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    return-object v0
.end method

.method public params(Ljava/lang/CharSequence;[Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .param p1, "r"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    return-object p1
.end method

.method parseResponse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 294
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    :try_start_0
    iget-boolean v4, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->cancel:Z

    if-eqz v4, :cond_1

    .line 295
    const/4 v0, 0x0

    .line 318
    :cond_0
    :goto_0
    return-object v0

    .line 297
    :cond_1
    if-nez p1, :cond_2

    .line 298
    new-instance v0, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    const/4 v4, -0x1

    const-string/jumbo v5, "I/O error"

    invoke-direct {v0, v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    invoke-static {v4, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    instance-of v4, v1, Lcom/vkcoffee/android/api/APIException;

    if-eqz v4, :cond_5

    .line 316
    new-instance v0, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    move-object v4, v1

    check-cast v4, Lcom/vkcoffee/android/api/APIException;

    iget v4, v4, Lcom/vkcoffee/android/api/APIException;->code:I

    check-cast v1, Lcom/vkcoffee/android/api/APIException;

    .end local v1    # "x":Ljava/lang/Exception;
    iget-object v5, v1, Lcom/vkcoffee/android/api/APIException;->descr:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_2
    :try_start_1
    const-string/jumbo v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 300
    const-string/jumbo v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "error_text"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 301
    new-instance v0, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    const-string/jumbo v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "error_code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    or-int/2addr v4, v5

    const-string/jumbo v5, "error"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "error_text"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_3
    new-instance v0, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    const-string/jumbo v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "error_code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "error"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "error_msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 305
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 306
    .local v2, "time":J
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    .line 307
    .local v0, "result":Ljava/lang/Object;
    sget-boolean v4, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v4, :cond_0

    .line 308
    const-string/jumbo v5, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->params:Ljava/util/HashMap;

    const-string/jumbo v7, "method"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "] Parse Data: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    goto/16 :goto_0

    .line 318
    .end local v0    # "result":Ljava/lang/Object;
    .end local v2    # "time":J
    .restart local v1    # "x":Ljava/lang/Exception;
    :cond_5
    new-instance v0, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    const/4 v4, -0x2

    const-string/jumbo v5, "Parse error"

    invoke-direct {v0, v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 1
    .param p1, "callback"    # Ljava/lang/reflect/Method;
    .param p2, "userdata"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->persistent:Z

    .line 260
    iput-object p1, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->persistentMethod:Ljava/lang/reflect/Method;

    .line 261
    iput-object p2, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->persistentUserData:Lorg/json/JSONObject;

    .line 262
    return-object p0
.end method

.method public persistWithToken()Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    const/4 v1, 0x0

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->persistentWithToken:Z

    .line 254
    invoke-virtual {p0, v1, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 255
    return-object p0
.end method

.method public setBackground(Z)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 0
    .param p1, "bg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    iput-boolean p1, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->background:Z

    .line 195
    return-object p0
.end method

.method public setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/api/Callback",
            "<-TT;>;)",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    .local p1, "callback":Lcom/vkcoffee/android/api/Callback;, "Lcom/vkcoffee/android/api/Callback<-TT;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->callback:Lcom/vkcoffee/android/api/Callback;

    .line 355
    return-object p0
.end method

.method public wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    const v0, 0x7f080293

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;IZZ)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    return-object v0
.end method

.method public wrapProgress(Landroid/content/Context;IZZ)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strRes"    # I
    .param p3, "cancelable"    # Z
    .param p4, "cancelByClick"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZZ)",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "this":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<TT;>;"
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->progressDialog:Landroid/app/ProgressDialog;

    .line 342
    iget-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-static {p0}, Lcom/vkcoffee/android/api/VKAPIRequest$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/api/VKAPIRequest;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 344
    iget-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 345
    iget-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 346
    iget-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/vkcoffee/android/api/VKAPIRequest;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0202f1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 350
    :cond_0
    return-object p0
.end method
