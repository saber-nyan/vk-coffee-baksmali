.class public Lcom/vkcoffee/android/utils/VersionCodeCrushHandler;
.super Ljava/lang/Object;
.source "VersionCodeCrushHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static versionCode:I


# instance fields
.field private final nextHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/utils/VersionCodeCrushHandler;->nextHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 14
    invoke-static {p1}, Lcom/vkcoffee/android/utils/VersionCodeCrushHandler;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/utils/VersionCodeCrushHandler;->versionCode:I

    .line 15
    return-void
.end method

.method public static addVersionCodeInfo([Ljava/lang/StackTraceElement;I)[Ljava/lang/StackTraceElement;
    .locals 7
    .param p0, "stackTrace"    # [Ljava/lang/StackTraceElement;
    .param p1, "versionCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 43
    if-nez p0, :cond_1

    move v1, v2

    .line 44
    .local v1, "originalLength":I
    :goto_0
    add-int/lit8 v3, v1, 0x1

    new-array v0, v3, [Ljava/lang/StackTraceElement;

    .line 45
    .local v0, "newStackTrace":[Ljava/lang/StackTraceElement;
    new-instance v3, Ljava/lang/StackTraceElement;

    const-string/jumbo v4, "InfoAboutApp"

    const-string/jumbo v5, "VersionCode"

    const-string/jumbo v6, "numberVersionCode"

    invoke-direct {v3, v4, v5, v6, p1}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v3, v0, v1

    .line 46
    if-eqz p0, :cond_0

    .line 47
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    :cond_0
    return-object v0

    .line 43
    .end local v0    # "newStackTrace":[Ljava/lang/StackTraceElement;
    .end local v1    # "originalLength":I
    :cond_1
    array-length v1, p0

    goto :goto_0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return v1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 19
    iget-object v1, p0, Lcom/vkcoffee/android/utils/VersionCodeCrushHandler;->nextHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 21
    .local v0, "elements":[Ljava/lang/StackTraceElement;
    sget v1, Lcom/vkcoffee/android/utils/VersionCodeCrushHandler;->versionCode:I

    invoke-static {v0, v1}, Lcom/vkcoffee/android/utils/VersionCodeCrushHandler;->addVersionCodeInfo([Ljava/lang/StackTraceElement;I)[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 22
    iget-object v1, p0, Lcom/vkcoffee/android/utils/VersionCodeCrushHandler;->nextHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 24
    .end local v0    # "elements":[Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method
