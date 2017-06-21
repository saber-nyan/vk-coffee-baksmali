.class public Lorg/acra/ACRA;
.super Ljava/lang/Object;
.source "ACRA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/ACRA$2;
    }
.end annotation


# static fields
.field public static final DEV_LOGGING:Z = false

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final PREF_ALWAYS_ACCEPT:Ljava/lang/String; = "acra.alwaysaccept"

.field public static final PREF_DISABLE_ACRA:Ljava/lang/String; = "acra.disable"

.field public static final PREF_ENABLE_ACRA:Ljava/lang/String; = "acra.enable"

.field public static final PREF_ENABLE_DEVICE_ID:Ljava/lang/String; = "acra.deviceid.enable"

.field public static final PREF_ENABLE_SYSTEM_LOGS:Ljava/lang/String; = "acra.syslog.enable"

.field public static final PREF_LAST_VERSION_NR:Ljava/lang/String; = "acra.lastVersionNr"

.field public static final PREF_USER_EMAIL_ADDRESS:Ljava/lang/String; = "acra.user.email"

.field private static configProxy:Lorg/acra/ACRAConfiguration;

.field private static errorReporterSingleton:Lorg/acra/ErrorReporter;

.field public static log:Lorg/acra/log/ACRALog;

.field private static mApplication:Landroid/app/Application;

.field private static mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/acra/ACRA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Lorg/acra/log/AndroidLogDelegate;

    invoke-direct {v0}, Lorg/acra/log/AndroidLogDelegate;-><init>()V

    sput-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    return-void
.end method

.method static synthetic access$000(Landroid/content/SharedPreferences;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/SharedPreferences;

    .prologue
    .line 41
    invoke-static {p0}, Lorg/acra/ACRA;->shouldDisableACRA(Landroid/content/SharedPreferences;)Z

    move-result v0

    return v0
.end method

.method static checkCrashResources(Lorg/acra/annotation/ReportsCrashes;)V
    .locals 2
    .param p0, "conf"    # Lorg/acra/annotation/ReportsCrashes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/acra/ACRAConfigurationException;
        }
    .end annotation

    .prologue
    .line 261
    sget-object v0, Lorg/acra/ACRA$2;->$SwitchMap$org$acra$ReportingInteractionMode:[I

    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ReportingInteractionMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 287
    :cond_0
    return-void

    .line 263
    :pswitch_0
    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->resToastText()I

    move-result v0

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lorg/acra/ACRAConfigurationException;

    const-string/jumbo v1, "TOAST mode: you have to define the resToastText parameter in your application @ReportsCrashes() annotation."

    invoke-direct {v0, v1}, Lorg/acra/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :pswitch_1
    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->resNotifTickerText()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->resNotifTitle()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->resNotifText()I

    move-result v0

    if-nez v0, :cond_2

    .line 270
    :cond_1
    new-instance v0, Lorg/acra/ACRAConfigurationException;

    const-string/jumbo v1, "NOTIFICATION mode: you have to define at least the resNotifTickerText, resNotifTitle, resNotifText parameters in your application @ReportsCrashes() annotation."

    invoke-direct {v0, v1}, Lorg/acra/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_2
    const-class v0, Lorg/acra/CrashReportDialog;

    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->reportDialogClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->resDialogText()I

    move-result v0

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Lorg/acra/ACRAConfigurationException;

    const-string/jumbo v1, "NOTIFICATION mode: using the (default) CrashReportDialog requires you have to define the resDialogText parameter in your application @ReportsCrashes() annotation."

    invoke-direct {v0, v1}, Lorg/acra/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :pswitch_2
    const-class v0, Lorg/acra/CrashReportDialog;

    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->reportDialogClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/acra/annotation/ReportsCrashes;->resDialogText()I

    move-result v0

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lorg/acra/ACRAConfigurationException;

    const-string/jumbo v1, "DIALOG mode: using the (default) CrashReportDialog requires you to define the resDialogText parameter in your application @ReportsCrashes() annotation."

    invoke-direct {v0, v1}, Lorg/acra/ACRAConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getACRASharedPreferences()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 299
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    .line 300
    .local v0, "conf":Lorg/acra/annotation/ReportsCrashes;
    const-string/jumbo v1, ""

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    sget-object v1, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesMode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 303
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    goto :goto_0
.end method

.method static getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getConfig()Lorg/acra/ACRAConfiguration;
    .locals 3

    .prologue
    .line 313
    sget-object v0, Lorg/acra/ACRA;->configProxy:Lorg/acra/ACRAConfiguration;

    if-nez v0, :cond_1

    .line 314
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 315
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Calling ACRA.getConfig() before ACRA.init() gives you an empty configuration instance. You might prefer calling ACRA.getNewDefaultConfig(Application) to get an instance with default values taken from a @ReportsCrashes annotation."

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    sget-object v0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lorg/acra/ACRA;->getNewDefaultConfig(Landroid/app/Application;)Lorg/acra/ACRAConfiguration;

    move-result-object v0

    sput-object v0, Lorg/acra/ACRA;->configProxy:Lorg/acra/ACRAConfiguration;

    .line 320
    :cond_1
    sget-object v0, Lorg/acra/ACRA;->configProxy:Lorg/acra/ACRAConfiguration;

    return-object v0
.end method

.method public static getErrorReporter()Lorg/acra/ErrorReporter;
    .locals 2

    .prologue
    .line 225
    sget-object v0, Lorg/acra/ACRA;->errorReporterSingleton:Lorg/acra/ErrorReporter;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot access ErrorReporter before ACRA#init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    sget-object v0, Lorg/acra/ACRA;->errorReporterSingleton:Lorg/acra/ErrorReporter;

    return-object v0
.end method

.method public static getNewDefaultConfig(Landroid/app/Application;)Lorg/acra/ACRAConfiguration;
    .locals 3
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 329
    if-eqz p0, :cond_0

    .line 330
    new-instance v1, Lorg/acra/ACRAConfiguration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lorg/acra/annotation/ReportsCrashes;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/acra/annotation/ReportsCrashes;

    invoke-direct {v1, v0}, Lorg/acra/ACRAConfiguration;-><init>(Lorg/acra/annotation/ReportsCrashes;)V

    move-object v0, v1

    .line 332
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/acra/ACRAConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/acra/ACRAConfiguration;-><init>(Lorg/acra/annotation/ReportsCrashes;)V

    goto :goto_0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 5
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/acra/annotation/ReportsCrashes;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/acra/annotation/ReportsCrashes;

    .line 116
    .local v0, "reportsCrashes":Lorg/acra/annotation/ReportsCrashes;
    if-nez v0, :cond_0

    .line 117
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ACRA#init called but no ReportsCrashes annotation on Application "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v1, Lorg/acra/ACRAConfiguration;

    invoke-direct {v1, v0}, Lorg/acra/ACRAConfiguration;-><init>(Lorg/acra/annotation/ReportsCrashes;)V

    invoke-static {p0, v1}, Lorg/acra/ACRA;->init(Landroid/app/Application;Lorg/acra/ACRAConfiguration;)V

    goto :goto_0
.end method

.method public static init(Landroid/app/Application;Lorg/acra/ACRAConfiguration;)V
    .locals 1
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "config"    # Lorg/acra/ACRAConfiguration;

    .prologue
    .line 136
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/acra/ACRA;->init(Landroid/app/Application;Lorg/acra/ACRAConfiguration;Z)V

    .line 137
    return-void
.end method

.method public static init(Landroid/app/Application;Lorg/acra/ACRAConfiguration;Z)V
    .locals 9
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "config"    # Lorg/acra/ACRAConfiguration;
    .param p2, "checkReportsOnApplicationStart"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 157
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x8

    if-lt v6, v7, :cond_1

    move v4, v1

    .line 158
    .local v4, "supportedAndroidVersion":Z
    :goto_0
    if-nez v4, :cond_0

    .line 159
    sget-object v6, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v7, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "ACRA 4.7.0+ requires Froyo or greater. ACRA is disabled and will NOT catch crashes or send messages."

    invoke-interface {v6, v7, v8}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    sget-object v6, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    if-eqz v6, :cond_2

    .line 163
    sget-object v5, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v6, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "ACRA#init called more than once. Won\'t do anything more."

    invoke-interface {v5, v6, v7}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_1
    return-void

    .end local v4    # "supportedAndroidVersion":Z
    :cond_1
    move v4, v5

    .line 157
    goto :goto_0

    .line 166
    .restart local v4    # "supportedAndroidVersion":Z
    :cond_2
    sput-object p0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    .line 168
    if-nez p1, :cond_3

    .line 169
    sget-object v5, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v6, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "ACRA#init called but no ACRAConfiguration provided"

    invoke-interface {v5, v6, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 172
    :cond_3
    sput-object p1, Lorg/acra/ACRA;->configProxy:Lorg/acra/ACRAConfiguration;

    .line 174
    invoke-static {}, Lorg/acra/ACRA;->getACRASharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 177
    .local v3, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-static {p1}, Lorg/acra/ACRA;->checkCrashResources(Lorg/acra/annotation/ReportsCrashes;)V

    .line 180
    if-eqz v4, :cond_5

    invoke-static {v3}, Lorg/acra/ACRA;->shouldDisableACRA(Landroid/content/SharedPreferences;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 181
    .local v1, "enableAcra":Z
    :goto_2
    sget-object v6, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v7, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ACRA is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v1, :cond_6

    const-string/jumbo v5, "enabled"

    :goto_3
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v8}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ", initializing..."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v2, Lorg/acra/ErrorReporter;

    sget-object v5, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-direct {v2, v5, v3, v1, v4}, Lorg/acra/ErrorReporter;-><init>(Landroid/app/Application;Landroid/content/SharedPreferences;ZZ)V

    .line 185
    .local v2, "errorReporter":Lorg/acra/ErrorReporter;
    invoke-virtual {v2}, Lorg/acra/ErrorReporter;->setDefaultReportSenders()V

    .line 187
    sput-object v2, Lorg/acra/ACRA;->errorReporterSingleton:Lorg/acra/ErrorReporter;

    .line 190
    if-eqz p2, :cond_4

    .line 191
    invoke-virtual {v2}, Lorg/acra/ErrorReporter;->checkReportsOnApplicationStart()V
    :try_end_0
    .catch Lorg/acra/ACRAConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v1    # "enableAcra":Z
    .end local v2    # "errorReporter":Lorg/acra/ErrorReporter;
    :cond_4
    :goto_4
    new-instance v5, Lorg/acra/ACRA$1;

    invoke-direct {v5}, Lorg/acra/ACRA$1;-><init>()V

    sput-object v5, Lorg/acra/ACRA;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 215
    sget-object v5, Lorg/acra/ACRA;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_1

    :cond_5
    move v1, v5

    .line 180
    goto :goto_2

    .line 181
    .restart local v1    # "enableAcra":Z
    :cond_6
    :try_start_1
    const-string/jumbo v5, "disabled"
    :try_end_1
    .catch Lorg/acra/ACRAConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 194
    .end local v1    # "enableAcra":Z
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Lorg/acra/ACRAConfigurationException;
    sget-object v5, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v6, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "Error : "

    invoke-interface {v5, v6, v7, v0}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method static isDebuggable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 344
    sget-object v3, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 346
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    sget-object v3, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_0

    const/4 v2, 0x1

    .line 348
    :cond_0
    :goto_0
    return v2

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static setLog(Lorg/acra/log/ACRALog;)V
    .locals 2
    .param p0, "log"    # Lorg/acra/log/ACRALog;

    .prologue
    .line 357
    if-nez p0, :cond_0

    .line 358
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "ACRALog cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    sput-object p0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    .line 361
    return-void
.end method

.method private static shouldDisableACRA(Landroid/content/SharedPreferences;)Z
    .locals 5
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v2, 0x1

    .line 244
    const/4 v0, 0x0

    .line 246
    .local v0, "disableAcra":Z
    :try_start_0
    const-string/jumbo v3, "acra.enable"

    const/4 v4, 0x1

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 247
    .local v1, "enableAcra":Z
    const-string/jumbo v3, "acra.disable"

    if-nez v1, :cond_0

    :goto_0
    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 251
    .end local v1    # "enableAcra":Z
    :goto_1
    return v0

    .line 247
    .restart local v1    # "enableAcra":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 248
    .end local v1    # "enableAcra":Z
    :catch_0
    move-exception v2

    goto :goto_1
.end method
