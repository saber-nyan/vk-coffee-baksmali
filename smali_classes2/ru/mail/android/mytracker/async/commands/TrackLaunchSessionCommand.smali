.class public Lru/mail/android/mytracker/async/commands/TrackLaunchSessionCommand;
.super Lru/mail/android/mytracker/async/commands/EventsActionCommand;
.source "TrackLaunchSessionCommand.java"


# instance fields
.field private final lastStopTimestamp:J

.field private final launchEvent:Lru/mail/android/mytracker/models/events/Event;

.field private final sessionEvent:Lru/mail/android/mytracker/models/events/SessionEvent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;JLandroid/content/Context;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "dbHelper"    # Lru/mail/android/mytracker/database/MyTrackerDBHelper;
    .param p3, "trackerParams"    # Lru/mail/android/mytracker/TrackerParams;
    .param p4, "lastStopTimestamp"    # J
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p6}, Lru/mail/android/mytracker/async/commands/EventsActionCommand;-><init>(Ljava/lang/String;Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)V

    .line 33
    iput-wide p4, p0, Lru/mail/android/mytracker/async/commands/TrackLaunchSessionCommand;->lastStopTimestamp:J

    .line 34
    const-string/jumbo v0, "launch"

    invoke-static {v0}, Lru/mail/android/mytracker/factories/EventsFactory;->getStandardEvent(Ljava/lang/String;)Lru/mail/android/mytracker/models/events/Event;

    move-result-object v0

    iput-object v0, p0, Lru/mail/android/mytracker/async/commands/TrackLaunchSessionCommand;->launchEvent:Lru/mail/android/mytracker/models/events/Event;

    .line 35
    invoke-static {}, Lru/mail/android/mytracker/factories/EventsFactory;->getSessionEvent()Lru/mail/android/mytracker/models/events/SessionEvent;

    move-result-object v0

    iput-object v0, p0, Lru/mail/android/mytracker/async/commands/TrackLaunchSessionCommand;->sessionEvent:Lru/mail/android/mytracker/models/events/SessionEvent;

    .line 36
    return-void
.end method


# virtual methods
.method protected execute()Lru/mail/android/mytracker/async/commands/AsyncCommandResult;
    .locals 6

    .prologue
    .line 41
    invoke-super {p0}, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->execute()Lru/mail/android/mytracker/async/commands/AsyncCommandResult;

    move-result-object v1

    .line 43
    .local v1, "result":Lru/mail/android/mytracker/async/commands/AsyncCommandResult;
    invoke-virtual {v1}, Lru/mail/android/mytracker/async/commands/AsyncCommandResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    :goto_0
    return-object v1

    .line 45
    :cond_0
    iget-object v2, p0, Lru/mail/android/mytracker/async/commands/TrackLaunchSessionCommand;->launchEvent:Lru/mail/android/mytracker/models/events/Event;

    invoke-virtual {p0, v2}, Lru/mail/android/mytracker/async/commands/TrackLaunchSessionCommand;->insertEvent(Lru/mail/android/mytracker/models/events/Event;)Z

    move-result v0

    .line 46
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_1

    iget-object v2, p0, Lru/mail/android/mytracker/async/commands/TrackLaunchSessionCommand;->sessionEvent:Lru/mail/android/mytracker/models/events/SessionEvent;

    iget-wide v4, p0, Lru/mail/android/mytracker/async/commands/TrackLaunchSessionCommand;->lastStopTimestamp:J

    invoke-virtual {p0, v2, v4, v5}, Lru/mail/android/mytracker/async/commands/TrackLaunchSessionCommand;->insertEvent(Lru/mail/android/mytracker/models/events/Event;J)Z

    move-result v0

    .line 47
    :cond_1
    if-eqz v0, :cond_2

    sget-object v2, Lru/mail/android/mytracker/enums/CriterionSend;->TIME_INTERVAL:Lru/mail/android/mytracker/enums/CriterionSend;

    invoke-virtual {p0, v2}, Lru/mail/android/mytracker/async/commands/TrackLaunchSessionCommand;->sendEvents(Lru/mail/android/mytracker/enums/CriterionSend;)Z

    move-result v0

    .line 48
    :cond_2
    invoke-virtual {v1, v0}, Lru/mail/android/mytracker/async/commands/AsyncCommandResult;->setSuccess(Z)V

    goto :goto_0
.end method
