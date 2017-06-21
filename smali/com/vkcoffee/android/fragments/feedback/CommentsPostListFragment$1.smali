.class Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "CommentsPostListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/data/VKFromList",
        "<",
        "Lcom/vkcoffee/android/NewsEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/data/VKFromList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKFromList",
            "<",
            "Lcom/vkcoffee/android/NewsEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "news":Lcom/vkcoffee/android/data/VKFromList;, "Lcom/vkcoffee/android/data/VKFromList<Lcom/vkcoffee/android/NewsEntry;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKFromList;->from()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;->access$002(Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;->access$000(Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;->access$000(Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, v0}, Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;->access$100(Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment;Ljava/util/List;Z)V

    .line 38
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/vkcoffee/android/data/VKFromList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/feedback/CommentsPostListFragment$1;->success(Lcom/vkcoffee/android/data/VKFromList;)V

    return-void
.end method
