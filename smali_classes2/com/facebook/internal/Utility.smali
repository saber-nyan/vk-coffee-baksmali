.class public final Lcom/facebook/internal/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;,
        Lcom/facebook/internal/Utility$Mapper;,
        Lcom/facebook/internal/Utility$Predicate;,
        Lcom/facebook/internal/Utility$DialogFeatureConfig;,
        Lcom/facebook/internal/Utility$FetchedAppSettings;
    }
.end annotation


# static fields
.field private static final APPLICATION_FIELDS:Ljava/lang/String; = "fields"

.field private static final APP_SETTINGS_PREFS_KEY_FORMAT:Ljava/lang/String; = "com.facebook.internal.APP_SETTINGS.%s"

.field private static final APP_SETTINGS_PREFS_STORE:Ljava/lang/String; = "com.facebook.internal.preferences.APP_SETTINGS"

.field private static final APP_SETTING_ANDROID_SDK_ERROR_CATEGORIES:Ljava/lang/String; = "android_sdk_error_categories"

.field private static final APP_SETTING_DIALOG_CONFIGS:Ljava/lang/String; = "android_dialog_configs"

.field private static final APP_SETTING_FIELDS:[Ljava/lang/String;

.field private static final APP_SETTING_NUX_CONTENT:Ljava/lang/String; = "gdpv4_nux_content"

.field private static final APP_SETTING_NUX_ENABLED:Ljava/lang/String; = "gdpv4_nux_enabled"

.field private static final APP_SETTING_SUPPORTS_IMPLICIT_SDK_LOGGING:Ljava/lang/String; = "supports_implicit_sdk_logging"

.field public static final DEFAULT_STREAM_BUFFER_SIZE:I = 0x2000

.field private static final DIALOG_CONFIG_DIALOG_NAME_FEATURE_NAME_SEPARATOR:Ljava/lang/String; = "\\|"

.field private static final DIALOG_CONFIG_NAME_KEY:Ljava/lang/String; = "name"

.field private static final DIALOG_CONFIG_URL_KEY:Ljava/lang/String; = "url"

.field private static final DIALOG_CONFIG_VERSIONS_KEY:Ljava/lang/String; = "versions"

.field private static final EXTRA_APP_EVENTS_INFO_FORMAT_VERSION:Ljava/lang/String; = "a2"

.field private static final GINGERBREAD_MR1:I = 0xa

.field private static final HASH_ALGORITHM_MD5:Ljava/lang/String; = "MD5"

.field private static final HASH_ALGORITHM_SHA1:Ljava/lang/String; = "SHA-1"

.field static final LOG_TAG:Ljava/lang/String; = "FacebookSDK"

.field private static final REFRESH_TIME_FOR_EXTENDED_DEVICE_INFO_MILLIS:I = 0x1b7740

.field private static final URL_SCHEME:Ljava/lang/String; = "https"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static availableExternalStorageGB:J = 0x0L

.field private static carrierName:Ljava/lang/String; = null

.field private static deviceTimezone:Ljava/lang/String; = null

.field private static fetchedAppSettings:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/Utility$FetchedAppSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field private static final noCarrierConstant:Ljava/lang/String; = "NoCarrier"

.field private static numCPUCores:I

.field private static timestampOfLastCheck:J

.field private static totalExternalStorageGB:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 99
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "supports_implicit_sdk_logging"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "gdpv4_nux_content"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "gdpv4_nux_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "android_dialog_configs"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "android_sdk_error_categories"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/internal/Utility;->APP_SETTING_FIELDS:[Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/Utility;->fetchedAppSettings:Ljava/util/Map;

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/internal/Utility;->loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 124
    sput v3, Lcom/facebook/internal/Utility;->numCPUCores:I

    .line 126
    sput-wide v4, Lcom/facebook/internal/Utility;->timestampOfLastCheck:J

    .line 127
    sput-wide v4, Lcom/facebook/internal/Utility;->totalExternalStorageGB:J

    .line 128
    sput-wide v4, Lcom/facebook/internal/Utility;->availableExternalStorageGB:J

    .line 129
    const-string/jumbo v0, ""

    sput-object v0, Lcom/facebook/internal/Utility;->deviceTimezone:Ljava/lang/String;

    .line 130
    const-string/jumbo v0, "NoCarrier"

    sput-object v0, Lcom/facebook/internal/Utility;->carrierName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/Utility$FetchedAppSettings;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/facebook/internal/Utility;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/Utility$FetchedAppSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/facebook/internal/Utility;->loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 743
    .local p0, "a":Ljava/lang/Object;, "TT;"
    .local p1, "b":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_1

    .line 744
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 746
    :goto_0
    return v0

    .line 744
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 746
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs arrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 401
    .local p0, "ts":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 402
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    .line 403
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 405
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v0
.end method

.method public static varargs asListNoNulls([Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 948
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 949
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p0, v2

    .line 950
    .local v1, "t":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_0

    .line 951
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 954
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object v0
.end method

.method public static awaitGetGraphMeRequestWithCache(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 1286
    invoke-static {p0}, Lcom/facebook/internal/ProfileInformationCache;->getProfileInformation(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1287
    .local v0, "cachedValue":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 1297
    .end local v0    # "cachedValue":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 1291
    .restart local v0    # "cachedValue":Lorg/json/JSONObject;
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getGraphMeRequestWithCache(Ljava/lang/String;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 1292
    .local v1, "graphRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v2

    .line 1293
    .local v2, "response":Lcom/facebook/GraphResponse;
    invoke-virtual {v2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1294
    const/4 v0, 0x0

    goto :goto_0

    .line 1297
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public static buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 5
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 454
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 455
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v3, "https"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 456
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 457
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 458
    if-eqz p2, :cond_1

    .line 459
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 460
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 461
    .local v2, "parameter":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 462
    check-cast v2, Ljava/lang/String;

    .end local v2    # "parameter":Ljava/lang/Object;
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 466
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static clearCaches(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 931
    invoke-static {p0}, Lcom/facebook/internal/ImageDownloader;->clearCache(Landroid/content/Context;)V

    .line 932
    return-void
.end method

.method private static clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 692
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v6

    .line 693
    .local v6, "syncManager":Landroid/webkit/CookieSyncManager;
    invoke-virtual {v6}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 695
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 697
    .local v1, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v1, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 698
    .local v3, "cookies":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 712
    :goto_0
    return-void

    .line 702
    :cond_0
    const-string/jumbo v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 703
    .local v5, "splitCookies":[Ljava/lang/String;
    array-length v9, v5

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_2

    aget-object v0, v5, v7

    .line 704
    .local v0, "cookie":Ljava/lang/String;
    const-string/jumbo v10, "="

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 705
    .local v2, "cookieParts":[Ljava/lang/String;
    array-length v10, v2

    if-lez v10, :cond_1

    .line 706
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v2, v8

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 708
    .local v4, "newCookie":Ljava/lang/String;
    invoke-virtual {v1, p1, v4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    .end local v4    # "newCookie":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 711
    .end local v0    # "cookie":Ljava/lang/String;
    .end local v2    # "cookieParts":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    goto :goto_0
.end method

.method public static clearFacebookCookies(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 718
    const-string/jumbo v0, "facebook.com"

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 719
    const-string/jumbo v0, ".facebook.com"

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 720
    const-string/jumbo v0, "https://facebook.com"

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 721
    const-string/jumbo v0, "https://.facebook.com"

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 722
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 555
    if-eqz p0, :cond_0

    .line 556
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 558
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "valueIfNullOrEmpty"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-static {p0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    .end local p1    # "valueIfNullOrEmpty":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "valueIfNullOrEmpty":Ljava/lang/String;
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method private static convertBytesToGB(D)J
    .locals 2
    .param p0, "bytes"    # D

    .prologue
    .line 1422
    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    div-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method static convertJSONObjectToHashMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 579
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    .line 580
    .local v2, "keys":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 583
    :try_start_0
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 585
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_0

    .line 586
    check-cast v4, Lorg/json/JSONObject;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-static {v4}, Lcom/facebook/internal/Utility;->convertJSONObjectToHashMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    .line 588
    :cond_0
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    .end local v1    # "key":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 592
    :cond_1
    return-object v3

    .line 589
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static copyAndCloseInputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 650
    const/4 v1, 0x0

    .line 651
    .local v1, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 653
    .local v4, "totalBytes":I
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v2, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/16 v5, 0x2000

    :try_start_1
    new-array v0, v5, [B

    .line 657
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    .local v3, "bytesRead":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 658
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 659
    add-int/2addr v4, v3

    goto :goto_0

    .line 662
    :cond_0
    if-eqz v2, :cond_1

    .line 663
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 665
    :cond_1
    if-eqz p0, :cond_2

    .line 666
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 670
    :cond_2
    return v4

    .line 662
    .end local v0    # "buffer":[B
    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v3    # "bytesRead":I
    .restart local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v5

    :goto_1
    if-eqz v1, :cond_3

    .line 663
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 665
    :cond_3
    if-eqz p0, :cond_4

    .line 666
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_4
    throw v5

    .line 662
    .end local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .locals 4
    .param p0, "directoryOrFile"    # Ljava/io/File;

    .prologue
    .line 935
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 945
    :goto_0
    return-void

    .line 939
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 940
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 941
    .local v0, "child":Ljava/io/File;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->deleteDirectory(Ljava/io/File;)V

    .line 940
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 944
    .end local v0    # "child":Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static disconnectQuietly(Ljava/net/URLConnection;)V
    .locals 1
    .param p0, "connection"    # Ljava/net/URLConnection;

    .prologue
    .line 564
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 565
    check-cast p0, Ljava/net/HttpURLConnection;

    .end local p0    # "connection":Ljava/net/URLConnection;
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 567
    :cond_0
    return-void
.end method

.method private static externalStorageExists()Z
    .locals 2

    .prologue
    .line 1386
    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static filter(Ljava/util/List;Lcom/facebook/internal/Utility$Predicate;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/facebook/internal/Utility$Predicate",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "predicate":Lcom/facebook/internal/Utility$Predicate;, "Lcom/facebook/internal/Utility$Predicate<TT;>;"
    const/4 v2, 0x0

    .line 1129
    if-nez p0, :cond_0

    .line 1138
    :goto_0
    return-object v2

    .line 1132
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1133
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1134
    .local v0, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Lcom/facebook/internal/Utility$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1135
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1138
    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    move-object v1, v2

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_3
    move-object v2, v1

    goto :goto_0
.end method

.method public static getActivityName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1115
    if-nez p0, :cond_0

    .line 1116
    const-string/jumbo v0, "null"

    .line 1120
    :goto_0
    return-object v0

    .line 1117
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 1118
    const-string/jumbo v0, "unknown"

    goto :goto_0

    .line 1120
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "applicationId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 861
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 862
    .local v0, "appSettingsParams":Landroid/os/Bundle;
    const-string/jumbo v2, "fields"

    const-string/jumbo v3, ","

    sget-object v4, Lcom/facebook/internal/Utility;->APP_SETTING_FIELDS:[Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-static {v5, p0, v5}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 865
    .local v1, "request":Lcom/facebook/GraphRequest;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 866
    invoke-virtual {v1, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 868
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    return-object v2
.end method

.method public static getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/Utility$FetchedAppSettings;
    .locals 1
    .param p0, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 813
    if-eqz p0, :cond_0

    sget-object v0, Lcom/facebook/internal/Utility;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/Utility$FetchedAppSettings;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 10
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dateBase"    # Ljava/util/Date;

    .prologue
    const/4 v4, 0x0

    .line 1196
    if-nez p0, :cond_1

    .line 1218
    :cond_0
    :goto_0
    return-object v4

    .line 1200
    :cond_1
    const-wide/high16 v2, -0x8000000000000000L

    .line 1202
    .local v2, "secondsFromBase":J
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1203
    .local v1, "secondsObject":Ljava/lang/Object;
    instance-of v5, v1, Ljava/lang/Long;

    if-eqz v5, :cond_2

    .line 1204
    check-cast v1, Ljava/lang/Long;

    .end local v1    # "secondsObject":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1215
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    .line 1216
    new-instance v4, Ljava/util/Date;

    const-wide v6, 0x7fffffffffffffffL

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 1205
    .restart local v1    # "secondsObject":Ljava/lang/Object;
    :cond_2
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1207
    :try_start_0
    check-cast v1, Ljava/lang/String;

    .end local v1    # "secondsObject":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_1

    .line 1208
    :catch_0
    move-exception v0

    .line 1209
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 1218
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    new-instance v4, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v2

    add-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public static getContentSize(Landroid/net/Uri;)J
    .locals 8
    .param p0, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 1178
    const/4 v6, 0x0

    .line 1181
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1182
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    .line 1183
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1184
    const-string/jumbo v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1186
    .local v7, "sizeIndex":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1187
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1189
    if-eqz v6, :cond_0

    .line 1190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v0

    .line 1189
    .end local v7    # "sizeIndex":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 1190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public static getDialogFeatureConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/Utility$DialogFeatureConfig;
    .locals 4
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "featureName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 875
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 887
    :cond_0
    :goto_0
    return-object v2

    .line 879
    :cond_1
    sget-object v3, Lcom/facebook/internal/Utility;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/internal/Utility$FetchedAppSettings;

    .line 880
    .local v1, "settings":Lcom/facebook/internal/Utility$FetchedAppSettings;
    if-eqz v1, :cond_0

    .line 882
    invoke-virtual {v1}, Lcom/facebook/internal/Utility$FetchedAppSettings;->getDialogConfigurations()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 883
    .local v0, "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/Utility$DialogFeatureConfig;>;"
    if-eqz v0, :cond_0

    .line 884
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/internal/Utility$DialogFeatureConfig;

    goto :goto_0
.end method

.method private static getGraphMeRequestWithCache(Ljava/lang/String;)Lcom/facebook/GraphRequest;
    .locals 6
    .param p0, "accessToken"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1302
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1303
    .local v3, "parameters":Landroid/os/Bundle;
    const-string/jumbo v2, "fields"

    const-string/jumbo v4, "id,name,first_name,middle_name,last_name,link"

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    const-string/jumbo v2, "access_token"

    invoke-virtual {v3, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string/jumbo v2, "me"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 1311
    .local v0, "graphRequest":Lcom/facebook/GraphRequest;
    return-object v0
.end method

.method public static getGraphMeRequestWithCacheAsync(Ljava/lang/String;Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;)V
    .locals 3
    .param p0, "accessToken"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;

    .prologue
    .line 1260
    invoke-static {p0}, Lcom/facebook/internal/ProfileInformationCache;->getProfileInformation(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1261
    .local v0, "cachedValue":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 1262
    invoke-interface {p1, v0}, Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;->onSuccess(Lorg/json/JSONObject;)V

    .line 1282
    :goto_0
    return-void

    .line 1266
    :cond_0
    new-instance v1, Lcom/facebook/internal/Utility$2;

    invoke-direct {v1, p1, p0}, Lcom/facebook/internal/Utility$2;-><init>(Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;Ljava/lang/String;)V

    .line 1279
    .local v1, "graphCallback":Lcom/facebook/GraphRequest$Callback;
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getGraphMeRequestWithCache(Ljava/lang/String;)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 1280
    .local v2, "graphRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v2, v1}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    .line 1281
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    goto :goto_0
.end method

.method public static getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 570
    const-string/jumbo v0, "context"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 574
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1082
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1084
    :goto_0
    return-object v1

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 1093
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1094
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p2}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1096
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 1095
    :catch_0
    move-exception v1

    .line 1096
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "nonJSONPropertyKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 602
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 603
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 604
    new-instance v0, Lorg/json/JSONTokener;

    check-cast v1, Ljava/lang/String;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 605
    .local v0, "tokener":Lorg/json/JSONTokener;
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 608
    .end local v0    # "tokener":Lorg/json/JSONTokener;
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    if-eqz v1, :cond_2

    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_2

    instance-of v2, v1, Lorg/json/JSONArray;

    if-nez v2, :cond_2

    .line 609
    if-eqz p2, :cond_1

    .line 614
    new-instance p0, Lorg/json/JSONObject;

    .end local p0    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 615
    .restart local p0    # "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p0, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 622
    .end local p0    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object p0

    .line 618
    .restart local p0    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    new-instance v2, Lcom/facebook/FacebookException;

    const-string/jumbo v3, "Got an unexpected non-JSON object."

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object p0, v1

    .line 622
    goto :goto_0
.end method

.method public static getUriString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1160
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static hasSameId(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 4
    .param p0, "a"    # Lorg/json/JSONObject;
    .param p1, "b"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 750
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v3, "id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 761
    :cond_0
    :goto_0
    return v2

    .line 753
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 754
    const/4 v2, 0x1

    goto :goto_0

    .line 756
    :cond_2
    const-string/jumbo v3, "id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "idA":Ljava/lang/String;
    const-string/jumbo v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 758
    .local v1, "idB":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 761
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private static hashBytes(Ljava/security/MessageDigest;[B)Ljava/lang/String;
    .locals 6
    .param p0, "hash"    # Ljava/security/MessageDigest;
    .param p1, "bytes"    # [B

    .prologue
    .line 443
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 444
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 445
    .local v2, "digest":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .local v1, "builder":Ljava/lang/StringBuilder;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v0, v2, v3

    .line 447
    .local v0, "b":I
    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    shr-int/lit8 v5, v0, 0x0

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 450
    .end local v0    # "b":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static varargs hashSet([Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/HashSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 409
    .local p0, "ts":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/HashSet;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 410
    .local v0, "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<TT;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    .line 411
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v0
.end method

.method private static hashWithAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 429
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->hashWithAlgorithm(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hashWithAlgorithm(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "bytes"    # [B

    .prologue
    .line 435
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 439
    .local v1, "hash":Ljava/security/MessageDigest;
    invoke-static {v1, p1}, Lcom/facebook/internal/Utility;->hashBytes(Ljava/security/MessageDigest;[B)Ljava/lang/String;

    move-result-object v2

    .end local v1    # "hash":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static intersectRanges([I[I)[I
    .locals 13
    .param p0, "range1"    # [I
    .param p1, "range2"    # [I

    .prologue
    .line 287
    if-nez p0, :cond_0

    .line 351
    .end local p1    # "range2":[I
    :goto_0
    return-object p1

    .line 289
    .restart local p1    # "range2":[I
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 290
    goto :goto_0

    .line 293
    :cond_1
    array-length v11, p0

    array-length v12, p1

    add-int/2addr v11, v12

    new-array v8, v11, [I

    .line 294
    .local v8, "outputRange":[I
    const/4 v6, 0x0

    .line 295
    .local v6, "outputIndex":I
    const/4 v0, 0x0

    .line 296
    .local v0, "index1":I
    const/4 v1, 0x0

    .line 297
    .local v1, "index2":I
    :cond_2
    :goto_1
    array-length v11, p0

    if-ge v0, v11, :cond_b

    array-length v11, p1

    if-ge v1, v11, :cond_b

    .line 298
    const/high16 v4, -0x80000000

    .local v4, "newRangeLower":I
    const v5, 0x7fffffff

    .line 299
    .local v5, "newRangeUpper":I
    aget v2, p0, v0

    .line 300
    .local v2, "lower1":I
    const v9, 0x7fffffff

    .line 302
    .local v9, "upper1":I
    aget v3, p1, v1

    .line 303
    .local v3, "lower2":I
    const v10, 0x7fffffff

    .line 305
    .local v10, "upper2":I
    array-length v11, p0

    add-int/lit8 v11, v11, -0x1

    if-ge v0, v11, :cond_3

    .line 306
    add-int/lit8 v11, v0, 0x1

    aget v9, p0, v11

    .line 308
    :cond_3
    array-length v11, p1

    add-int/lit8 v11, v11, -0x1

    if-ge v1, v11, :cond_4

    .line 309
    add-int/lit8 v11, v1, 0x1

    aget v10, p1, v11

    .line 312
    :cond_4
    if-ge v2, v3, :cond_7

    .line 313
    if-le v9, v3, :cond_6

    .line 314
    move v4, v3

    .line 315
    if-le v9, v10, :cond_5

    .line 316
    move v5, v10

    .line 317
    add-int/lit8 v1, v1, 0x2

    .line 340
    :goto_2
    const/high16 v11, -0x80000000

    if-eq v4, v11, :cond_2

    .line 341
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outputIndex":I
    .local v7, "outputIndex":I
    aput v4, v8, v6

    .line 342
    const v11, 0x7fffffff

    if-eq v5, v11, :cond_a

    .line 343
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outputIndex":I
    .restart local v6    # "outputIndex":I
    aput v5, v8, v7

    goto :goto_1

    .line 319
    :cond_5
    move v5, v9

    .line 320
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 323
    :cond_6
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 326
    :cond_7
    if-le v10, v2, :cond_9

    .line 327
    move v4, v2

    .line 328
    if-le v10, v9, :cond_8

    .line 329
    move v5, v9

    .line 330
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 332
    :cond_8
    move v5, v10

    .line 333
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 336
    :cond_9
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .end local v6    # "outputIndex":I
    .restart local v7    # "outputIndex":I
    :cond_a
    move v6, v7

    .line 351
    .end local v2    # "lower1":I
    .end local v3    # "lower2":I
    .end local v4    # "newRangeLower":I
    .end local v5    # "newRangeUpper":I
    .end local v7    # "outputIndex":I
    .end local v9    # "upper1":I
    .end local v10    # "upper2":I
    .restart local v6    # "outputIndex":I
    :cond_b
    invoke-static {v8, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    goto :goto_0
.end method

.method public static varargs invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1102
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1106
    :goto_0
    return-object v1

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 1105
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 1106
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0
.end method

.method public static isContentUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1170
    if-eqz p0, :cond_0

    const-string/jumbo v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCurrentAccessToken(Lcom/facebook/AccessToken;)Z
    .locals 1
    .param p0, "token"    # Lcom/facebook/AccessToken;

    .prologue
    .line 1248
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/AccessToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFileUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1174
    if-eqz p0, :cond_0

    const-string/jumbo v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 376
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNullOrEmpty(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSubset(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "subset":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "superset":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 358
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 359
    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v2, v3

    .line 368
    :cond_2
    :goto_0
    return v2

    .line 362
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 363
    .local v0, "hash":Ljava/util/HashSet;, "Ljava/util/HashSet<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 364
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_5
    move v2, v3

    .line 368
    goto :goto_0
.end method

.method public static isWebUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1164
    if-eqz p0, :cond_1

    const-string/jumbo v0, "http"

    .line 1165
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https"

    .line 1166
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static jsonArrayToSet(Lorg/json/JSONArray;)Ljava/util/Set;
    .locals 3
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 968
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 969
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 970
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 969
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 973
    :cond_0
    return-object v1
.end method

.method public static jsonArrayToStringList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 958
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 960
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 961
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 964
    :cond_0
    return-object v1
.end method

.method public static loadAppSettingsAsync(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 768
    sget-object v2, Lcom/facebook/internal/Utility;->loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 769
    .local v0, "canStartLoading":Z
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/facebook/internal/Utility;->fetchedAppSettings:Ljava/util/Map;

    .line 770
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    const-string/jumbo v2, "com.facebook.internal.APP_SETTINGS.%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 777
    .local v1, "settingsKey":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/facebook/internal/Utility$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/facebook/internal/Utility$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 725
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_0
    return-void
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 731
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 732
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_0
    return-void
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 737
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 740
    :cond_0
    return-void
.end method

.method public static map(Ljava/util/List;Lcom/facebook/internal/Utility$Mapper;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/facebook/internal/Utility$Mapper",
            "<TT;TK;>;)",
            "Ljava/util/List",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "mapper":Lcom/facebook/internal/Utility$Mapper;, "Lcom/facebook/internal/Utility$Mapper<TT;TK;>;"
    const/4 v3, 0x0

    .line 1146
    if-nez p0, :cond_0

    .line 1156
    :goto_0
    return-object v3

    .line 1149
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1150
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TK;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1151
    .local v0, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Lcom/facebook/internal/Utility$Mapper;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1152
    .local v2, "mappedItem":Ljava/lang/Object;, "TK;"
    if-eqz v2, :cond_1

    .line 1153
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1156
    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    .end local v2    # "mappedItem":Ljava/lang/Object;, "TK;"
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    move-object v1, v3

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TK;>;"
    :cond_3
    move-object v3, v1

    goto :goto_0
.end method

.method public static md5hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 417
    const-string/jumbo v0, "MD5"

    invoke-static {v0, p0}, Lcom/facebook/internal/Utility;->hashWithAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/Utility$FetchedAppSettings;
    .locals 8
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "settingsJSON"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 837
    const-string/jumbo v1, "android_sdk_error_categories"

    .line 838
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 839
    .local v7, "errorClassificationJSON":Lorg/json/JSONArray;
    if-nez v7, :cond_0

    .line 841
    invoke-static {}, Lcom/facebook/internal/FacebookRequestErrorClassification;->getDefaultErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v5

    .line 845
    .local v5, "errorClassification":Lcom/facebook/internal/FacebookRequestErrorClassification;
    :goto_0
    new-instance v0, Lcom/facebook/internal/Utility$FetchedAppSettings;

    const-string/jumbo v1, "supports_implicit_sdk_logging"

    .line 846
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v2, "gdpv4_nux_content"

    const-string/jumbo v3, ""

    .line 847
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "gdpv4_nux_enabled"

    .line 848
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v4, "android_dialog_configs"

    .line 849
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/internal/Utility;->parseDialogConfigurations(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/internal/Utility$FetchedAppSettings;-><init>(ZLjava/lang/String;ZLjava/util/Map;Lcom/facebook/internal/FacebookRequestErrorClassification;Lcom/facebook/internal/Utility$1;)V

    .line 853
    .local v0, "result":Lcom/facebook/internal/Utility$FetchedAppSettings;
    sget-object v1, Lcom/facebook/internal/Utility;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    return-object v0

    .line 842
    .end local v0    # "result":Lcom/facebook/internal/Utility$FetchedAppSettings;
    .end local v5    # "errorClassification":Lcom/facebook/internal/FacebookRequestErrorClassification;
    :cond_0
    invoke-static {v7}, Lcom/facebook/internal/FacebookRequestErrorClassification;->createFromJSON(Lorg/json/JSONArray;)Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v5

    goto :goto_0
.end method

.method private static parseDialogConfigurations(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 7
    .param p0, "dialogConfigResponse"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/Utility$DialogFeatureConfig;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 892
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 894
    .local v2, "dialogConfigMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/Utility$DialogFeatureConfig;>;>;"
    if-eqz p0, :cond_2

    .line 895
    const-string/jumbo v6, "data"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 896
    .local v1, "dialogConfigData":Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    .line 897
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 899
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 898
    invoke-static {v6}, Lcom/facebook/internal/Utility$DialogFeatureConfig;->access$400(Lorg/json/JSONObject;)Lcom/facebook/internal/Utility$DialogFeatureConfig;

    move-result-object v0

    .line 900
    .local v0, "dialogConfig":Lcom/facebook/internal/Utility$DialogFeatureConfig;
    if-nez v0, :cond_0

    .line 897
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 904
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/internal/Utility$DialogFeatureConfig;->getDialogName()Ljava/lang/String;

    move-result-object v3

    .line 905
    .local v3, "dialogName":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 906
    .local v4, "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/Utility$DialogFeatureConfig;>;"
    if-nez v4, :cond_1

    .line 907
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/Utility$DialogFeatureConfig;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 908
    .restart local v4    # "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/Utility$DialogFeatureConfig;>;"
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/internal/Utility$DialogFeatureConfig;->getFeatureName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 915
    .end local v0    # "dialogConfig":Lcom/facebook/internal/Utility$DialogFeatureConfig;
    .end local v1    # "dialogConfigData":Lorg/json/JSONArray;
    .end local v3    # "dialogName":Ljava/lang/String;
    .end local v4    # "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/internal/Utility$DialogFeatureConfig;>;"
    .end local v5    # "i":I
    :cond_2
    return-object v2
.end method

.method public static parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .param p0, "queryString"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 470
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 471
    .local v4, "params":Landroid/os/Bundle;
    invoke-static {p0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 472
    const-string/jumbo v6, "&"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "array":[Ljava/lang/String;
    array-length v6, v0

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v3, v0, v5

    .line 474
    .local v3, "parameter":Ljava/lang/String;
    const-string/jumbo v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, "keyValuePair":[Ljava/lang/String;
    :try_start_0
    array-length v7, v2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 478
    const/4 v7, 0x0

    aget-object v7, v2, v7

    const-string/jumbo v8, "UTF-8"

    .line 479
    invoke-static {v7, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v2, v8

    const-string/jumbo v9, "UTF-8"

    .line 480
    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 478
    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 481
    :cond_1
    array-length v7, v2

    if-ne v7, v10, :cond_0

    .line 482
    const/4 v7, 0x0

    aget-object v7, v2, v7

    const-string/jumbo v8, "UTF-8"

    .line 483
    invoke-static {v7, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ""

    .line 482
    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 486
    :catch_0
    move-exception v1

    .line 488
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v7, "FacebookSDK"

    invoke-static {v7, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 492
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "keyValuePair":[Ljava/lang/String;
    .end local v3    # "parameter":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public static putCommaSeparatedStringList(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "b"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 505
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 508
    .end local v2    # "string":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, ""

    .line 509
    .local v1, "commaSeparated":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 510
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 512
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "commaSeparated":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static putJSONValueInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 523
    if-nez p2, :cond_0

    .line 524
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 550
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 525
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 526
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 527
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, [Z

    if-eqz v0, :cond_2

    .line 528
    check-cast p2, [Z

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_0

    .line 529
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 530
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 531
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v0, p2, [D

    if-eqz v0, :cond_4

    .line 532
    check-cast p2, [D

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0

    .line 533
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 534
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 535
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v0, p2, [I

    if-eqz v0, :cond_6

    .line 536
    check-cast p2, [I

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_0

    .line 537
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 538
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 539
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v0, p2, [J

    if-eqz v0, :cond_8

    .line 540
    check-cast p2, [J

    .end local p2    # "value":Ljava/lang/Object;
    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_0

    .line 541
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 542
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 543
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_9
    instance-of v0, p2, Lorg/json/JSONArray;

    if-eqz v0, :cond_a

    .line 544
    check-cast p2, Lorg/json/JSONArray;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 545
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_b

    .line 546
    check-cast p2, Lorg/json/JSONObject;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 548
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public static putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "b"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 496
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_0
    return-void
.end method

.method public static putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p0, "b"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 517
    if-eqz p2, :cond_0

    .line 518
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_0
    return-void
.end method

.method public static queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/Utility$FetchedAppSettings;
    .locals 2
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "forceRequery"    # Z

    .prologue
    .line 822
    if-nez p1, :cond_0

    sget-object v1, Lcom/facebook/internal/Utility;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 823
    sget-object v1, Lcom/facebook/internal/Utility;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/internal/Utility$FetchedAppSettings;

    .line 831
    :goto_0
    return-object v1

    .line 826
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 827
    .local v0, "response":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    .line 828
    const/4 v1, 0x0

    goto :goto_0

    .line 831
    :cond_1
    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/Utility$FetchedAppSettings;

    move-result-object v1

    goto :goto_0
.end method

.method public static readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    const/4 v2, 0x0

    .line 628
    .local v2, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 630
    .local v5, "reader":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 631
    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v3, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 632
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .local v6, "reader":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 634
    .local v7, "stringBuilder":Ljava/lang/StringBuilder;
    const/16 v1, 0x800

    .line 635
    .local v1, "bufferSize":I
    const/16 v8, 0x800

    new-array v0, v8, [C

    .line 636
    .local v0, "buffer":[C
    const/4 v4, 0x0

    .line 637
    .local v4, "n":I
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_0

    .line 638
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 643
    .end local v0    # "buffer":[C
    .end local v1    # "bufferSize":I
    .end local v4    # "n":I
    .end local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v8

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    move-object v2, v3

    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :goto_1
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 644
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v8

    .line 641
    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v0    # "buffer":[C
    .restart local v1    # "bufferSize":I
    .restart local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v4    # "n":I
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 643
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 644
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-object v8

    .line 643
    .end local v0    # "buffer":[C
    .end local v1    # "bufferSize":I
    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v4    # "n":I
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .end local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v8

    goto :goto_1

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method public static readStringMapFromParcel(Landroid/os/Parcel;)Ljava/util/Map;
    .locals 5
    .param p0, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1236
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1237
    .local v2, "size":I
    if-gez v2, :cond_1

    .line 1238
    const/4 v1, 0x0

    .line 1244
    :cond_0
    return-object v1

    .line 1240
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1241
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1242
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static refreshAvailableExternalStorage()V
    .locals 6

    .prologue
    .line 1393
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/Utility;->externalStorageExists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1394
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1395
    .local v0, "path":Ljava/io/File;
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1397
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sput-wide v2, Lcom/facebook/internal/Utility;->availableExternalStorageGB:J

    .line 1399
    :cond_0
    sget-wide v2, Lcom/facebook/internal/Utility;->availableExternalStorageGB:J

    long-to-double v2, v2

    .line 1400
    invoke-static {v2, v3}, Lcom/facebook/internal/Utility;->convertBytesToGB(D)J

    move-result-wide v2

    sput-wide v2, Lcom/facebook/internal/Utility;->availableExternalStorageGB:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1404
    .end local v1    # "stat":Landroid/os/StatFs;
    :goto_0
    return-void

    .line 1401
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static refreshBestGuessNumberOfCPUCores()I
    .locals 5

    .prologue
    .line 1320
    sget v3, Lcom/facebook/internal/Utility;->numCPUCores:I

    if-lez v3, :cond_0

    .line 1321
    sget v3, Lcom/facebook/internal/Utility;->numCPUCores:I

    .line 1344
    .local v2, "res":I
    :goto_0
    return v3

    .line 1326
    .end local v2    # "res":I
    :cond_0
    const/4 v2, 0x0

    .line 1327
    .restart local v2    # "res":I
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/sys/devices/system/cpu/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1328
    .local v0, "cpuDir":Ljava/io/File;
    new-instance v3, Lcom/facebook/internal/Utility$3;

    invoke-direct {v3}, Lcom/facebook/internal/Utility$3;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 1335
    .local v1, "cpuFiles":[Ljava/io/File;
    array-length v3, v1

    sput v3, Lcom/facebook/internal/Utility;->numCPUCores:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1341
    .end local v0    # "cpuDir":Ljava/io/File;
    .end local v1    # "cpuFiles":[Ljava/io/File;
    :goto_1
    sget v3, Lcom/facebook/internal/Utility;->numCPUCores:I

    if-gtz v3, :cond_1

    .line 1342
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sput v3, Lcom/facebook/internal/Utility;->numCPUCores:I

    .line 1344
    :cond_1
    sget v3, Lcom/facebook/internal/Utility;->numCPUCores:I

    goto :goto_0

    .line 1336
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private static refreshCarrierName(Landroid/content/Context;)V
    .locals 3
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 1372
    sget-object v1, Lcom/facebook/internal/Utility;->carrierName:Ljava/lang/String;

    const-string/jumbo v2, "NoCarrier"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1374
    :try_start_0
    const-string/jumbo v1, "phone"

    .line 1375
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1376
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/internal/Utility;->carrierName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1380
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 1377
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static refreshPeriodicExtendedDeviceInfo(Landroid/content/Context;)V
    .locals 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 1348
    sget-wide v0, Lcom/facebook/internal/Utility;->timestampOfLastCheck:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/facebook/internal/Utility;->timestampOfLastCheck:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1351
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/internal/Utility;->timestampOfLastCheck:J

    .line 1352
    invoke-static {}, Lcom/facebook/internal/Utility;->refreshTimezone()V

    .line 1353
    invoke-static {p0}, Lcom/facebook/internal/Utility;->refreshCarrierName(Landroid/content/Context;)V

    .line 1354
    invoke-static {}, Lcom/facebook/internal/Utility;->refreshTotalExternalStorage()V

    .line 1355
    invoke-static {}, Lcom/facebook/internal/Utility;->refreshAvailableExternalStorage()V

    .line 1357
    :cond_1
    return-void
.end method

.method private static refreshTimezone()V
    .locals 3

    .prologue
    .line 1361
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 1362
    .local v0, "tz":Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/internal/Utility;->deviceTimezone:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1365
    :goto_0
    return-void

    .line 1363
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static refreshTotalExternalStorage()V
    .locals 6

    .prologue
    .line 1410
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/Utility;->externalStorageExists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1411
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1412
    .local v0, "path":Ljava/io/File;
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1413
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    sput-wide v2, Lcom/facebook/internal/Utility;->totalExternalStorageGB:J

    .line 1415
    :cond_0
    sget-wide v2, Lcom/facebook/internal/Utility;->totalExternalStorageGB:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/facebook/internal/Utility;->convertBytesToGB(D)J

    move-result-wide v2

    sput-wide v2, Lcom/facebook/internal/Utility;->totalExternalStorageGB:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1419
    .end local v1    # "stat":Landroid/os/StatFs;
    :goto_0
    return-void

    .line 1416
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static safeGetStringFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "response"    # Lorg/json/JSONObject;
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 919
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static setAppEventAttributionParameters(Lorg/json/JSONObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "params"    # Lorg/json/JSONObject;
    .param p1, "attributionIdentifiers"    # Lcom/facebook/internal/AttributionIdentifiers;
    .param p2, "anonymousAppDeviceGUID"    # Ljava/lang/String;
    .param p3, "limitEventUsage"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 981
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 982
    const-string/jumbo v0, "attribution"

    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 985
    :cond_0
    if-eqz p1, :cond_1

    .line 986
    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 987
    const-string/jumbo v0, "advertiser_id"

    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 988
    const-string/jumbo v3, "advertiser_tracking_enabled"

    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->isTrackingLimited()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 991
    :cond_1
    if-eqz p1, :cond_2

    .line 992
    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidInstallerPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 993
    const-string/jumbo v0, "installer_package"

    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidInstallerPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 996
    :cond_2
    const-string/jumbo v0, "anon_id"

    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 997
    const-string/jumbo v0, "application_tracking_enabled"

    if-nez p3, :cond_4

    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 998
    return-void

    :cond_3
    move v0, v2

    .line 988
    goto :goto_0

    :cond_4
    move v1, v2

    .line 997
    goto :goto_1
.end method

.method public static setAppEventExtendedDeviceInfoParameters(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 22
    .param p0, "params"    # Lorg/json/JSONObject;
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1004
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 1005
    .local v9, "extraInfoArray":Lorg/json/JSONArray;
    const-string/jumbo v18, "a2"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1007
    invoke-static/range {p1 .. p1}, Lcom/facebook/internal/Utility;->refreshPeriodicExtendedDeviceInfo(Landroid/content/Context;)V

    .line 1010
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 1011
    .local v13, "pkgName":Ljava/lang/String;
    const/4 v14, -0x1

    .line 1012
    .local v14, "versionCode":I
    const-string/jumbo v15, ""

    .line 1015
    .local v15, "versionName":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 1016
    .local v12, "pi":Landroid/content/pm/PackageInfo;
    iget v14, v12, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1017
    iget-object v15, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1023
    .end local v12    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1024
    invoke-virtual {v9, v14}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1025
    invoke-virtual {v9, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1028
    sget-object v18, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1029
    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1032
    const/4 v11, 0x0

    .line 1034
    .local v11, "locale":Ljava/util/Locale;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v11, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1038
    :goto_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1041
    sget-object v18, Lcom/facebook/internal/Utility;->deviceTimezone:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1044
    sget-object v18, Lcom/facebook/internal/Utility;->carrierName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1047
    const/16 v16, 0x0

    .line 1048
    .local v16, "width":I
    const/4 v10, 0x0

    .line 1049
    .local v10, "height":I
    const-wide/16 v4, 0x0

    .line 1051
    .local v4, "density":D
    :try_start_2
    const-string/jumbo v18, "window"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowManager;

    .line 1052
    .local v17, "wm":Landroid/view/WindowManager;
    if-eqz v17, :cond_0

    .line 1053
    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 1054
    .local v6, "display":Landroid/view/Display;
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1055
    .local v7, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1056
    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    .line 1057
    iget v10, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1058
    iget v0, v7, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v0, v18

    float-to-double v4, v0

    .line 1063
    .end local v6    # "display":Landroid/view/Display;
    .end local v7    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v17    # "wm":Landroid/view/WindowManager;
    :cond_0
    :goto_2
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1064
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1065
    const-string/jumbo v18, "%.2f"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1068
    invoke-static {}, Lcom/facebook/internal/Utility;->refreshBestGuessNumberOfCPUCores()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1071
    sget-wide v18, Lcom/facebook/internal/Utility;->totalExternalStorageGB:J

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 1072
    sget-wide v18, Lcom/facebook/internal/Utility;->availableExternalStorageGB:J

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 1074
    const-string/jumbo v18, "extinfo"

    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1075
    return-void

    .line 1035
    .end local v4    # "density":D
    .end local v10    # "height":I
    .end local v16    # "width":I
    :catch_0
    move-exception v8

    .line 1036
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    goto/16 :goto_1

    .line 1060
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "density":D
    .restart local v10    # "height":I
    .restart local v16    # "width":I
    :catch_1
    move-exception v18

    goto :goto_2

    .line 1018
    .end local v4    # "density":D
    .end local v10    # "height":I
    .end local v11    # "locale":Ljava/util/Locale;
    .end local v16    # "width":I
    :catch_2
    move-exception v18

    goto/16 :goto_0
.end method

.method public static sha1hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 421
    const-string/jumbo v0, "SHA-1"

    invoke-static {v0, p0}, Lcom/facebook/internal/Utility;->hashWithAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha1hash([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 425
    const-string/jumbo v0, "SHA-1"

    invoke-static {v0, p0}, Lcom/facebook/internal/Utility;->hashWithAlgorithm(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringsEqualOrEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 674
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 675
    .local v0, "aEmpty":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 677
    .local v1, "bEmpty":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 679
    const/4 v2, 0x1

    .line 686
    :goto_0
    return v2

    .line 681
    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 683
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 686
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static tryGetJSONArrayFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "response"    # Lorg/json/JSONObject;
    .param p1, "propertyKey"    # Ljava/lang/String;

    .prologue
    .line 927
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tryGetJSONObjectFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "response"    # Lorg/json/JSONObject;
    .param p1, "propertyKey"    # Ljava/lang/String;

    .prologue
    .line 923
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs unmodifiableCollection([Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "ts":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static writeStringMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 3
    .param p0, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1223
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 1225
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1233
    :cond_0
    return-void

    .line 1227
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1228
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1229
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1230
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
