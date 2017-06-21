.class public Lcom/vkcoffee/android/fragments/PostListFragment$ExpandTextClickListener;
.super Ljava/lang/Object;
.source "PostListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/PostListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExpandTextClickListener"
.end annotation


# instance fields
.field public item:Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostListFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/PostListFragment;Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/PostListFragment;
    .param p2, "item"    # Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$ExpandTextClickListener;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1107
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$ExpandTextClickListener;->item:Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;

    .line 1108
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1112
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$ExpandTextClickListener;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$ExpandTextClickListener;->item:Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1113
    .local v0, "index":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$ExpandTextClickListener;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1114
    const-string/jumbo v1, "post_interaction"

    invoke-static {v1}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string/jumbo v2, "post_id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostListFragment$ExpandTextClickListener;->item:Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;

    iget v4, v4, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;->postOwnerID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostListFragment$ExpandTextClickListener;->item:Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;

    iget v4, v4, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;->postID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1115
    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string/jumbo v2, "action"

    const-string/jumbo v3, "expand"

    .line 1116
    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string/jumbo v2, "ref"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostListFragment$ExpandTextClickListener;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    .line 1117
    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/PostListFragment;->getListReferrer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v1

    .line 1118
    invoke-virtual {v1}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 1120
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$ExpandTextClickListener;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$ExpandTextClickListener;->item:Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;->expandText()Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1121
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$ExpandTextClickListener;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/PostListFragment;->adapter:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment$ExpandTextClickListener;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/fragments/PostListFragment;->convertItemsIndexToReal(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1123
    :cond_0
    return-void
.end method
