.class Lcom/vkcoffee/android/fragments/PostViewFragment$20;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "PostViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;->restoreComment(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

.field private final synthetic val$cid:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;Landroid/content/Context;I)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$20;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    iput p3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$20;->val$cid:I

    .line 1887
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 6

    .prologue
    .line 1889
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$20;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$8(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1890
    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1900
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$20;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$26(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    .line 1901
    return-void

    .line 1891
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/NewsComment;

    .line 1892
    .local v1, "c":Lcom/vkcoffee/android/NewsComment;
    iget v3, v1, Lcom/vkcoffee/android/NewsComment;->cid:I

    iget v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$20;->val$cid:I

    if-ne v3, v4, :cond_0

    .line 1893
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$20;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    .line 1894
    .local v0, "access$000":Lcom/vkcoffee/android/NewsEntry;
    iget v3, v0, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    .line 1895
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/vkcoffee/android/NewsComment;->isDeleted:Z

    .line 1896
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$20;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$13(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$20;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$8(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$20;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$10(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$20;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$11(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->notifyItemChanged(I)V

    goto :goto_0
.end method
