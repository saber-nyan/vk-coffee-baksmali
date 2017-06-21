.class Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$5;
.super Ljava/lang/Object;
.source "PhotoAlbumListFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->updateItemSize(I)V
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
    .line 237
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$5;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$5;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->access$1000(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 241
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$5;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->access$1100(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->requestLayout()V

    .line 242
    const/4 v0, 0x0

    return v0
.end method
