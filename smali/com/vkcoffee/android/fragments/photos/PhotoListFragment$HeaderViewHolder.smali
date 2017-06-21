.class Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$HeaderViewHolder;
.super Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
.source "PhotoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)V
    .locals 8

    .prologue
    const v7, 0x7f10012e

    .line 173
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$HeaderViewHolder;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    .line 174
    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f03010a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$HeaderViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1000dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget-object v1, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$HeaderViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0032

    iget-object v3, p1, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v3, v3, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v6, v6, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p1, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget-object v0, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$HeaderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$HeaderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget-object v1, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
