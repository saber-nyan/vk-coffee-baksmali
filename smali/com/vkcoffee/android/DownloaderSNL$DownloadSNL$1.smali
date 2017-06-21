.class Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL$1;
.super Landroid/content/BroadcastReceiver;
.source "DownloaderSNL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL$1;->this$1:Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;

    .line 110
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "action":Ljava/lang/String;
    const-string v2, "YES_ACTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL$1;->this$1:Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->access$6(Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;)Lcom/vkcoffee/android/DownloaderSNL;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL;->access$0(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL$1;->this$1:Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->access$6(Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;)Lcom/vkcoffee/android/DownloaderSNL;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL;->access$1(Lcom/vkcoffee/android/DownloaderSNL;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u0430\u0443\u0434\u0438\u043e \u0432 \u043a\u044d\u0448"

    :goto_0
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 116
    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL$1;->this$1:Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->access$6(Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;)Lcom/vkcoffee/android/DownloaderSNL;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL;->access$0(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v5, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 117
    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL$1;->this$1:Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->access$6(Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;)Lcom/vkcoffee/android/DownloaderSNL;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL;->access$0(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const-string v3, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u043e\u0442\u043c\u0435\u043d\u0435\u043d\u0430 :("

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 118
    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL$1;->this$1:Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->access$6(Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;)Lcom/vkcoffee/android/DownloaderSNL;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL;->access$0(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    new-instance v3, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    const-string v4, "\u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0430 \u043e\u0442\u043c\u0435\u043d\u0435\u043d\u0430 :("

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 119
    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL$1;->this$1:Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->access$6(Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;)Lcom/vkcoffee/android/DownloaderSNL;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL;->access$0(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 120
    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL$1;->this$1:Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->access$6(Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;)Lcom/vkcoffee/android/DownloaderSNL;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL;->access$2(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/app/NotificationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL$1;->this$1:Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;

    invoke-static {v3}, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->access$4(Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;)I

    move-result v3

    invoke-static {v3}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->getID(I)I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL$1;->this$1:Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;

    invoke-static {v4}, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->access$6(Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;)Lcom/vkcoffee/android/DownloaderSNL;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/DownloaderSNL;->access$0(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 121
    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL$1;->this$1:Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->access$6(Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;)Lcom/vkcoffee/android/DownloaderSNL;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL;->access$3(Lcom/vkcoffee/android/DownloaderSNL;)Landroid/os/AsyncTask;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 122
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/vkcoffee/android/DirSelect;->getCustomState(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL$1;->this$1:Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;

    invoke-static {v3}, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->access$6(Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;)Lcom/vkcoffee/android/DownloaderSNL;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/DownloaderSNL;->access$4(Lcom/vkcoffee/android/DownloaderSNL;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL$1;->this$1:Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;

    invoke-static {v3}, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->access$4(Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;)I

    move-result v3

    invoke-static {v3}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->getID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 124
    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL$1;->this$1:Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->access$6(Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;)Lcom/vkcoffee/android/DownloaderSNL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/DownloaderSNL;->extStop()V

    .line 126
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return-void

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL$1;->this$1:Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;

    invoke-static {v2}, Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;->access$3(Lcom/vkcoffee/android/DownloaderSNL$DownloadSNL;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method
