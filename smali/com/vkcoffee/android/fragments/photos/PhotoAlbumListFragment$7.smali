.class Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$7;
.super Ljava/lang/Object;
.source "PhotoAlbumListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->deleteAlbum(Lcom/vkcoffee/android/api/PhotoAlbum;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

.field final synthetic val$a:Lcom/vkcoffee/android/api/PhotoAlbum;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;Lcom/vkcoffee/android/api/PhotoAlbum;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$7;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$7;->val$a:Lcom/vkcoffee/android/api/PhotoAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$7;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$7;->val$a:Lcom/vkcoffee/android/api/PhotoAlbum;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->access$1400(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;Lcom/vkcoffee/android/api/PhotoAlbum;)V

    .line 326
    return-void
.end method
