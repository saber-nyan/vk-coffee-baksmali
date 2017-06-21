.class public Lcom/vkcoffee/android/data/Groups;
.super Ljava/lang/Object;
.source "Groups.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/data/Groups$JoinType;
    }
.end annotation


# static fields
.field public static final ACTION_GROUP_INVITES_CHANGED:Ljava/lang/String; = "com.vkcoffee.android.GROUP_INVITES_CHANGED"

.field public static final ACTION_GROUP_LIST_CHANGED:Ljava/lang/String; = "com.vkcoffee.android.GROUP_LIST_CHANGED"

.field public static final ACTION_GROUP_STATUS_CHANGED:Ljava/lang/String; = "com.vkcoffee.android.ACTION_GROUP_STATUS_CHANGED"

.field private static groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private static index:Lcom/vkcoffee/android/SearchIndexer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/SearchIndexer",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/Groups;->groups:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Lcom/vkcoffee/android/SearchIndexer;

    invoke-direct {v0}, Lcom/vkcoffee/android/SearchIndexer;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/Groups;->index:Lcom/vkcoffee/android/SearchIndexer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/vkcoffee/android/data/Groups;->groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 24
    sput-object p0, Lcom/vkcoffee/android/data/Groups;->groups:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100()Lcom/vkcoffee/android/SearchIndexer;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/vkcoffee/android/data/Groups;->index:Lcom/vkcoffee/android/SearchIndexer;

    return-object v0
.end method

.method public static addGroup(Lcom/vkcoffee/android/api/Group;Z)V
    .locals 3
    .param p0, "group"    # Lcom/vkcoffee/android/api/Group;
    .param p1, "sendGlobalNotify"    # Z

    .prologue
    .line 73
    sget-object v0, Lcom/vkcoffee/android/data/Groups;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/vkcoffee/android/cache/GroupsCache;->add(Lcom/vkcoffee/android/api/Group;Landroid/content/Context;)V

    .line 75
    sget-object v0, Lcom/vkcoffee/android/data/Groups;->index:Lcom/vkcoffee/android/SearchIndexer;

    sget-object v1, Lcom/vkcoffee/android/data/Groups;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/SearchIndexer;->bind(Ljava/util/List;)Lcom/vkcoffee/android/SearchIndexer;

    .line 76
    sget-object v0, Lcom/vkcoffee/android/data/Groups;->index:Lcom/vkcoffee/android/SearchIndexer;

    invoke-virtual {v0}, Lcom/vkcoffee/android/SearchIndexer;->build()V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.GROUP_LIST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method

.method public static decreaseInvites()V
    .locals 3

    .prologue
    .line 174
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumGroupInvitations()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/vkcoffee/android/LongPollService;->setNumGroupInvitations(I)V

    .line 175
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.GROUP_INVITES_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public static getAdminLevel(I)I
    .locals 3
    .param p0, "gid"    # I

    .prologue
    .line 134
    sget-object v1, Lcom/vkcoffee/android/data/Groups;->groups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/Group;

    .line 135
    .local v0, "g":Lcom/vkcoffee/android/api/Group;
    iget v2, v0, Lcom/vkcoffee/android/api/Group;->id:I

    if-ne v2, p0, :cond_0

    .line 136
    iget v1, v0, Lcom/vkcoffee/android/api/Group;->adminLevel:I

    .line 139
    .end local v0    # "g":Lcom/vkcoffee/android/api/Group;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAdminedGroups(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/Group;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/vkcoffee/android/data/Groups;->groups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 89
    sget-object v2, Lcom/vkcoffee/android/data/Groups;->groups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/Group;

    .line 90
    .local v0, "g":Lcom/vkcoffee/android/api/Group;
    iget-boolean v2, v0, Lcom/vkcoffee/android/api/Group;->isAdmin:Z

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "g":Lcom/vkcoffee/android/api/Group;
    :cond_1
    return-void
.end method

.method public static getAdminedGroups(Ljava/util/ArrayList;I)V
    .locals 3
    .param p1, "minLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/Group;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/vkcoffee/android/data/Groups;->groups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 98
    sget-object v2, Lcom/vkcoffee/android/data/Groups;->groups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/Group;

    .line 99
    .local v0, "g":Lcom/vkcoffee/android/api/Group;
    iget v2, v0, Lcom/vkcoffee/android/api/Group;->adminLevel:I

    if-lt v2, p1, :cond_0

    .line 100
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "g":Lcom/vkcoffee/android/api/Group;
    :cond_1
    return-void
.end method

.method public static getById(I)Lcom/vkcoffee/android/api/Group;
    .locals 3
    .param p0, "gid"    # I

    .prologue
    .line 125
    sget-object v1, Lcom/vkcoffee/android/data/Groups;->groups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/Group;

    .line 126
    .local v0, "g":Lcom/vkcoffee/android/api/Group;
    iget v2, v0, Lcom/vkcoffee/android/api/Group;->id:I

    if-ne v2, p0, :cond_0

    .line 130
    .end local v0    # "g":Lcom/vkcoffee/android/api/Group;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getGroups(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/Group;>;"
    sget-object v0, Lcom/vkcoffee/android/data/Groups;->groups:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 85
    return-void
.end method

.method public static isGroupAdmin(I)Z
    .locals 4
    .param p0, "gid"    # I

    .prologue
    .line 115
    sget-object v1, Lcom/vkcoffee/android/data/Groups;->groups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/Group;

    .line 116
    .local v0, "g":Lcom/vkcoffee/android/api/Group;
    iget v2, v0, Lcom/vkcoffee/android/api/Group;->id:I

    if-ne v2, p0, :cond_0

    .line 117
    const-string/jumbo v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "is group admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/vkcoffee/android/api/Group;->isAdmin:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-boolean v1, v0, Lcom/vkcoffee/android/api/Group;->isAdmin:Z

    .line 121
    .end local v0    # "g":Lcom/vkcoffee/android/api/Group;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isGroupMember(I)Z
    .locals 3
    .param p0, "gid"    # I

    .prologue
    .line 106
    sget-object v1, Lcom/vkcoffee/android/data/Groups;->groups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/Group;

    .line 107
    .local v0, "g":Lcom/vkcoffee/android/api/Group;
    iget v2, v0, Lcom/vkcoffee/android/api/Group;->id:I

    if-ne v2, p0, :cond_0

    .line 108
    const/4 v1, 0x1

    .line 111
    .end local v0    # "g":Lcom/vkcoffee/android/api/Group;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static joinGroup(Lcom/vkcoffee/android/api/Group;Lcom/vkcoffee/android/data/Groups$JoinType;)Lcom/vkcoffee/android/api/ResultlessAPIRequest;
    .locals 3
    .param p0, "group"    # Lcom/vkcoffee/android/api/Group;
    .param p1, "type"    # Lcom/vkcoffee/android/data/Groups$JoinType;

    .prologue
    .line 159
    sget-object v0, Lcom/vkcoffee/android/data/Groups$JoinType;->DECLINE:Lcom/vkcoffee/android/data/Groups$JoinType;

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsLeave;

    iget v1, p0, Lcom/vkcoffee/android/api/Group;->id:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsLeave;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/vkcoffee/android/api/groups/GroupsJoin;

    iget v2, p0, Lcom/vkcoffee/android/api/Group;->id:I

    sget-object v0, Lcom/vkcoffee/android/data/Groups$JoinType;->UNSURE:Lcom/vkcoffee/android/data/Groups$JoinType;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {v1, v2, v0}, Lcom/vkcoffee/android/api/groups/GroupsJoin;-><init>(IZ)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static notifyGroupStatusChanged(II)V
    .locals 3
    .param p0, "id"    # I
    .param p1, "status"    # I

    .prologue
    .line 164
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.ACTION_GROUP_STATUS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public static reload(Z)V
    .locals 3
    .param p0, "forceNetwork"    # Z

    .prologue
    .line 34
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RELOAD GROUPS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/data/Groups$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/data/Groups$1;-><init>(Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 70
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/vkcoffee/android/data/Groups;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 144
    new-instance v0, Lcom/vkcoffee/android/SearchIndexer;

    invoke-direct {v0}, Lcom/vkcoffee/android/SearchIndexer;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/Groups;->index:Lcom/vkcoffee/android/SearchIndexer;

    .line 145
    return-void
.end method

.method public static resultFromApi(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "resp"    # Lorg/json/JSONObject;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 153
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/vkcoffee/android/data/Groups;->reload(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static search(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "q"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    sget-object v0, Lcom/vkcoffee/android/data/Groups;->index:Lcom/vkcoffee/android/SearchIndexer;

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/SearchIndexer;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
