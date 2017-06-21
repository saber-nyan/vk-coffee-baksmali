.class Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService$1;
.super Ljava/lang/Object;
.source "AudioDownloaderIntentService.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->onHandleIntent(Landroid/content/Intent;)V
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
.field final synthetic this$0:Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService$1;->this$0:Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 82
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService$1;->success(Ljava/util/ArrayList;)V

    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 74
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService$1;->this$0:Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    iget-object v0, v0, Lcom/vkcoffee/android/AudioFile;->url:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->access$002(Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    :cond_0
    return-void
.end method
