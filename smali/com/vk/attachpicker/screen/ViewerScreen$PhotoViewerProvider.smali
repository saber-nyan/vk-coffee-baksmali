.class public interface abstract Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;
.super Ljava/lang/Object;
.source "ViewerScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/screen/ViewerScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhotoViewerProvider"
.end annotation


# virtual methods
.method public abstract getPlaceForPhoto(I)Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;
.end method

.method public abstract onPhotoSelected(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)V
.end method

.method public abstract onPhotoSwitch(II)V
.end method
