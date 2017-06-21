.class Lcom/vkcoffee/android/AudioPlayerService$5;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"

# interfaces
.implements Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerService;->getCoverForWidgets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerService;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/AudioPlayerService;

    .prologue
    .line 1716
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerService$5;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notAvailable(II)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 1737
    const-string/jumbo v0, "vk"

    const-string/jumbo v1, "Image failed!"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$5;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerService;->access$1500(Lcom/vkcoffee/android/AudioPlayerService;)Landroid/media/RemoteControlClient;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1746
    :cond_0
    :goto_0
    return-void

    .line 1741
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$5;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerService;->access$800(Lcom/vkcoffee/android/AudioPlayerService;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->oid:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$5;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerService;->access$800(Lcom/vkcoffee/android/AudioPlayerService;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->aid:I

    if-ne p2, v0, :cond_0

    .line 1742
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$5;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerService;->access$1500(Lcom/vkcoffee/android/AudioPlayerService;)Landroid/media/RemoteControlClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    .line 1743
    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 1744
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    goto :goto_0
.end method

.method public onImageLoaded(Landroid/graphics/Bitmap;II)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "oid"    # I
    .param p3, "aid"    # I

    .prologue
    .line 1719
    const-string/jumbo v0, "vk"

    const-string/jumbo v1, "Image loaded"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$5;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerService;->access$800(Lcom/vkcoffee/android/AudioPlayerService;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->oid:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$5;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerService;->access$800(Lcom/vkcoffee/android/AudioPlayerService;)Lcom/vkcoffee/android/AudioFile;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->aid:I

    if-ne p3, v0, :cond_0

    .line 1721
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$5;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerService;->access$1400(Lcom/vkcoffee/android/AudioPlayerService;)V

    .line 1722
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$5;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerService;->access$1500(Lcom/vkcoffee/android/AudioPlayerService;)Landroid/media/RemoteControlClient;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1733
    :cond_0
    :goto_0
    return-void

    .line 1725
    :cond_1
    const-string/jumbo v0, "vk"

    const-string/jumbo v1, "Before apply"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$5;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerService;->access$1500(Lcom/vkcoffee/android/AudioPlayerService;)Landroid/media/RemoteControlClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    const/16 v1, 0x64

    .line 1729
    invoke-virtual {v0, v1, p1}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 1730
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    .line 1731
    const-string/jumbo v0, "vk"

    const-string/jumbo v1, "Apply"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
