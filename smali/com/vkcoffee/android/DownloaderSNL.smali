.class public Lcom/vkcoffee/android/DownloaderSNL;
.super Landroid/app/Service;
.source "DownloaderSNL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;
    }
.end annotation


# instance fields
.field private cache:Z

.field private context:Landroid/content/Context;

.field private downloadSNL:Landroid/os/AsyncTask;

.field private mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private mBuilderEnd:Landroid/support/v4/app/NotificationCompat$Builder;

.field private mNotifyManager:Landroid/app/NotificationManager;

.field private nameTempFile:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private speed:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    iput-object p0, p0, Lcom/vkcoffee/android/DownloaderSNL;->context:Landroid/content/Context;

    .line 50
    const-string v0, "downloadTempFileVKCoffee_"

    iput-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL;->nameTempFile:Ljava/lang/String;

    .line 52
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL;->speed:Ljava/lang/String;

    .line 53
    const-string v0, "0"

    iput-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL;->size:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/DownloaderSNL;->cache:Z

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/DownloaderSNL;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/vkcoffee/android/DownloaderSNL;->cache:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL;->mNotifyManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/os/AsyncTask;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL;->downloadSNL:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/DownloaderSNL;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL;->nameTempFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkcoffee/android/DownloaderSNL;Landroid/app/NotificationManager;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vkcoffee/android/DownloaderSNL;->mNotifyManager:Landroid/app/NotificationManager;

    return-void
.end method

.method static synthetic access$7(Lcom/vkcoffee/android/DownloaderSNL;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vkcoffee/android/DownloaderSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method static synthetic access$8(Lcom/vkcoffee/android/DownloaderSNL;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vkcoffee/android/DownloaderSNL;->mBuilderEnd:Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method static synthetic access$9(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL;->mBuilderEnd:Landroid/support/v4/app/NotificationCompat$Builder;

    return-object v0
.end method

.method private execute()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 77
    invoke-static {}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;-><init>(Lcom/vkcoffee/android/DownloaderSNL;Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL;->downloadSNL:Landroid/os/AsyncTask;

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL;->context:Landroid/content/Context;

    const-string v1, "\u0418\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0430 \u043d\u0435\u0442"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public errDownload()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL;->context:Landroid/content/Context;

    const-string v1, "\u041f\u043e\u0445\u043e\u0436\u0435 \u0447\u0442\u043e \u0444\u0430\u0439\u043b \u043d\u0435 \u0434\u043e\u043a\u0430\u0447\u0430\u043b\u0441\u044f. \u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0441\u043d\u043e\u0432\u0430."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 101
    return-void
.end method

.method public errLink()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL;->context:Landroid/content/Context;

    const-string v1, "\u0412\u043e\u0437\u043d\u0438\u043a\u043b\u0430 \u043e\u0448\u0438\u0431\u043a\u0430 \u043f\u0440\u0438 \u043e\u0431\u0440\u0430\u0449\u0435\u043d\u0438\u0438 \u043a \u0441\u0441\u044b\u043b\u043a\u0435. \u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0447\u0443\u0442\u044c \u043f\u043e\u0437\u0436\u0435."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    return-void
.end method

.method public extStop()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL;->context:Landroid/content/Context;

    const-string v1, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u043e\u0442\u043c\u0435\u043d\u0435\u043d\u0430 :("

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 87
    invoke-virtual {p0}, Lcom/vkcoffee/android/DownloaderSNL;->stopSelf()V

    .line 88
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 267
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x0

    .line 56
    iput-object p0, p0, Lcom/vkcoffee/android/DownloaderSNL;->context:Landroid/content/Context;

    .line 57
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "Downloads"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 58
    const-string v1, "downloadId"

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "Downloads"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "downloadId"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    :try_start_0
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "Downloads"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "Downloads"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "downloadId"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "Downloads"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "downloadId"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fileName"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "exten"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    :goto_0
    :try_start_1
    const-string v0, "cache"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkcoffee/android/DownloaderSNL;->cache:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    :goto_1
    invoke-direct {p0}, Lcom/vkcoffee/android/DownloaderSNL;->execute()V

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 70
    :catch_0
    move-exception v0

    goto :goto_1

    .line 66
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vkcoffee/android/DownloaderSNL;->context:Landroid/content/Context;

    const-string v1, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u0437\u0430\u0432\u0435\u0440\u0448\u0435\u043d\u0430"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 92
    invoke-virtual {p0}, Lcom/vkcoffee/android/DownloaderSNL;->stopSelf()V

    .line 93
    return-void
.end method
