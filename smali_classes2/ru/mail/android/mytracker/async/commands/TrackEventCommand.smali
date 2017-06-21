.class public Lru/mail/android/mytracker/async/commands/TrackEventCommand;
.super Lru/mail/android/mytracker/async/commands/EventsActionCommand;
.source "TrackEventCommand.java"


# instance fields
.field private criterion:Lru/mail/android/mytracker/enums/CriterionSend;

.field private event:Lru/mail/android/mytracker/models/events/Event;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lru/mail/android/mytracker/models/events/Event;Lru/mail/android/mytracker/enums/CriterionSend;Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "event"    # Lru/mail/android/mytracker/models/events/Event;
    .param p3, "criterion"    # Lru/mail/android/mytracker/enums/CriterionSend;
    .param p4, "dbHelper"    # Lru/mail/android/mytracker/database/MyTrackerDBHelper;
    .param p5, "trackerParams"    # Lru/mail/android/mytracker/TrackerParams;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1, p4, p5, p6}, Lru/mail/android/mytracker/async/commands/EventsActionCommand;-><init>(Ljava/lang/String;Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lru/mail/android/mytracker/async/commands/TrackEventCommand;->event:Lru/mail/android/mytracker/models/events/Event;

    .line 39
    iput-object p3, p0, Lru/mail/android/mytracker/async/commands/TrackEventCommand;->criterion:Lru/mail/android/mytracker/enums/CriterionSend;

    .line 40
    return-void
.end method


# virtual methods
.method protected execute()Lru/mail/android/mytracker/async/commands/AsyncCommandResult;
    .locals 3

    .prologue
    .line 48
    invoke-super {p0}, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->execute()Lru/mail/android/mytracker/async/commands/AsyncCommandResult;

    move-result-object v1

    .line 50
    .local v1, "result":Lru/mail/android/mytracker/async/commands/AsyncCommandResult;
    invoke-virtual {v1}, Lru/mail/android/mytracker/async/commands/AsyncCommandResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    :goto_0
    return-object v1

    .line 52
    :cond_0
    iget-object v2, p0, Lru/mail/android/mytracker/async/commands/TrackEventCommand;->event:Lru/mail/android/mytracker/models/events/Event;

    invoke-virtual {p0, v2}, Lru/mail/android/mytracker/async/commands/TrackEventCommand;->insertEvent(Lru/mail/android/mytracker/models/events/Event;)Z

    move-result v0

    .line 53
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_1

    iget-object v2, p0, Lru/mail/android/mytracker/async/commands/TrackEventCommand;->criterion:Lru/mail/android/mytracker/enums/CriterionSend;

    invoke-virtual {p0, v2}, Lru/mail/android/mytracker/async/commands/TrackEventCommand;->sendEvents(Lru/mail/android/mytracker/enums/CriterionSend;)Z

    move-result v0

    .line 54
    :cond_1
    invoke-virtual {v1, v0}, Lru/mail/android/mytracker/async/commands/AsyncCommandResult;->setSuccess(Z)V

    goto :goto_0
.end method
