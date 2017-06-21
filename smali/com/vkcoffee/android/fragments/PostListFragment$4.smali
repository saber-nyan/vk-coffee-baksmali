.class Lcom/vkcoffee/android/fragments/PostListFragment$4;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "PostListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostListFragment;->hideNotInteresting(Lcom/vkcoffee/android/NewsEntry;)V
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
    .line 677
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/PostListFragment$4;->val$de:Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 4

    .prologue
    .line 680
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$4;->val$de:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$4;->val$de:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/PostListFragment;->remove(II)V

    .line 681
    const-string/jumbo v0, "post_interaction"

    invoke-static {v0}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string/jumbo v1, "post_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostListFragment$4;->val$de:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostListFragment$4;->val$de:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 682
    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string/jumbo v1, "action"

    const-string/jumbo v2, "hide"

    .line 683
    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string/jumbo v1, "ref"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    .line 684
    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/PostListFragment;->getListReferrer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    .line 685
    invoke-virtual {v0}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 686
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080269

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 687
    return-void
.end method
