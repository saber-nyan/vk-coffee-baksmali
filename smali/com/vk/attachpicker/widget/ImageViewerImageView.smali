.class public Lcom/vk/attachpicker/widget/ImageViewerImageView;
.super Lcom/vk/attachpicker/widget/LocalImageView;
.source "ImageViewerImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/widget/ImageViewerImageView$CropAreaProvider;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_ZOOM:F = 3.0f

.field public static final DEFAULT_MID_ZOOM:F = 1.75f

.field public static final DEFAULT_MIN_ZOOM:F = 1.0f


# instance fields
.field private currentPositionInImageViewer:I

.field private ignoreNextPhotoViewAttacherUpdate:Z

.field private photoViewAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

.field private final position:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/widget/LocalImageView;-><init>(Landroid/content/Context;)V

    .line 21
    iput v0, p0, Lcom/vk/attachpicker/widget/ImageViewerImageView;->currentPositionInImageViewer:I

    .line 25
    iput-boolean v0, p0, Lcom/vk/attachpicker/widget/ImageViewerImageView;->ignoreNextPhotoViewAttacherUpdate:Z

    .line 29
    iput p2, p0, Lcom/vk/attachpicker/widget/ImageViewerImageView;->position:I

    .line 30
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/ImageViewerImageView;->init()V

    .line 31
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ImageViewerImageView;->photoViewAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    .line 35
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ImageViewerImageView;->photoViewAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setMinimumScale(F)V

    .line 36
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ImageViewerImageView;->photoViewAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setMaximumScale(F)V

    .line 37
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ImageViewerImageView;->photoViewAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setZoomTransitionDuration(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public displayImage(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)V
    .locals 1
    .param p1, "image"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/vk/attachpicker/widget/ImageViewerImageView;->setImage(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;Z)V

    .line 59
    return-void
.end method

.method public displayImage(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;Lcom/vk/attachpicker/widget/LocalImageView$ImageDisplayListener;)V
    .locals 1
    .param p1, "image"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;
    .param p2, "listener"    # Lcom/vk/attachpicker/widget/LocalImageView$ImageDisplayListener;

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/vk/attachpicker/widget/ImageViewerImageView;->setImage(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;ZLcom/vk/attachpicker/widget/LocalImageView$ImageDisplayListener;Z)V

    .line 63
    return-void
.end method

.method public getCurrentPositionInImageViewer()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/vk/attachpicker/widget/ImageViewerImageView;->currentPositionInImageViewer:I

    return v0
.end method

.method public getPhotoViewAttacher()Lcom/vk/attachpicker/photoview/PhotoViewAttacher;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ImageViewerImageView;->photoViewAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/vk/attachpicker/widget/ImageViewerImageView;->position:I

    return v0
.end method

.method public ignoreNextPhotoViewAttacherUpdate()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/widget/ImageViewerImageView;->ignoreNextPhotoViewAttacherUpdate:Z

    .line 67
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/vk/attachpicker/widget/LocalImageView;->onDetachedFromWindow()V

    .line 78
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ImageViewerImageView;->photoViewAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ImageViewerImageView;->photoViewAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->cleanup()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/ImageViewerImageView;->photoViewAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    .line 82
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public setCurrentPositionInImageViewer(I)V
    .locals 0
    .param p1, "currentPositionInImageViewer"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/vk/attachpicker/widget/ImageViewerImageView;->currentPositionInImageViewer:I

    .line 99
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/vk/attachpicker/widget/LocalImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/ImageViewerImageView;->updatePhotoViewAttacher()V

    .line 44
    return-void
.end method

.method public updatePhotoViewAttacher()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ImageViewerImageView;->photoViewAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vk/attachpicker/widget/ImageViewerImageView;->ignoreNextPhotoViewAttacherUpdate:Z

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/vk/attachpicker/widget/ImageViewerImageView;->photoViewAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->update()V

    .line 54
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vk/attachpicker/widget/ImageViewerImageView;->ignoreNextPhotoViewAttacherUpdate:Z

    .line 55
    return-void
.end method
