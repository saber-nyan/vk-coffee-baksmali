.class Lcom/vkcoffee/android/fragments/PostListFragment$5;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "PostListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostListFragment;->hideSource(Lcom/vkcoffee/android/NewsEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

.field final synthetic val$de:Lcom/vkcoffee/android/NewsEntry;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostListFragment;Landroid/content/Context;Lcom/vkcoffee/android/NewsEntry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/PostListFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 706
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$5;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/PostListFragment$5;->val$de:Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 8

    .prologue
    .line 709
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v3, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/NewsEntry;>;"
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostListFragment$5;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/PostListFragment;->access$000(Lcom/vkcoffee/android/fragments/PostListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/NewsEntry;

    .line 711
    .local v0, "e":Lcom/vkcoffee/android/NewsEntry;
    iget v5, v0, Lcom/vkcoffee/android/NewsEntry;->userID:I

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostListFragment$5;->val$de:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-ne v5, v6, :cond_0

    .line 712
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 715
    .end local v0    # "e":Lcom/vkcoffee/android/NewsEntry;
    :cond_1
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostListFragment$5;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/PostListFragment;->access$100(Lcom/vkcoffee/android/fragments/PostListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/NewsEntry;

    .line 716
    .restart local v0    # "e":Lcom/vkcoffee/android/NewsEntry;
    iget v5, v0, Lcom/vkcoffee/android/NewsEntry;->userID:I

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostListFragment$5;->val$de:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-ne v5, v6, :cond_2

    .line 717
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 720
    .end local v0    # "e":Lcom/vkcoffee/android/NewsEntry;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/NewsEntry;

    .line 721
    .restart local v0    # "e":Lcom/vkcoffee/android/NewsEntry;
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostListFragment$5;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/PostListFragment;->access$200(Lcom/vkcoffee/android/fragments/PostListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 722
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostListFragment$5;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/PostListFragment;->access$300(Lcom/vkcoffee/android/fragments/PostListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 724
    .end local v0    # "e":Lcom/vkcoffee/android/NewsEntry;
    :cond_4
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostListFragment$5;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 725
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/ui/posts/PostDisplayItem;>;"
    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 726
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    .line 727
    .local v1, "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    iget v4, v1, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postOwnerID:I

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostListFragment$5;->val$de:Lcom/vkcoffee/android/NewsEntry;

    iget v5, v5, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-ne v4, v5, :cond_5

    .line 728
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 731
    .end local v1    # "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    :cond_6
    const-string/jumbo v4, "post_interaction"

    invoke-static {v4}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v4

    const-string/jumbo v5, "post_id"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostListFragment$5;->val$de:Lcom/vkcoffee/android/NewsEntry;

    iget v7, v7, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostListFragment$5;->val$de:Lcom/vkcoffee/android/NewsEntry;

    iget v7, v7, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 732
    invoke-virtual {v4, v5, v6}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v4

    const-string/jumbo v5, "action"

    const-string/jumbo v6, "hide"

    .line 733
    invoke-virtual {v4, v5, v6}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v4

    const-string/jumbo v5, "ref"

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PostListFragment$5;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    .line 734
    invoke-virtual {v6}, Lcom/vkcoffee/android/fragments/PostListFragment;->getListReferrer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v4

    .line 735
    invoke-virtual {v4}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 736
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostListFragment$5;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostListFragment$5;->val$de:Lcom/vkcoffee/android/NewsEntry;

    iget v4, v4, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-lez v4, :cond_7

    const v4, 0x7f0802d2

    :goto_4
    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 737
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostListFragment$5;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/PostListFragment;->updateList()V

    .line 738
    return-void

    .line 736
    :cond_7
    const v4, 0x7f0802d1

    goto :goto_4
.end method
