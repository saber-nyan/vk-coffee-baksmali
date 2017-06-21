.class Lcom/vkcoffee/android/media/AbsVideoPlayer$1;
.super Ljava/lang/Object;
.source "AbsVideoPlayer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/media/AbsVideoPlayer;-><init>(Landroid/content/Context;Landroid/view/TextureView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/media/AbsVideoPlayer;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/media/AbsVideoPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/media/AbsVideoPlayer;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/vkcoffee/android/media/AbsVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkcoffee/android/media/AbsVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/media/AbsVideoPlayer;->surfaceTextureReady(Landroid/graphics/SurfaceTexture;)V

    .line 32
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/media/AbsVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/AbsVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/media/AbsVideoPlayer;->surfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)V

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    .line 37
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 48
    return-void
.end method
