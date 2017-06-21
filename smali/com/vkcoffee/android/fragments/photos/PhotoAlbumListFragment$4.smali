.class Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$4;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "PhotoAlbumListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

.field final synthetic val$glm:Landroid/support/v7/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;Landroid/support/v7/widget/GridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$4;->val$glm:Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->access$800(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$4;->val$glm:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    .line 225
    :goto_0
    return v0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$4;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->access$900(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v0, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 223
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$4;->val$glm:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    goto :goto_0

    .line 225
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
