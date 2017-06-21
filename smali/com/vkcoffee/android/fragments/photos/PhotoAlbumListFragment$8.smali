.class Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$8;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "PhotoAlbumListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->doDelete(Lcom/vkcoffee/android/api/PhotoAlbum;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

.field final synthetic val$a:Lcom/vkcoffee/android/api/PhotoAlbum;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;Landroid/content/Context;Lcom/vkcoffee/android/api/PhotoAlbum;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$8;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$8;->val$a:Lcom/vkcoffee/android/api/PhotoAlbum;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 337
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$8;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->access$1500(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$8;->val$a:Lcom/vkcoffee/android/api/PhotoAlbum;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 338
    .local v0, "idx":I
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$8;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->access$1600(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 339
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$8;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->access$200(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;->notifyItemRemoved(I)V

    .line 340
    return-void
.end method
