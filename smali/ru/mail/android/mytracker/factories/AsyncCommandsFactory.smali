.class public Lru/mail/android/mytracker/factories/AsyncCommandsFactory;
.super Ljava/lang/Object;
.source "AsyncCommandsFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static getSendEventsCommand(Lru/mail/android/mytracker/enums/CriterionSend;Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)Lru/mail/android/mytracker/async/commands/AsyncCommand;
    .locals 6
    .param p0, "criterion"    # Lru/mail/android/mytracker/enums/CriterionSend;
    .param p1, "dbHelper"    # Lru/mail/android/mytracker/database/MyTrackerDBHelper;
    .param p2, "params"    # Lru/mail/android/mytracker/TrackerParams;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    new-instance v0, Lru/mail/android/mytracker/async/commands/SendEventsCommand;

    invoke-static {}, Lru/mail/android/mytracker/net/Hosts;->getTrackerHost()Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lru/mail/android/mytracker/async/commands/SendEventsCommand;-><init>(Ljava/lang/String;Lru/mail/android/mytracker/enums/CriterionSend;Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)V

    return-object v0
.end method

.method public static getTrackEventCommand(Lru/mail/android/mytracker/models/events/Event;Lru/mail/android/mytracker/enums/CriterionSend;Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)Lru/mail/android/mytracker/async/commands/AsyncCommand;
    .locals 7
    .param p0, "event"    # Lru/mail/android/mytracker/models/events/Event;
    .param p1, "criterion"    # Lru/mail/android/mytracker/enums/CriterionSend;
    .param p2, "dbHelper"    # Lru/mail/android/mytracker/database/MyTrackerDBHelper;
    .param p3, "trackerParams"    # Lru/mail/android/mytracker/TrackerParams;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    new-instance v0, Lru/mail/android/mytracker/async/commands/TrackEventCommand;

    invoke-static {}, Lru/mail/android/mytracker/net/Hosts;->getTrackerHost()Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lru/mail/android/mytracker/async/commands/TrackEventCommand;-><init>(Ljava/lang/String;Lru/mail/android/mytracker/models/events/Event;Lru/mail/android/mytracker/enums/CriterionSend;Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)V

    return-object v0
.end method

.method public static getTrackLaunchSessionCommand(Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;JLandroid/content/Context;)Lru/mail/android/mytracker/async/commands/AsyncCommand;
    .locals 8
    .param p0, "dbHelper"    # Lru/mail/android/mytracker/database/MyTrackerDBHelper;
    .param p1, "trackerParams"    # Lru/mail/android/mytracker/TrackerParams;
    .param p2, "lastStopTimestamp"    # J
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    new-instance v0, Lru/mail/android/mytracker/async/commands/TrackLaunchSessionCommand;

    invoke-static {}, Lru/mail/android/mytracker/net/Hosts;->getTrackerHost()Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lru/mail/android/mytracker/async/commands/TrackLaunchSessionCommand;-><init>(Ljava/lang/String;Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;JLandroid/content/Context;)V

    return-object v0
.end method

.method public static getTrackMajorEventsCommand(Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)Lru/mail/android/mytracker/async/commands/AsyncCommand;
    .locals 2
    .param p0, "dbHelper"    # Lru/mail/android/mytracker/database/MyTrackerDBHelper;
    .param p1, "trackerParams"    # Lru/mail/android/mytracker/TrackerParams;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    new-instance v0, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;

    invoke-static {}, Lru/mail/android/mytracker/net/Hosts;->getTrackerHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;-><init>(Ljava/lang/String;Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)V

    return-object v0
.end method

.method public static getTrackReferrerCommand(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lru/mail/android/mytracker/async/commands/AsyncCommand;
    .locals 2
    .param p0, "referrer"    # Ljava/lang/String;
    .param p1, "trackerId"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-static {}, Lru/mail/android/mytracker/net/Hosts;->getTrackerHost()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lru/mail/android/mytracker/async/commands/TrackReferrerCommand;

    invoke-direct {v1, v0, p0, p1, p2}, Lru/mail/android/mytracker/async/commands/TrackReferrerCommand;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-object v1
.end method
