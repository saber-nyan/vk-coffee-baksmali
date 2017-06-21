.class Lcom/vkcoffee/android/fragments/PostViewFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "PostViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    .line 180
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 182
    const-string v6, "com.vkcoffee.android.POST_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 183
    const-string v6, "owner_id"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 184
    .local v2, "oid":I
    const-string v6, "post_id"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 185
    .local v4, "pid":I
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v6

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-ne v2, v6, :cond_3

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v6

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->postID:I

    if-ne v4, v6, :cond_3

    .line 186
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v6

    const-string v7, "likes"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 187
    const-string v6, "comments"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 188
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v6

    const-string v7, "comments"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    .line 190
    :cond_0
    const-string v6, "retweets"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 191
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v6

    const-string v7, "retweets"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    .line 193
    :cond_1
    const-string v6, "retweeted"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 194
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v6

    const/4 v7, 0x4

    const-string v8, "retweeted"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 196
    :cond_2
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v5

    .line 197
    .local v5, "wasLiked":Z
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v6

    const-string v7, "liked"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v10, v7}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 198
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$6(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    .line 199
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v6

    if-eq v5, v6, :cond_3

    .line 200
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$7(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    .line 204
    .end local v2    # "oid":I
    .end local v4    # "pid":I
    .end local v5    # "wasLiked":Z
    :cond_3
    sget-object v6, Lcom/vkcoffee/android/data/GroupsAdmin;->ACTION_BAN_ADDED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 205
    const-string v6, "profile"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/UserProfile;

    .line 206
    .local v3, "p":Lcom/vkcoffee/android/UserProfile;
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$8(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 207
    .local v1, "it":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    .line 213
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/PostViewFragment;->updateList()V

    .line 215
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_5
    return-void

    .line 208
    .restart local v1    # "it":Ljava/util/Iterator;
    .restart local v3    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/NewsComment;

    .line 209
    .local v0, "c":Lcom/vkcoffee/android/NewsComment;
    iget v6, v0, Lcom/vkcoffee/android/NewsComment;->uid:I

    iget v7, v3, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v6, v7, :cond_4

    .line 210
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/vkcoffee/android/NewsComment;->isBanned:Z

    goto :goto_0
.end method
