.class Lcom/vkcoffee/android/media/PlayerWrapper$1;
.super Ljava/lang/Object;
.source "PlayerWrapper.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/media/PlayerWrapper;-><init>(Landroid/content/Context;Landroid/view/TextureView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/media/PlayerWrapper;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/media/PlayerWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/media/PlayerWrapper;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/vkcoffee/android/media/PlayerWrapper$1;->this$0:Lcom/vkcoffee/android/media/PlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper$1;->this$0:Lcom/vkcoffee/android/media/PlayerWrapper;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/media/PlayerWrapper;->access$002(Lcom/vkcoffee/android/media/PlayerWrapper;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 55
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper$1;->this$0:Lcom/vkcoffee/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkcoffee/android/media/PlayerWrapper;->access$100(Lcom/vkcoffee/android/media/PlayerWrapper;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 56
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper$1;->this$0:Lcom/vkcoffee/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkcoffee/android/media/PlayerWrapper;->access$100(Lcom/vkcoffee/android/media/PlayerWrapper;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper$1;->this$0:Lcom/vkcoffee/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkcoffee/android/media/PlayerWrapper;->access$100(Lcom/vkcoffee/android/media/PlayerWrapper;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 63
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 70
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 76
    return-void
.end method
