.class public interface abstract Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;
.super Ljava/lang/Object;
.source "GifRootLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/gifs/GifRootLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract finishWithoutAnimation()V
.end method

.method public abstract getClipTopBottom()[I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/Size;
        value = 0x2L
    .end annotation
.end method

.method public abstract getViewLocation()Landroid/graphics/Rect;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract hasPreviewLocationData()Z
.end method
