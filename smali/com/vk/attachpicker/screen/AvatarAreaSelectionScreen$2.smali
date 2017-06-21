.class Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen$2;
.super Lcom/vk/attachpicker/util/AsyncTask;
.source "AvatarAreaSelectionScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;->loadImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/attachpicker/util/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen$2;->this$0:Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;

    invoke-direct {p0}, Lcom/vk/attachpicker/util/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 151
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen$2;->this$0:Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;

    sget-object v1, Lcom/vk/attachpicker/Picker;->imageCache:Lcom/vk/attachpicker/util/ImageCache;

    iget-object v2, p0, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen$2;->this$0:Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;->access$100(Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;)Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->getDisplayImageKey()Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/util/ImageCache;->get(Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;->access$002(Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 155
    iget-object v0, p0, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen$2;->this$0:Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;->access$000(Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen$2;->this$0:Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;->access$000(Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen$2;->this$0:Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;

    iget-object v1, p0, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen$2;->this$0:Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;

    invoke-static {v1}, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;->access$100(Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;)Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    move-result-object v1

    invoke-static {v1}, Lcom/vk/attachpicker/util/ImageLoader;->getDisplayImage(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;->access$002(Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 158
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 151
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen$2;->this$0:Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;->access$202(Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;Lcom/vk/attachpicker/util/AsyncTask;)Lcom/vk/attachpicker/util/AsyncTask;

    .line 164
    iget-object v0, p0, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen$2;->this$0:Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;->access$300(Lcom/vk/attachpicker/screen/AvatarAreaSelectionScreen;)V

    .line 165
    return-void
.end method
