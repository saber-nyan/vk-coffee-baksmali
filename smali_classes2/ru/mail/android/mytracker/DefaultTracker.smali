.class public final Lru/mail/android/mytracker/DefaultTracker;
.super Ljava/lang/Object;
.source "DefaultTracker.java"

# interfaces
.implements Lru/mail/android/mytracker/Tracker;


# static fields
.field private static final FREQUENCY:I = 0xdbba0

.field private static debugNoDelay:Z


# instance fields
.field private activityCount:I

.field private context:Landroid/content/Context;

.field private dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;

.field private volatile isEnabled:Z

.field private isInitialized:Z

.field private isTimerActive:Z

.field private launchTimeout:J

.field private params:Lru/mail/android/mytracker/TrackerParams;

.field private final sendingRunnable:Ljava/lang/Runnable;

.field private stopTimestamp:J

.field private timerFinishTimestamp:J

.field private timerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lru/mail/android/mytracker/DefaultTracker;->debugNoDelay:Z

    return-void
.end method

.method protected constructor <init>(Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)V
    .locals 3
    .param p1, "params"    # Lru/mail/android/mytracker/TrackerParams;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide v0, p0, Lru/mail/android/mytracker/DefaultTracker;->launchTimeout:J

    .line 53
    iput-wide v0, p0, Lru/mail/android/mytracker/DefaultTracker;->stopTimestamp:J

    .line 54
    iput-wide v0, p0, Lru/mail/android/mytracker/DefaultTracker;->timerFinishTimestamp:J

    .line 56
    new-instance v0, Lru/mail/android/mytracker/DefaultTracker$1;

    invoke-direct {v0, p0}, Lru/mail/android/mytracker/DefaultTracker$1;-><init>(Lru/mail/android/mytracker/DefaultTracker;)V

    iput-object v0, p0, Lru/mail/android/mytracker/DefaultTracker;->sendingRunnable:Ljava/lang/Runnable;

    .line 94
    iput-object p1, p0, Lru/mail/android/mytracker/DefaultTracker;->params:Lru/mail/android/mytracker/TrackerParams;

    .line 95
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lru/mail/android/mytracker/DefaultTracker;->context:Landroid/content/Context;

    .line 96
    new-instance v0, Lru/mail/android/mytracker/database/MyTrackerDBHelper;

    invoke-virtual {p1}, Lru/mail/android/mytracker/TrackerParams;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lru/mail/android/mytracker/DefaultTracker;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lru/mail/android/mytracker/DefaultTracker;->dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lru/mail/android/mytracker/DefaultTracker;->timerHandler:Landroid/os/Handler;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lru/mail/android/mytracker/DefaultTracker;)Z
    .locals 1
    .param p0, "x0"    # Lru/mail/android/mytracker/DefaultTracker;

    .prologue
    .line 29
    iget-boolean v0, p0, Lru/mail/android/mytracker/DefaultTracker;->isTimerActive:Z

    return v0
.end method

.method static synthetic access$100(Lru/mail/android/mytracker/DefaultTracker;)V
    .locals 0
    .param p0, "x0"    # Lru/mail/android/mytracker/DefaultTracker;

    .prologue
    .line 29
    invoke-direct {p0}, Lru/mail/android/mytracker/DefaultTracker;->sendEventsByTimer()V

    return-void
.end method

.method private sendEventsByTimer()V
    .locals 5

    .prologue
    .line 278
    const-string/jumbo v0, "Send events by timer"

    invoke-static {v0}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->getExecutor()Lru/mail/android/mytracker/async/AsyncCommandExecutor;

    move-result-object v0

    sget-object v1, Lru/mail/android/mytracker/enums/CriterionSend;->TIME_INTERVAL:Lru/mail/android/mytracker/enums/CriterionSend;

    iget-object v2, p0, Lru/mail/android/mytracker/DefaultTracker;->dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;

    iget-object v3, p0, Lru/mail/android/mytracker/DefaultTracker;->params:Lru/mail/android/mytracker/TrackerParams;

    iget-object v4, p0, Lru/mail/android/mytracker/DefaultTracker;->context:Landroid/content/Context;

    invoke-static {v1, v2, v3, v4}, Lru/mail/android/mytracker/factories/AsyncCommandsFactory;->getSendEventsCommand(Lru/mail/android/mytracker/enums/CriterionSend;Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)Lru/mail/android/mytracker/async/commands/AsyncCommand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->execute(Lru/mail/android/mytracker/async/commands/AsyncCommand;)V

    .line 282
    const-wide/32 v0, 0xdbba0

    invoke-direct {p0, v0, v1}, Lru/mail/android/mytracker/DefaultTracker;->startTimer(J)V

    .line 283
    return-void
.end method

.method private startTimer(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 270
    iget-object v0, p0, Lru/mail/android/mytracker/DefaultTracker;->timerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lru/mail/android/mytracker/DefaultTracker;->sendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/mail/android/mytracker/DefaultTracker;->isTimerActive:Z

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lru/mail/android/mytracker/DefaultTracker;->timerFinishTimestamp:J

    .line 273
    iget-object v0, p0, Lru/mail/android/mytracker/DefaultTracker;->timerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lru/mail/android/mytracker/DefaultTracker;->sendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    return-void
.end method


# virtual methods
.method public declared-synchronized init()V
    .locals 4

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lru/mail/android/mytracker/DefaultTracker;->isInitialized:Z

    if-nez v0, :cond_1

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/mail/android/mytracker/DefaultTracker;->isInitialized:Z

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Tracker initialized. Version: 1.2.2. ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/mail/android/mytracker/DefaultTracker;->params:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v1}, Lru/mail/android/mytracker/TrackerParams;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/mail/android/mytracker/Tracer;->i(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lru/mail/android/mytracker/DefaultTracker;->params:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->getLaunchTimeout()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lru/mail/android/mytracker/DefaultTracker;->launchTimeout:J

    .line 112
    invoke-static {}, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->getInstance()Lru/mail/android/mytracker/providers/FingerprintDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->getAppsDataProvider()Lru/mail/android/mytracker/providers/AppsDataProvider;

    move-result-object v0

    iget-object v1, p0, Lru/mail/android/mytracker/DefaultTracker;->params:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v1}, Lru/mail/android/mytracker/TrackerParams;->isTrackingAppsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lru/mail/android/mytracker/providers/AppsDataProvider;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lru/mail/android/mytracker/DefaultTracker;->params:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/mail/android/mytracker/campaign/CampaignService;->setTrackerId(Ljava/lang/String;)V

    .line 116
    iget-boolean v0, p0, Lru/mail/android/mytracker/DefaultTracker;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->getExecutor()Lru/mail/android/mytracker/async/AsyncCommandExecutor;

    move-result-object v0

    iget-object v1, p0, Lru/mail/android/mytracker/DefaultTracker;->dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;

    iget-object v2, p0, Lru/mail/android/mytracker/DefaultTracker;->params:Lru/mail/android/mytracker/TrackerParams;

    iget-object v3, p0, Lru/mail/android/mytracker/DefaultTracker;->context:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lru/mail/android/mytracker/factories/AsyncCommandsFactory;->getTrackMajorEventsCommand(Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)Lru/mail/android/mytracker/async/commands/AsyncCommand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->execute(Lru/mail/android/mytracker/async/commands/AsyncCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 119
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Tracker with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lru/mail/android/mytracker/DefaultTracker;->params:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v1}, Lru/mail/android/mytracker/TrackerParams;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "already initialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lru/mail/android/mytracker/DefaultTracker;->isEnabled:Z

    return v0
.end method

.method public declared-synchronized isInitialized()Z
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lru/mail/android/mytracker/DefaultTracker;->isInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStartActivity(Landroid/app/Activity;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    sget-boolean v4, Lru/mail/android/mytracker/DefaultTracker;->debugNoDelay:Z

    if-nez v4, :cond_0

    iget v4, p0, Lru/mail/android/mytracker/DefaultTracker;->activityCount:I

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lru/mail/android/mytracker/DefaultTracker;->isEnabled:Z

    if-eqz v4, :cond_2

    .line 127
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 128
    .local v0, "currentTimestamp":J
    sget-boolean v4, Lru/mail/android/mytracker/DefaultTracker;->debugNoDelay:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lru/mail/android/mytracker/DefaultTracker;->params:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v4}, Lru/mail/android/mytracker/TrackerParams;->isTrackingLaunchEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lru/mail/android/mytracker/DefaultTracker;->stopTimestamp:J

    sub-long v4, v0, v4

    iget-wide v6, p0, Lru/mail/android/mytracker/DefaultTracker;->launchTimeout:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    .line 131
    :cond_1
    invoke-static {}, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->getExecutor()Lru/mail/android/mytracker/async/AsyncCommandExecutor;

    move-result-object v4

    iget-object v5, p0, Lru/mail/android/mytracker/DefaultTracker;->dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;

    iget-object v6, p0, Lru/mail/android/mytracker/DefaultTracker;->params:Lru/mail/android/mytracker/TrackerParams;

    iget-wide v8, p0, Lru/mail/android/mytracker/DefaultTracker;->stopTimestamp:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iget-object v7, p0, Lru/mail/android/mytracker/DefaultTracker;->context:Landroid/content/Context;

    invoke-static {v5, v6, v8, v9, v7}, Lru/mail/android/mytracker/factories/AsyncCommandsFactory;->getTrackLaunchSessionCommand(Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;JLandroid/content/Context;)Lru/mail/android/mytracker/async/commands/AsyncCommand;

    move-result-object v5

    invoke-virtual {v4, v5}, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->execute(Lru/mail/android/mytracker/async/commands/AsyncCommand;)V

    .line 133
    sget-boolean v4, Lru/mail/android/mytracker/DefaultTracker;->debugNoDelay:Z

    if-nez v4, :cond_2

    .line 134
    const-wide/32 v4, 0xdbba0

    invoke-direct {p0, v4, v5}, Lru/mail/android/mytracker/DefaultTracker;->startTimer(J)V

    .line 143
    .end local v0    # "currentTimestamp":J
    :cond_2
    :goto_0
    iget v4, p0, Lru/mail/android/mytracker/DefaultTracker;->activityCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lru/mail/android/mytracker/DefaultTracker;->activityCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 138
    .restart local v0    # "currentTimestamp":J
    :cond_3
    :try_start_1
    iget-wide v4, p0, Lru/mail/android/mytracker/DefaultTracker;->timerFinishTimestamp:J

    sub-long v2, v4, v0

    .line 139
    .local v2, "timeLeft":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    invoke-direct {p0, v2, v3}, Lru/mail/android/mytracker/DefaultTracker;->startTimer(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    .end local v0    # "currentTimestamp":J
    .end local v2    # "timeLeft":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 140
    .restart local v0    # "currentTimestamp":J
    .restart local v2    # "timeLeft":J
    :cond_4
    :try_start_2
    invoke-direct {p0}, Lru/mail/android/mytracker/DefaultTracker;->sendEventsByTimer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onStopActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lru/mail/android/mytracker/DefaultTracker;->activityCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lru/mail/android/mytracker/DefaultTracker;->activityCount:I

    .line 150
    iget v0, p0, Lru/mail/android/mytracker/DefaultTracker;->activityCount:I

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/mail/android/mytracker/DefaultTracker;->isTimerActive:Z

    .line 153
    iget-object v0, p0, Lru/mail/android/mytracker/DefaultTracker;->timerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lru/mail/android/mytracker/DefaultTracker;->sendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lru/mail/android/mytracker/DefaultTracker;->stopTimestamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lru/mail/android/mytracker/DefaultTracker;->isEnabled:Z

    .line 87
    return-void
.end method

.method public trackEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lru/mail/android/mytracker/DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 162
    return-void
.end method

.method public declared-synchronized trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p2, "eventParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    :cond_0
    const-string/jumbo v1, "Event name should be not null and not empty"

    invoke-static {v1}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 172
    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lru/mail/android/mytracker/DefaultTracker;->isEnabled:Z

    if-eqz v1, :cond_1

    .line 174
    invoke-static {p1, p2}, Lru/mail/android/mytracker/factories/EventsFactory;->getCustomEvent(Ljava/lang/String;Ljava/util/Map;)Lru/mail/android/mytracker/models/events/Event;

    move-result-object v0

    .line 175
    .local v0, "event":Lru/mail/android/mytracker/models/events/Event;
    invoke-static {}, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->getExecutor()Lru/mail/android/mytracker/async/AsyncCommandExecutor;

    move-result-object v1

    sget-object v2, Lru/mail/android/mytracker/enums/CriterionSend;->EVENTS_COUNT:Lru/mail/android/mytracker/enums/CriterionSend;

    iget-object v3, p0, Lru/mail/android/mytracker/DefaultTracker;->dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;

    iget-object v4, p0, Lru/mail/android/mytracker/DefaultTracker;->params:Lru/mail/android/mytracker/TrackerParams;

    iget-object v5, p0, Lru/mail/android/mytracker/DefaultTracker;->context:Landroid/content/Context;

    invoke-static {v0, v2, v3, v4, v5}, Lru/mail/android/mytracker/factories/AsyncCommandsFactory;->getTrackEventCommand(Lru/mail/android/mytracker/models/events/Event;Lru/mail/android/mytracker/enums/CriterionSend;Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)Lru/mail/android/mytracker/async/commands/AsyncCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->execute(Lru/mail/android/mytracker/async/commands/AsyncCommand;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    .end local v0    # "event":Lru/mail/android/mytracker/models/events/Event;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public trackInviteEvent()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lru/mail/android/mytracker/DefaultTracker;->trackInviteEvent(Ljava/util/Map;)V

    .line 215
    return-void
.end method

.method public declared-synchronized trackInviteEvent(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "eventParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lru/mail/android/mytracker/DefaultTracker;->isEnabled:Z

    if-eqz v1, :cond_0

    .line 222
    const-string/jumbo v1, "invite"

    invoke-static {v1, p1}, Lru/mail/android/mytracker/factories/EventsFactory;->getStandardEvent(Ljava/lang/String;Ljava/util/Map;)Lru/mail/android/mytracker/models/events/Event;

    move-result-object v0

    .line 223
    .local v0, "event":Lru/mail/android/mytracker/models/events/Event;
    invoke-static {}, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->getExecutor()Lru/mail/android/mytracker/async/AsyncCommandExecutor;

    move-result-object v1

    sget-object v2, Lru/mail/android/mytracker/enums/CriterionSend;->EVENTS_COUNT:Lru/mail/android/mytracker/enums/CriterionSend;

    iget-object v3, p0, Lru/mail/android/mytracker/DefaultTracker;->dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;

    iget-object v4, p0, Lru/mail/android/mytracker/DefaultTracker;->params:Lru/mail/android/mytracker/TrackerParams;

    iget-object v5, p0, Lru/mail/android/mytracker/DefaultTracker;->context:Landroid/content/Context;

    invoke-static {v0, v2, v3, v4, v5}, Lru/mail/android/mytracker/factories/AsyncCommandsFactory;->getTrackEventCommand(Lru/mail/android/mytracker/models/events/Event;Lru/mail/android/mytracker/enums/CriterionSend;Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)Lru/mail/android/mytracker/async/commands/AsyncCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->execute(Lru/mail/android/mytracker/async/commands/AsyncCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .end local v0    # "event":Lru/mail/android/mytracker/models/events/Event;
    :cond_0
    monitor-exit p0

    return-void

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public trackLevelEvent()V
    .locals 2

    .prologue
    .line 265
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lru/mail/android/mytracker/DefaultTracker;->trackLevelEvent(ILjava/util/Map;)V

    .line 266
    return-void
.end method

.method public declared-synchronized trackLevelEvent(ILjava/util/Map;)V
    .locals 6
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p2, "eventParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lru/mail/android/mytracker/DefaultTracker;->isEnabled:Z

    if-eqz v1, :cond_0

    .line 251
    invoke-static {p1, p2}, Lru/mail/android/mytracker/factories/EventsFactory;->getLevelEvent(ILjava/util/Map;)Lru/mail/android/mytracker/models/events/Event;

    move-result-object v0

    .line 252
    .local v0, "event":Lru/mail/android/mytracker/models/events/Event;
    invoke-static {}, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->getExecutor()Lru/mail/android/mytracker/async/AsyncCommandExecutor;

    move-result-object v1

    sget-object v2, Lru/mail/android/mytracker/enums/CriterionSend;->EVENTS_COUNT:Lru/mail/android/mytracker/enums/CriterionSend;

    iget-object v3, p0, Lru/mail/android/mytracker/DefaultTracker;->dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;

    iget-object v4, p0, Lru/mail/android/mytracker/DefaultTracker;->params:Lru/mail/android/mytracker/TrackerParams;

    iget-object v5, p0, Lru/mail/android/mytracker/DefaultTracker;->context:Landroid/content/Context;

    invoke-static {v0, v2, v3, v4, v5}, Lru/mail/android/mytracker/factories/AsyncCommandsFactory;->getTrackEventCommand(Lru/mail/android/mytracker/models/events/Event;Lru/mail/android/mytracker/enums/CriterionSend;Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)Lru/mail/android/mytracker/async/commands/AsyncCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->execute(Lru/mail/android/mytracker/async/commands/AsyncCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v0    # "event":Lru/mail/android/mytracker/models/events/Event;
    :cond_0
    monitor-exit p0

    return-void

    .line 249
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public trackLevelEvent(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "eventParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lru/mail/android/mytracker/DefaultTracker;->trackLevelEvent(ILjava/util/Map;)V

    .line 260
    return-void
.end method

.method public trackLoginEvent()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lru/mail/android/mytracker/DefaultTracker;->trackLoginEvent(Ljava/util/Map;)V

    .line 183
    return-void
.end method

.method public declared-synchronized trackLoginEvent(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "eventParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lru/mail/android/mytracker/DefaultTracker;->isEnabled:Z

    if-eqz v1, :cond_0

    .line 190
    const-string/jumbo v1, "login"

    invoke-static {v1, p1}, Lru/mail/android/mytracker/factories/EventsFactory;->getStandardEvent(Ljava/lang/String;Ljava/util/Map;)Lru/mail/android/mytracker/models/events/Event;

    move-result-object v0

    .line 191
    .local v0, "event":Lru/mail/android/mytracker/models/events/Event;
    invoke-static {}, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->getExecutor()Lru/mail/android/mytracker/async/AsyncCommandExecutor;

    move-result-object v1

    sget-object v2, Lru/mail/android/mytracker/enums/CriterionSend;->EVENTS_COUNT:Lru/mail/android/mytracker/enums/CriterionSend;

    iget-object v3, p0, Lru/mail/android/mytracker/DefaultTracker;->dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;

    iget-object v4, p0, Lru/mail/android/mytracker/DefaultTracker;->params:Lru/mail/android/mytracker/TrackerParams;

    iget-object v5, p0, Lru/mail/android/mytracker/DefaultTracker;->context:Landroid/content/Context;

    invoke-static {v0, v2, v3, v4, v5}, Lru/mail/android/mytracker/factories/AsyncCommandsFactory;->getTrackEventCommand(Lru/mail/android/mytracker/models/events/Event;Lru/mail/android/mytracker/enums/CriterionSend;Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)Lru/mail/android/mytracker/async/commands/AsyncCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->execute(Lru/mail/android/mytracker/async/commands/AsyncCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .end local v0    # "event":Lru/mail/android/mytracker/models/events/Event;
    :cond_0
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public trackPurchaseEvent(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .param p1, "skuDetails"    # Lorg/json/JSONObject;
    .param p2, "purchaseData"    # Lorg/json/JSONObject;
    .param p3, "dataSignature"    # Ljava/lang/String;

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lru/mail/android/mytracker/DefaultTracker;->trackPurchaseEvent(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V

    .line 244
    return-void
.end method

.method public declared-synchronized trackPurchaseEvent(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "skuDetails"    # Lorg/json/JSONObject;
    .param p2, "purchaseData"    # Lorg/json/JSONObject;
    .param p3, "dataSignature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p4, "eventParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lru/mail/android/mytracker/DefaultTracker;->isEnabled:Z

    if-eqz v1, :cond_0

    .line 233
    invoke-static {p1, p2, p3, p4}, Lru/mail/android/mytracker/factories/EventsFactory;->getPurchaseEvent(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)Lru/mail/android/mytracker/models/events/Event;

    move-result-object v0

    .line 234
    .local v0, "event":Lru/mail/android/mytracker/models/events/Event;
    invoke-static {}, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->getExecutor()Lru/mail/android/mytracker/async/AsyncCommandExecutor;

    move-result-object v1

    sget-object v2, Lru/mail/android/mytracker/enums/CriterionSend;->EVENTS_COUNT:Lru/mail/android/mytracker/enums/CriterionSend;

    iget-object v3, p0, Lru/mail/android/mytracker/DefaultTracker;->dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;

    iget-object v4, p0, Lru/mail/android/mytracker/DefaultTracker;->params:Lru/mail/android/mytracker/TrackerParams;

    iget-object v5, p0, Lru/mail/android/mytracker/DefaultTracker;->context:Landroid/content/Context;

    invoke-static {v0, v2, v3, v4, v5}, Lru/mail/android/mytracker/factories/AsyncCommandsFactory;->getTrackEventCommand(Lru/mail/android/mytracker/models/events/Event;Lru/mail/android/mytracker/enums/CriterionSend;Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)Lru/mail/android/mytracker/async/commands/AsyncCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->execute(Lru/mail/android/mytracker/async/commands/AsyncCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    .end local v0    # "event":Lru/mail/android/mytracker/models/events/Event;
    :cond_0
    monitor-exit p0

    return-void

    .line 231
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public trackRegistrationEvent()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lru/mail/android/mytracker/DefaultTracker;->trackRegistrationEvent(Ljava/util/Map;)V

    .line 199
    return-void
.end method

.method public declared-synchronized trackRegistrationEvent(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "eventParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lru/mail/android/mytracker/DefaultTracker;->isEnabled:Z

    if-eqz v1, :cond_0

    .line 206
    const-string/jumbo v1, "registration"

    invoke-static {v1, p1}, Lru/mail/android/mytracker/factories/EventsFactory;->getStandardEvent(Ljava/lang/String;Ljava/util/Map;)Lru/mail/android/mytracker/models/events/Event;

    move-result-object v0

    .line 207
    .local v0, "event":Lru/mail/android/mytracker/models/events/Event;
    invoke-static {}, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->getExecutor()Lru/mail/android/mytracker/async/AsyncCommandExecutor;

    move-result-object v1

    sget-object v2, Lru/mail/android/mytracker/enums/CriterionSend;->EVENTS_COUNT:Lru/mail/android/mytracker/enums/CriterionSend;

    iget-object v3, p0, Lru/mail/android/mytracker/DefaultTracker;->dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;

    iget-object v4, p0, Lru/mail/android/mytracker/DefaultTracker;->params:Lru/mail/android/mytracker/TrackerParams;

    iget-object v5, p0, Lru/mail/android/mytracker/DefaultTracker;->context:Landroid/content/Context;

    invoke-static {v0, v2, v3, v4, v5}, Lru/mail/android/mytracker/factories/AsyncCommandsFactory;->getTrackEventCommand(Lru/mail/android/mytracker/models/events/Event;Lru/mail/android/mytracker/enums/CriterionSend;Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)Lru/mail/android/mytracker/async/commands/AsyncCommand;

    move-result-object v2

    invoke-virtual {v1, v2}, Lru/mail/android/mytracker/async/AsyncCommandExecutor;->execute(Lru/mail/android/mytracker/async/commands/AsyncCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    .end local v0    # "event":Lru/mail/android/mytracker/models/events/Event;
    :cond_0
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
