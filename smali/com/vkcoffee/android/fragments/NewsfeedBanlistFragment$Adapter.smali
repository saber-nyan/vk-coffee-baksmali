.class Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$Adapter;
.super Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;
.source "NewsfeedBanlistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/SegmenterFragment",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">.GridAdapter<",
        "Lcom/vkcoffee/android/UserProfile;",
        "Lcom/vkcoffee/android/ui/holder/UserHolder",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;-><init>(Lcom/vkcoffee/android/fragments/base/SegmenterFragment;)V

    return-void
.end method


# virtual methods
.method public bindHeaderHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/tonicartos/superslim/GridSLM$LayoutParams;I)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "params"    # Lcom/tonicartos/superslim/GridSLM$LayoutParams;
    .param p3, "position"    # I

    .prologue
    .line 164
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->bindHeaderHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/tonicartos/superslim/GridSLM$LayoutParams;I)V

    .line 165
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->access$600(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;)I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    .line 166
    const/high16 v0, 0x43200000    # 160.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->setColumnWidth(I)V

    .line 167
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->setNumColumns(I)V

    .line 169
    :cond_0
    return-void
.end method

.method public bridge synthetic bindViewHolder(Lcom/vkcoffee/android/ui/holder/RecyclerHolder;Lcom/tonicartos/superslim/GridSLM$LayoutParams;I)V
    .locals 0

    .prologue
    .line 141
    check-cast p1, Lcom/vkcoffee/android/ui/holder/UserHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$Adapter;->bindViewHolder(Lcom/vkcoffee/android/ui/holder/UserHolder;Lcom/tonicartos/superslim/GridSLM$LayoutParams;I)V

    return-void
.end method

.method public bindViewHolder(Lcom/vkcoffee/android/ui/holder/UserHolder;Lcom/tonicartos/superslim/GridSLM$LayoutParams;I)V
    .locals 3
    .param p2, "params"    # Lcom/tonicartos/superslim/GridSLM$LayoutParams;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/ui/holder/UserHolder",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;",
            "Lcom/tonicartos/superslim/GridSLM$LayoutParams;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "holder":Lcom/vkcoffee/android/ui/holder/UserHolder;, "Lcom/vkcoffee/android/ui/holder/UserHolder<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->bindViewHolder(Lcom/vkcoffee/android/ui/holder/RecyclerHolder;Lcom/tonicartos/superslim/GridSLM$LayoutParams;I)V

    .line 155
    iget-object v1, p1, Lcom/vkcoffee/android/ui/holder/UserHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    const v2, 0x7f0202c5

    invoke-virtual {p1, v1, v0, v2}, Lcom/vkcoffee/android/ui/holder/UserHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 156
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->access$500(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;)I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    .line 157
    const/high16 v0, 0x43200000    # 160.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->setColumnWidth(I)V

    .line 158
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Lcom/tonicartos/superslim/GridSLM$LayoutParams;->setNumColumns(I)V

    .line 160
    :cond_0
    return-void
.end method

.method public bridge synthetic createViewHolder(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$Adapter;->createViewHolder(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/UserHolder;

    move-result-object v0

    return-object v0
.end method

.method public createViewHolder(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/UserHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/vkcoffee/android/ui/holder/UserHolder",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    const v0, 0x7f030191

    invoke-static {p1, v0}, Lcom/vkcoffee/android/ui/holder/UserHolder;->actionable(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/UserHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->access$400(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->onAction(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/ui/holder/UserHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;->access$300(Lcom/vkcoffee/android/fragments/NewsfeedBanlistFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/UserHolder;->onClick(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/ui/holder/UserHolder;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImagesCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method
