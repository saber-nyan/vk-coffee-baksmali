.class final Lcom/vkcoffee/android/data/Groups$1;
.super Ljava/lang/Object;
.source "Groups.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Groups;->reload(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$forceNetwork:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/vkcoffee/android/data/Groups$1;->val$forceNetwork:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/Group;>;"
    iget-boolean v1, p0, Lcom/vkcoffee/android/data/Groups$1;->val$forceNetwork:Z

    if-nez v1, :cond_0

    .line 39
    invoke-static {}, Lcom/vkcoffee/android/cache/GroupsCache;->get()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    :cond_0
    iget-boolean v1, p0, Lcom/vkcoffee/android/data/Groups$1;->val$forceNetwork:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 42
    :cond_1
    new-instance v1, Lcom/vkcoffee/android/api/groups/GroupsGet;

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/api/groups/GroupsGet;-><init>(I)V

    new-instance v2, Lcom/vkcoffee/android/data/Groups$1$1;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/data/Groups$1$1;-><init>(Lcom/vkcoffee/android/data/Groups$1;)V

    .line 43
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/groups/GroupsGet;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    .line 65
    :goto_0
    invoke-static {}, Lcom/vkcoffee/android/data/Groups;->access$100()Lcom/vkcoffee/android/SearchIndexer;

    move-result-object v1

    invoke-static {}, Lcom/vkcoffee/android/data/Groups;->access$000()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/SearchIndexer;->bind(Ljava/util/List;)Lcom/vkcoffee/android/SearchIndexer;

    .line 66
    invoke-static {}, Lcom/vkcoffee/android/data/Groups;->access$100()Lcom/vkcoffee/android/SearchIndexer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/SearchIndexer;->build()V

    .line 67
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.vkcoffee.android.GROUP_LIST_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 68
    return-void

    .line 63
    :cond_2
    invoke-static {v0}, Lcom/vkcoffee/android/data/Groups;->access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0
.end method
