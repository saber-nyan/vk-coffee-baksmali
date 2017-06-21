.class public Lru/mail/android/mytracker/campaign/CampaignReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CampaignReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getServiceIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "referrer"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/mail/android/mytracker/campaign/CampaignService;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "referrer"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    if-nez p2, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 45
    const-string/jumbo v4, "referrer"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "referrer":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CampaignReceiver got referrer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 51
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lru/mail/android/mytracker/campaign/CampaignReceiver;->getServiceIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 52
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 55
    .local v3, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
