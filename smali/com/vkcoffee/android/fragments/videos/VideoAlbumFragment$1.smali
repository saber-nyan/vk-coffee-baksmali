.class Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "VideoAlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_1

    .line 46
    :cond_1
    :goto_1
    return-void

    .line 32
    :pswitch_0
    const-string/jumbo v5, "com.vkcoffee.android.VIDEO_MOVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 34
    :pswitch_1
    invoke-static {p2}, Lcom/vkcoffee/android/fragments/videos/Videos;->extractVideo(Landroid/content/Intent;)Lcom/vkcoffee/android/api/VideoFile;

    move-result-object v2

    .line 35
    .local v2, "video":Lcom/vkcoffee/android/api/VideoFile;
    const-string/jumbo v3, "add"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 36
    .local v0, "add":[I
    const-string/jumbo v3, "remove"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 37
    .local v1, "remove":[I
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;

    iget v3, v3, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->mAlbumId:I

    invoke-static {v1, v3}, Lcom/vkcoffee/android/functions/Functions;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 38
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;

    iget v4, v2, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    iget v5, v2, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->removeItem(II)V

    .line 40
    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;

    iget v3, v3, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->mAlbumId:I

    invoke-static {v0, v3}, Lcom/vkcoffee/android/functions/Functions;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;

    invoke-virtual {v3, v2}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumFragment;->prepend(Lcom/vkcoffee/android/api/VideoFile;)V

    goto :goto_1

    .line 32
    :pswitch_data_0
    .packed-switch -0x6f9c81b0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
