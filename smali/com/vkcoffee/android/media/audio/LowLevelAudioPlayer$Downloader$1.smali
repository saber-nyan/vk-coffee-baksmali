.class Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader$1;
.super Ljava/lang/Object;
.source "LowLevelAudioPlayer.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/vkcoffee/android/AudioFile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader$1;->this$1:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    const/4 v2, 0x0

    .line 424
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader$1;->this$1:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1402(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 425
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader$1;->this$1:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v0, v2, v2}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1500(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;II)V

    .line 426
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 410
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader$1;->success(Ljava/util/ArrayList;)V

    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    const/4 v2, 0x0

    .line 413
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader$1;->this$1:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1402(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 414
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 415
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader$1;->this$1:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;

    iget-object v1, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    iget-object v0, v0, Lcom/vkcoffee/android/AudioFile;->url:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1102(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 416
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader$1;->this$1:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$100(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)V

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader$1;->this$1:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v0, v2, v2}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$1500(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;II)V

    goto :goto_0
.end method
