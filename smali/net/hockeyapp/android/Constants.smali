.class public Lnet/hockeyapp/android/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static ANDROID_VERSION:Ljava/lang/String; = null

.field public static APP_PACKAGE:Ljava/lang/String; = null

.field public static APP_VERSION:Ljava/lang/String; = null

.field public static APP_VERSION_NAME:Ljava/lang/String; = null

.field public static final BASE_URL:Ljava/lang/String; = "https://sdk.hockeyapp.net/"

.field public static FILES_PATH:Ljava/lang/String; = null

.field public static PHONE_MANUFACTURER:Ljava/lang/String; = null

.field public static PHONE_MODEL:Ljava/lang/String; = null

.field public static final SDK_NAME:Ljava/lang/String; = "HockeySDK"

.field public static final SDK_VERSION:Ljava/lang/String; = "3.5.0-SNAPSHOT"

.field public static final TAG:Ljava/lang/String; = "HockeyApp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-object v0, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    .line 61
    sput-object v0, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    .line 66
    sput-object v0, Lnet/hockeyapp/android/Constants;->APP_VERSION_NAME:Ljava/lang/String;

    .line 71
    sput-object v0, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    .line 76
    sput-object v0, Lnet/hockeyapp/android/Constants;->ANDROID_VERSION:Ljava/lang/String;

    .line 81
    sput-object v0, Lnet/hockeyapp/android/Constants;->PHONE_MODEL:Ljava/lang/String;

    .line 86
    sput-object v0, Lnet/hockeyapp/android/Constants;->PHONE_MANUFACTURER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHockeyAppStorageDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 129
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 131
    .local v1, "externalStorage":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "HockeyApp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 133
    return-object v0
.end method

.method private static loadBuildNumber(Landroid/content/Context;Landroid/content/pm/PackageManager;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v3, 0x0

    .line 189
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {p1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 190
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 191
    .local v2, "metaData":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 192
    const-string/jumbo v4, "buildNumber"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 200
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "metaData":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return v3

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "HockeyApp"

    const-string/jumbo v5, "Exception thrown when accessing the application info:"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static loadFilesPath(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    if-eqz p0, :cond_0

    .line 145
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 149
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "HockeyApp"

    const-string/jumbo v3, "Exception thrown when accessing the files dir:"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static loadFromContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lnet/hockeyapp/android/Constants;->ANDROID_VERSION:Ljava/lang/String;

    .line 116
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lnet/hockeyapp/android/Constants;->PHONE_MODEL:Ljava/lang/String;

    .line 117
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lnet/hockeyapp/android/Constants;->PHONE_MANUFACTURER:Ljava/lang/String;

    .line 119
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadFilesPath(Landroid/content/Context;)V

    .line 120
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadPackageData(Landroid/content/Context;)V

    .line 121
    return-void
.end method

.method private static loadPackageData(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    if-eqz p0, :cond_0

    .line 169
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 170
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 171
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v4, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    .line 173
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v4, Lnet/hockeyapp/android/Constants;->APP_VERSION_NAME:Ljava/lang/String;

    .line 175
    invoke-static {p0, v3}, Lnet/hockeyapp/android/Constants;->loadBuildNumber(Landroid/content/Context;Landroid/content/pm/PackageManager;)I

    move-result v0

    .line 176
    .local v0, "buildNumber":I
    if-eqz v0, :cond_0

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v0, v4, :cond_0

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v0    # "buildNumber":I
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "HockeyApp"

    const-string/jumbo v5, "Exception thrown when accessing the package info:"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
