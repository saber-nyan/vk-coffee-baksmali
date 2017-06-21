.class public Lru/mail/android/mytracker/async/commands/TrackReferrerCommand;
.super Lru/mail/android/mytracker/async/commands/AbstractHttpCommand;
.source "TrackReferrerCommand.java"


# instance fields
.field private referrer:Ljava/lang/String;

.field private timestamp:J

.field private trackerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "referrer"    # Ljava/lang/String;
    .param p3, "trackerId"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p4}, Lru/mail/android/mytracker/async/commands/AbstractHttpCommand;-><init>(Ljava/lang/String;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)V

    .line 43
    iput-object p2, p0, Lru/mail/android/mytracker/async/commands/TrackReferrerCommand;->referrer:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lru/mail/android/mytracker/async/commands/TrackReferrerCommand;->trackerId:Ljava/lang/String;

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lru/mail/android/mytracker/async/commands/TrackReferrerCommand;->timestamp:J

    .line 46
    return-void
.end method

.method private trackReferrer(Ljava/lang/String;Lru/mail/android/mytracker/utils/PreferencesManager;)Z
    .locals 8
    .param p1, "referrer"    # Ljava/lang/String;
    .param p2, "preferencesManager"    # Lru/mail/android/mytracker/utils/PreferencesManager;

    .prologue
    .line 83
    invoke-virtual {p0}, Lru/mail/android/mytracker/async/commands/TrackReferrerCommand;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 85
    const-string/jumbo v4, "no internet connection"

    invoke-static {v4}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 86
    const/4 v3, 0x0

    .line 115
    :goto_0
    return v3

    .line 89
    :cond_0
    invoke-virtual {p0}, Lru/mail/android/mytracker/async/commands/TrackReferrerCommand;->collectData()V

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "track referrer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 92
    const-wide/16 v4, 0x0

    invoke-static {p1, v4, v5}, Lru/mail/android/mytracker/factories/EventsFactory;->getReferrerEvent(Ljava/lang/String;J)Lru/mail/android/mytracker/models/events/Event;

    move-result-object v1

    .line 94
    .local v1, "event":Lru/mail/android/mytracker/models/events/Event;
    new-instance v0, Lru/mail/android/mytracker/builders/JSONBuilder;

    invoke-direct {v0}, Lru/mail/android/mytracker/builders/JSONBuilder;-><init>()V

    .line 95
    .local v0, "builder":Lru/mail/android/mytracker/builders/JSONBuilder;
    iget-object v4, p0, Lru/mail/android/mytracker/async/commands/TrackReferrerCommand;->trackerId:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lru/mail/android/mytracker/async/commands/TrackReferrerCommand;->trackerId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lru/mail/android/mytracker/builders/JSONBuilder;->setAppId(Ljava/lang/String;)V

    .line 96
    :cond_1
    iget-wide v4, p0, Lru/mail/android/mytracker/async/commands/TrackReferrerCommand;->timestamp:J

    invoke-virtual {v0, v4, v5}, Lru/mail/android/mytracker/builders/JSONBuilder;->setTimestampBase(J)V

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lru/mail/android/mytracker/builders/JSONBuilder;->setTimestampSend(J)V

    .line 99
    invoke-static {}, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->getInstance()Lru/mail/android/mytracker/providers/FingerprintDataProvider;

    move-result-object v4

    invoke-virtual {v4, v0}, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->putDataToBuilder(Lru/mail/android/mytracker/builders/JSONBuilder;)V

    .line 101
    invoke-virtual {v0, v1}, Lru/mail/android/mytracker/builders/JSONBuilder;->addEvent(Lru/mail/android/mytracker/models/events/Event;)V

    .line 103
    invoke-virtual {v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "json":Ljava/lang/String;
    const-string/jumbo v4, "send referrer"

    invoke-static {v4}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, v2}, Lru/mail/android/mytracker/async/commands/TrackReferrerCommand;->sendPostRequest(Ljava/lang/String;)Z

    move-result v3

    .line 107
    .local v3, "success":Z
    invoke-virtual {p2, v3}, Lru/mail/android/mytracker/utils/PreferencesManager;->setReferrerSent(Z)V

    .line 108
    if-eqz v3, :cond_2

    .line 110
    const-string/jumbo v4, "referrer sent successfully"

    invoke-static {v4}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->getInstance()Lru/mail/android/mytracker/providers/FingerprintDataProvider;

    move-result-object v4

    iget-object v5, p0, Lru/mail/android/mytracker/async/commands/TrackReferrerCommand;->context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->storeData(Landroid/content/Context;)V

    goto :goto_0

    .line 113
    :cond_2
    const-string/jumbo v4, "Send referrer failed"

    invoke-static {v4}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected execute()Lru/mail/android/mytracker/async/commands/AsyncCommandResult;
    .locals 6

    .prologue
    .line 54
    invoke-super {p0}, Lru/mail/android/mytracker/async/commands/AbstractHttpCommand;->execute()Lru/mail/android/mytracker/async/commands/AsyncCommandResult;

    move-result-object v2

    .line 56
    .local v2, "result":Lru/mail/android/mytracker/async/commands/AsyncCommandResult;
    invoke-virtual {v2}, Lru/mail/android/mytracker/async/commands/AsyncCommandResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-object v2

    .line 61
    :cond_1
    :try_start_0
    invoke-static {}, Lru/mail/android/mytracker/utils/PreferencesManager;->getInstance()Lru/mail/android/mytracker/utils/PreferencesManager;

    move-result-object v4

    iget-object v5, p0, Lru/mail/android/mytracker/async/commands/TrackReferrerCommand;->context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lru/mail/android/mytracker/utils/PreferencesManager;->init(Landroid/content/Context;)Lru/mail/android/mytracker/utils/PreferencesManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 69
    .local v1, "preferencesManager":Lru/mail/android/mytracker/utils/PreferencesManager;
    iget-object v4, p0, Lru/mail/android/mytracker/async/commands/TrackReferrerCommand;->referrer:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lru/mail/android/mytracker/async/commands/TrackReferrerCommand;->referrer:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 71
    iget-object v4, p0, Lru/mail/android/mytracker/async/commands/TrackReferrerCommand;->referrer:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lru/mail/android/mytracker/utils/PreferencesManager;->setReferrer(Ljava/lang/String;)V

    .line 72
    iget-object v4, p0, Lru/mail/android/mytracker/async/commands/TrackReferrerCommand;->trackerId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 74
    iget-object v4, p0, Lru/mail/android/mytracker/async/commands/TrackReferrerCommand;->referrer:Ljava/lang/String;

    invoke-direct {p0, v4, v1}, Lru/mail/android/mytracker/async/commands/TrackReferrerCommand;->trackReferrer(Ljava/lang/String;Lru/mail/android/mytracker/utils/PreferencesManager;)Z

    move-result v3

    .line 75
    .local v3, "success":Z
    invoke-virtual {v2, v3}, Lru/mail/android/mytracker/async/commands/AsyncCommandResult;->setSuccess(Z)V

    goto :goto_0

    .line 62
    .end local v1    # "preferencesManager":Lru/mail/android/mytracker/utils/PreferencesManager;
    .end local v3    # "success":Z
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PreferencesManager error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 65
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lru/mail/android/mytracker/async/commands/AsyncCommandResult;->setSuccess(Z)V

    goto :goto_0
.end method
