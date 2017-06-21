.class public Lcom/vkcoffee/android/DialogEntry;
.super Ljava/lang/Object;
.source "DialogEntry.java"

# interfaces
.implements Lcom/vkcoffee/android/Indexable;


# instance fields
.field public lastMessage:Lcom/vkcoffee/android/Message;

.field public lastMessagePhoto:Ljava/lang/String;

.field public muted:Z

.field public profile:Lcom/vkcoffee/android/UserProfile;

.field public unreadCount:I

.field private writesMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final writesMessageMonitor:Ljava/lang/Object;

.field private writesMessageUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/vkcoffee/android/UserProfile;->EMPTY_USER:Lcom/vkcoffee/android/UserProfile;

    iput-object v0, p0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/DialogEntry;->muted:Z

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/DialogEntry;->writesMessageMonitor:Ljava/lang/Object;

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/DialogEntry;)V
    .locals 2
    .param p1, "other"    # Lcom/vkcoffee/android/DialogEntry;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/vkcoffee/android/UserProfile;->EMPTY_USER:Lcom/vkcoffee/android/UserProfile;

    iput-object v0, p0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/DialogEntry;->muted:Z

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/DialogEntry;->writesMessageMonitor:Ljava/lang/Object;

    .line 23
    iget-object v0, p1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iput-object v0, p0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 24
    iget-object v0, p1, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iput-object v0, p0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    .line 25
    iget-object v0, p1, Lcom/vkcoffee/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 26
    iget v0, p1, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I

    iput v0, p0, Lcom/vkcoffee/android/DialogEntry;->unreadCount:I

    .line 27
    iget-object v0, p1, Lcom/vkcoffee/android/DialogEntry;->writesMessage:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/vkcoffee/android/DialogEntry;->writesMessage:Ljava/util/Map;

    iget-object v1, p1, Lcom/vkcoffee/android/DialogEntry;->writesMessage:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 30
    :cond_0
    iget-boolean v0, p1, Lcom/vkcoffee/android/DialogEntry;->muted:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/DialogEntry;->muted:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getIndexChars()[C
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v0}, Lcom/vkcoffee/android/UserProfile;->getIndexChars()[C

    move-result-object v0

    return-object v0
.end method

.method public getWritesMessage()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v1, p0, Lcom/vkcoffee/android/DialogEntry;->writesMessageMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/DialogEntry;->writesMessageUsers:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/UserProfile;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWritesMessage(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "writesMessage":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/vkcoffee/android/UserProfile;>;"
    iget-object v2, p0, Lcom/vkcoffee/android/DialogEntry;->writesMessageMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/DialogEntry;->writesMessage:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/vkcoffee/android/DialogEntry;->writesMessage:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/DialogEntry;->writesMessageUsers:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/vkcoffee/android/DialogEntry;->writesMessageUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 75
    :goto_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 76
    .local v0, "profile":Lcom/vkcoffee/android/UserProfile;
    iget-object v3, p0, Lcom/vkcoffee/android/DialogEntry;->writesMessage:Ljava/util/Map;

    iget v4, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 79
    .end local v0    # "profile":Lcom/vkcoffee/android/UserProfile;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 68
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/DialogEntry;->writesMessage:Ljava/util/Map;

    goto :goto_0

    .line 73
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/DialogEntry;->writesMessageUsers:Ljava/util/List;

    goto :goto_1

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/DialogEntry;->writesMessageUsers:Ljava/util/List;

    iget-object v3, p0, Lcom/vkcoffee/android/DialogEntry;->writesMessage:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DialogEntry {profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateMutedState()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/vkcoffee/android/DialogEntry;->lastMessage:Lcom/vkcoffee/android/Message;

    iget v4, v4, Lcom/vkcoffee/android/Message;->peer:I

    invoke-static {v3, v4}, Lcom/vkcoffee/android/NotificationUtils;->arePeerNotificationsEnabled(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 45
    .local v0, "newMuted":Z
    :goto_0
    iget-boolean v3, p0, Lcom/vkcoffee/android/DialogEntry;->muted:Z

    if-eq v3, v0, :cond_1

    .line 46
    iput-boolean v0, p0, Lcom/vkcoffee/android/DialogEntry;->muted:Z

    .line 49
    :goto_1
    return v1

    .end local v0    # "newMuted":Z
    :cond_0
    move v0, v2

    .line 44
    goto :goto_0

    .restart local v0    # "newMuted":Z
    :cond_1
    move v1, v2

    .line 49
    goto :goto_1
.end method
