.class Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "VideoAlbumsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 65
    const-string/jumbo v1, "com.vkcoffee.android.RELOAD_VIDEO_ALBUMS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const-string/jumbo v1, "target_id"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    iget v2, v2, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->mOwnerId:I

    if-ne v1, v2, :cond_0

    .line 67
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->access$000(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;)V

    .line 70
    :cond_0
    const-string/jumbo v1, "com.vkcoffee.android.VIDEO_ALBUM_CREATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    iget-boolean v1, v1, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->loaded:Z

    if-eqz v1, :cond_1

    .line 71
    invoke-static {p2}, Lcom/vkcoffee/android/fragments/videos/Videos;->extractAlbum(Landroid/content/Intent;)Lcom/vkcoffee/android/api/VideoAlbum;

    move-result-object v0

    .line 72
    .local v0, "album":Lcom/vkcoffee/android/api/VideoAlbum;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    iget v1, v1, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->mOwnerId:I

    iget v2, v0, Lcom/vkcoffee/android/api/VideoAlbum;->ownerID:I

    if-ne v1, v2, :cond_1

    .line 73
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->access$100(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 74
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->access$200(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;)Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;->notifyItemInserted(I)V

    .line 77
    .end local v0    # "album":Lcom/vkcoffee/android/api/VideoAlbum;
    :cond_1
    return-void
.end method
