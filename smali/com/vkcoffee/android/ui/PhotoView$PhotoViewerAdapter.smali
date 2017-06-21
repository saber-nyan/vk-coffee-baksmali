.class public interface abstract Lcom/vkcoffee/android/ui/PhotoView$PhotoViewerAdapter;
.super Ljava/lang/Object;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhotoViewerAdapter"
.end annotation


# virtual methods
.method public abstract allowZoom(I)Z
.end method

.method public abstract getCount()I
.end method

.method public abstract getPhoto(I)Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/vkcoffee/android/ui/PhotoView$RunnableFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhotoLoadProgress(I)F
.end method

.method public abstract getThumb(I)Landroid/graphics/Bitmap;
.end method

.method public abstract isCached(I)Z
.end method

.method public abstract isPhotoLoaded(I)Z
.end method

.method public abstract requestPhotoDownload(I)V
.end method

.method public abstract shouldPreload()Z
.end method
