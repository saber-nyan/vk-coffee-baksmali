.class public final Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;
.super Lru/mail/android/mytracker/providers/AbstractFPDataProvider;
.source "DeviceParamsDataProvider.java"


# static fields
.field private static final CURRENT_OS:Ljava/lang/String; = "Android"

.field private static final OPENUDID_PREFS:Ljava/lang/String; = "open_udid_cache"


# instance fields
.field private androidId:Ljava/lang/String;

.field private appBuild:Ljava/lang/String;

.field private appLang:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private density:F

.field private devId:Ljava/lang/String;

.field private devName:Ljava/lang/String;

.field private dpi:I

.field private endUserName:Ljava/lang/String;

.field private height:I

.field private isCollected:Z

.field private lang:Ljava/lang/String;

.field private manufacture:Ljava/lang/String;

.field private mrgsDevId:Ljava/lang/String;

.field private operatorId:Ljava/lang/String;

.field private operatorName:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private simOperatorId:Ljava/lang/String;

.field private timezone:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-direct {p0}, Lru/mail/android/mytracker/providers/AbstractFPDataProvider;-><init>()V

    .line 50
    iput-boolean v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->isCollected:Z

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->devName:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->devId:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->androidId:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->osVersion:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appName:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appBuild:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appVersion:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->manufacture:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->endUserName:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->lang:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appLang:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->countryCode:Ljava/lang/String;

    .line 64
    iput v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->width:I

    .line 65
    iput v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->height:I

    .line 66
    iput v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->dpi:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->density:F

    .line 68
    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->operatorId:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->operatorName:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->simOperatorId:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->timezone:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, ""

    iput-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->mrgsDevId:Ljava/lang/String;

    .line 182
    return-void
.end method

.method private checkAccountsPermission(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 399
    const-string/jumbo v1, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 400
    .local v0, "result":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private collectScreenSize(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 311
    iget-boolean v3, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->isCollected:Z

    if-eqz v3, :cond_0

    .line 334
    :goto_0
    return-void

    .line 313
    :cond_0
    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 314
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 316
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 318
    .local v1, "size":Landroid/graphics/Point;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_1

    .line 320
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 332
    :goto_1
    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->width:I

    .line 333
    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->height:I

    goto :goto_0

    .line 322
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-lt v3, v4, :cond_2

    .line 324
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_1

    .line 328
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 329
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private generateMrgsId(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 338
    const/4 v5, 0x0

    .line 339
    .local v5, "preferencesManager":Lru/mail/android/mytracker/utils/PreferencesManager;
    const/4 v1, 0x0

    .line 340
    .local v1, "cachedMRGS":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 341
    .local v4, "googleAccountPrimary":Ljava/lang/String;
    invoke-direct {p0, p1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->checkAccountsPermission(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 342
    invoke-virtual {p0, p1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->getGoogleAccountPrimary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 344
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 345
    invoke-direct {p0, v4, p1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->getMrgsIdFromTheirPrefs(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 346
    :cond_1
    if-eqz v1, :cond_2

    .line 350
    :try_start_0
    invoke-static {}, Lru/mail/android/mytracker/utils/PreferencesManager;->getInstance()Lru/mail/android/mytracker/utils/PreferencesManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lru/mail/android/mytracker/utils/PreferencesManager;->init(Landroid/content/Context;)Lru/mail/android/mytracker/utils/PreferencesManager;

    move-result-object v5

    .line 351
    invoke-virtual {v5, v1}, Lru/mail/android/mytracker/utils/PreferencesManager;->setMRGSid(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v2, v1

    .line 379
    .end local v1    # "cachedMRGS":Ljava/lang/String;
    .local v2, "cachedMRGS":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 352
    .end local v2    # "cachedMRGS":Ljava/lang/String;
    .restart local v1    # "cachedMRGS":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 354
    .local v3, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "PreferencesManager error"

    invoke-static {v6}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 361
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    invoke-static {}, Lru/mail/android/mytracker/utils/PreferencesManager;->getInstance()Lru/mail/android/mytracker/utils/PreferencesManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lru/mail/android/mytracker/utils/PreferencesManager;->init(Landroid/content/Context;)Lru/mail/android/mytracker/utils/PreferencesManager;

    move-result-object v5

    .line 362
    invoke-virtual {v5}, Lru/mail/android/mytracker/utils/PreferencesManager;->getMRGSid()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 369
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 371
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-lt v6, v7, :cond_4

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 373
    .local v0, "buildSerial":Ljava/lang/String;
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->androidId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->devId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lru/mail/android/mytracker/utils/EncryptionUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 374
    if-eqz v5, :cond_3

    .line 376
    invoke-virtual {v5, v1}, Lru/mail/android/mytracker/utils/PreferencesManager;->setMRGSid(Ljava/lang/String;)V

    .end local v0    # "buildSerial":Ljava/lang/String;
    :cond_3
    move-object v2, v1

    .line 379
    .end local v1    # "cachedMRGS":Ljava/lang/String;
    .restart local v2    # "cachedMRGS":Ljava/lang/String;
    goto :goto_1

    .line 363
    .end local v2    # "cachedMRGS":Ljava/lang/String;
    .restart local v1    # "cachedMRGS":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 365
    .restart local v3    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "PreferencesManager error"

    invoke-static {v6}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 371
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_4
    const-string/jumbo v0, "sdk < 9"

    goto :goto_3
.end method

.method private getMrgsIdFromTheirPrefs(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "googleAccauntPrimary"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 405
    const/4 v0, 0x0

    .line 408
    .local v0, "mrgsId":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "open_udid_cache"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 409
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 414
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :goto_0
    return-object v0

    .line 410
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public collectData(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 189
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    if-ne v9, v10, :cond_1

    .line 191
    const-string/jumbo v9, "DeviceParamsDataProvider: You must not call collectData method from main thread"

    invoke-static {v9}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-boolean v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->isCollected:Z

    if-nez v9, :cond_0

    .line 197
    const-string/jumbo v9, "collect application info..."

    invoke-static {v9}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 198
    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->devName:Ljava/lang/String;

    .line 199
    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->manufacture:Ljava/lang/String;

    .line 200
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->endUserName:Ljava/lang/String;

    .line 202
    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->osVersion:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appName:Ljava/lang/String;

    .line 204
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->lang:Ljava/lang/String;

    .line 207
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 208
    .local v6, "pinfo":Landroid/content/pm/PackageInfo;
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appVersion:Ljava/lang/String;

    .line 209
    iget v9, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appBuild:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    .end local v6    # "pinfo":Landroid/content/pm/PackageInfo;
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 215
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 217
    const-string/jumbo v9, "android_id"

    invoke-static {v0, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->androidId:Ljava/lang/String;

    .line 218
    iget-object v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->androidId:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 220
    const-string/jumbo v9, ""

    iput-object v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->androidId:Ljava/lang/String;

    .line 223
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appLang:Ljava/lang/String;

    .line 224
    const-string/jumbo v9, "phone"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 225
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->countryCode:Ljava/lang/String;

    .line 226
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->operatorId:Ljava/lang/String;

    .line 227
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->operatorName:Ljava/lang/String;

    .line 230
    :try_start_1
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->devId:Ljava/lang/String;

    .line 231
    iget-object v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->devId:Ljava/lang/String;

    if-nez v9, :cond_3

    const-string/jumbo v9, ""

    iput-object v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->devId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 236
    :cond_3
    :goto_2
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_4

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->simOperatorId:Ljava/lang/String;

    .line 238
    :cond_4
    invoke-direct {p0, p1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->collectScreenSize(Landroid/content/Context;)V

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 241
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    iget v9, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->dpi:I

    .line 242
    iget v9, v5, Landroid/util/DisplayMetrics;->density:F

    iput v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->density:F

    .line 244
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    .line 245
    .local v8, "tz":Ljava/util/TimeZone;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12, v12}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->timezone:Ljava/lang/String;

    .line 247
    invoke-direct {p0, p1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->generateMrgsId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->mrgsDevId:Ljava/lang/String;

    .line 249
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 250
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, v4}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->putDataToMap(Ljava/util/Map;)V

    .line 251
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 232
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v8    # "tz":Ljava/util/TimeZone;
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v9, "No permissions for access to phone state"

    invoke-static {v9}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 253
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v8    # "tz":Ljava/util/TimeZone;
    :cond_5
    const/4 v9, 0x1

    iput-boolean v9, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->isCollected:Z

    .line 254
    const-string/jumbo v9, "collected"

    invoke-static {v9}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v7    # "tm":Landroid/telephony/TelephonyManager;
    .end local v8    # "tz":Ljava/util/TimeZone;
    :catch_1
    move-exception v9

    goto/16 :goto_1
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->androidId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appLang:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->density:F

    return v0
.end method

.method public getDevId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->devId:Ljava/lang/String;

    return-object v0
.end method

.method public getDevName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->devName:Ljava/lang/String;

    return-object v0
.end method

.method public getDpi()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->dpi:I

    return v0
.end method

.method public getEndUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->endUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleAccountPrimary(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 387
    .local v0, "accs":[Landroid/accounts/Account;
    :try_start_0
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string/jumbo v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 392
    :goto_0
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 394
    :goto_1
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_1

    .line 388
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->height:I

    return v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->manufacture:Ljava/lang/String;

    return-object v0
.end method

.method public getMrgsDevId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->mrgsDevId:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->operatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->operatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSimOperatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->simOperatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->width:I

    return v0
.end method

.method public putDataToBuilder(Lru/mail/android/mytracker/builders/JSONBuilder;)V
    .locals 2
    .param p1, "destination"    # Lru/mail/android/mytracker/builders/JSONBuilder;

    .prologue
    .line 285
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->devId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->devId:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->devId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setDeviceId(Ljava/lang/String;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->androidId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->androidId:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->androidId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setAndroidId(Ljava/lang/String;)V

    .line 287
    :cond_1
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->mrgsDevId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->mrgsDevId:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->mrgsDevId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setMrgsDeviceId(Ljava/lang/String;)V

    .line 288
    :cond_2
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->devName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->devName:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->devName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setDeviceName(Ljava/lang/String;)V

    .line 289
    :cond_3
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->manufacture:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->manufacture:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->manufacture:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setManufacture(Ljava/lang/String;)V

    .line 290
    :cond_4
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->osVersion:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->osVersion:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->osVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setOSVersion(Ljava/lang/String;)V

    .line 291
    :cond_5
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->lang:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->lang:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->lang:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setLang(Ljava/lang/String;)V

    .line 292
    :cond_6
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->countryCode:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->countryCode:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setSimLocation(Ljava/lang/String;)V

    .line 293
    :cond_7
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->endUserName:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->endUserName:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->endUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setEndUserName(Ljava/lang/String;)V

    .line 294
    :cond_8
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->operatorId:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->operatorId:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->operatorId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setOperatorId(Ljava/lang/String;)V

    .line 295
    :cond_9
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->operatorName:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->operatorName:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->operatorName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setOperatorName(Ljava/lang/String;)V

    .line 296
    :cond_a
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->simOperatorId:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->simOperatorId:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->simOperatorId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setSimOperatorId(Ljava/lang/String;)V

    .line 297
    :cond_b
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->timezone:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->timezone:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->timezone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setTimezone(Ljava/lang/String;)V

    .line 298
    :cond_c
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appName:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appName:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setAppName(Ljava/lang/String;)V

    .line 299
    :cond_d
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appVersion:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appVersion:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setAppVersion(Ljava/lang/String;)V

    .line 300
    :cond_e
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appBuild:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appBuild:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appBuild:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setAppBuild(Ljava/lang/String;)V

    .line 301
    :cond_f
    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appLang:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appLang:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appLang:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setAppLang(Ljava/lang/String;)V

    .line 302
    :cond_10
    const-string/jumbo v0, "Android"

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setOS(Ljava/lang/String;)V

    .line 303
    iget v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->width:I

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setWidth(I)V

    .line 304
    iget v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->height:I

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setHeight(I)V

    .line 305
    iget v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->dpi:I

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setDPI(I)V

    .line 306
    iget v0, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->density:F

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setDensity(F)V

    .line 307
    return-void
.end method

.method public putDataToMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "destination":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "device_id"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->devId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 260
    const-string/jumbo v0, "android_id"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->androidId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 261
    const-string/jumbo v0, "device"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->devName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 262
    const-string/jumbo v0, "os"

    const-string/jumbo v1, "Android"

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 263
    const-string/jumbo v0, "manufacture"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->manufacture:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 264
    const-string/jumbo v0, "osver"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->osVersion:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 265
    const-string/jumbo v0, "app"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 266
    const-string/jumbo v0, "appver"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appVersion:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 267
    const-string/jumbo v0, "appbuild"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appBuild:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 268
    const-string/jumbo v0, "lang"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->lang:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 269
    const-string/jumbo v0, "app_lang"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->appLang:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 270
    const-string/jumbo v0, "sim_loc"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->countryCode:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 271
    const-string/jumbo v0, "euname"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->endUserName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 272
    const-string/jumbo v0, "w"

    iget v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->width:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 273
    const-string/jumbo v0, "h"

    iget v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->height:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 274
    const-string/jumbo v0, "dpi"

    iget v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->dpi:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 275
    const-string/jumbo v0, "density"

    iget v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->density:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 276
    const-string/jumbo v0, "operator_id"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->operatorId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 277
    const-string/jumbo v0, "operator_name"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->operatorName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 278
    const-string/jumbo v0, "sim_operator_id"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->simOperatorId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 279
    const-string/jumbo v0, "timezone"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->timezone:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 280
    const-string/jumbo v0, "mrgs_device_id"

    iget-object v1, p0, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->mrgsDevId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/providers/DeviceParamsDataProvider;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    .line 281
    return-void
.end method
