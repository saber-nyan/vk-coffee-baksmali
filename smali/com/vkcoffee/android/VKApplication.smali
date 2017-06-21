.class public Lcom/vkcoffee/android/VKApplication;
.super Landroid/app/Application;
.source "VKApplication.java"


# annotations
.annotation runtime Lorg/acra/annotation/ReportsCrashes;
    customReportContent = {
        .enum Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;
    }
    forceCloseDialogAfterToast = false
    formUri = "http://www.bugsense.com/api/acra?api_key=18e20948"
    mode = .enum Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;
    resToastText = 0x7f080165
.end annotation


# static fields
.field public static volatile applicationHandler:Landroid/os/Handler;

.field public static context:Landroid/content/Context;

.field public static deviceID:J

.field public static final hasLollipop:Z

.field public static refWatcher:Lcom/squareup/leakcanary/RefWatcher;

.field public static sharedApp:Landroid/app/Application;


# instance fields
.field public vigo:Lcom/vkcoffee/android/media/Vigo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vkcoffee/android/VKApplication;->deviceID:J

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/vkcoffee/android/VKApplication;->hasLollipop:Z

    .line 77
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static context(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-static {p0}, Luk/co/senab/actionbarpulltorefresh/library/АctionBarPullToRefresh;->context(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getPackageSignature()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 254
    :try_start_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/VKApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vkcoffee/android/VKApplication;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x40

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v7, 0x0

    aget-object v3, v6, v7

    .line 255
    .local v3, "sig":Landroid/content/pm/Signature;
    const-string v6, "SHA1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 256
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 257
    const-string v0, ""

    .line 258
    .local v0, "certFp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-lt v5, v7, :cond_0

    .line 264
    .end local v0    # "certFp":Ljava/lang/String;
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v3    # "sig":Landroid/content/pm/Signature;
    :goto_1
    return-object v0

    .line 258
    .restart local v0    # "certFp":Ljava/lang/String;
    .restart local v1    # "md":Ljava/security/MessageDigest;
    .restart local v3    # "sig":Landroid/content/pm/Signature;
    :cond_0
    aget-byte v2, v6, v5

    .line 259
    .local v2, "sb":B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "%02X"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 258
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 262
    .end local v0    # "certFp":Ljava/lang/String;
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "sb":B
    .end local v3    # "sig":Landroid/content/pm/Signature;
    :catch_0
    move-exception v4

    .line 263
    .local v4, "x":Ljava/lang/Throwable;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    const-string v0, ""

    goto :goto_1
.end method

.method public static declared-synchronized getVigo(Landroid/content/Context;)Lcom/vkcoffee/android/media/Vigo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const-class v5, Lcom/vkcoffee/android/VKApplication;

    monitor-enter v5

    const/4 v2, 0x0

    .line 85
    .local v2, "vigo":Lcom/vkcoffee/android/media/Vigo;
    :try_start_0
    const-class v6, Lcom/vkcoffee/android/VKApplication;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 87
    .local v1, "appContext":Landroid/content/Context;
    :goto_0
    :try_start_1
    instance-of v4, v1, Lcom/vkcoffee/android/VKApplication;

    if-eqz v4, :cond_0

    .line 88
    move-object v0, v1

    check-cast v0, Lcom/vkcoffee/android/VKApplication;

    move-object v3, v0

    .line 89
    .local v3, "vkApplication":Lcom/vkcoffee/android/VKApplication;
    iget-object v4, v3, Lcom/vkcoffee/android/VKApplication;->vigo:Lcom/vkcoffee/android/media/Vigo;

    if-nez v4, :cond_2

    new-instance v4, Lcom/vkcoffee/android/media/Vigo;

    invoke-direct {v4, v3}, Lcom/vkcoffee/android/media/Vigo;-><init>(Landroid/content/Context;)V

    :goto_1
    iput-object v4, v3, Lcom/vkcoffee/android/VKApplication;->vigo:Lcom/vkcoffee/android/media/Vigo;

    .line 90
    iget-object v2, v3, Lcom/vkcoffee/android/VKApplication;->vigo:Lcom/vkcoffee/android/media/Vigo;

    .line 85
    .end local v3    # "vkApplication":Lcom/vkcoffee/android/VKApplication;
    :cond_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    monitor-exit v5

    return-object v2

    .line 86
    .end local v1    # "appContext":Landroid/content/Context;
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    .line 89
    .restart local v1    # "appContext":Landroid/content/Context;
    .restart local v3    # "vkApplication":Lcom/vkcoffee/android/VKApplication;
    :cond_2
    iget-object v4, v3, Lcom/vkcoffee/android/VKApplication;->vigo:Lcom/vkcoffee/android/media/Vigo;

    goto :goto_1

    .line 85
    .end local v1    # "appContext":Landroid/content/Context;
    .end local v3    # "vkApplication":Lcom/vkcoffee/android/VKApplication;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private overrideLangIfNeeded(Landroid/content/res/Configuration;)Z
    .locals 8
    .param p1, "conf"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 291
    invoke-virtual {p0}, Lcom/vkcoffee/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 292
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "__dbg_lang_override"

    invoke-interface {v3, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "__dbg_lang_override"

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v4, v5

    .line 306
    :goto_0
    return v4

    .line 296
    :cond_1
    const-string v6, "__dbg_lang_override"

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "lang":Ljava/lang/String;
    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "langParts":[Ljava/lang/String;
    array-length v6, v1

    if-ne v6, v4, :cond_2

    .line 299
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 303
    .local v2, "locale":Ljava/util/Locale;
    :goto_1
    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 304
    iput-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 305
    invoke-virtual {p0}, Lcom/vkcoffee/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vkcoffee/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 301
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_2
    new-instance v2, Ljava/util/Locale;

    aget-object v5, v1, v5

    aget-object v6, v1, v4

    invoke-direct {v2, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "locale":Ljava/util/Locale;
    goto :goto_1
.end method

.method public static оnConfigurationChanged()V
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vkcoffee/android/VKApplication;->context(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 250
    :cond_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 242
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 243
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 273
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 274
    .local v1, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/vkcoffee/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 278
    invoke-virtual {p0}, Lcom/vkcoffee/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "NewDeviceUI"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 279
    .local v0, "confSp":Landroid/content/SharedPreferences;
    const-string v2, "screenLayout"

    iget v3, v1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->screenLayout:I

    .line 281
    const-string v2, "screenHeightDp"

    iget v3, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 282
    const-string v2, "screenWidthDp"

    iget v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 284
    invoke-virtual {p0}, Lcom/vkcoffee/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 287
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->setLocalization(Landroid/content/Context;)V

    .line 288
    return-void
.end method

.method public onCreate()V
    .locals 18

    .prologue
    .line 103
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    .line 104
    .local v4, "configuration":Landroid/content/res/Configuration;
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "RealDeviceUI"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 128
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 129
    const-string v15, "density"

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v16, v0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 131
    const-string v15, "screenHeightDp"

    iget v0, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v16, v0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 132
    const-string v15, "screenWidthDp"

    iget v0, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v16, v0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 133
    const-string v15, "screenLayout"

    iget v0, v4, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v16, v0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 134
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "NewDeviceUI"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 139
    .local v3, "confSp":Landroid/content/SharedPreferences;
    const-string v14, "screenLayout"

    iget v15, v4, Landroid/content/res/Configuration;->screenLayout:I

    invoke-interface {v3, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    iput v14, v4, Landroid/content/res/Configuration;->screenLayout:I

    .line 141
    const-string v14, "screenHeightDp"

    iget v15, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-interface {v3, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    iput v14, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 142
    const-string v14, "screenWidthDp"

    iget v15, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-interface {v3, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    iput v14, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 147
    const-string v14, "_OPE"

    sput-object v14, Lcom/vkcoffee/android/Java;->in:Ljava/lang/String;

    .line 148
    sget-object v14, Lcom/vkcoffee/android/Java;->in:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "R"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/vkcoffee/android/Java;->in:Ljava/lang/String;

    .line 149
    sget-object v14, Lcom/vkcoffee/android/Java;->in:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "AT"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/vkcoffee/android/Java;->in:Ljava/lang/String;

    .line 150
    sget-object v14, Lcom/vkcoffee/android/Java;->in:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "OR"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/vkcoffee/android/Java;->in:Ljava/lang/String;

    .line 151
    sget-object v14, Lcom/vkcoffee/android/Java;->in:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "_"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/vkcoffee/android/Java;->in:Ljava/lang/String;

    .line 154
    sget-object v14, Lcom/vkcoffee/android/Java;->in:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "555_"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/vkcoffee/android/Java;->in:Ljava/lang/String;

    .line 155
    sget-object v14, Lcom/vkcoffee/android/Java;->in:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "="

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/vkcoffee/android/Java;->in:Ljava/lang/String;

    .line 156
    sget-object v14, Lcom/vkcoffee/android/Java;->in:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ")"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/vkcoffee/android/Java;->in:Ljava/lang/String;

    .line 158
    sput-object p0, Lcom/vkcoffee/android/VKApplication;->sharedApp:Landroid/app/Application;

    .line 159
    new-instance v14, Lcom/vkcoffee/android/utils/VersionCodeCrushHandler;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkcoffee/android/utils/VersionCodeCrushHandler;-><init>(Landroid/content/Context;)V

    invoke-static {v14}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 162
    .local v10, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lme/grishka/appkit/utils/V;->setApplicationContext(Landroid/content/Context;)V

    .line 164
    :try_start_0
    invoke-static/range {p0 .. p0}, Lorg/acra/ACRA;->init(Landroid/app/Application;)V

    .line 165
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v14

    const-string v15, "signature"

    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/VKApplication;->getPackageSignature()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v14

    invoke-virtual {v14}, Lorg/acra/ErrorReporter;->checkReportsOnApplicationStart()V

    .line 170
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v13

    .line 171
    .local v13, "xHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v14, Lcom/vkcoffee/android/VKApplication$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v13}, Lcom/vkcoffee/android/VKApplication$1;-><init>(Lcom/vkcoffee/android/VKApplication;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v14}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 178
    const-string v14, "39905392329609327611"

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lru/mail/android/mytracker/MRMyTracker;->createTracker(Ljava/lang/String;Landroid/content/Context;)Lru/mail/android/mytracker/Tracker;

    .line 179
    invoke-static {}, Lru/mail/android/mytracker/MRMyTracker;->getTrackerParams()Lru/mail/android/mytracker/MRMyTrackerParams;

    move-result-object v14

    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v16, "mytrackerLocationCrapEnabled"

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    invoke-virtual {v14, v15}, Lru/mail/android/mytracker/MRMyTrackerParams;->setTrackingLocationEnabled(Z)V

    .line 180
    invoke-static {}, Lru/mail/android/mytracker/MRMyTracker;->initTracker()V

    .line 181
    invoke-static/range {p0 .. p0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v14

    const-string v15, "vkchatphoto"

    new-instance v16, Lcom/vkcoffee/android/ui/imageloader/VKChatPhotoImageDownloader;

    invoke-static/range {p0 .. p0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/vkcoffee/android/ui/imageloader/VKChatPhotoImageDownloader;-><init>(Lme/grishka/appkit/imageloader/ImageCache;)V

    invoke-virtual/range {v14 .. v16}, Lme/grishka/appkit/imageloader/ImageCache;->registerDownloader(Ljava/lang/String;Lme/grishka/appkit/imageloader/ImageDownloader;)V

    .line 182
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/vkcoffee/android/VKApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "ncode"

    invoke-interface {v14, v15}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 183
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/vkcoffee/android/VKApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "ncode"

    new-instance v16, Ljava/util/Random;

    invoke-direct/range {v16 .. v16}, Ljava/util/Random;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/Random;->nextInt()I

    move-result v16

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 185
    :cond_0
    const-string v14, "notifyTypes"

    invoke-interface {v10, v14}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 186
    const-string v14, "notifyTypes"

    const-string v15, ""

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 187
    .local v9, "ntypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "notificationsPrivateMessages"

    const-string v16, "messages"

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "notificationsChatMessages"

    const-string v16, "messages"

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "notificationsFriendRequests"

    const-string v16, "friends"

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "notificationsReplies"

    const-string v16, "replies"

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "notificationsMentions"

    const-string v16, "mentions"

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "notificationsGames"

    const-string v16, "games"

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "notifyTypes"

    invoke-interface {v14, v15}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 190
    .end local v9    # "ntypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "android_id"

    invoke-static {v14, v15}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v14

    sput-wide v14, Lcom/vkcoffee/android/VKApplication;->deviceID:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 193
    :goto_1
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x13

    if-lt v14, v15, :cond_2

    .line 195
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/VKApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 196
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v14, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v14, 0x2

    .line 197
    .local v8, "i":I
    iput v8, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 198
    if-eqz v8, :cond_2

    .line 199
    const/4 v14, 0x1

    invoke-static {v14}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 204
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "i":I
    :cond_2
    :goto_2
    new-instance v11, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v14

    const-string v15, "thumbs"

    invoke-direct {v11, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 205
    .local v11, "thumbsDir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_3

    .line 206
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 208
    :cond_3
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_3
    move/from16 v0, v16

    if-lt v14, v0, :cond_7

    .line 211
    sget-object v14, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    if-nez v14, :cond_4

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/VKApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    sput-object v14, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    .line 213
    sget-object v14, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/vkcoffee/android/Global;->init(Landroid/content/Context;)V

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/VKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    sput v14, Lcom/vkcoffee/android/Global;->displayDensity:F

    .line 217
    :cond_4
    :try_start_3
    new-instance v12, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/VKApplication;->getExternalCacheDir()Ljava/io/File;

    move-result-object v14

    const-string v15, "upload"

    invoke-direct {v12, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 218
    .local v12, "tmpUploadDir":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 219
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v14, 0x0

    :goto_4
    move/from16 v0, v16

    if-lt v14, v0, :cond_8

    .line 227
    .end local v12    # "tmpUploadDir":Ljava/io/File;
    :cond_5
    :goto_5
    invoke-static/range {p0 .. p0}, Lcom/vkcoffee/android/data/PurchasesManager;->init(Landroid/content/Context;)V

    .line 228
    invoke-super/range {p0 .. p0}, Landroid/app/Application;->onCreate()V

    .line 231
    sget-object v14, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/vkcoffee/android/VKApplication;->context(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 232
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/System;->exit(I)V

    .line 235
    :cond_6
    new-instance v14, Landroid/os/Handler;

    sget-object v15, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v14, Lcom/vkcoffee/android/VKApplication;->applicationHandler:Landroid/os/Handler;

    .line 237
    invoke-static/range {p0 .. p0}, Lcom/squareup/leakcanary/LeakCanary;->install(Landroid/app/Application;)Lcom/squareup/leakcanary/RefWatcher;

    move-result-object v14

    sput-object v14, Lcom/vkcoffee/android/VKApplication;->refWatcher:Lcom/squareup/leakcanary/RefWatcher;

    .line 238
    return-void

    .line 166
    .end local v11    # "thumbsDir":Ljava/io/File;
    .end local v13    # "xHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :catch_0
    move-exception v5

    .line 167
    .local v5, "e":Ljava/lang/Exception;
    const-string v14, "vk"

    const-string v15, "OH SHIT, unable to init error reporting"

    invoke-static {v14, v15}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v11    # "thumbsDir":Ljava/io/File;
    .restart local v13    # "xHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_7
    aget-object v7, v15, v14

    .line 209
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 208
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 219
    .end local v7    # "file":Ljava/io/File;
    .restart local v12    # "tmpUploadDir":Ljava/io/File;
    :cond_8
    :try_start_4
    aget-object v6, v15, v14

    .line 220
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 219
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 223
    .end local v6    # "f":Ljava/io/File;
    .end local v12    # "tmpUploadDir":Ljava/io/File;
    :catch_1
    move-exception v14

    goto :goto_5

    .line 201
    .end local v11    # "thumbsDir":Ljava/io/File;
    :catch_2
    move-exception v14

    goto/16 :goto_2

    .line 191
    :catch_3
    move-exception v14

    goto/16 :goto_1
.end method
