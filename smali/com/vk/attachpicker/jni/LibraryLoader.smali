.class public Lcom/vk/attachpicker/jni/LibraryLoader;
.super Ljava/lang/Object;
.source "LibraryLoader.java"


# static fields
.field public static final CUSTOM_LIB_DIR:Ljava/lang/String; = "lib"

.field public static final LOG_TAG:Ljava/lang/String;

.field private static sUpdatedTime:J

.field private static sVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-class v0, Lcom/vk/attachpicker/jni/LibraryLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vk/attachpicker/jni/LibraryLoader;->LOG_TAG:Ljava/lang/String;

    .line 20
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vk/attachpicker/jni/LibraryLoader;->sUpdatedTime:J

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/vk/attachpicker/jni/LibraryLoader;->sVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanOldFiles(Ljava/io/File;Z)V
    .locals 7
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "deleteDir"    # Z

    .prologue
    .line 226
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 227
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_3

    .line 228
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 229
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/vk/attachpicker/jni/LibraryLoader;->sVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 235
    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/vk/attachpicker/jni/LibraryLoader;->cleanOldFiles(Ljava/io/File;Z)V

    goto :goto_1

    .line 236
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 237
    sget-object v4, Lcom/vk/attachpicker/jni/LibraryLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 239
    :cond_2
    sget-object v4, Lcom/vk/attachpicker/jni/LibraryLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Deleted stale file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 243
    .end local v0    # "file":Ljava/io/File;
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_4

    .line 244
    sget-object v2, Lcom/vk/attachpicker/jni/LibraryLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_4
    return-void
.end method

.method private static getPackageInfo(Landroid/content/Context;)V
    .locals 8
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-object v3, Lcom/vk/attachpicker/jni/LibraryLoader;->sVersion:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 46
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_3

    .line 48
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 49
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    sput-wide v4, Lcom/vk/attachpicker/jni/LibraryLoader;->sUpdatedTime:J

    .line 50
    sget-wide v4, Lcom/vk/attachpicker/jni/LibraryLoader;->sUpdatedTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 51
    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    sput-wide v4, Lcom/vk/attachpicker/jni/LibraryLoader;->sUpdatedTime:J

    .line 53
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/vk/attachpicker/jni/LibraryLoader;->sUpdatedTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vk/attachpicker/jni/LibraryLoader;->sVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_1
    sget-object v3, Lcom/vk/attachpicker/jni/LibraryLoader;->sVersion:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 59
    const-string/jumbo v3, "0"

    sput-object v3, Lcom/vk/attachpicker/jni/LibraryLoader;->sVersion:Ljava/lang/String;

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/vk/attachpicker/jni/LibraryLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Package information not found."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static loadLibraries(Landroid/content/Context;Z[Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fromAssets"    # Z
    .param p2, "libraries"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    const-string/jumbo v2, "Null context"

    invoke-direct {v1, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 30
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Lcom/vk/attachpicker/jni/LibraryLoader;->getPackageInfo(Landroid/content/Context;)V

    .line 32
    if-nez p1, :cond_1

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/vk/attachpicker/jni/LibraryLoader;->trySystemLibraries(Landroid/content/Context;Z[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lcom/vk/attachpicker/jni/LibraryLoader;->trySystemLibraries(Landroid/content/Context;Z[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 34
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    const-string/jumbo v2, "Error loading libraries from APK"

    invoke-direct {v1, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_1
    invoke-static {v0, p1, p2}, Lcom/vk/attachpicker/jni/LibraryLoader;->unpackAndLoadLibraries(Landroid/content/Context;Z[Ljava/lang/String;)V

    .line 39
    :cond_2
    return-void
.end method

.method private static trySystemLibraries(Landroid/content/Context;Z[Ljava/lang/String;)Z
    .locals 12
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "load"    # Z
    .param p2, "libraries"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 66
    .local v2, "libRoot":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/system/vendor/lib"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "preinstallRoot":Ljava/lang/String;
    array-length v7, p2

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_5

    aget-object v1, p2, v6

    .line 68
    .local v1, "libName":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "libTail":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v0, "libFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 73
    new-instance v0, Ljava/io/File;

    .end local v0    # "libFile":Ljava/io/File;
    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .restart local v0    # "libFile":Ljava/io/File;
    :cond_0
    if-eqz p1, :cond_3

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 77
    new-instance v5, Ljava/lang/UnsatisfiedLinkError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Missing library: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 79
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 67
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    .line 90
    .end local v0    # "libFile":Ljava/io/File;
    .end local v1    # "libName":Ljava/lang/String;
    .end local v3    # "libTail":Ljava/lang/String;
    :goto_1
    return v5

    .line 84
    .restart local v0    # "libFile":Ljava/io/File;
    .restart local v1    # "libName":Ljava/lang/String;
    .restart local v3    # "libTail":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sget-wide v10, Lcom/vk/attachpicker/jni/LibraryLoader;->sUpdatedTime:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    goto :goto_1

    .line 90
    .end local v0    # "libFile":Ljava/io/File;
    .end local v1    # "libName":Ljava/lang/String;
    .end local v3    # "libTail":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private static unpackAndLoadLibraries(Landroid/content/Context;Z[Ljava/lang/String;)V
    .locals 8
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "fromAssets"    # Z
    .param p2, "libraries"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v4, 0x0

    .line 96
    .local v4, "unpacked":Z
    invoke-static {p0}, Lcom/vk/attachpicker/jni/LibraryLoader;->unpackLibVersionedDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 97
    .local v2, "libRoot":Ljava/io/File;
    array-length v6, p2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v1, p2, v5

    .line 98
    .local v1, "libName":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "libTail":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    .local v0, "libFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    if-nez v4, :cond_0

    .line 101
    invoke-static {p0, p1, p2}, Lcom/vk/attachpicker/jni/LibraryLoader;->unpackLibraries(Landroid/content/Context;Z[Ljava/lang/String;)V

    .line 102
    const/4 v4, 0x1

    .line 104
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 97
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 107
    :cond_1
    new-instance v5, Ljava/lang/UnsatisfiedLinkError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Missing library for unpack: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 110
    .end local v0    # "libFile":Ljava/io/File;
    .end local v1    # "libName":Ljava/lang/String;
    .end local v3    # "libTail":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static unpackLibDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 249
    const-string/jumbo v0, "lib"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static unpackLibVersionedDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 253
    invoke-static {p0}, Lcom/vk/attachpicker/jni/LibraryLoader;->unpackLibDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 254
    .local v0, "root":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/vk/attachpicker/jni/LibraryLoader;->sVersion:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static unpackLibraries(Landroid/content/Context;Z[Ljava/lang/String;)V
    .locals 24
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "fromAssets"    # Z
    .param p2, "libraries"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static/range {p0 .. p0}, Lcom/vk/attachpicker/jni/LibraryLoader;->unpackLibDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/vk/attachpicker/jni/LibraryLoader;->cleanOldFiles(Ljava/io/File;Z)V

    .line 116
    const/16 v18, 0x0

    .line 117
    .local v18, "zipFile":Ljava/util/zip/ZipFile;
    if-nez p1, :cond_0

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 120
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    new-instance v18, Ljava/util/zip/ZipFile;

    .end local v18    # "zipFile":Ljava/util/zip/ZipFile;
    new-instance v19, Ljava/io/File;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x1

    invoke-direct/range {v18 .. v20}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v18    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/vk/attachpicker/jni/LibraryLoader;->unpackTmpDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v16

    .line 127
    .local v16, "unpackTmpRoot":Ljava/io/File;
    invoke-static/range {p0 .. p0}, Lcom/vk/attachpicker/jni/LibraryLoader;->unpackLibVersionedDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v15

    .line 128
    .local v15, "unpackInstallRoot":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    .line 129
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 131
    const/4 v13, 0x1

    .line 132
    .local v13, "success":Z
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    aget-object v9, p2, v19

    .line 133
    .local v9, "libName":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 134
    .local v10, "libTail":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v14, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    .local v14, "unpackFile":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v15, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .local v7, "installFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 132
    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 121
    .end local v7    # "installFile":Ljava/io/File;
    .end local v9    # "libName":Ljava/lang/String;
    .end local v10    # "libTail":Ljava/lang/String;
    .end local v13    # "success":Z
    .end local v14    # "unpackFile":Ljava/io/File;
    .end local v15    # "unpackInstallRoot":Ljava/io/File;
    .end local v16    # "unpackTmpRoot":Ljava/io/File;
    .end local v18    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v5

    .line 122
    .local v5, "e":Ljava/io/IOException;
    new-instance v19, Ljava/lang/UnsatisfiedLinkError;

    const-string/jumbo v20, "Error opening APK"

    invoke-direct/range {v19 .. v20}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v19

    .line 141
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v7    # "installFile":Ljava/io/File;
    .restart local v9    # "libName":Ljava/lang/String;
    .restart local v10    # "libTail":Ljava/lang/String;
    .restart local v13    # "success":Z
    .restart local v14    # "unpackFile":Ljava/io/File;
    .restart local v15    # "unpackInstallRoot":Ljava/io/File;
    .restart local v16    # "unpackTmpRoot":Ljava/io/File;
    .restart local v18    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_2
    sget-object v21, Lcom/vk/attachpicker/jni/LibraryLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Unpacking to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "; installing to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 142
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 141
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 146
    :try_start_1
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    move-result v21

    if-nez v21, :cond_3

    .line 147
    new-instance v19, Ljava/io/IOException;

    const-string/jumbo v20, "Unable to create unpack file."

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 212
    :catch_1
    move-exception v5

    .line 213
    .restart local v5    # "e":Ljava/io/IOException;
    new-instance v19, Ljava/lang/UnsatisfiedLinkError;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v19

    .line 150
    .end local v5    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v8, 0x0

    .line 151
    .local v8, "is":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 153
    .local v11, "os":Ljava/io/OutputStream;
    if-eqz p1, :cond_6

    .line 155
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "lib/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    .line 178
    :goto_1
    :try_start_3
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    .end local v11    # "os":Ljava/io/OutputStream;
    .local v12, "os":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 181
    .local v4, "count":I
    const/16 v21, 0x4000

    :try_start_4
    move/from16 v0, v21

    new-array v3, v0, [B

    .line 182
    .local v3, "buffer":[B
    :goto_2
    invoke-virtual {v8, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/16 v21, -0x1

    move/from16 v0, v21

    if-le v4, v0, :cond_9

    .line 183
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v3, v0, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 186
    .end local v3    # "buffer":[B
    :catchall_0
    move-exception v19

    move-object v11, v12

    .end local v4    # "count":I
    .end local v12    # "os":Ljava/io/OutputStream;
    .restart local v11    # "os":Ljava/io/OutputStream;
    :goto_3
    if-eqz v8, :cond_4

    .line 188
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 192
    :cond_4
    :goto_4
    if-eqz v11, :cond_5

    .line 194
    :try_start_6
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 196
    :cond_5
    :goto_5
    :try_start_7
    throw v19
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 156
    :catch_2
    move-exception v5

    .line 158
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "lib/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 159
    sget-object v21, Lcom/vk/attachpicker/jni/LibraryLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Falling back from "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 160
    :catch_3
    move-exception v6

    .line 161
    .local v6, "e2":Ljava/io/IOException;
    :try_start_9
    throw v5

    .line 186
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e2":Ljava/io/IOException;
    :catchall_1
    move-exception v19

    goto :goto_3

    .line 165
    :cond_6
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "lib/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v17

    .line 166
    .local v17, "zipEntry":Ljava/util/zip/ZipEntry;
    if-nez v17, :cond_7

    .line 167
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "lib/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v17

    .line 168
    if-eqz v17, :cond_7

    .line 169
    sget-object v21, Lcom/vk/attachpicker/jni/LibraryLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Falling back from "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_7
    if-nez v17, :cond_8

    .line 173
    new-instance v19, Ljava/io/IOException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "APK is missing library: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 175
    :cond_8
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-object v8

    goto/16 :goto_1

    .line 186
    .end local v11    # "os":Ljava/io/OutputStream;
    .end local v17    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "buffer":[B
    .restart local v4    # "count":I
    .restart local v12    # "os":Ljava/io/OutputStream;
    :cond_9
    if-eqz v8, :cond_a

    .line 188
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 192
    :cond_a
    :goto_6
    if-eqz v12, :cond_b

    .line 194
    :try_start_b
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 201
    :cond_b
    :goto_7
    const/16 v21, 0x1

    const/16 v22, 0x0

    :try_start_c
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 202
    const/16 v21, 0x1

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 203
    const/16 v21, 0x1

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 205
    invoke-virtual {v14, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 206
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_1

    .line 209
    new-instance v19, Ljava/lang/UnsatisfiedLinkError;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Unable to install library: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    .line 217
    .end local v3    # "buffer":[B
    .end local v4    # "count":I
    .end local v7    # "installFile":Ljava/io/File;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "libName":Ljava/lang/String;
    .end local v10    # "libTail":Ljava/lang/String;
    .end local v12    # "os":Ljava/io/OutputStream;
    .end local v14    # "unpackFile":Ljava/io/File;
    :cond_c
    if-eqz v18, :cond_d

    .line 219
    :try_start_d
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 223
    :cond_d
    :goto_8
    return-void

    .line 189
    .restart local v3    # "buffer":[B
    .restart local v4    # "count":I
    .restart local v7    # "installFile":Ljava/io/File;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "libName":Ljava/lang/String;
    .restart local v10    # "libTail":Ljava/lang/String;
    .restart local v12    # "os":Ljava/io/OutputStream;
    .restart local v14    # "unpackFile":Ljava/io/File;
    :catch_4
    move-exception v21

    goto :goto_6

    .line 195
    :catch_5
    move-exception v21

    goto :goto_7

    .line 189
    .end local v3    # "buffer":[B
    .end local v4    # "count":I
    .end local v12    # "os":Ljava/io/OutputStream;
    .restart local v11    # "os":Ljava/io/OutputStream;
    :catch_6
    move-exception v20

    goto/16 :goto_4

    .line 195
    :catch_7
    move-exception v20

    goto/16 :goto_5

    .line 220
    .end local v7    # "installFile":Ljava/io/File;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "libName":Ljava/lang/String;
    .end local v10    # "libTail":Ljava/lang/String;
    .end local v11    # "os":Ljava/io/OutputStream;
    .end local v14    # "unpackFile":Ljava/io/File;
    :catch_8
    move-exception v19

    goto :goto_8
.end method

.method private static unpackTmpDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 258
    invoke-static {p0}, Lcom/vk/attachpicker/jni/LibraryLoader;->unpackLibDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 259
    .local v0, "root":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/vk/attachpicker/jni/LibraryLoader;->sVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
