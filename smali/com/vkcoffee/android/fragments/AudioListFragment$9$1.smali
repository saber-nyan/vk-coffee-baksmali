.class Lcom/vkcoffee/android/fragments/AudioListFragment$9$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "AudioListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment$9;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/data/VKList",
        "<",
        "Lcom/vkcoffee/android/AudioFile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$9;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment$9;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$9;

    .line 845
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2

    .prologue
    .line 864
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$9;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$9;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$9;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$9;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$35(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/api/APIRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$42(Lcom/vkcoffee/android/fragments/AudioListFragment;Lme/grishka/appkit/api/APIRequest;)V

    .line 865
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$9;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$9;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$39(Lcom/vkcoffee/android/fragments/AudioListFragment;Lme/grishka/appkit/api/APIRequest;)V

    .line 866
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 867
    return-void
.end method

.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 847
    .local p1, "files":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/AudioFile;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$9;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$9;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$12(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 848
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$9;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$9;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$12(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 849
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$9;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$9;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$4(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->notifyDataSetChanged()V

    .line 850
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$9;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$9;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$38(Lcom/vkcoffee/android/fragments/AudioListFragment;)V

    .line 851
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$9;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$9;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$39(Lcom/vkcoffee/android/fragments/AudioListFragment;Lme/grishka/appkit/api/APIRequest;)V

    .line 852
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$9;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$9;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$15(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 853
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$9;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$9;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$40(Lcom/vkcoffee/android/fragments/AudioListFragment;I)V

    .line 854
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$9;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$9;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$36(Lcom/vkcoffee/android/fragments/AudioListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$9;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$9;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->refreshDone()V

    .line 857
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$9$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$9;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$9;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$9;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$41(Lcom/vkcoffee/android/fragments/AudioListFragment;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 858
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment$9$1;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method
