.class public abstract Lru/mail/android/mytracker/async/commands/EventsActionCommand;
.super Lru/mail/android/mytracker/async/commands/AbstractHttpCommand;
.source "EventsActionCommand.java"


# static fields
.field private static final MIN_EVENTS_COUNT:I = 0x64

.field private static debugDenySending:Z


# instance fields
.field private dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->debugDenySending:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "dbHelper"    # Lru/mail/android/mytracker/database/MyTrackerDBHelper;
    .param p3, "trackerParams"    # Lru/mail/android/mytracker/TrackerParams;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1, p3, p4}, Lru/mail/android/mytracker/async/commands/AbstractHttpCommand;-><init>(Ljava/lang/String;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)V

    .line 49
    iput-object p2, p0, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;

    .line 50
    return-void
.end method

.method private hasCriterion(Lru/mail/android/mytracker/enums/CriterionSend;)Z
    .locals 4
    .param p1, "criterion"    # Lru/mail/android/mytracker/enums/CriterionSend;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    sget-object v2, Lru/mail/android/mytracker/enums/CriterionSend;->MAJOR_EVENT:Lru/mail/android/mytracker/enums/CriterionSend;

    if-ne p1, v2, :cond_2

    .line 170
    iget-object v2, p0, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;

    invoke-virtual {v2}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getMajorEventsCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 170
    goto :goto_0

    .line 172
    :cond_2
    sget-object v2, Lru/mail/android/mytracker/enums/CriterionSend;->EVENTS_COUNT:Lru/mail/android/mytracker/enums/CriterionSend;

    if-ne p1, v2, :cond_3

    .line 174
    iget-object v2, p0, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;

    invoke-virtual {v2}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getEventsCount()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 176
    :cond_3
    sget-object v2, Lru/mail/android/mytracker/enums/CriterionSend;->TIME_INTERVAL:Lru/mail/android/mytracker/enums/CriterionSend;

    if-eq p1, v2, :cond_0

    move v0, v1

    .line 178
    goto :goto_0
.end method


# virtual methods
.method protected insertEvent(Lru/mail/android/mytracker/models/events/Event;)Z
    .locals 2
    .param p1, "event"    # Lru/mail/android/mytracker/models/events/Event;

    .prologue
    .line 57
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->insertEvent(Lru/mail/android/mytracker/models/events/Event;J)Z

    move-result v0

    return v0
.end method

.method protected insertEvent(Lru/mail/android/mytracker/models/events/Event;J)Z
    .locals 10
    .param p1, "event"    # Lru/mail/android/mytracker/models/events/Event;
    .param p2, "lastStopTimestamp"    # J

    .prologue
    .line 65
    :try_start_0
    invoke-static {}, Lru/mail/android/mytracker/utils/PreferencesManager;->getInstance()Lru/mail/android/mytracker/utils/PreferencesManager;

    move-result-object v0

    iget-object v1, p0, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lru/mail/android/mytracker/utils/PreferencesManager;->init(Landroid/content/Context;)Lru/mail/android/mytracker/utils/PreferencesManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 72
    .local v8, "preferencesManager":Lru/mail/android/mytracker/utils/PreferencesManager;
    invoke-virtual {v8}, Lru/mail/android/mytracker/utils/PreferencesManager;->getEventTimestampBase()J

    move-result-wide v2

    .line 73
    .local v2, "timestampBase":J
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 75
    invoke-interface {p1}, Lru/mail/android/mytracker/models/events/Event;->getTimestamp()J

    move-result-wide v2

    .line 76
    invoke-virtual {v8, v2, v3}, Lru/mail/android/mytracker/utils/PreferencesManager;->setEventTimestampBase(J)V

    .line 79
    :cond_0
    iget-object v0, p0, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->updateEvent(Lru/mail/android/mytracker/models/events/Event;JJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;

    invoke-virtual {v0, p1, v2, v3}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->insertEvent(Lru/mail/android/mytracker/models/events/Event;J)Z

    move-result v7

    .line 82
    .local v7, "isInserted":Z
    if-nez v7, :cond_1

    invoke-interface {p1}, Lru/mail/android/mytracker/models/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v8}, Lru/mail/android/mytracker/utils/PreferencesManager;->getCustomEventsSkipped()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-virtual {v8, v0, v1}, Lru/mail/android/mytracker/utils/PreferencesManager;->setCustomEventsSkipped(J)V

    .line 88
    .end local v7    # "isInserted":Z
    :cond_1
    const/4 v0, 0x1

    .end local v2    # "timestampBase":J
    .end local v8    # "preferencesManager":Lru/mail/android/mytracker/utils/PreferencesManager;
    :goto_0
    return v0

    .line 66
    :catch_0
    move-exception v6

    .line 68
    .local v6, "e":Ljava/lang/Throwable;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PreferencesManager error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sendEvents(Lru/mail/android/mytracker/enums/CriterionSend;)Z
    .locals 14
    .param p1, "criterion"    # Lru/mail/android/mytracker/enums/CriterionSend;

    .prologue
    .line 93
    sget-boolean v9, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->debugDenySending:Z

    if-eqz v9, :cond_1

    .line 96
    const/4 v8, 0x0

    .line 163
    :cond_0
    :goto_0
    return v8

    .line 98
    :cond_1
    invoke-virtual {p0}, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->isConnected()Z

    move-result v9

    if-nez v9, :cond_2

    .line 100
    const-string/jumbo v9, "no internet connection"

    invoke-static {v9}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 101
    const/4 v8, 0x0

    goto :goto_0

    .line 106
    :cond_2
    :try_start_0
    invoke-static {}, Lru/mail/android/mytracker/utils/PreferencesManager;->getInstance()Lru/mail/android/mytracker/utils/PreferencesManager;

    move-result-object v9

    iget-object v10, p0, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->context:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lru/mail/android/mytracker/utils/PreferencesManager;->init(Landroid/content/Context;)Lru/mail/android/mytracker/utils/PreferencesManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 113
    .local v4, "preferencesManager":Lru/mail/android/mytracker/utils/PreferencesManager;
    const/4 v8, 0x1

    .line 114
    .local v8, "success":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "send criterion: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lru/mail/android/mytracker/enums/CriterionSend;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, p1}, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->hasCriterion(Lru/mail/android/mytracker/enums/CriterionSend;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 117
    const-string/jumbo v9, "criterion accepted"

    invoke-static {v9}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 118
    iget-object v9, p0, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;

    invoke-virtual {v9}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getAllEvents()Ljava/util/List;

    move-result-object v2

    .line 119
    .local v2, "events":Ljava/util/List;, "Ljava/util/List<Lru/mail/android/mytracker/models/events/Event;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 120
    .local v5, "size":I
    if-lez v5, :cond_6

    .line 122
    invoke-virtual {p0}, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->collectData()V

    .line 124
    new-instance v0, Lru/mail/android/mytracker/builders/JSONBuilder;

    invoke-direct {v0}, Lru/mail/android/mytracker/builders/JSONBuilder;-><init>()V

    .line 126
    .local v0, "builder":Lru/mail/android/mytracker/builders/JSONBuilder;
    invoke-virtual {v4}, Lru/mail/android/mytracker/utils/PreferencesManager;->getEventTimestampBase()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lru/mail/android/mytracker/builders/JSONBuilder;->setTimestampBase(J)V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v0, v10, v11}, Lru/mail/android/mytracker/builders/JSONBuilder;->setTimestampSend(J)V

    .line 128
    invoke-virtual {v4}, Lru/mail/android/mytracker/utils/PreferencesManager;->getCustomEventsSkipped()J

    move-result-wide v6

    .line 129
    .local v6, "skipped":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-lez v9, :cond_3

    invoke-virtual {v0, v6, v7}, Lru/mail/android/mytracker/builders/JSONBuilder;->setCustomEventsSkipped(J)V

    .line 131
    :cond_3
    invoke-static {}, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->getInstance()Lru/mail/android/mytracker/providers/FingerprintDataProvider;

    move-result-object v9

    invoke-virtual {v9, v0}, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->putDataToBuilder(Lru/mail/android/mytracker/builders/JSONBuilder;)V

    .line 133
    iget-object v9, p0, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->trackerParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v9, v0}, Lru/mail/android/mytracker/TrackerParams;->putDataToBuilder(Lru/mail/android/mytracker/builders/JSONBuilder;)V

    .line 135
    invoke-virtual {v0, v2}, Lru/mail/android/mytracker/builders/JSONBuilder;->addEvents(Ljava/util/List;)V

    .line 137
    invoke-virtual {v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "json":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "send events. count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, v3}, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->sendPostRequest(Ljava/lang/String;)Z

    move-result v8

    .line 141
    if-eqz v8, :cond_5

    .line 143
    const-string/jumbo v9, "events sent successfully"

    invoke-static {v9}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 144
    iget-object v9, p0, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;

    invoke-virtual {v9}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->deleteAllEventsExceptRunningSessions()V

    .line 145
    iget-object v9, p0, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;

    invoke-virtual {v9}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->deleteAllStoredSessions()V

    .line 146
    iget-object v9, p0, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;

    invoke-virtual {v9}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->hasRunningSessions()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 148
    iget-object v9, p0, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;

    invoke-virtual {v9}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->getTimestampBaseFromRunningSession()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lru/mail/android/mytracker/utils/PreferencesManager;->setEventTimestampBase(J)V

    .line 149
    iget-object v9, p0, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->dbHelper:Lru/mail/android/mytracker/database/MyTrackerDBHelper;

    invoke-virtual {v9}, Lru/mail/android/mytracker/database/MyTrackerDBHelper;->removeSkippedFromAllRows()V

    .line 155
    :goto_1
    const-wide/16 v10, 0x0

    invoke-virtual {v4, v10, v11}, Lru/mail/android/mytracker/utils/PreferencesManager;->setCustomEventsSkipped(J)V

    .line 156
    invoke-static {}, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->getInstance()Lru/mail/android/mytracker/providers/FingerprintDataProvider;

    move-result-object v9

    iget-object v10, p0, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->context:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lru/mail/android/mytracker/providers/FingerprintDataProvider;->storeData(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 107
    .end local v0    # "builder":Lru/mail/android/mytracker/builders/JSONBuilder;
    .end local v2    # "events":Ljava/util/List;, "Ljava/util/List<Lru/mail/android/mytracker/models/events/Event;>;"
    .end local v3    # "json":Ljava/lang/String;
    .end local v4    # "preferencesManager":Lru/mail/android/mytracker/utils/PreferencesManager;
    .end local v5    # "size":I
    .end local v6    # "skipped":J
    .end local v8    # "success":Z
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "PreferencesManager error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 110
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 153
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "builder":Lru/mail/android/mytracker/builders/JSONBuilder;
    .restart local v2    # "events":Ljava/util/List;, "Ljava/util/List<Lru/mail/android/mytracker/models/events/Event;>;"
    .restart local v3    # "json":Ljava/lang/String;
    .restart local v4    # "preferencesManager":Lru/mail/android/mytracker/utils/PreferencesManager;
    .restart local v5    # "size":I
    .restart local v6    # "skipped":J
    .restart local v8    # "success":Z
    :cond_4
    const-wide/16 v10, 0x0

    invoke-virtual {v4, v10, v11}, Lru/mail/android/mytracker/utils/PreferencesManager;->setEventTimestampBase(J)V

    goto :goto_1

    .line 158
    :cond_5
    const-string/jumbo v9, "Send events failed"

    invoke-static {v9}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    .end local v0    # "builder":Lru/mail/android/mytracker/builders/JSONBuilder;
    .end local v3    # "json":Ljava/lang/String;
    .end local v6    # "skipped":J
    :cond_6
    const-string/jumbo v9, "no events to send"

    invoke-static {v9}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
