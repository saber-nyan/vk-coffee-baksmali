.class final Lorg/acra/CrashReportFinder;
.super Ljava/lang/Object;
.source "CrashReportFinder.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/acra/CrashReportFinder;->context:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public getCrashReportFiles()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 45
    iget-object v3, p0, Lorg/acra/CrashReportFinder;->context:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 46
    sget-object v3, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v4, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Trying to get ACRA reports but ACRA is not initialized."

    invoke-interface {v3, v4, v5}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-array v2, v7, [Ljava/lang/String;

    .line 65
    :cond_0
    :goto_0
    return-object v2

    .line 50
    :cond_1
    iget-object v3, p0, Lorg/acra/CrashReportFinder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 51
    .local v0, "dir":Ljava/io/File;
    if-nez v0, :cond_2

    .line 52
    sget-object v3, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v4, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Application files directory does not exist! The application may not be installed correctly. Please try reinstalling."

    invoke-interface {v3, v4, v5}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-array v2, v7, [Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_2
    sget-object v3, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v4, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Looking for error files in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v1, Lorg/acra/CrashReportFinder$1;

    invoke-direct {v1, p0}, Lorg/acra/CrashReportFinder$1;-><init>(Lorg/acra/CrashReportFinder;)V

    .line 64
    .local v1, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "result":[Ljava/lang/String;
    if-nez v2, :cond_0

    new-array v2, v7, [Ljava/lang/String;

    goto :goto_0
.end method
