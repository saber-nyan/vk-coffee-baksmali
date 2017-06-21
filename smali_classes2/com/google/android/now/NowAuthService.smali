.class public Lcom/google/android/now/NowAuthService;
.super Ljava/lang/Object;
.source "NowAuthService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/now/NowAuthService$DisabledException;,
        Lcom/google/android/now/NowAuthService$HaveTokenAlreadyException;,
        Lcom/google/android/now/NowAuthService$TooManyRequestsException;,
        Lcom/google/android/now/NowAuthService$UnauthorizedException;
    }
.end annotation


# static fields
.field static final AUTH_SERVICE_ACTION:Ljava/lang/String; = "com.google.android.now.NOW_AUTH_SERVICE"

.field private static final AUTH_SERVICE_INTENT:Landroid/content/Intent;

.field static final ERROR_DISABLED:I = 0x3

.field static final ERROR_HAVE_TOKEN_ALREADY:I = 0x2

.field static final ERROR_TOO_MANY_REQUESTS:I = 0x1

.field static final ERROR_UNAUTHORIZED:I = 0x0

.field static final EXTRA_ACCESS_TOKEN:Ljava/lang/String; = "access-token"

.field static final EXTRA_AUTH_CODE:Ljava/lang/String; = "auth-code"

.field static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field static final EXTRA_NEXT_RETRY_TIMESTAMP_MILLIS:Ljava/lang/String; = "next-retry-timestamp-millis"

.field private static final TAG:Ljava/lang/String; = "NowAuthService"

.field static sThreadCheckDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.google.android.now.NOW_AUTH_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/now/NowAuthService;->AUTH_SERVICE_INTENT:Landroid/content/Intent;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method private static checkNotMainThread()V
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/google/android/now/NowAuthService;->sThreadCheckDisabled:Z

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call this API from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    return-void
.end method

.method public static getAuthCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/now/NowAuthService$UnauthorizedException;,
            Lcom/google/android/now/NowAuthService$TooManyRequestsException;,
            Lcom/google/android/now/NowAuthService$HaveTokenAlreadyException;,
            Lcom/google/android/now/NowAuthService$DisabledException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Lcom/google/android/now/NowAuthService;->checkNotMainThread()V

    .line 71
    new-instance v0, Lcom/google/android/now/BlockingServiceConnection;

    invoke-direct {v0}, Lcom/google/android/now/BlockingServiceConnection;-><init>()V

    .line 72
    .local v0, "bsc":Lcom/google/android/now/BlockingServiceConnection;
    sget-object v5, Lcom/google/android/now/NowAuthService;->AUTH_SERVICE_INTENT:Landroid/content/Intent;

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v0, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 74
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/now/BlockingServiceConnection;->getService()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/now/INowAuthService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/now/INowAuthService;

    move-result-object v4

    .line 75
    .local v4, "service":Lcom/google/android/now/INowAuthService;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Lcom/google/android/now/INowAuthService;->getAuthCode(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 76
    .local v3, "response":Landroid/os/Bundle;
    if-nez v3, :cond_0

    .line 77
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Unexpected response from Google Now app"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v3    # "response":Landroid/os/Bundle;
    .end local v4    # "service":Lcom/google/android/now/INowAuthService;
    :catch_0
    move-exception v2

    .line 99
    .local v2, "exc":Landroid/os/RemoteException;
    :try_start_1
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Call to Google Now app failed"

    invoke-direct {v5, v6, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .end local v2    # "exc":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    invoke-virtual {v0, p0}, Lcom/google/android/now/BlockingServiceConnection;->unbindServiceIfConnected(Landroid/content/Context;)V

    throw v5

    .line 79
    .restart local v3    # "response":Landroid/os/Bundle;
    .restart local v4    # "service":Lcom/google/android/now/INowAuthService;
    :cond_0
    :try_start_2
    const-string/jumbo v5, "error"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    const-string/jumbo v5, "error"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 81
    .local v1, "error":I
    packed-switch v1, :pswitch_data_0

    .line 92
    const-string/jumbo v5, "NowAuthService"

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x1a

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v7, "Unknown error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x31

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v7, "Unexpected error from Google Now app: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .end local v1    # "error":I
    .end local v3    # "response":Landroid/os/Bundle;
    .end local v4    # "service":Lcom/google/android/now/INowAuthService;
    :catch_1
    move-exception v2

    .line 101
    .local v2, "exc":Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v5, "NowAuthService"

    const-string/jumbo v6, "Interrupted"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    new-instance v5, Ljava/io/InterruptedIOException;

    const-string/jumbo v6, "Interrupted while contacting Google Now app"

    invoke-direct {v5, v6}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    .end local v2    # "exc":Ljava/lang/InterruptedException;
    .restart local v1    # "error":I
    .restart local v3    # "response":Landroid/os/Bundle;
    .restart local v4    # "service":Lcom/google/android/now/INowAuthService;
    :pswitch_0
    :try_start_4
    new-instance v5, Lcom/google/android/now/NowAuthService$UnauthorizedException;

    invoke-direct {v5}, Lcom/google/android/now/NowAuthService$UnauthorizedException;-><init>()V

    throw v5

    .line 85
    :pswitch_1
    new-instance v5, Lcom/google/android/now/NowAuthService$TooManyRequestsException;

    const-string/jumbo v6, "next-retry-timestamp-millis"

    .line 86
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/google/android/now/NowAuthService$TooManyRequestsException;-><init>(J)V

    throw v5

    .line 88
    :pswitch_2
    new-instance v5, Lcom/google/android/now/NowAuthService$HaveTokenAlreadyException;

    const-string/jumbo v6, "access-token"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/now/NowAuthService$HaveTokenAlreadyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 90
    :pswitch_3
    new-instance v5, Lcom/google/android/now/NowAuthService$DisabledException;

    invoke-direct {v5}, Lcom/google/android/now/NowAuthService$DisabledException;-><init>()V

    throw v5

    .line 96
    .end local v1    # "error":I
    :cond_1
    const-string/jumbo v5, "auth-code"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .line 104
    invoke-virtual {v0, p0}, Lcom/google/android/now/BlockingServiceConnection;->unbindServiceIfConnected(Landroid/content/Context;)V

    return-object v5

    .line 107
    .end local v3    # "response":Landroid/os/Bundle;
    .end local v4    # "service":Lcom/google/android/now/INowAuthService;
    :cond_2
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Failed to contact Google Now app"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
