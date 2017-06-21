.class Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder$1;
.super Ljava/lang/Object;
.source "PhotoAlbumListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;

.field final synthetic val$this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder$1;->this$1:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder$1;->val$this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 435
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder$1;->this$1:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->access$2400(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    if-gez v1, :cond_0

    .line 460
    :goto_0
    return-void

    .line 438
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder$1;->this$1:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 439
    .local v0, "pm":Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder$1;->this$1:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08013d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v5, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 440
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder$1;->this$1:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080119

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v5, v2, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 441
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder$1;->this$1:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080101

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v5, v2, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 442
    new-instance v1, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder$1$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder$1$1;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$AbsPhotoAlbumViewHolder$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 459
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method
