.class Lcom/vkcoffee/android/fragments/PostListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "PostListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/PostListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/PostListFragment;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    const/4 v10, 0x0

    .line 95
    const-string/jumbo v0, "com.vkcoffee.android.NEW_POST_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const-string/jumbo v0, "entry"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/NewsEntry;

    .line 97
    .local v9, "post":Lcom/vkcoffee/android/NewsEntry;
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v0, v9}, Lcom/vkcoffee/android/fragments/PostListFragment;->canAddPost(Lcom/vkcoffee/android/NewsEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    .end local v9    # "post":Lcom/vkcoffee/android/NewsEntry;
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local v9    # "post":Lcom/vkcoffee/android/NewsEntry;
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v0, v9}, Lcom/vkcoffee/android/fragments/PostListFragment;->prepend(Lcom/vkcoffee/android/NewsEntry;)V

    .line 102
    .end local v9    # "post":Lcom/vkcoffee/android/NewsEntry;
    :cond_2
    const-string/jumbo v0, "com.vkcoffee.android.POST_DELETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    const-string/jumbo v1, "owner_id"

    invoke-virtual {p2, v1, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "post_id"

    invoke-virtual {p2, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostListFragment;->remove(II)V

    .line 104
    const-string/jumbo v0, "post"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/NewsEntry;

    .line 105
    .restart local v9    # "post":Lcom/vkcoffee/android/NewsEntry;
    if-eqz v9, :cond_3

    .line 106
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v0, v9}, Lcom/vkcoffee/android/fragments/PostListFragment;->onPostDeleted(Lcom/vkcoffee/android/NewsEntry;)V

    .line 109
    .end local v9    # "post":Lcom/vkcoffee/android/NewsEntry;
    :cond_3
    const-string/jumbo v0, "com.vkcoffee.android.POST_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    const-string/jumbo v1, "owner_id"

    invoke-virtual {p2, v1, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "post_id"

    invoke-virtual {p2, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "likes"

    invoke-virtual {p2, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "comments"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "retweets"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "liked"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string/jumbo v7, "retweeted"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/vkcoffee/android/fragments/PostListFragment;->update(IIIIIZZ)V

    .line 112
    :cond_4
    const-string/jumbo v0, "com.vkcoffee.android.POST_REPLACED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 113
    const-string/jumbo v0, "entry"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/NewsEntry;

    .line 114
    .restart local v9    # "post":Lcom/vkcoffee/android/NewsEntry;
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 115
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 116
    .local v8, "mode":Ljava/lang/String;
    const-string/jumbo v0, "postponed"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x800

    invoke-virtual {v9, v0}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    :cond_5
    const-string/jumbo v0, "suggested"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x1000

    invoke-virtual {v9, v0}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    .end local v8    # "mode":Ljava/lang/String;
    :cond_6
    const-string/jumbo v0, "bg_only"

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/vkcoffee/android/AppStateTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 126
    :cond_7
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v0, v9}, Lcom/vkcoffee/android/fragments/PostListFragment;->replace(Lcom/vkcoffee/android/NewsEntry;)V

    .line 128
    .end local v9    # "post":Lcom/vkcoffee/android/NewsEntry;
    :cond_8
    const-string/jumbo v0, "com.vkcoffee.android.RELOAD_FEED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/PostListFragment;->loadData()V

    goto/16 :goto_0
.end method
