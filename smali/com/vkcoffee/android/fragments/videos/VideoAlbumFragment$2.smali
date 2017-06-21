.class Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment$2;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "VideoAlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->deleteVideo(Lcom/vkcoffee/android/api/VideoFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;

.field final synthetic val$video:Lcom/vkcoffee/android/api/VideoFile;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;Landroid/content/Context;Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment$2;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment$2;->val$video:Lcom/vkcoffee/android/api/VideoFile;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment$2;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment$2;->val$video:Lcom/vkcoffee/android/api/VideoFile;

    iget v1, v1, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment$2;->val$video:Lcom/vkcoffee/android/api/VideoFile;

    iget v2, v2, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->removeItem(II)V

    .line 108
    return-void
.end method
