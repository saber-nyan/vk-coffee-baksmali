.class public Lru/mail/android/mytracker/async/commands/SendEventsCommand;
.super Lru/mail/android/mytracker/async/commands/EventsActionCommand;
.source "SendEventsCommand.java"


# instance fields
.field private criterion:Lru/mail/android/mytracker/enums/CriterionSend;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lru/mail/android/mytracker/enums/CriterionSend;Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "criterion"    # Lru/mail/android/mytracker/enums/CriterionSend;
    .param p3, "dbHelper"    # Lru/mail/android/mytracker/database/MyTrackerDBHelper;
    .param p4, "trackerParams"    # Lru/mail/android/mytracker/TrackerParams;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1, p3, p4, p5}, Lru/mail/android/mytracker/async/commands/EventsActionCommand;-><init>(Ljava/lang/String;Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lru/mail/android/mytracker/async/commands/SendEventsCommand;->criterion:Lru/mail/android/mytracker/enums/CriterionSend;

    .line 39
    return-void
.end method


# virtual methods
.method protected execute()Lru/mail/android/mytracker/async/commands/AsyncCommandResult;
    .locals 3

    .prologue
    .line 47
    invoke-super {p0}, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->execute()Lru/mail/android/mytracker/async/commands/AsyncCommandResult;

    move-result-object v1

    .line 49
    .local v1, "result":Lru/mail/android/mytracker/async/commands/AsyncCommandResult;
    invoke-virtual {v1}, Lru/mail/android/mytracker/async/commands/AsyncCommandResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    :goto_0
    return-object v1

    .line 51
    :cond_0
    iget-object v2, p0, Lru/mail/android/mytracker/async/commands/SendEventsCommand;->criterion:Lru/mail/android/mytracker/enums/CriterionSend;

    invoke-virtual {p0, v2}, Lru/mail/android/mytracker/async/commands/SendEventsCommand;->sendEvents(Lru/mail/android/mytracker/enums/CriterionSend;)Z

    move-result v0

    .line 52
    .local v0, "isSuccess":Z
    invoke-virtual {v1, v0}, Lru/mail/android/mytracker/async/commands/AsyncCommandResult;->setSuccess(Z)V

    goto :goto_0
.end method
