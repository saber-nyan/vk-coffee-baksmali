.class Lme/grishka/appkit/fragments/BaseRecyclerFragment$2;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "BaseRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/grishka/appkit/fragments/BaseRecyclerFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/grishka/appkit/fragments/BaseRecyclerFragment;

.field final synthetic val$prevLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method constructor <init>(Lme/grishka/appkit/fragments/BaseRecyclerFragment;Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V
    .locals 0
    .param p1, "this$0"    # Lme/grishka/appkit/fragments/BaseRecyclerFragment;

    .prologue
    .line 117
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment$2;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment$2;"
    iput-object p1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment$2;->this$0:Lme/grishka/appkit/fragments/BaseRecyclerFragment;

    iput-object p2, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment$2;->val$prevLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment$2;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment$2;"
    const/4 v0, 0x1

    .line 120
    iget-object v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment$2;->this$0:Lme/grishka/appkit/fragments/BaseRecyclerFragment;

    iget-object v1, v1, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    iget-object v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment$2;->this$0:Lme/grishka/appkit/fragments/BaseRecyclerFragment;

    iget-object v1, v1, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment$2;->this$0:Lme/grishka/appkit/fragments/BaseRecyclerFragment;

    iget-object v1, v1, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v1}, Lme/grishka/appkit/utils/Preloader;->isFooterVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment$2;->this$0:Lme/grishka/appkit/fragments/BaseRecyclerFragment;

    iget-object v1, v1, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 122
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment$2;->this$0:Lme/grishka/appkit/fragments/BaseRecyclerFragment;

    iget-object v0, v0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    goto :goto_0

    .line 123
    :cond_2
    iget-object v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment$2;->val$prevLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment$2;->val$prevLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    goto :goto_0
.end method
