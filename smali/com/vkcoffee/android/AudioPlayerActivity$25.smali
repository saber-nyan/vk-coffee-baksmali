.class Lcom/vkcoffee/android/AudioPlayerActivity$25;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;->updateCoverImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$25;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/AudioPlayerActivity$25;)Lcom/vkcoffee/android/AudioPlayerActivity;
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$25;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    return-object v0
.end method


# virtual methods
.method public notAvailable(II)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$25;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    new-instance v1, Lcom/vkcoffee/android/AudioPlayerActivity$25$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/vkcoffee/android/AudioPlayerActivity$25$2;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity$25;II)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1030
    return-void
.end method

.method public onImageLoaded(Landroid/graphics/Bitmap;II)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "oid"    # I
    .param p3, "aid"    # I

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$25;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    new-instance v1, Lcom/vkcoffee/android/AudioPlayerActivity$25$1;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/vkcoffee/android/AudioPlayerActivity$25$1;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity$25;IILandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1016
    return-void
.end method
