.class Lcom/vkcoffee/android/ui/AttachmentsEditorView$10;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/AttachmentsEditorView;->createVideoView(Lcom/vkcoffee/android/attachments/VideoAttachment;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

.field final synthetic val$att:Lcom/vkcoffee/android/attachments/VideoAttachment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView;Lcom/vkcoffee/android/attachments/VideoAttachment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$10;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$10;->val$att:Lcom/vkcoffee/android/attachments/VideoAttachment;

    iput-object p3, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$10;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 612
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$10;->val$att:Lcom/vkcoffee/android/attachments/VideoAttachment;

    instance-of v4, v4, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$10;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$10;->val$att:Lcom/vkcoffee/android/attachments/VideoAttachment;

    iget-object v5, v5, Lcom/vkcoffee/android/attachments/VideoAttachment;->image:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lme/grishka/appkit/imageloader/ImageCache;->isInCache(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 613
    :cond_0
    const/4 v0, 0x0

    .line 615
    .local v0, "_b":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 616
    .local v2, "mdr":Landroid/media/MediaMetadataRetriever;
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$10;->val$att:Lcom/vkcoffee/android/attachments/VideoAttachment;

    iget-object v4, v4, Lcom/vkcoffee/android/attachments/VideoAttachment;->vfile:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 617
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 618
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v2    # "mdr":Landroid/media/MediaMetadataRetriever;
    :goto_0
    move-object v1, v0

    .line 626
    .end local v0    # "_b":Landroid/graphics/Bitmap;
    .local v1, "bmp":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$10;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    new-instance v5, Lcom/vkcoffee/android/ui/AttachmentsEditorView$10$1;

    invoke-direct {v5, p0, v1}, Lcom/vkcoffee/android/ui/AttachmentsEditorView$10$1;-><init>(Lcom/vkcoffee/android/ui/AttachmentsEditorView$10;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 631
    return-void

    .line 619
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .restart local v0    # "_b":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 620
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "Error getting video thumbnail"

    invoke-static {v4, v5, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 624
    .end local v0    # "_b":Landroid/graphics/Bitmap;
    .end local v3    # "x":Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$10;->this$0:Lcom/vkcoffee/android/ui/AttachmentsEditorView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/AttachmentsEditorView$10;->val$att:Lcom/vkcoffee/android/attachments/VideoAttachment;

    iget-object v5, v5, Lcom/vkcoffee/android/attachments/VideoAttachment;->image:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    goto :goto_1
.end method
