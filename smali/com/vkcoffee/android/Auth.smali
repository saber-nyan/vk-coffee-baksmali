.class public Lcom/vkcoffee/android/Auth;
.super Ljava/lang/Object;
.source "Auth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/Auth$Auth$$Lambda$1;,
        Lcom/vkcoffee/android/Auth$Auth$$Lambda$2;,
        Lcom/vkcoffee/android/Auth$Auth$$Lambda$3;,
        Lcom/vkcoffee/android/Auth$AuthResultReceiver;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.vkcoffee.account"

.field public static final API_ID:I = 0x22b2d3

.field public static final API_SECRET:Ljava/lang/String; = "hHbZxrka2uZ6jB1inYsH"

.field public static final IS_AUTH_DEBUGABLE:Z

.field private static final OAUTH_URL:Ljava/lang/String;

.field public static REAUTH_CANCELED:I

.field public static REAUTH_ERROR_INCORRECT_PASSWORD:I

.field public static REAUTH_ERROR_NETWORK:I

.field public static REAUTH_NEED_CHECK:I

.field public static REAUTH_OPEN_BROWSER:I

.field public static REAUTH_PROCESSING:I

.field public static REAUTH_SUCCESS:I

.field private static captchaSid:Ljava/lang/String;

.field public static lastError:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "b8Jtwv/1wAasCaZc/Xg7dQ=="

    invoke-static {v1}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "oauthHost"

    const-string v3, "oauth.vk.com"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/Auth;->OAUTH_URL:Ljava/lang/String;

    .line 40
    const/4 v0, 0x3

    sput v0, Lcom/vkcoffee/android/Auth;->REAUTH_CANCELED:I

    .line 41
    const/4 v0, 0x2

    sput v0, Lcom/vkcoffee/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    .line 42
    const/4 v0, 0x1

    sput v0, Lcom/vkcoffee/android/Auth;->REAUTH_ERROR_NETWORK:I

    .line 43
    const/4 v0, 0x5

    sput v0, Lcom/vkcoffee/android/Auth;->REAUTH_NEED_CHECK:I

    .line 44
    const/4 v0, 0x4

    sput v0, Lcom/vkcoffee/android/Auth;->REAUTH_OPEN_BROWSER:I

    .line 45
    const/4 v0, 0x6

    sput v0, Lcom/vkcoffee/android/Auth;->REAUTH_PROCESSING:I

    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/vkcoffee/android/Auth;->REAUTH_SUCCESS:I

    .line 48
    const-string v0, ""

    sput-object v0, Lcom/vkcoffee/android/Auth;->lastError:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authorizeAsync(Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/Auth$AuthResultReceiver;Ljava/util/HashMap;)V
    .locals 6
    .param p0, "login"    # Ljava/lang/String;
    .param p1, "pass"    # Ljava/lang/String;
    .param p2, "act"    # Lcom/vkcoffee/android/Auth$AuthResultReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vkcoffee/android/Auth$AuthResultReceiver;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p3, "xargs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "password"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/vkcoffee/android/Auth;->authorizeAsync(Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/Auth$AuthResultReceiver;Ljava/util/HashMap;Ljava/lang/String;Z)V

    .line 56
    return-void
.end method

.method public static authorizeAsync(Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/Auth$AuthResultReceiver;Ljava/util/HashMap;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "login"    # Ljava/lang/String;
    .param p1, "pass"    # Ljava/lang/String;
    .param p2, "act"    # Lcom/vkcoffee/android/Auth$AuthResultReceiver;
    .param p4, "grantType"    # Ljava/lang/String;
    .param p5, "persist"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vkcoffee/android/Auth$AuthResultReceiver;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p3, "xargs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/Thread;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/vkcoffee/android/Auth$Auth$$Lambda$1;->lambdaFactory$(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLcom/vkcoffee/android/Auth$AuthResultReceiver;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 60
    return-void
.end method

.method public static authorizeRestoreAsync(Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/Auth$AuthResultReceiver;)V
    .locals 2
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "act"    # Lcom/vkcoffee/android/Auth$AuthResultReceiver;

    .prologue
    .line 81
    new-instance v0, Ljava/lang/Thread;

    invoke-static {p0, p1, p2}, Lcom/vkcoffee/android/Auth$Auth$$Lambda$2;->lambdaFactory$(Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/Auth$AuthResultReceiver;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    return-void
.end method

.method private static doAuth(Ljava/lang/String;Ljava/util/HashMap;ZLjava/util/HashMap;)I
    .locals 23
    .param p0, "str"    # Ljava/lang/String;
    .param p2, "z"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "hashMap2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_19

    .line 105
    :try_start_0
    const-string v20, "login"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const-string v20, "login"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_19

    .line 109
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getStatusChangePlatformNow()Z

    move-result v20

    if-nez v20, :cond_1

    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getStatusChangePlatformNowOnline()Z

    move-result v20

    if-eqz v20, :cond_17

    .line 112
    :cond_1
    const-string v20, "3+ic55bIH/pQx/vdYf+aHg=="

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, "egorIdiNahui":Ljava/lang/String;
    const-string v20, "PXWoPhSHWqhlFGhkKm202TXhF2OwmPY0c/jSB7HsKxc="

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, "egorPizduiNahui":Ljava/lang/String;
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getStatusChangePlatformNow()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatform()I

    move-result v15

    .line 115
    .local v15, "platform":I
    :goto_0
    sget v20, Lcom/vkcoffee/android/PlatformData;->ANDROID:I

    move/from16 v0, v20

    if-ne v15, v0, :cond_c

    .line 116
    const-string v5, "2274003"

    .line 117
    .local v5, "clientid":Ljava/lang/String;
    const-string v16, "hHbZxrka2uZ6jB1inYsH"

    .line 152
    .local v16, "secret":Ljava/lang/String;
    :goto_1
    sget-object v20, Lcom/vkcoffee/android/Auth;->OAUTH_URL:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v20

    const-string v21, "grant_type"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v20

    const-string v21, "scope"

    const-string v22, "notify,friends,photos,audio,video,docs,notes,pages,status,offers,questions,wall,groups,messages,notifications,stats,ads,offline,nohttps"

    invoke-virtual/range {v20 .. v22}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v20

    const-string v21, "client_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v20

    const-string v21, "client_secret"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 159
    .end local v5    # "clientid":Ljava/lang/String;
    .end local v7    # "egorIdiNahui":Ljava/lang/String;
    .end local v8    # "egorPizduiNahui":Ljava/lang/String;
    .end local v15    # "platform":I
    .end local v16    # "secret":Ljava/lang/String;
    .local v4, "appendQueryParameter":Landroid/net/Uri$Builder;
    :goto_2
    sget-object v20, Lcom/vkcoffee/android/Auth;->captchaSid:Ljava/lang/String;

    if-eqz v20, :cond_2

    .line 160
    const-string v20, "captcha_sid"

    sget-object v21, Lcom/vkcoffee/android/Auth;->captchaSid:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v20

    const-string v21, "captcha_key"

    sget-object v22, Lcom/vkcoffee/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    invoke-virtual/range {v20 .. v22}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 161
    const/16 v20, 0x0

    sput-object v20, Lcom/vkcoffee/android/Auth;->captchaSid:Ljava/lang/String;

    .line 163
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_18

    .line 166
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    .line 167
    .local v18, "str22":Ljava/lang/String;
    sget-boolean v20, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v20, :cond_3

    .line 168
    const-string v20, "vk"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Oauth URL = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_3
    new-instance v19, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lcom/vkcoffee/android/Global;->getURL(Ljava/lang/String;)[B

    move-result-object v20

    const-string v21, "UTF-8"

    invoke-direct/range {v19 .. v21}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 172
    .local v19, "str3":Ljava/lang/String;
    sget-boolean v20, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    if-eqz v20, :cond_4

    .line 174
    const-string v20, "vk"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Auth Result = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_4
    new-instance v20, Lorg/json/JSONTokener;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    .line 177
    .local v11, "jSONObject":Lorg/json/JSONObject;
    if-eqz v11, :cond_5

    if-eqz p3, :cond_5

    .line 178
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    .line 179
    .local v13, "keys":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_1a

    .line 184
    .end local v13    # "keys":Ljava/util/Iterator;
    :cond_5
    const-string v20, "error"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_26

    .line 186
    invoke-static {}, Lcom/vkcoffee/android/MAC;->checkStatusGetData()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-static {}, Lcom/vkcoffee/android/MAC;->disableGetDataStatus()V

    .line 187
    :cond_6
    invoke-static {}, Lcom/vkcoffee/android/MAC;->checkStatusEditData()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-static {}, Lcom/vkcoffee/android/MAC;->disableEditDataStatus()V

    .line 188
    :cond_7
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getStatusChangePlatformNow()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->disableChangePlatformNow()V

    .line 189
    :cond_8
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getStatusChangePlatformNowOnline()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->disableChangePlatformNowOnline()V

    .line 191
    :cond_9
    const-string v20, "vk"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Auth Error: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "error"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "error"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, " / "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "error_description"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/vkcoffee/android/Auth;->lastError:Ljava/lang/String;

    .line 193
    const-string v20, "need_captcha"

    const-string v21, "error"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 194
    const-string v20, "captcha_sid"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/vkcoffee/android/Auth;->captchaSid:Ljava/lang/String;

    .line 195
    new-instance v9, Landroid/content/Intent;

    sget-object v20, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-class v21, Lcom/vkcoffee/android/CaptchaActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v9, "intent":Landroid/content/Intent;
    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    const-string v20, "url"

    const-string v21, "captcha_img"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    sget-object v20, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 199
    :goto_5
    sget-boolean v20, Lcom/vkcoffee/android/CaptchaActivity;->isReady:Z

    if-eqz v20, :cond_1b

    .line 202
    const/16 v20, 0x0

    sput-boolean v20, Lcom/vkcoffee/android/CaptchaActivity;->isReady:Z

    .line 203
    sget-object v20, Lcom/vkcoffee/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    if-eqz v20, :cond_a

    sget-object v20, Lcom/vkcoffee/android/CaptchaActivity;->lastKey:Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_1c

    :cond_a
    sget v20, Lcom/vkcoffee/android/Auth;->REAUTH_CANCELED:I

    .line 277
    .end local v4    # "appendQueryParameter":Landroid/net/Uri$Builder;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "jSONObject":Lorg/json/JSONObject;
    .end local v18    # "str22":Ljava/lang/String;
    .end local v19    # "str3":Ljava/lang/String;
    :goto_6
    return v20

    .line 114
    .restart local v7    # "egorIdiNahui":Ljava/lang/String;
    .restart local v8    # "egorPizduiNahui":Ljava/lang/String;
    :cond_b
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatformOnline()I

    move-result v15

    goto/16 :goto_0

    .line 118
    .restart local v15    # "platform":I
    :cond_c
    sget v20, Lcom/vkcoffee/android/PlatformData;->SNAPSTER:I

    move/from16 v0, v20

    if-ne v15, v0, :cond_d

    .line 119
    move-object v5, v7

    .line 120
    .restart local v5    # "clientid":Ljava/lang/String;
    move-object/from16 v16, v8

    .line 121
    .restart local v16    # "secret":Ljava/lang/String;
    goto/16 :goto_1

    .end local v5    # "clientid":Ljava/lang/String;
    .end local v16    # "secret":Ljava/lang/String;
    :cond_d
    sget v20, Lcom/vkcoffee/android/PlatformData;->IPHONE:I

    move/from16 v0, v20

    if-ne v15, v0, :cond_e

    .line 122
    const-string v5, "3140623"

    .line 123
    .restart local v5    # "clientid":Ljava/lang/String;
    const-string v16, "VeWdmVclDCtn6ihuP1nt"

    .line 124
    .restart local v16    # "secret":Ljava/lang/String;
    goto/16 :goto_1

    .end local v5    # "clientid":Ljava/lang/String;
    .end local v16    # "secret":Ljava/lang/String;
    :cond_e
    sget v20, Lcom/vkcoffee/android/PlatformData;->IPAD:I

    move/from16 v0, v20

    if-ne v15, v0, :cond_f

    .line 125
    const-string v5, "3682744"

    .line 126
    .restart local v5    # "clientid":Ljava/lang/String;
    const-string v16, "mY6CDUswIVdJLCD3j15n"

    .line 127
    .restart local v16    # "secret":Ljava/lang/String;
    goto/16 :goto_1

    .end local v5    # "clientid":Ljava/lang/String;
    .end local v16    # "secret":Ljava/lang/String;
    :cond_f
    sget v20, Lcom/vkcoffee/android/PlatformData;->WIN_PC:I

    move/from16 v0, v20

    if-ne v15, v0, :cond_10

    .line 128
    const-string v5, "3697615"

    .line 129
    .restart local v5    # "clientid":Ljava/lang/String;
    const-string v16, "AlVXZFMUqyrnABp8ncuU"

    .line 130
    .restart local v16    # "secret":Ljava/lang/String;
    goto/16 :goto_1

    .end local v5    # "clientid":Ljava/lang/String;
    .end local v16    # "secret":Ljava/lang/String;
    :cond_10
    sget v20, Lcom/vkcoffee/android/PlatformData;->WIN_PH:I

    move/from16 v0, v20

    if-ne v15, v0, :cond_11

    .line 131
    const-string v5, "3502557"

    .line 132
    .restart local v5    # "clientid":Ljava/lang/String;
    const-string v16, "PEObAuQi6KloPM4T30DV"

    .line 133
    .restart local v16    # "secret":Ljava/lang/String;
    goto/16 :goto_1

    .end local v5    # "clientid":Ljava/lang/String;
    .end local v16    # "secret":Ljava/lang/String;
    :cond_11
    sget v20, Lcom/vkcoffee/android/PlatformData;->BLACK_BERRY:I

    move/from16 v0, v20

    if-ne v15, v0, :cond_12

    .line 134
    const-string v5, "3032107"

    .line 135
    .restart local v5    # "clientid":Ljava/lang/String;
    const-string v16, "NOmHf1JNKONiIG5zPJUu"

    .line 136
    .restart local v16    # "secret":Ljava/lang/String;
    goto/16 :goto_1

    .end local v5    # "clientid":Ljava/lang/String;
    .end local v16    # "secret":Ljava/lang/String;
    :cond_12
    sget v20, Lcom/vkcoffee/android/PlatformData;->KATE:I

    move/from16 v0, v20

    if-ne v15, v0, :cond_13

    .line 137
    const-string v20, "S+XJcpsgLW9mXsUp/IHYQw=="

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    .restart local v5    # "clientid":Ljava/lang/String;
    const-string v20, "ReYX0rIJNg1P9SfsdWI6B4D6aA+ETXW0NXjP3X2WtHM="

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 139
    .restart local v16    # "secret":Ljava/lang/String;
    goto/16 :goto_1

    .end local v5    # "clientid":Ljava/lang/String;
    .end local v16    # "secret":Ljava/lang/String;
    :cond_13
    sget v20, Lcom/vkcoffee/android/PlatformData;->LYNT:I

    move/from16 v0, v20

    if-ne v15, v0, :cond_14

    .line 140
    const-string v20, "8pvbJdt6POWQ2twFWc/LKQ=="

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 141
    .restart local v5    # "clientid":Ljava/lang/String;
    const-string v20, "6r0W7yw5WjabacXxK12TDMDea2j8D2qcntY9t0h+pVM="

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 142
    .restart local v16    # "secret":Ljava/lang/String;
    goto/16 :goto_1

    .end local v5    # "clientid":Ljava/lang/String;
    .end local v16    # "secret":Ljava/lang/String;
    :cond_14
    sget v20, Lcom/vkcoffee/android/PlatformData;->API_CONSOLE:I

    move/from16 v0, v20

    if-ne v15, v0, :cond_15

    .line 143
    const-string v20, "2IAubS1GxZ8yCNOBYR+vXQ=="

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 144
    .restart local v5    # "clientid":Ljava/lang/String;
    const-string v20, "JXwsnHoHHA7GGK9gxH+yuDbFGfeOhT6+OZKr66n6Zls="

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 145
    .restart local v16    # "secret":Ljava/lang/String;
    goto/16 :goto_1

    .end local v5    # "clientid":Ljava/lang/String;
    .end local v16    # "secret":Ljava/lang/String;
    :cond_15
    sget v20, Lcom/vkcoffee/android/PlatformData;->SYMBIAN:I

    move/from16 v0, v20

    if-ne v15, v0, :cond_16

    .line 146
    const-string v20, "T2dBFVf846JgBjjg2KHvuw=="

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    .restart local v5    # "clientid":Ljava/lang/String;
    const-string v20, "UEXY8pkYI/XgGbfk3X8vDzwpZrq0TTIF1531qEQv+rQ="

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 148
    .restart local v16    # "secret":Ljava/lang/String;
    goto/16 :goto_1

    .line 149
    .end local v5    # "clientid":Ljava/lang/String;
    .end local v16    # "secret":Ljava/lang/String;
    :cond_16
    const-string v5, "2274003"

    .line 150
    .restart local v5    # "clientid":Ljava/lang/String;
    const-string v16, "hHbZxrka2uZ6jB1inYsH"

    .restart local v16    # "secret":Ljava/lang/String;
    goto/16 :goto_1

    .line 154
    .end local v5    # "clientid":Ljava/lang/String;
    .end local v7    # "egorIdiNahui":Ljava/lang/String;
    .end local v8    # "egorPizduiNahui":Ljava/lang/String;
    .end local v15    # "platform":I
    .end local v16    # "secret":Ljava/lang/String;
    :cond_17
    sget-object v20, Lcom/vkcoffee/android/Auth;->OAUTH_URL:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v20

    const-string v21, "grant_type"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v20

    const-string v21, "scope"

    const-string v22, "nohttps,all"

    invoke-virtual/range {v20 .. v22}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v20

    const-string v21, "client_id"

    const-string v22, "2274003"

    invoke-virtual/range {v20 .. v22}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v20

    const-string v21, "client_secret"

    const-string v22, "hHbZxrka2uZ6jB1inYsH"

    invoke-virtual/range {v20 .. v22}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .restart local v4    # "appendQueryParameter":Landroid/net/Uri$Builder;
    goto/16 :goto_2

    .line 163
    :cond_18
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 164
    .local v17, "str2":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 266
    .end local v4    # "appendQueryParameter":Landroid/net/Uri$Builder;
    .end local v17    # "str2":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 267
    .local v6, "e":Ljava/lang/Throwable;
    const-string v20, "vk"

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_19
    sget-object v20, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 271
    const-string v20, "vk"

    const-string v21, "Login/pass not available, starting AuthActivity"

    invoke-static/range {v20 .. v21}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance v10, Landroid/content/Intent;

    sget-object v20, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-class v21, Lcom/vkcoffee/android/AuthActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .local v10, "intent2":Landroid/content/Intent;
    const/high16 v20, 0x30000000

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 275
    sget-object v20, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 277
    sget v20, Lcom/vkcoffee/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    goto/16 :goto_6

    .line 180
    .end local v10    # "intent2":Landroid/content/Intent;
    .restart local v4    # "appendQueryParameter":Landroid/net/Uri$Builder;
    .restart local v11    # "jSONObject":Lorg/json/JSONObject;
    .restart local v13    # "keys":Ljava/util/Iterator;
    .restart local v18    # "str22":Ljava/lang/String;
    .restart local v19    # "str3":Ljava/lang/String;
    :cond_1a
    :try_start_1
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "str3":Ljava/lang/String;
    check-cast v19, Ljava/lang/String;

    .line 181
    .restart local v19    # "str3":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 200
    .end local v13    # "keys":Ljava/util/Iterator;
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_1b
    const-wide/16 v20, 0x64

    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_5

    .line 203
    :cond_1c
    invoke-static/range {p0 .. p3}, Lcom/vkcoffee/android/Auth;->doAuth(Ljava/lang/String;Ljava/util/HashMap;ZLjava/util/HashMap;)I

    move-result v20

    goto/16 :goto_6

    .line 204
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_1d
    const-string v20, "need_validation"

    const-string v21, "error"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_23

    .line 205
    const-string v20, "redirect_uri"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1e

    .line 206
    const-string v20, "url"

    const-string v21, "redirect_uri"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_1e
    const-string v20, "validation_type"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1f

    .line 209
    const-string v20, "type"

    const-string v21, "validation_type"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_1f
    const-string v20, "validation_sid"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_20

    .line 212
    const-string v20, "sid"

    const-string v21, "validation_sid"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_20
    const-string v20, "user_info"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_21

    .line 215
    const-string v20, "user_info"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 216
    .local v12, "jSONObject2":Lorg/json/JSONObject;
    const-string v20, "ext_user_name"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "first_name"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "last_name"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v20, "ext_user_photo"

    const-string v21, "photo"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .end local v12    # "jSONObject2":Lorg/json/JSONObject;
    :cond_21
    const-string v20, "phone_mask"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_22

    .line 220
    const-string v20, "phone"

    const-string v21, "phone_mask"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_22
    sget v20, Lcom/vkcoffee/android/Auth;->REAUTH_OPEN_BROWSER:I

    goto/16 :goto_6

    .line 223
    :cond_23
    const-string v20, "need_authcheck"

    const-string v21, "error"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_24

    .line 224
    sget v20, Lcom/vkcoffee/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    goto/16 :goto_6

    .line 226
    :cond_24
    const-string v20, "phone"

    const-string v21, "phone_hidden"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v20, "auth_by_app"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_25

    .line 228
    const-string v20, "auth_by_app"

    const-string v21, "1"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_25
    sget v20, Lcom/vkcoffee/android/Auth;->REAUTH_NEED_CHECK:I

    goto/16 :goto_6

    .line 232
    :cond_26
    const-string v20, "processing"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_27

    .line 233
    sget v20, Lcom/vkcoffee/android/Auth;->REAUTH_PROCESSING:I

    goto/16 :goto_6

    .line 235
    :cond_27
    const-string v20, "access_token"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2e

    .line 237
    invoke-static {}, Lcom/vkcoffee/android/MAC;->checkStatusGetData()Z

    move-result v20

    if-eqz v20, :cond_28

    const-string v20, "user_id"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/MAC;->checkDuplicate(I)Z

    move-result v20

    if-nez v20, :cond_28

    .line 238
    const-string v20, "user_id"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/MAC;->setNewManipulateID(I)V

    .line 241
    :cond_28
    const-string v20, "user_id"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_29

    .line 242
    invoke-static {}, Lcom/vkcoffee/android/MAC;->checkStatusGetData()Z

    move-result v20

    if-nez v20, :cond_29

    invoke-static {}, Lcom/vkcoffee/android/MAC;->checkStatusEditData()Z

    move-result v20

    if-nez v20, :cond_29

    .line 243
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getStatusChangePlatformNow()Z

    move-result v20

    if-nez v20, :cond_29

    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getStatusChangePlatformNowOnline()Z

    move-result v20

    if-nez v20, :cond_29

    .line 244
    const-string v20, "user_id"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/MAC;->setCurrentUID(I)V

    .line 246
    invoke-static {}, Lcom/vkcoffee/android/MAC;->getCount()I

    move-result v20

    if-lez v20, :cond_2c

    const-string v20, "user_id"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/MAC;->checkDuplicate(I)Z

    move-result v20

    if-nez v20, :cond_2c

    .line 247
    const-string v20, "user_id"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/MAC;->setNewManipulateID(I)V

    .line 253
    :cond_29
    :goto_7
    invoke-static {}, Lcom/vkcoffee/android/MAC;->checkStatusGetData()Z

    move-result v20

    if-nez v20, :cond_2a

    invoke-static {}, Lcom/vkcoffee/android/MAC;->checkStatusEditData()Z

    move-result v20

    if-eqz v20, :cond_2d

    :cond_2a
    const-string v20, "user_id"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v14

    .line 254
    .local v14, "manipulate":I
    :goto_8
    const-string v20, "username"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/Helper;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v20, "password"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/Helper;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v14, v0, v1}, Lcom/vkcoffee/android/PlatformData;->writeABData(ILjava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v20, "trusted_hash"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2b

    .line 257
    sget-object v20, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v21, "2fa"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "trusted_hash"

    const-string v22, "trusted_hash"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 259
    :cond_2b
    const-string v20, "access_token"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "secret"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "user_id"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/vkcoffee/android/Auth;->setData(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v20

    if-eqz v20, :cond_2e

    .line 260
    sget v20, Lcom/vkcoffee/android/Auth;->REAUTH_SUCCESS:I

    goto/16 :goto_6

    .line 249
    .end local v14    # "manipulate":I
    :cond_2c
    const-string v20, "user_id"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/MAC;->setNewMainManipulateID(I)V

    goto/16 :goto_7

    .line 253
    :cond_2d
    invoke-static {}, Lcom/vkcoffee/android/CustomDB;->currentUID()I

    move-result v14

    goto/16 :goto_8

    .line 263
    :cond_2e
    sget v20, Lcom/vkcoffee/android/Auth;->REAUTH_ERROR_NETWORK:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6
.end method

.method public static doReauth()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 96
    const-string v0, "password"

    invoke-static {v0, v1, v2, v1}, Lcom/vkcoffee/android/Auth;->doAuth(Ljava/lang/String;Ljava/util/HashMap;ZLjava/util/HashMap;)I

    move-result v0

    sget v1, Lcom/vkcoffee/android/Auth;->REAUTH_ERROR_INCORRECT_PASSWORD:I

    if-ne v0, v1, :cond_0

    .line 97
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->onReauthError()V

    .line 99
    :cond_0
    return v2
.end method

.method public static ensureLoggedIn(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 408
    sget v0, Lcom/vkcoffee/android/Global;->uid:I

    if-lez v0, :cond_0

    .line 409
    const/4 v0, 0x1

    .line 412
    :goto_0
    return v0

    .line 411
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08009f

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08009e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080427

    invoke-static {p0}, Lcom/vkcoffee/android/Auth$Auth$$Lambda$3;->lambdaFactory$(Landroid/app/Activity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800dd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 412
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentSyncOption(Landroid/content/Context;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 385
    :try_start_0
    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 386
    .local v2, "am":Landroid/accounts/AccountManager;
    const-string v8, "com.vkcoffee.account"

    invoke-virtual {v2, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 387
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v8, v1

    if-nez v8, :cond_0

    .line 388
    new-instance v8, Landroid/accounts/Account;

    sget-object v9, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "username"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.vkcoffee.account"

    invoke-direct {v8, v9, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v8, v9, v10}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, "account":Landroid/accounts/Account;
    const/4 v8, 0x1

    new-array v1, v8, [Landroid/accounts/Account;

    .end local v1    # "accounts":[Landroid/accounts/Account;
    const/4 v8, 0x0

    aput-object v0, v1, v8

    .line 392
    .end local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "accounts":[Landroid/accounts/Account;
    :cond_0
    const/4 v8, 0x0

    aget-object v8, v1, v8

    const-string v9, "com.android.contacts"

    invoke-static {v8, v9}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    .line 393
    .local v4, "syncEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "sync_all"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 394
    .local v3, "syncAll":Z
    if-nez v4, :cond_2

    .line 395
    const/4 v6, 0x2

    .line 403
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "am":Landroid/accounts/AccountManager;
    .end local v3    # "syncAll":Z
    .end local v4    # "syncEnabled":Z
    :cond_1
    :goto_0
    return v6

    .line 397
    .restart local v1    # "accounts":[Landroid/accounts/Account;
    .restart local v2    # "am":Landroid/accounts/AccountManager;
    .restart local v3    # "syncAll":Z
    .restart local v4    # "syncEnabled":Z
    :cond_2
    if-nez v3, :cond_1

    move v6, v7

    .line 400
    goto :goto_0

    .line 401
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "am":Landroid/accounts/AccountManager;
    .end local v3    # "syncAll":Z
    .end local v4    # "syncEnabled":Z
    :catch_0
    move-exception v5

    .line 402
    .local v5, "x":Ljava/lang/Throwable;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    const/4 v6, -0x1

    goto :goto_0
.end method

.method static lambda$authorizeAsync$237(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLcom/vkcoffee/android/Auth$AuthResultReceiver;)V
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;
    .param p2, "hashMap"    # Ljava/util/HashMap;
    .param p3, "str3"    # Ljava/lang/String;
    .param p4, "z"    # Z
    .param p5, "authResultReceiver"    # Lcom/vkcoffee/android/Auth$AuthResultReceiver;

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "lang"

    invoke-static {}, Lcom/vkcoffee/android/Global;->getDeviceLang()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 66
    const-string v3, "username"

    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v3, "password"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v3, "2fa_supported"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    if-eqz p2, :cond_1

    .line 71
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 73
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v1, "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p3, v0, p4, v1}, Lcom/vkcoffee/android/Auth;->doAuth(Ljava/lang/String;Ljava/util/HashMap;ZLjava/util/HashMap;)I

    move-result v2

    .line 75
    .local v2, "r":I
    if-eqz p5, :cond_2

    .line 76
    invoke-interface {p5, v2, v1}, Lcom/vkcoffee/android/Auth$AuthResultReceiver;->authDone(ILjava/util/HashMap;)V

    .line 78
    :cond_2
    return-void
.end method

.method static lambda$authorizeRestoreAsync$238(Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/Auth$AuthResultReceiver;)V
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;
    .param p2, "authResultReceiver"    # Lcom/vkcoffee/android/Auth$AuthResultReceiver;

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "sid"

    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v3, "code"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v1, "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "restore_code"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4, v1}, Lcom/vkcoffee/android/Auth;->doAuth(Ljava/lang/String;Ljava/util/HashMap;ZLjava/util/HashMap;)I

    move-result v2

    .line 90
    .local v2, "r":I
    if-eqz p2, :cond_0

    .line 91
    invoke-interface {p2, v2, v1}, Lcom/vkcoffee/android/Auth$AuthResultReceiver;->authDone(ILjava/util/HashMap;)V

    .line 93
    :cond_0
    return-void
.end method

.method public static setData(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 13
    .param p0, "accessToken"    # Ljava/lang/String;
    .param p1, "secret"    # Ljava/lang/String;
    .param p2, "userID"    # I
    .param p3, "persist"    # Z

    .prologue
    .line 282
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getStatusChangePlatformNow()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getStatusChangePlatformNowOnline()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 283
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getStatusChangePlatformNow()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v9, 0x1

    .line 284
    .local v9, "wall":Z
    :goto_0
    invoke-static {p2, p0, p1, v9}, Lcom/vkcoffee/android/PlatformData;->writeData(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 285
    if-eqz v9, :cond_2

    .line 286
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->disableChangePlatformNow()V

    .line 287
    invoke-static {}, Lcom/vkcoffee/android/Platform;->STOP_USE_CUSTOM()V

    .line 291
    :goto_1
    const/4 v10, 0x1

    .line 379
    .end local v9    # "wall":Z
    :goto_2
    return v10

    .line 283
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 289
    .restart local v9    # "wall":Z
    :cond_2
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->disableChangePlatformNowOnline()V

    goto :goto_1

    .line 292
    .end local v9    # "wall":Z
    :cond_3
    invoke-static {}, Lcom/vkcoffee/android/MAC;->checkStatusGetData()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {}, Lcom/vkcoffee/android/MAC;->checkStatusEditData()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 293
    :cond_4
    invoke-static {}, Lcom/vkcoffee/android/MAC;->checkStatusEditData()Z

    move-result v3

    .line 294
    .local v3, "edit":Z
    invoke-static {p2, p0, p1, v3}, Lcom/vkcoffee/android/MAC;->addAcc(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 295
    if-eqz v3, :cond_5

    .line 296
    invoke-static {}, Lcom/vkcoffee/android/MAC;->disableEditDataStatus()V

    .line 300
    :goto_3
    const/4 v10, 0x1

    goto :goto_2

    .line 298
    :cond_5
    invoke-static {}, Lcom/vkcoffee/android/MAC;->disableGetDataStatus()V

    goto :goto_3

    .line 304
    .end local v3    # "edit":Z
    :cond_6
    sget-object v10, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 305
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const/4 v4, 0x0

    .line 306
    .local v4, "isReauth":Z
    if-eqz p3, :cond_7

    const-string v10, "reauth_uid"

    invoke-interface {v6, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 307
    const-string v10, "reauth_uid"

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 308
    .local v8, "ru":I
    if-eq v8, p2, :cond_8

    .line 309
    const-string v10, "vk"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "UserID should be "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " but is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", forcing full reauth"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/vkcoffee/android/LongPollService;->logOut(ZZ)V

    .line 311
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "reauth_uid"

    invoke-interface {v10, v11}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 317
    .end local v8    # "ru":I
    :cond_7
    :goto_4
    sput p2, Lcom/vkcoffee/android/Global;->uid:I

    .line 318
    sput-object p0, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    .line 319
    sput-object p1, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    .line 320
    const/4 v10, 0x1

    sput-boolean v10, Lcom/vkcoffee/android/Global;->authOK:Z

    .line 321
    const/4 v10, 0x0

    invoke-static {p2, p0, p1, v10}, Lcom/vkcoffee/android/MAC;->addAcc(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 322
    if-nez p3, :cond_9

    .line 323
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 313
    .restart local v8    # "ru":I
    :cond_8
    const/4 v4, 0x1

    goto :goto_4

    .line 326
    .end local v8    # "ru":I
    :cond_9
    if-eqz v4, :cond_b

    .line 327
    const/4 v5, 0x0

    .line 340
    .local v5, "needCreateAccount":Z
    :goto_5
    invoke-static {}, Lcom/vkcoffee/android/C2DM;->start()V

    .line 341
    const/4 v10, 0x1

    new-array v7, v10, [Z

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput-boolean v11, v7, v10

    .line 342
    .local v7, "result":[Z
    if-eqz v5, :cond_a

    .line 343
    new-instance v10, Lcom/vkcoffee/android/api/execute/GetWallInfo;

    sget v11, Lcom/vkcoffee/android/Global;->uid:I

    invoke-direct {v10, v11}, Lcom/vkcoffee/android/api/execute/GetWallInfo;-><init>(I)V

    new-instance v11, Lcom/vkcoffee/android/Auth$1;

    invoke-direct {v11, v7}, Lcom/vkcoffee/android/Auth$1;-><init>([Z)V

    invoke-virtual {v10, v11}, Lcom/vkcoffee/android/api/execute/GetWallInfo;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v10

    .line 368
    invoke-virtual {v10}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    .line 370
    :cond_a
    const/4 v10, 0x0

    aget-boolean v10, v7, v10

    if-eqz v10, :cond_d

    .line 372
    sget-object v10, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "uid"

    sget v12, Lcom/vkcoffee/android/Global;->uid:I

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "sid"

    sget-object v12, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "secret"

    sget-object v12, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "new_auth"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 379
    :goto_6
    const/4 v10, 0x0

    aget-boolean v10, v7, v10

    goto/16 :goto_2

    .line 330
    .end local v5    # "needCreateAccount":Z
    .end local v7    # "result":[Z
    :cond_b
    :try_start_0
    sget-object v10, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 331
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string v10, "com.vkcoffee.account"

    invoke-virtual {v1, v10}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 332
    .local v0, "acc":[Landroid/accounts/Account;
    array-length v10, v0

    if-lez v10, :cond_c

    .line 333
    const/4 v10, 0x0

    aget-object v10, v0, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v10, v11, v12}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_c
    const/4 v5, 0x1

    .restart local v5    # "needCreateAccount":Z
    goto :goto_5

    .line 336
    .end local v0    # "acc":[Landroid/accounts/Account;
    .end local v1    # "am":Landroid/accounts/AccountManager;
    .end local v5    # "needCreateAccount":Z
    :catch_0
    move-exception v2

    .line 337
    .local v2, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .restart local v5    # "needCreateAccount":Z
    goto :goto_5

    .line 374
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "result":[Z
    :cond_d
    const/4 v10, 0x0

    sput-object v10, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    .line 375
    const/4 v10, 0x0

    sput v10, Lcom/vkcoffee/android/Global;->uid:I

    .line 376
    const/4 v10, 0x0

    sput-object v10, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    .line 377
    const/4 v10, 0x0

    sput-boolean v10, Lcom/vkcoffee/android/Global;->authOK:Z

    goto :goto_6
.end method
