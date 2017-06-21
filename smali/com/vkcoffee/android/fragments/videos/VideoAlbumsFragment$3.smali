.class Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$3;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "VideoAlbumsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->deleteAlbum(Lcom/vkcoffee/android/api/VideoAlbum;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

.field final synthetic val$album:Lcom/vkcoffee/android/api/VideoAlbum;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;Landroid/content/Context;Lcom/vkcoffee/android/api/VideoAlbum;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$3;->val$album:Lcom/vkcoffee/android/api/VideoAlbum;

    iput p4, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$3;->val$position:I

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->access$500(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$3;->val$album:Lcom/vkcoffee/android/api/VideoAlbum;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->access$600(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$3;->val$position:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->notifyItemRemoved(I)V

    .line 185
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->updateList()V

    .line 186
    return-void
.end method
