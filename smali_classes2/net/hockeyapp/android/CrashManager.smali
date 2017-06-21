.class public Lnet/hockeyapp/android/CrashManager;
.super Ljava/lang/Object;
.source "CrashManager.java"


# static fields
.field private static final ALWAYS_SEND_KEY:Ljava/lang/String; = "always_send_crash_reports"

.field private static identifier:Ljava/lang/String;

.field private static urlString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    sput-object v0, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    .line 81
    sput-object v0, Lnet/hockeyapp/android/CrashManager;->urlString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/ref/WeakReference;
    .param p1, "x1"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p2, "x2"    # Z

    .prologue
    .line 72
    invoke-static {p0, p1, p2}, Lnet/hockeyapp/android/CrashManager;->registerHandler(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/ref/WeakReference;
    .param p1, "x1"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p2, "x2"    # Z

    .prologue
    .line 72
    invoke-static {p0, p1, p2}, Lnet/hockeyapp/android/CrashManager;->sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    return-void
.end method

.method private static contentsOfFile(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 486
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v1, 0x0

    .line 487
    .local v1, "context":Landroid/content/Context;
    if-eqz p0, :cond_3

    .line 488
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "context":Landroid/content/Context;
    check-cast v1, Landroid/content/Context;

    .line 489
    .restart local v1    # "context":Landroid/content/Context;
    if-eqz v1, :cond_3

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .local v0, "contents":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 493
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v1, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 495
    .local v3, "line":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 496
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const-string/jumbo v6, "line.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 500
    :catch_0
    move-exception v6

    move-object v4, v5

    .line 506
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v4, :cond_0

    .line 508
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 515
    :cond_0
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 519
    .end local v0    # "contents":Ljava/lang/StringBuilder;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :goto_3
    return-object v6

    .line 506
    .restart local v0    # "contents":Ljava/lang/StringBuilder;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_1
    if-eqz v5, :cond_4

    .line 508
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v5

    .line 511
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 510
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v6

    move-object v4, v5

    .line 511
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 502
    .end local v3    # "line":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 503
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 506
    if-eqz v4, :cond_0

    .line 508
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 510
    :catch_3
    move-exception v6

    goto :goto_2

    .line 506
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v4, :cond_2

    .line 508
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 511
    :cond_2
    :goto_6
    throw v6

    .line 519
    .end local v0    # "contents":Ljava/lang/StringBuilder;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 510
    .restart local v0    # "contents":Ljava/lang/StringBuilder;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v6

    goto :goto_2

    :catch_5
    move-exception v7

    goto :goto_6

    .line 506
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 502
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 500
    .end local v3    # "line":Ljava/lang/String;
    :catch_7
    move-exception v6

    goto :goto_1

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_4
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private static deleteStackTrace(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 464
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v1, 0x0

    .line 465
    .local v1, "context":Landroid/content/Context;
    if-eqz p0, :cond_0

    .line 466
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "context":Landroid/content/Context;
    check-cast v1, Landroid/content/Context;

    .line 467
    .restart local v1    # "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 468
    invoke-virtual {v1, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 470
    const-string/jumbo v4, ".stacktrace"

    const-string/jumbo v5, ".user"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, "user":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 473
    const-string/jumbo v4, ".stacktrace"

    const-string/jumbo v5, ".contact"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "contact":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 476
    const-string/jumbo v4, ".stacktrace"

    const-string/jumbo v5, ".description"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, "description":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 480
    .end local v0    # "contact":Ljava/lang/String;
    .end local v2    # "description":Ljava/lang/String;
    .end local v3    # "user":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static deleteStackTraces(Ljava/lang/ref/WeakReference;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->searchForStackTraces()[Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, "list":[Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    .line 309
    const-string/jumbo v5, "HockeyApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " stacktrace(s)."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 313
    const/4 v1, 0x0

    .line 314
    .local v1, "context":Landroid/content/Context;
    if-eqz p0, :cond_0

    .line 315
    :try_start_0
    const-string/jumbo v5, "HockeyApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Delete stacktrace "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    aget-object v5, v4, v3

    invoke-static {p0, v5}, Lnet/hockeyapp/android/CrashManager;->deleteStackTrace(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/content/Context;

    move-object v1, v0

    .line 319
    if-eqz v1, :cond_0

    .line 320
    aget-object v5, v4, v3

    invoke-virtual {v1, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 324
    :catch_0
    move-exception v2

    .line 325
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 329
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "index":I
    :cond_1
    return-void
.end method

.method public static execute(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 160
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->ignoreDefaultHandler()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 161
    .local v2, "ignoreDefaultHandler":Ljava/lang/Boolean;
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 163
    .local v4, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-static {v4}, Lnet/hockeyapp/android/CrashManager;->hasStackTraces(Ljava/lang/ref/WeakReference;)I

    move-result v1

    .line 164
    .local v1, "foundOrSend":I
    if-ne v1, v6, :cond_3

    .line 165
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 166
    .local v0, "autoSend":Ljava/lang/Boolean;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 167
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string/jumbo v6, "always_send_crash_reports"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 169
    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->shouldAutoUploadCrashes()Z

    move-result v6

    or-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesFound()Z

    move-result v6

    or-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onNewCrashesFound()V

    .line 176
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    .line 177
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v4, p1, v5}, Lnet/hockeyapp/android/CrashManager;->showDialog(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 193
    .end local v0    # "autoSend":Ljava/lang/Boolean;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .end local v1    # "foundOrSend":I
    .end local v2    # "ignoreDefaultHandler":Ljava/lang/Boolean;
    .end local v4    # "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    :cond_1
    move v5, v7

    .line 160
    goto :goto_0

    .line 180
    .restart local v0    # "autoSend":Ljava/lang/Boolean;
    .restart local v1    # "foundOrSend":I
    .restart local v2    # "ignoreDefaultHandler":Ljava/lang/Boolean;
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    .restart local v4    # "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v4, p1, v5}, Lnet/hockeyapp/android/CrashManager;->sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    goto :goto_1

    .line 183
    .end local v0    # "autoSend":Ljava/lang/Boolean;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 184
    if-eqz p1, :cond_4

    .line 185
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onConfirmedCrashesFound()V

    .line 188
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v4, p1, v5}, Lnet/hockeyapp/android/CrashManager;->sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    goto :goto_1

    .line 191
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v4, p1, v5}, Lnet/hockeyapp/android/CrashManager;->registerHandler(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    goto :goto_1
.end method

.method private static getURLString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/hockeyapp/android/CrashManager;->urlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/2/apps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/crashes/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasStackTraces(Ljava/lang/ref/WeakReference;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v8, 0x0

    .line 204
    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->searchForStackTraces()[Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, "filenames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 206
    .local v1, "confirmedFilenames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 207
    .local v6, "result":I
    if-eqz v4, :cond_1

    array-length v7, v4

    if-lez v7, :cond_1

    .line 209
    const/4 v2, 0x0

    .line 210
    .local v2, "context":Landroid/content/Context;
    if-eqz p0, :cond_0

    .line 211
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/content/Context;

    move-object v2, v0

    .line 212
    if-eqz v2, :cond_0

    .line 213
    const-string/jumbo v7, "HockeySDK"

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 214
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v7, "ConfirmedFilenames"

    const-string/jumbo v9, ""

    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "\\|"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 223
    .end local v5    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 224
    const/4 v6, 0x2

    .line 226
    array-length v9, v4

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_1

    aget-object v3, v4, v7

    .line 227
    .local v3, "filename":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 228
    const/4 v6, 0x1

    .line 238
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "filename":Ljava/lang/String;
    :cond_1
    :goto_2
    return v6

    .line 226
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "filename":Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 234
    .end local v3    # "filename":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x1

    goto :goto_2

    .line 219
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    .line 148
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lnet/hockeyapp/android/CrashManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 149
    return-void
.end method

.method private static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p4, "registerHandler"    # Z

    .prologue
    .line 337
    if-eqz p0, :cond_1

    .line 338
    sput-object p1, Lnet/hockeyapp/android/CrashManager;->urlString:Ljava/lang/String;

    .line 339
    sput-object p2, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    .line 341
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 343
    sget-object v2, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 344
    sget-object v2, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    sput-object v2, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    .line 347
    :cond_0
    if-eqz p4, :cond_1

    .line 348
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lnet/hockeyapp/android/CrashManagerListener;->ignoreDefaultHandler()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 349
    .local v0, "ignoreDefaultHandler":Ljava/lang/Boolean;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 350
    .local v1, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, p3, v2}, Lnet/hockeyapp/android/CrashManager;->registerHandler(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 353
    .end local v0    # "ignoreDefaultHandler":Ljava/lang/Boolean;
    .end local v1    # "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    :cond_1
    return-void

    .line 348
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdentifier"    # Ljava/lang/String;
    .param p2, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    .line 133
    const-string/jumbo v0, "https://sdk.hockeyapp.net/"

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Lnet/hockeyapp/android/CrashManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 134
    return-void
.end method

.method private static joinArray([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 549
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 550
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 551
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 553
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 556
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdentifier"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string/jumbo v0, "https://sdk.hockeyapp.net/"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 96
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lnet/hockeyapp/android/CrashManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 119
    invoke-static {p0, p3}, Lnet/hockeyapp/android/CrashManager;->execute(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 120
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdentifier"    # Ljava/lang/String;
    .param p2, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;

    .prologue
    .line 106
    const-string/jumbo v0, "https://sdk.hockeyapp.net/"

    invoke-static {p0, v0, p1, p2}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 107
    return-void
.end method

.method private static registerHandler(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .locals 4
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p2, "ignoreDefaultHandler"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lnet/hockeyapp/android/CrashManagerListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 432
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    sget-object v1, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 434
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 435
    .local v0, "currentHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_0

    .line 436
    const-string/jumbo v1, "HockeyApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Current handler class = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    instance-of v1, v0, Lnet/hockeyapp/android/ExceptionHandler;

    if-eqz v1, :cond_1

    .line 441
    check-cast v0, Lnet/hockeyapp/android/ExceptionHandler;

    .end local v0    # "currentHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/ExceptionHandler;->setListener(Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 450
    :goto_0
    return-void

    .line 444
    .restart local v0    # "currentHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_1
    new-instance v1, Lnet/hockeyapp/android/ExceptionHandler;

    invoke-direct {v1, v0, p1, p2}, Lnet/hockeyapp/android/ExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0

    .line 448
    .end local v0    # "currentHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_2
    const-string/jumbo v1, "HockeyApp"

    const-string/jumbo v2, "Exception handler not set because version or package is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static saveConfirmedStackTraces(Ljava/lang/ref/WeakReference;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 526
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v0, 0x0

    .line 527
    .local v0, "context":Landroid/content/Context;
    if-eqz p0, :cond_0

    .line 528
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "context":Landroid/content/Context;
    check-cast v0, Landroid/content/Context;

    .line 529
    .restart local v0    # "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 531
    :try_start_0
    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->searchForStackTraces()[Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, "filenames":[Ljava/lang/String;
    const-string/jumbo v4, "HockeySDK"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 533
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 534
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "ConfirmedFilenames"

    const-string/jumbo v5, "|"

    invoke-static {v2, v5}, Lnet/hockeyapp/android/CrashManager;->joinArray([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 535
    invoke-static {v1}, Lnet/hockeyapp/android/utils/PrefsUtil;->applyChanges(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "filenames":[Ljava/lang/String;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 537
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static searchForStackTraces()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 563
    sget-object v3, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 564
    const-string/jumbo v3, "HockeyApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Looking for exceptions in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 568
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 569
    .local v0, "created":Z
    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 570
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 583
    .end local v0    # "created":Z
    .end local v1    # "dir":Ljava/io/File;
    :goto_0
    return-object v3

    .line 574
    .restart local v0    # "created":Z
    .restart local v1    # "dir":Ljava/io/File;
    :cond_0
    new-instance v2, Lnet/hockeyapp/android/CrashManager$5;

    invoke-direct {v2}, Lnet/hockeyapp/android/CrashManager$5;-><init>()V

    .line 579
    .local v2, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 582
    .end local v0    # "created":Z
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "filter":Ljava/io/FilenameFilter;
    :cond_1
    const-string/jumbo v3, "HockeyApp"

    const-string/jumbo v4, "Can\'t search for exception as file path is null."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .locals 1
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p2, "ignoreDefaultHandler"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lnet/hockeyapp/android/CrashManagerListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-static {p0}, Lnet/hockeyapp/android/CrashManager;->saveConfirmedStackTraces(Ljava/lang/ref/WeakReference;)V

    .line 419
    new-instance v0, Lnet/hockeyapp/android/CrashManager$4;

    invoke-direct {v0, p0, p1, p2}, Lnet/hockeyapp/android/CrashManager$4;-><init>(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 425
    invoke-virtual {v0}, Lnet/hockeyapp/android/CrashManager$4;->start()V

    .line 426
    return-void
.end method

.method private static showDialog(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .locals 4
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .param p2, "ignoreDefaultHandler"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lnet/hockeyapp/android/CrashManagerListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v1, 0x0

    .line 361
    .local v1, "context":Landroid/content/Context;
    if-eqz p0, :cond_0

    .line 362
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "context":Landroid/content/Context;
    check-cast v1, Landroid/content/Context;

    .line 365
    .restart local v1    # "context":Landroid/content/Context;
    :cond_0
    if-nez v1, :cond_1

    .line 410
    :goto_0
    return-void

    .line 369
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 370
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 371
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 373
    const/4 v2, 0x2

    invoke-static {p1, v2}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnet/hockeyapp/android/CrashManager$1;

    invoke-direct {v3, p1, p0, p2}, Lnet/hockeyapp/android/CrashManager$1;-><init>(Lnet/hockeyapp/android/CrashManagerListener;Ljava/lang/ref/WeakReference;Z)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 384
    const/4 v2, 0x3

    invoke-static {p1, v2}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnet/hockeyapp/android/CrashManager$2;

    invoke-direct {v3, p0, p1, p2}, Lnet/hockeyapp/android/CrashManager$2;-><init>(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 403
    const/4 v2, 0x4

    invoke-static {p1, v2}, Lnet/hockeyapp/android/Strings;->get(Lnet/hockeyapp/android/StringListener;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lnet/hockeyapp/android/CrashManager$3;

    invoke-direct {v3, p0, p1, p2}, Lnet/hockeyapp/android/CrashManager$3;-><init>(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 409
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static submitStackTraces(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;)V
    .locals 13
    .param p1, "listener"    # Lnet/hockeyapp/android/CrashManagerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lnet/hockeyapp/android/CrashManagerListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->searchForStackTraces()[Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, "list":[Ljava/lang/String;
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 251
    .local v8, "successful":Ljava/lang/Boolean;
    if-eqz v5, :cond_6

    array-length v9, v5

    if-lez v9, :cond_6

    .line 252
    const-string/jumbo v9, "HockeyApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " stacktrace(s)."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    array-length v9, v5

    if-ge v4, v9, :cond_6

    .line 257
    :try_start_0
    aget-object v1, v5, v4

    .line 258
    .local v1, "filename":Ljava/lang/String;
    invoke-static {p0, v1}, Lnet/hockeyapp/android/CrashManager;->contentsOfFile(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 259
    .local v7, "stacktrace":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 261
    const-string/jumbo v9, "HockeyApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Transmitting crash data: \n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {}, Lnet/hockeyapp/android/utils/ConnectionManager;->getInstance()Lnet/hockeyapp/android/utils/ConnectionManager;

    move-result-object v9

    invoke-virtual {v9}, Lnet/hockeyapp/android/utils/ConnectionManager;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    check-cast v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 263
    .local v2, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->getURLString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 265
    .local v3, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v6, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v10, "raw"

    invoke-direct {v9, v10, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v10, "userID"

    const-string/jumbo v11, ".stacktrace"

    const-string/jumbo v12, ".user"

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lnet/hockeyapp/android/CrashManager;->contentsOfFile(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v10, "contact"

    const-string/jumbo v11, ".stacktrace"

    const-string/jumbo v12, ".contact"

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lnet/hockeyapp/android/CrashManager;->contentsOfFile(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v10, "description"

    const-string/jumbo v11, ".stacktrace"

    const-string/jumbo v12, ".description"

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lnet/hockeyapp/android/CrashManager;->contentsOfFile(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v10, "sdk"

    const-string/jumbo v11, "HockeySDK"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v10, "sdk_version"

    const-string/jumbo v11, "3.5.0-SNAPSHOT"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v9, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v9, v6, v10}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 275
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 276
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 283
    .end local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 284
    aget-object v9, v5, v4

    invoke-static {p0, v9}, Lnet/hockeyapp/android/CrashManager;->deleteStackTrace(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 286
    if-eqz p1, :cond_1

    .line 287
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesSent()V

    .line 254
    .end local v1    # "filename":Ljava/lang/String;
    .end local v7    # "stacktrace":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 291
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v7    # "stacktrace":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_1

    .line 292
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesNotSent()V

    goto :goto_1

    .line 279
    .end local v1    # "filename":Ljava/lang/String;
    .end local v7    # "stacktrace":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 284
    aget-object v9, v5, v4

    invoke-static {p0, v9}, Lnet/hockeyapp/android/CrashManager;->deleteStackTrace(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 286
    if-eqz p1, :cond_1

    .line 287
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesSent()V

    goto :goto_1

    .line 291
    :cond_3
    if-eqz p1, :cond_1

    .line 292
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesNotSent()V

    goto :goto_1

    .line 283
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 284
    aget-object v10, v5, v4

    invoke-static {p0, v10}, Lnet/hockeyapp/android/CrashManager;->deleteStackTrace(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 286
    if-eqz p1, :cond_4

    .line 287
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesSent()V

    .line 292
    :cond_4
    :goto_2
    throw v9

    .line 291
    :cond_5
    if-eqz p1, :cond_4

    .line 292
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesNotSent()V

    goto :goto_2

    .line 298
    .end local v4    # "index":I
    :cond_6
    return-void
.end method
