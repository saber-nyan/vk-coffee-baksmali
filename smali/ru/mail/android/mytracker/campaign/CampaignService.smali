.class public Lru/mail/android/mytracker/campaign/CampaignService;
.super Landroid/app/IntentService;
.source "CampaignService.java"


# static fields
.field private static volatile trackerId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "MyTrackerCampaignService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static getTrackerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lru/mail/android/mytracker/campaign/CampaignService;->trackerId:Ljava/lang/String;

    return-object v0
.end method

.method public static setTrackerId(Ljava/lang/String;)V
    .locals 0
    .param p0, "trackerId"    # Ljava/lang/String;

    .prologue
    .line 35
    sput-object p0, Lru/mail/android/mytracker/campaign/CampaignService;->trackerId:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "CampaignService created"

    invoke-static {v0}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 60
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 61
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "CampaignService destroyed"

    invoke-static {v0}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 67
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 68
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    const-string/jumbo v2, "referrer"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    const-string/jumbo v2, "referrer"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "referrer":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    .line 79
    :cond_0
    :try_start_0
    invoke-static {}, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->getExecutor()Lru/mail/android/mytracker/async/AsyncCommandExecutor;

    move-result-object v2

    sget-object v3, Lru/mail/android/mytracker/campaign/CampaignService;->trackerId:Ljava/lang/String;

    invoke-static {v1, v3, p0}, Lru/mail/android/mytracker/factories/AsyncCommandsFactory;->getTrackReferrerCommand(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lru/mail/android/mytracker/async/commands/AsyncCommand;

    move-result-object v3

    invoke-virtual {v2, v3}, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->submit(Lru/mail/android/mytracker/async/commands/AsyncCommand;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v1    # "referrer":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 81
    .restart local v1    # "referrer":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error executing track referrer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
