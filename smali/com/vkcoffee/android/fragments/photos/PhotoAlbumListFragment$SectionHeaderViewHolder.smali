.class Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$SectionHeaderViewHolder;
.super Lcom/vkcoffee/android/BindableViewHolder;
.source "PhotoAlbumListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SectionHeaderViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Lcom/vkcoffee/android/api/PhotoAlbum;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)V
    .locals 3

    .prologue
    .line 517
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$SectionHeaderViewHolder;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .line 518
    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0300c2

    invoke-static {p1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->access$3200(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vkcoffee/android/BindableViewHolder;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V

    .line 519
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$SectionHeaderViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 520
    return-void
.end method


# virtual methods
.method public onBind(Lcom/vkcoffee/android/api/PhotoAlbum;)V
    .locals 2
    .param p1, "item"    # Lcom/vkcoffee/android/api/PhotoAlbum;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$SectionHeaderViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 515
    check-cast p1, Lcom/vkcoffee/android/api/PhotoAlbum;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$SectionHeaderViewHolder;->onBind(Lcom/vkcoffee/android/api/PhotoAlbum;)V

    return-void
.end method
