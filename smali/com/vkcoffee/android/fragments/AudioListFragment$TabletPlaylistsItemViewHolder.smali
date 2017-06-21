.class Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsItemViewHolder;
.super Lcom/vkcoffee/android/BindableViewHolder;
.source "AudioListFragment.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabletPlaylistsItemViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Lcom/vkcoffee/android/AudioPlaylist;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V
    .locals 3

    .prologue
    .line 529
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsItemViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    .line 530
    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f030050

    invoke-static {p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$16(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vkcoffee/android/BindableViewHolder;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V

    .line 531
    return-void
.end method


# virtual methods
.method public onBind(Lcom/vkcoffee/android/AudioPlaylist;)V
    .locals 3
    .param p1, "item"    # Lcom/vkcoffee/android/AudioPlaylist;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsItemViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/AudioPlaylist;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsItemViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsItemViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$11(Lcom/vkcoffee/android/fragments/AudioListFragment;)I

    move-result v0

    iget v2, p1, Lcom/vkcoffee/android/AudioPlaylist;->id:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 536
    return-void

    .line 535
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/AudioPlaylist;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsItemViewHolder;->onBind(Lcom/vkcoffee/android/AudioPlaylist;)V

    return-void
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsItemViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsItemViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->onSpinnerItemSelected(I)Z

    .line 540
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$TabletPlaylistsItemViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$16(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->notifyDataSetChanged()V

    .line 541
    return-void
.end method
