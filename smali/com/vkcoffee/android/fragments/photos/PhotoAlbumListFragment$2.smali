.class Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$2;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "PhotoAlbumListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/high16 v3, 0x40800000    # 4.0f

    .line 184
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 185
    .local v0, "pos":I
    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 186
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->access$500(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$2;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->access$600(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v1, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    .line 187
    if-lez v0, :cond_0

    .line 188
    const/high16 v1, -0x3f800000    # -4.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method
